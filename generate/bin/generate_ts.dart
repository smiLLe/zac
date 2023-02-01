// ignore_for_file:  depend_on_referenced_packages

import 'dart:collection';
import 'dart:io';

import 'package:analyzer/dart/analysis/analysis_context.dart';
import 'package:analyzer/dart/analysis/analysis_context_collection.dart';
import 'package:analyzer/dart/analysis/results.dart';
import 'package:analyzer/dart/element/element.dart';
import 'package:analyzer/dart/element/type.dart';
import 'package:args/args.dart';
import 'package:collection/collection.dart';

void main(List<String> args) async {
  final parser = ArgParser();
  late final List<String> paths;
  late final String classesFile;
  late final String jsRoot;
  parser.addMultiOption('path', callback: (list) => paths = list);
  parser.addOption(
    'classesFile',
    mandatory: true,
    callback: (str) => classesFile = str ?? 'UNKNOWN PATH',
  );
  parser.addOption(
    'jsRoot',
    mandatory: true,
    callback: (str) => jsRoot = str ?? 'UNKNOWN PATH',
  );
  parser.parse(args);

  final allFiles = await fillAllFiles(paths);
  await createClassesFile(classesFile, allFiles);

  await Process.run(
    'npm run transpile',
    [],
    workingDirectory: jsRoot,
    runInShell: true,
  );
  await Process.run(
    'npm run pretty',
    [],
    workingDirectory: jsRoot,
    runInShell: true,
  );
}

Future<AllFiles> fillAllFiles(List<String> paths) async {
  final listOfAllFiles = <OneFile>[];
  final ctxColl = AnalysisContextCollection(includedPaths: paths);
  for (var path in paths) {
    final ctx = ctxColl.contextFor(path);
    final files = await filesToCreate(ctx, Uri.directory(path));
    listOfAllFiles.addAll(files);
  }
  return AllFiles(listOfAllFiles);
}

Future<void> createClassesFile(String outFile, AllFiles allFiles) async {
  final template = Template(allFiles);
  final writeFile = File(outFile);
  writeFile.createSync();
  writeFile.writeAsString(template.toString());
}

Future<List<OneFile>> filesToCreate(AnalysisContext ctx, Uri uri) async {
  final fileSystemEntities = Directory.fromUri(uri)
      .listSync(recursive: true)
      .whereType<File>()
      .where((file) =>
          file.path.endsWith('.dart') &&
          !((file.path.contains('.g.dart') ||
              file.path.contains('.freezed.dart'))))
      .toList();
  return Future.wait([
    ...fileSystemEntities.map((file) async {
      final lib = (await ctx.currentSession.getResolvedLibrary(file.path))
          as ResolvedLibraryResult;

      return OneFile(lib, file.uri.pathSegments.last);
    })
  ]);
}

class AllFiles {
  final Iterable<OneFile> files;

  AllFiles(this.files);

  late final Iterable<OneClass> others = [
    ...files
        .where((oneFile) => oneFile.others.isNotEmpty)
        .fold<Iterable<OneClass>>([], (previousValue, element) {
      return [...previousValue, ...element.others];
    })
  ]..sortByCompare(
      (oneClass) => oneClass.element.displayName, (a, b) => a.compareTo(b));

  late final Iterable<ExtendsZacBuilder> builders = [
    ...files
        .where((oneFile) => oneFile.builders.isNotEmpty)
        .fold<Iterable<ExtendsZacBuilder>>([], (previousValue, element) {
      return [...previousValue, ...element.builders];
    })
  ]..sortByCompare(
      (oneClass) => oneClass.element.displayName, (a, b) => a.compareTo(b));

  late final Map<GenerateInterfaceType, GenerateInterfaceType?> interfaceTypes =
      () {
    final map = builders
        .fold<Map<GenerateInterfaceType, GenerateInterfaceType?>>({},
            (previousValue, cls) {
      return {
        ...previousValue,
        ...cls.interfaceTypes,
      };
    });

    return SplayTreeMap<GenerateInterfaceType, GenerateInterfaceType?>.from(
        map, (k1, k2) => k1.name.compareTo(k2.name));
  }();
}

