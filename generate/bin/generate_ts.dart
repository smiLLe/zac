// ignore_for_file:  depend_on_referenced_packages

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
  late final String headFile;
  late final String jsRoot;
  parser.addMultiOption('path', callback: (list) => paths = list);
  parser.addOption(
    'headFile',
    mandatory: true,
    callback: (str) => headFile = str ?? 'UNKNOWN PATH',
  );
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
  // final nativeTypes = NativeTypes(allFiles);
  // await nativeTypes.create();
  // await createNativeTypesFile(nativeTypesFiles, nativeTypes);
  await createClassesFile(classesFile, headFile, allFiles);

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

bool isFlutterNativeType(DartType type) {
  if (null != type.alias) {
    final ele = type.alias!.element;
    return ele.library.identifier.startsWith('package:flutter') ||
        ele.library.identifier.startsWith('dart:');
  }

  if (type is! InterfaceType) return false;

  return type.element.library.identifier.startsWith('package:flutter') ||
      type.element.library.identifier.startsWith('dart:');
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

Future<void> createClassesFile(
    String outFile, String headFile, AllFiles allFiles) async {
  final headerFile = File(headFile);
  final template = Template(allFiles, headerFile.readAsStringSync());
  final writeFile = File(outFile);
  writeFile.createSync();
  writeFile.writeAsString(template.toString());
}

abstract class NativeTypes {
  static String getName(DartType type) {
    if (null != type.alias) {
      return type.alias!.element.name;
    }
    if (type is InterfaceType) {
      return type.element.name;
    }

    throw StateError('Invalid type in $NativeTypes: $type');
  }
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

  late final Iterable<OneClass> builders = [
    ...files
        .where((oneFile) => oneFile.builders.isNotEmpty)
        .fold<Iterable<OneClass>>([], (previousValue, element) {
      return [...previousValue, ...element.builders];
    })
  ]..sortByCompare(
      (oneClass) => oneClass.element.displayName, (a, b) => a.compareTo(b));

  late final Iterable<OneClass> zacActions = [
    ...files
        .where((oneFile) => oneFile.zacActions.isNotEmpty)
        .fold<Iterable<OneClass>>([], (previousValue, element) {
      return [...previousValue, ...element.zacActions];
    })
  ]..sortByCompare(
      (oneClass) => oneClass.element.displayName, (a, b) => a.compareTo(b));

  late final Iterable<OneClass> zacTransformer = [
    ...files
        .where((oneFile) => oneFile.zacTransformer.isNotEmpty)
        .fold<Iterable<OneClass>>([], (previousValue, element) {
      return [...previousValue, ...element.zacTransformer];
    })
  ]..sortByCompare(
      (oneClass) => oneClass.element.displayName, (a, b) => a.compareTo(b));
}

class OneFile {
  final ResolvedLibraryResult lib;
  final String origin;

  OneFile(this.lib, this.origin);

  late final Iterable<ClassElement> _filteredClasses = lib
      .element.topLevelElements
      .whereType<ClassElement>()
      .where((cls) => !cls.isPrivate)
      .where((cls) => !cls.displayName.startsWith('_'))
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
      .where((cls) => !cls.allSupertypes.any((element) => element
          .getDisplayString(withNullability: false)
          .startsWith('ZacAction')))
      .where((cls) => !cls.allSupertypes.any((element) => element
          .getDisplayString(withNullability: false)
          .startsWith('ZacTransformer')))
      .map(OneClass.new);

  late final Iterable<OneClass> builders =
      _builders.where((cls) => cls.typeParameters.isEmpty).map(OneClass.new);

  late final Iterable<OneClass> buildersWithTypeParams =
      _builders.where((cls) => cls.typeParameters.isNotEmpty).map(OneClass.new);

  late final Iterable<OneClass> zacActions = _filteredClasses
      .where((cls) => cls.allSupertypes.any((element) => element
          .getDisplayString(withNullability: false)
          .startsWith('ZacAction')))
      .where((cls) => cls.typeParameters.isEmpty)
      .map(OneClass.new);

  late final Iterable<OneClass> zacTransformer = _filteredClasses
      .where((cls) => cls.allSupertypes.any((element) => element
          .getDisplayString(withNullability: false)
          .startsWith('ZacTransformer')))
      .where((cls) => cls.typeParameters.isEmpty)
      .map(OneClass.new);
}

class OneClass {
  OneClass(this.element);

  final ClassElement element;

  static String cleanUpFlutterPrefix(String name) {
    if (name.startsWith('Flutter')) {
      return name.substring('Flutter'.length);
    }

    return name;
  }

  late final String className = () {
    return cleanUpFlutterPrefix(element.displayName);
  }();

  late final String classNameWithTypes = () {
    return cleanUpFlutterPrefix(
        element.thisType.getDisplayString(withNullability: false));
  }();

  late final Iterable<UnionValueCtor> tsClassCtors = element.constructors
      .map(UnionValueCtor.new)
      .where((element) => element.canUseAsTSClassCtor);

  bool get implementsZacBuilder => element.allSupertypes.any((element) {
        final displayString = element.getDisplayString(withNullability: false);
        return displayString.startsWith('ZacBuilder');
      });

  bool get implementsZacListBuilder => element.allSupertypes.any((element) {
        final displayString = element.getDisplayString(withNullability: false);
        return displayString.startsWith('ZacListBuilder');
      });

  bool get implementsZacMapBuilder => element.allSupertypes.any((element) {
        final displayString = element.getDisplayString(withNullability: false);
        return displayString.startsWith('ZacMapBuilder');
      });

  InterfaceType get implementedZacBuilder {
    assert(implementsZacBuilder);
    return element.allSupertypes.firstWhere((element) {
      final displayString = element.getDisplayString(withNullability: false);
      return displayString.startsWith('ZacBuilder');
    });
  }

  InterfaceType get implementedZacListBuilder {
    assert(implementsZacListBuilder);
    return element.allSupertypes.firstWhere((element) {
      final displayString = element.getDisplayString(withNullability: false);
      return displayString.startsWith('ZacListBuilder');
    });
  }

  InterfaceType get implementedZacMapBuilder {
    assert(implementsZacMapBuilder);
    return element.allSupertypes.firstWhere((element) {
      final displayString = element.getDisplayString(withNullability: false);
      return displayString.startsWith('ZacMapBuilder');
    });
  }
}

class UnionValueCtor {
  UnionValueCtor(this.element);
  final ConstructorElement element;

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
  Template(this.allFiles, this.header);
  final AllFiles allFiles;
  final String header;

  Iterable<String> _ctorTmpl(OneClass cls) {
    return cls.tsClassCtors.map((ctor) {
      final ctorParams = ctor.element.parameters.map((paramEle) {
        final mappedType = mapDartTypeToTypescript(allFiles, paramEle.type);
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
static ${ctor.name}($ctorParamsDef) {
  return new ${cls.className}({
    builder: '${ctor.unionValue}'${ctorParams.isNotEmpty ? ',' : ''}
    ${ctorParams.isNotEmpty ? '...data' : ''}
  })
}''';
    });
  }

  Iterable<String> _builderTmpl() {
    return allFiles.builders.map((cls) {
      final typeName = mapDartTypeToTypescript(
          allFiles, cls.implementedZacBuilder.typeArguments.first);

      return '''
export class ${cls.className} extends ZacBuilder<$typeName> {
  ${_ctorTmpl(cls).join('\n')}
}''';
    });
  }

  Iterable<String> _othersTmpl() {
    return allFiles.others.map((b) {
      return '''
export class ${b.className} extends ZacConvertable {
  ${_ctorTmpl(b).join('\n')}
}''';
    });
  }

  Iterable<String> _transformersTmpl() {
    return allFiles.zacTransformer.map((b) {
      return '''
export class ${b.className} extends ZacTransformer {
  ${_ctorTmpl(b).join('\n')}
}''';
    });
  }

  Iterable<String> _actionsTmpl() {
    return allFiles.zacActions.map((b) {
      return '''
export class ${b.className} extends ZacAction {
  ${_ctorTmpl(b).join('\n')}
}''';
    });
  }

  @override
  String toString() {
    return '''
/* eslint-disable @typescript-eslint/no-explicit-any */
import * as native from 'generated.nativetypes';
$header
${_othersTmpl().join('\n')}
${_builderTmpl().join('\n')}
${_transformersTmpl().join('\n')}
${_actionsTmpl().join('\n')}
''';
  }
}

String mapDartTypeToTypescript(AllFiles allFiles, DartType type,
    [int depth = 0]) {
  if (type is DynamicType) {
    return 'any';
  }
  if (null != type.alias && type is FunctionType) {
    return isFlutterNativeType(type)
        ? 'native.${type.alias!.element.name}'
        : OneClass.cleanUpFlutterPrefix(type.alias!.element.name);
  }
  if (type is! InterfaceType) {
    throw Error();
  }
  var name = type.getDisplayString(withNullability: false);
  if (type.typeArguments.isNotEmpty) {
    name = name.split('<').first;
  }
  name = OneClass.cleanUpFlutterPrefix(name);
  String opt() {
    if (depth == 0) return '';
    return type.getDisplayString(withNullability: true).endsWith('?')
        ? ' | null'
        : '';
  }

  switch (name) {
    case 'ZacBuilder':
      final mappedName =
          mapDartTypeToTypescript(allFiles, type.typeArguments.first);
      return 'ZacBuilder<$mappedName>${opt()}';
    case 'ZacListBuilder':
      final mappedName =
          mapDartTypeToTypescript(allFiles, type.typeArguments.first);
      return 'ZacListBuilder<$mappedName>${opt()}';
    case 'ZacMapBuilder':
      final mappedName =
          mapDartTypeToTypescript(allFiles, type.typeArguments.first);
      return 'ZacMapBuilder<$mappedName>${opt()}';
    case 'bool':
      return 'boolean${opt()}';
    case 'String':
    case 'DateTime':
      return 'string${opt()}';
    case 'double':
    case 'int':
      return 'number${opt()}';
    case 'void':
    case 'dynamic':
    case 'Object':
      return 'any${opt()}';
    case 'Map':
      return 'Record<string, ${mapDartTypeToTypescript(allFiles, type.typeArguments.last, depth + 1)}>${opt()}';
    case 'List':
    case 'Set':
    case 'Iterable':
      return 'Array<${mapDartTypeToTypescript(allFiles, type.typeArguments.first, depth + 1)}>${opt()}';
    default:
      return isFlutterNativeType(type)
          ? 'native.${NativeTypes.getName(type)}'
          : OneClass.cleanUpFlutterPrefix(
              type.getDisplayString(withNullability: false));
  }
}

// class Template {
//   Template(this.allFiles);
//   final AllFiles allFiles;

//   /// Will produce a TS Class property like
//   /// private ignoredProp1?: T;
//   ///
//   /// Classes with Type Params have to use the Type Param somehow or otherwise
//   /// TypeScript will complain of an "unused" Type Param.
//   String getIgnoredProp(TsAbstractClass cls) {
//     if (cls.element.typeParameters.isEmpty) return '';
//     int i = 1;

//     return cls.element.typeParameters.map((e) {
//       return 'private ignoredProp${i++}?: ${e.getDisplayString(withNullability: false)};';
//     }).join('\n');
//   }

//   @override
//   String toString() {
//     final abstractsTpl = allFiles.abstracts.map((abs) {
//       return '''
// export abstract class ${abs.classNameWithTypes} extends ZacConverter${abs.implements.isEmpty ? '' : ' implements ${abs.implements.join(', ')}'} {
//   ${getIgnoredProp(abs)}
// }''';
//     }).join('\n');

//     final builderTpl = allFiles.builders.map((b) {
//       final mappedCtor = b.unionValueCtor.map((ctor) {
//         final mappedParams = ctor.element.parameters.map((paramEle) {
//           final mappedType = mapDartTypeToTypescript(allFiles, paramEle.type);

//           /// This will allow a param to be required but still to accept null
//           /// param: string | null
//           /// In Dart this could be {required String? param}
//           ///
//           /// But it will also allow a param to be completely optional
//           /// param?: string
//           /// In Dart this could be {String? param}
//           ///
//           /// Also the analyzers isOptional could not be used here because
//           /// isOptional is false when Dart uses {required String? param}
//           /// So just check if the type ends with an ? and assume it is Optional
//           final isOptional = paramEle.type
//               .getDisplayString(withNullability: true)
//               .endsWith('?');
//           var paramNameOpt = (!paramEle.isRequired && isOptional) ? '?' : '';
//           var orNull = (paramEle.isRequired && isOptional) ? ' | null' : '';

//           return '${paramEle.displayName}$paramNameOpt: $mappedType$orNull';
//         });

//         return '''
// static ${ctor.name}(${mappedParams.isNotEmpty ? 'data: {${mappedParams.join(',\n')}}' : ''}) {
//   return new ${b.className}({
//     converter: '${ctor.unionValue}'${mappedParams.isNotEmpty ? ',' : ''}
//     ${mappedParams.isNotEmpty ? '...data' : ''}
//   })
// }''';
//       });
//       return '''
// export class ${b.className} extends ZacConverter${b.implements.isEmpty ? '' : ' implements ${b.implements.join(', ')}'} {
//   ${mappedCtor.join('\n')}
// }''';
//     }).join('\n');

//     return '''
// /* eslint-disable @typescript-eslint/no-explicit-any */
// import { DartDouble, DartInt, DartDateTime, ZacTypes, ZacConverter } from "./base"
// import { ZacValue, ZacValueList, ZacValueConsumeOnly } from "./zac/zac_value"

// $abstractsTpl
// $builderTpl
// ''';
//   }
// }


// String mapDartTypeToTypescript(AllFiles allFiles, DartType type,
//     [int depth = 0]) {
//   if (type is DynamicType) {
//     return 'any';
//   }
//   if (type is! InterfaceType) {
//     throw Error();
//   }
//   var name = type.getDisplayString(withNullability: false);
//   if (type.typeArguments.isNotEmpty) {
//     name = name.split('<').first;
//   }
//   name = cleanUpFlutterPrefix(name);
//   String opt() {
//     if (depth == 0) return '';
//     return type.getDisplayString(withNullability: true).endsWith('?')
//         ? ' | null'
//         : '';
//   }

//   switch (name) {
//     case 'bool':
//       return 'boolean${opt()}';
//     case 'String':
//       return 'string${opt()}';
//     case 'DateTime':
//       return 'DartDateTime${opt()}';
//     case 'double':
//       return 'DartDouble${opt()}';
//     case 'int':
//       return 'DartInt${opt()}';
//     case 'dynamic':
//     case 'Object':
//       return 'ZacTypes${opt()}';
//     case 'Map':
//       return 'Record<string, ${mapDartTypeToTypescript(allFiles, type.typeArguments.last, depth + 1)}>${opt()}';
//     case 'List':
//     case 'Set':
//     case 'Iterable':
//       return 'Array<${mapDartTypeToTypescript(allFiles, type.typeArguments.first, depth + 1)}>${opt()}';
//     default:
//       if (allFiles.allKnownTypes.contains(name)) {
//         if (type.typeArguments.isEmpty) {
//           return '$name${opt()}';
//         }

//         final mappedTypes = type.typeArguments.map((subType) {
//           return mapDartTypeToTypescript(allFiles, subType, depth + 1);
//         });

//         /// This will map a f.e. ZacDouble
//         /// to Typescript: ZacValue<DartDouble> | DartDouble
//         if ('ZacValue' == name || 'ZacValueList' == name) {
//           late String unionTypes;
//           switch (name) {
//             case 'ZacValue':
//               unionTypes = mappedTypes.join(' | ');
//               break;
//             case 'ZacValueList':
//               unionTypes = 'Array<${mappedTypes.join(' | ')}>';
//               break;
//             default:
//               throw Error();
//           }
//           final zacValueTypes = mappedTypes.join(',');

//           return '$name<$zacValueTypes> | $unionTypes${opt()}';
//         }

//         return '$name<${mappedTypes.join(',')}>${opt()}';
//       }
//       return 'any';
//   }
// }