class OneFile {
  final ResolvedLibraryResult lib;
  final String origin;

  OneFile(this.lib, this.origin);

  static final List<String> excludeClasses = [];

  late final Map<GenerateInterfaceType, GenerateInterfaceType?> interfaceTypes =
      () {
    return builders.fold<Map<GenerateInterfaceType, GenerateInterfaceType?>>({},
        (previousValue, cls) {
      return {
        ...previousValue,
        ...cls.interfaceTypes,
      };
    });
  }();

  late final Iterable<ClassElement> _filteredClasses = lib
      .element.topLevelElements
      .whereType<ClassElement>()
      .where((cls) => !cls.isPrivate)
      .where((cls) => !cls.name.startsWith('_'))
      .where((cls) => !excludeClasses.contains(cls.name))
      .where((cls) => cls.metadata
          .where((element) =>
              element.computeConstantValue()?.variable?.name ==
              'freezedZacBuilder')
          .isNotEmpty);

  late final Iterable<ClassElement> _builders = _filteredClasses.where((cls) =>
      cls.allSupertypes.any((element) => element
          .getDisplayString(withNullability: false)
          .startsWith('ZacBuilder')));

  /// Classes that don't extend any Zac class and and are just a freezed class
  late final Iterable<OneClass> others = _filteredClasses
      .where((cls) => !cls.allSupertypes.any((element) => element
          .getDisplayString(withNullability: false)
          .startsWith('ZacBuilder')))
      .map(OneClass.new);

  late final Iterable<ExtendsZacBuilder> builders =
      _builders.map(ExtendsZacBuilder.new);
}

class OneClass {
  OneClass(this.element);

  final ClassElement element;

  late final String className = () {
    return getDisplayName(element);
  }();

  late final Iterable<String> classTypeArgs =
      element.thisType.typeArguments.map((e) => mapDartTypeToTypescript(e));

  late final Iterable<UnionValueCtor> tsClassCtors = element.constructors
      .map(UnionValueCtor.new)
      .where((element) => element.canUseAsTSClassCtor);
}

class ExtendsZacBuilder extends OneClass {
  ExtendsZacBuilder(super.element);

  late final Map<GenerateInterfaceType, GenerateInterfaceType?> interfaceTypes =
      {
    ...createInterfaceTypes(zacBuilder.typeArguments.first),
    ...tsClassCtors.fold<Map<GenerateInterfaceType, GenerateInterfaceType?>>({},
        (previousValue, cls) {
      return {
        ...previousValue,
        ...cls.interfaceTypes,
      };
    })
  };

  late final InterfaceType zacBuilder =
      element.allSupertypes.firstWhere((element) {
    final displayString = element.getDisplayString(withNullability: false);
    return displayString.startsWith('ZacBuilder');
  });

  late final DartType zacBuilderTypeArg = zacBuilder.typeArguments.first;

  late final InterfaceType? widget = () {
    if (zacBuilderTypeArg is! InterfaceType) return null;
    return (zacBuilderTypeArg as InterfaceType)
        .allSupertypes
        .firstWhereOrNull((element) {
      return element.getDisplayString(withNullability: false) == 'Widget';
    });
  }();
}

class UnionValueCtor {
  UnionValueCtor(this.element);
  final ConstructorElement element;

  late final Map<GenerateInterfaceType, GenerateInterfaceType?> interfaceTypes =
      {
    ...element.parameters
        .fold<Map<GenerateInterfaceType, GenerateInterfaceType?>>({},
            (previousValue, paramEle) {
      return {
        ...previousValue,

        /// add type aliases
        if (null != paramEle.type.alias) ...createInterfaceTypes(paramEle.type),

        /// add the Type in ZacBuilder<Type>
        if (isZacBuilder(paramEle.type))
          ...createInterfaceTypes(
              (paramEle.type as InterfaceType).typeArguments.first),
      };
    })
  };

  /// fixes reserved Typescript names
  /// or create a name for base constructor
  late final String name = () {
    switch (element.name) {
      case '':
        return 'new';
      case 'length':
        return 'length_';
      case 'name':
        return 'name_';
      default:
        return element.name;
    }
  }();

  /// f:1:SizedBox etc
  late final String unionValue = () {
    final uv = element.metadata
        .map((e) => e.computeConstantValue())
        .firstWhere((element) =>
            element?.type?.getDisplayString(withNullability: false) ==
            'FreezedUnionValue')
        ?.getField('value')
        ?.toStringValue();
    if (null == uv) {
      throw StateError('UnionValue must not be null');
    }
    return uv;
  }();

  bool get canUseAsTSClassCtor => !(!element.isFactory ||
      element.name == 'fromJson' ||
      null == element.redirectedConstructor);
}

class Template {
  Template(this.allFiles);
  final AllFiles allFiles;

  String _classNameTmpl(OneClass cls) {
    final args =
        cls.classTypeArgs.isEmpty ? '' : '<${cls.classTypeArgs.join(', ')}>';
    return '${getDisplayName(cls.element)}$args';
  }

  String _ctorName(OneClass cls, UnionValueCtor ctor) {
    final args =
        cls.classTypeArgs.isEmpty ? '' : '<${cls.classTypeArgs.join(', ')}>';
    return '${ctor.name}$args';
  }

  Iterable<String> _ctorTmpl(OneClass cls) {
    return cls.tsClassCtors.map((ctor) {
      final ctorParams = ctor.element.parameters.map((paramEle) {
        final mappedType = mapDartTypeToTypescript(paramEle.type);
        var paramNameOpt = paramEle.isOptional ? '?' : '';
        return '${paramEle.displayName}$paramNameOpt: $mappedType';
      });

      final allParamsOptional =
          ctor.element.parameters.every((paramEle) => paramEle.isOptional);

      String ctorParamsDef = '';
      if (ctorParams.isNotEmpty) {
        ctorParamsDef =
            'data${allParamsOptional ? '?' : ''}: {${ctorParams.join(',\n')}}';
      }
      return '''
static ${_ctorName(cls, ctor)}($ctorParamsDef) {
  return new ${_classNameTmpl(cls)}({
    builder: '${ctor.unionValue}'${ctorParams.isNotEmpty ? ',' : ''}
    ${ctorParams.isNotEmpty ? '...data' : ''}
  })
}''';
    });
  }

  Iterable<String> _interfaceTypesTmpl() {
    return allFiles.interfaceTypes.entries.map((entry) {
      final leftParams = <String>[];
      final rightParams = <String>[];
      if (entry.key.type.element is InterfaceElement) {
        leftParams.addAll((entry.key.type.element as InterfaceElement)
            .typeParameters
            .map((e) => e.displayName));
      }
      if (entry.value?.type is InterfaceType) {
        rightParams.addAll((entry.value!.type as InterfaceType)
            .typeArguments
            .map(mapDartTypeToTypescript));
      }

      return '''
export interface ${entry.key.name}${leftParams.isEmpty ? '' : '<${leftParams.join(', ')}>'}${null == entry.value ? '' : ' extends ${entry.value!.name}${rightParams.isEmpty ? '' : '<${rightParams.join(', ')}>'}'} {
  _${entry.key.name}: unknown;
  ${leftParams.map((e) => '_${entry.key.name}$e: $e;').join('\n')}
}''';
    });
  }

  Iterable<String> _builderTmpl() {
    return allFiles.builders.map((cls) {
      final typeName = mapDartTypeToTypescript(cls.zacBuilderTypeArg);

      return '''
export class ${_classNameTmpl(cls)} extends ZacBuilder<$typeName> {
  ${_ctorTmpl(cls).join('\n')}
}''';
    });
  }

  Iterable<String> _othersTmpl() {
    return allFiles.others.map((b) {
      return '''
export class ${getDisplayName(b.element)} extends ZacConvertable {
  ${_ctorTmpl(b).join('\n')}
}''';
    });
  }

  @override
  String toString() {
    return '''
/* eslint-disable @typescript-eslint/no-explicit-any */

export type JSONValue =
    | string
    | number
    | boolean
    | { [key: string]: JSONValue }
    | Array<JSONValue>;

export type ZacBuilderData = {
    builder: string;
    [key: string]: unknown;
};

export abstract class ZacConvertable {
    protected data: ZacBuilderData;
    protected constructor(data: ZacBuilderData) {
        this.data = data;
    }

    toJSON() {
        return this.data;
    }
}

export abstract class ZacBuilder<T> extends ZacConvertable {
    // Type T must be used in this class so that TypeScript will make
    // checks to types during assignments.
    //
    // This would be a valid assignment if T was not used
    // const b: ZacBuilder<Container> = SizedBox.new();
    private _doNotUse!: T;

    // Create the public getter or otherwise d.ts files will just omit T
    public get doNotUse(): T {
        return this._doNotUse;
    }
}

${_interfaceTypesTmpl().join('\n')}
${_othersTmpl().join('\n')}
${_builderTmpl().join('\n')}''';
  }
}

String mapDartTypeToTypescript(DartType type, [int depth = 0]) {
  if (null != type.alias) {
    return getDisplayName(type.alias!.element);
  }

  // f.e. SomeClass<T>.. Will be T
  if (type is TypeParameterType) {
    return type.element.getDisplayString(withNullability: true);
  }

  if (type.isVoid) {
    return 'void';
  }
  if (type.isDartCoreObject || type.isDynamic) {
    return 'JSONValue';
  }

  if (type is! InterfaceType) {
    throw Exception('Unhandled type in mapDartTypeToTypescript(): $type');
  }

  String opt() {
    if (depth == 0) return '';
    return type.getDisplayString(withNullability: true).endsWith('?')
        ? ' | null'
        : '';
  }

  if (type.element.displayName == 'ZacBuilder') {
    final mappedName = mapDartTypeToTypescript(type.typeArguments.first);
    final def = 'ZacBuilder<$mappedName>${opt()}';

    switch (mappedName) {
      case 'number':
      case 'string':
      case 'boolean':
        return '$mappedName | $def';
      default:
        return def;
    }
  } else if (type.isDartCoreBool) {
    return 'boolean${opt()}';
  } else if (type.isDartCoreInt ||
      type.isDartCoreDouble ||
      type.isDartCoreNum) {
    return 'number${opt()}';
  } else if (type.isDartCoreString || type.element.displayName == 'DateTime') {
    return 'string${opt()}';
  } else if (type.isDartCoreMap) {
    return 'Record<string, ${mapDartTypeToTypescript(type.typeArguments.last, depth + 1)}>${opt()}';
  } else if (type.isDartCoreList ||
      type.isDartCoreIterable ||
      type.isDartCoreSet) {
    return 'Array<${mapDartTypeToTypescript(type.typeArguments.first, depth + 1)}>${opt()}';
  } else if (type.typeArguments.isNotEmpty) {
    final mapped = type.typeArguments.map(mapDartTypeToTypescript).join(', ');
    return '${getDisplayName(type.element)}<$mapped>';
  } else {
    return getDisplayName(type.element);
  }
}

bool isSubclassOfZacBuilder(DartType type) {
  if (type is! InterfaceType) return false;

  return type.allSupertypes.any((element) {
    final displayString = element.getDisplayString(withNullability: false);
    return displayString.startsWith('ZacBuilder');
  });
}

bool isZacBuilder(DartType type) {
  if (type is! InterfaceType) return false;

  return type.getDisplayString(withNullability: false).startsWith('ZacBuilder');
}

bool isTypeInDart(Element ele) {
  assert(null != ele.library);
  return ele.library!.identifier.startsWith('dart:');
}

bool isTypeInFlutter(Element ele) {
  assert(null != ele.library);
  return ele.library!.identifier.startsWith('package:flutter');
}

bool isTypeInZac(Element ele) {
  assert(null != ele.library);
  return ele.library!.identifier.startsWith('package:zac');
}

String getDisplayName(Element ele) {
  if (isTypeInDart(ele)) {
    return 'Dart${ele.displayName}';
  } else if (isTypeInFlutter(ele)) {
    return 'Flutter${ele.displayName}';
  } else if (isTypeInZac(ele) && ele.displayName.startsWith('Flutter')) {
    return ele.displayName.substring('Flutter'.length);
  }
  return ele.displayName;
}

class GenerateInterfaceType {
  final DartType type;
  final String name;

  GenerateInterfaceType(this.type, this.name);
}

/// [type] should be the type arg used in ZacBuilder<Type>.
/// It will return a Map including the Type and all the supertypes.
/// This will allow to create TS interface types like:
/// interface Alignment extends AlignmentGeometry {}
/// or
/// interface AppBar extends Widget {}
///
/// This will basically build something like
/// {
///   'Widget': null,
///   'Container': 'Widget',
///   'FlutterEdgeInsetsGeometry': null,
///   'FlutterEdgeInsets': 'FlutterEdgeInsetsGeometry',
/// }
Map<GenerateInterfaceType, GenerateInterfaceType?> createInterfaceTypes(
    DartType type) {
  final Map<GenerateInterfaceType, GenerateInterfaceType?> map = {};

  /// similar to map.putIfAbsent(..)
  void addTypeToMap(
      GenerateInterfaceType addClass, GenerateInterfaceType? superClass) {
    if (null ==
        map.keys.firstWhereOrNull((element) => element.name == addClass.name)) {
      map[addClass] = superClass;
    }
  }

  if (type.isVoid ||
      type.isDartCoreObject ||
      type.isDynamic ||
      type is TypeParameterType) {
    return map;
  } else if (null != type.alias) {
    addTypeToMap(
        GenerateInterfaceType(type, getDisplayName(type.alias!.element)), null);
  } else if (type is InterfaceType) {
    final widget = type.allSupertypes.firstWhereOrNull((element) {
      return element.getDisplayString(withNullability: false) == 'Widget';
    });

    if (null != widget) {
      addTypeToMap(
          GenerateInterfaceType(widget, getDisplayName(widget.element)), null);
      addTypeToMap(GenerateInterfaceType(type, getDisplayName(type.element)),
          GenerateInterfaceType(widget, getDisplayName(widget.element)));
    } else {
      bool wanted(InterfaceType t) {
        return !(t.isVoid ||
            t.isDartCoreObject ||
            t.isDartCoreEnum ||
            t.isDartCoreSet ||
            t.isDartCoreMap ||
            t.isDartCoreList ||
            t.isDartCoreIterable ||
            t.isDartCoreBool ||
            t.isDartCoreDouble ||
            t.isDartCoreInt ||
            t.isDartCoreNum ||
            t.isDartCoreString ||
            t.isDartCoreFunction ||
            t.isDynamic ||
            t.getDisplayString(withNullability: false) == 'DateTime');
      }

      void addType(InterfaceType t) {
        if (!wanted(t)) return;
        final tName = getDisplayName(t.element);
        addTypeToMap(
            GenerateInterfaceType(t, tName),
            null == t.superclass || !wanted(t.superclass!)
                ? null
                : GenerateInterfaceType(
                    t.superclass!, getDisplayName(t.superclass!.element)));

        if (null != t.superclass) {
          addType(t.superclass!);
        }

        if (t.typeArguments.isNotEmpty) {
          for (var entry in t.typeArguments
              .map(createInterfaceTypes)
              .fold<Map<GenerateInterfaceType, GenerateInterfaceType?>>(
                  {},
                  (previousValue, element) =>
                      {...previousValue, ...element}).entries) {
            addTypeToMap(entry.key, entry.value);
          }
        }
      }

      addType(type);
    }
  } else {
    throw Exception(
        'Unhandled type found in createInterfaceTypes(): ${type.toString()}');
  }

  return map;
}
