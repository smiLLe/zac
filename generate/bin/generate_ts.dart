// ignore_for_file:  depend_on_referenced_packages

import 'dart:io';

import 'package:analyzer/dart/analysis/analysis_context.dart';
import 'package:analyzer/dart/analysis/analysis_context_collection.dart';
import 'package:analyzer/dart/analysis/results.dart';
import 'package:analyzer/dart/element/element.dart';
import 'package:analyzer/dart/element/type.dart';
import 'package:args/args.dart';

const String classAnnotation = 'ZacGenerate';

void main(List<String> args) async {
  final parser = ArgParser();
  late final List<String> paths;
  late final String outFile;
  late final String jsRoot;
  parser.addMultiOption('path', callback: (list) => paths = list);
  parser.addOption(
    'outFile',
    mandatory: true,
    callback: (str) => outFile = str ?? 'UNKNOWN PATH',
  );
  parser.addOption(
    'jsRoot',
    mandatory: true,
    callback: (str) => jsRoot = str ?? 'UNKNOWN PATH',
  );
  parser.parse(args);
  print(paths);
  final ctxColl = AnalysisContextCollection(includedPaths: paths);

  final listOfAllFiles = <OneFile>[];
  for (var path in paths) {
    final ctx = ctxColl.contextFor(path);
    final files = await filesToCreate(ctx, Uri.directory(path));
    listOfAllFiles.addAll(files);
  }

  final globals = Globals();
  final allFiles = AllFiles(listOfAllFiles);

  for (var cls in allFiles.zacBuilder) {
    for (var supertype in cls.allSupertypes) {
      final displayString = supertype.getDisplayString(withNullability: false);
      if (displayString.startsWith('ZacBuilder')) {
        if (null != supertype.typeArguments.first.alias) return;
        globals.addNativeType(supertype.typeArguments.first);
      } else if (displayString.startsWith('ZacListBuilder')) {
        if (null != supertype.typeArguments.first.alias) return;
        globals.addNativeType(supertype.typeArguments.first);
      } else if (displayString.startsWith('ZacMapBuilder')) {
        if (null != supertype.typeArguments.first.alias) return;
        globals.addNativeType(supertype.typeArguments.first);
      }
    }
  }

  final items = globals.nativeTypesMap.entries.map((e) {
    return '''
interface ${e.key} ${e.value is String ? 'extends ${e.value}' : ''} {
  _${e.key}: unknown;
}
''';
  });

  final writeFile = File(outFile);
  writeFile.createSync();
  await writeFile.writeAsString(items.join('\n'));

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

String cleanUpFlutterPrefix(String name) {
  if (name.startsWith('Flutter')) {
    return name.substring('Flutter'.length);
  }

  return name;
}

bool isFlutterNativeType(InterfaceType type) {
  return type.element.library.identifier.startsWith('package:flutter') ||
      type.element.library.identifier.startsWith('dart:');
}

class Globals {
  final Map<String, String?> nativeTypesMap = {
    // 'num': null,
    // 'int': null,
    // 'double': null,
    // 'DateTime': null,
    // 'String': null,
    // 'bool': null,
  };

  final List<OneFile> allFiles = [];

  void addNativeType(DartType type) {
    if (type is! InterfaceType) {
      return;
    }
    if (!isFlutterNativeType(type)) {
      return;
    }

    if (null != type.superclass) {
      final superName = type.superclass!.element.name;
      switch (superName) {
        case 'Enum':
        case 'Object':
          nativeTypesMap.putIfAbsent(type.element.name, () => null);
          break;
        default:
          addNativeType(type.superclass!);
          nativeTypesMap.putIfAbsent(
              type.element.name, () => type.superclass!.element.name);
      }
    } else {
      nativeTypesMap.putIfAbsent(type.element.name, () => null);
    }
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

  return await Future.wait([
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

  late final Iterable<ClassElement> zacBuilder = files
      .where((oneFile) => oneFile.zacBuilder.isNotEmpty)
      .fold<Iterable<ClassElement>>([], (previousValue, element) {
    return [...previousValue, ...element.zacBuilder];
  }).toList()
    ..sort((a, b) => a.name.compareTo(b.name));

  late final Iterable<ClassElement> zacActions = files
      .where((oneFile) => oneFile.zacActions.isNotEmpty)
      .fold<Iterable<ClassElement>>([], (previousValue, element) {
    return [...previousValue, ...element.zacActions];
  }).toList()
    ..sort((a, b) => a.name.compareTo(b.name));

  late final Iterable<ClassElement> zacTransformer = files
      .where((oneFile) => oneFile.zacTransformer.isNotEmpty)
      .fold<Iterable<ClassElement>>([], (previousValue, element) {
    return [...previousValue, ...element.zacTransformer];
  }).toList()
    ..sort((a, b) => a.name.compareTo(b.name));
}

class OneFile {
  final ResolvedLibraryResult lib;
  final String origin;

  OneFile(this.lib, this.origin);

  late final Iterable<ClassElement> _filteredClasses = lib
      .element.topLevelElements
      .whereType<ClassElement>()
      .where((cls) => !cls.isPrivate)
      .where((cls) => !cls.displayName.startsWith('_'));

  late final Iterable<ClassElement> _zacBuilder = _filteredClasses
      .where((cls) => cls.allSupertypes.any((element) => element
          .getDisplayString(withNullability: false)
          .startsWith('ZacBuilder')))
      .where((cls) => cls.typeParameters.isEmpty);

  late final Iterable<ClassElement> zacBuilder =
      _zacBuilder.where((cls) => cls.typeParameters.isEmpty);

  late final Iterable<ClassElement> zacBuilderWithTypeParams =
      _zacBuilder.where((cls) => cls.typeParameters.isNotEmpty);

  late final Iterable<ClassElement> zacActions = _filteredClasses
      .where((cls) => cls.allSupertypes.any((element) => element
          .getDisplayString(withNullability: false)
          .startsWith('ZacAction')))
      .where((cls) => cls.typeParameters.isEmpty);

  late final Iterable<ClassElement> zacTransformer = _filteredClasses
      .where((cls) => cls.allSupertypes.any((element) => element
          .getDisplayString(withNullability: false)
          .startsWith('ZacTransformer')))
      .where((cls) => cls.typeParameters.isEmpty);
}

// class TsAbstractClass {
//   TsAbstractClass(this.element) {
//     final o = element.metadata
//         .map((e) => e.computeConstantValue())
//         .where((e) =>
//             e?.type?.getDisplayString(withNullability: false) ==
//             classAnnotation)
//         .map((e) => e?.getField('order')?.toIntValue())
//         .first;
//     if (null == o) {
//       throw Error();
//     }
//     order = o;
//   }

//   final ClassElement element;
//   late final int order;

//   late final String className = () {
//     return cleanUpFlutterPrefix(element.displayName);
//   }();

//   late final String classNameWithTypes = () {
//     return cleanUpFlutterPrefix(
//         element.thisType.getDisplayString(withNullability: false));
//   }();

//   late final List<String> implements = element.interfaces.isEmpty
//       ? <String>[]
//       : element.interfaces

//           /// only accept classes that are marked with the classAnnotation
//           .where((element) {
//             return element.element2.metadata
//                 .map((e) => e.computeConstantValue())
//                 .where((e) =>
//                     e?.type?.getDisplayString(withNullability: false) ==
//                     classAnnotation)
//                 .isNotEmpty;
//           })
//           .map((e) =>
//               cleanUpFlutterPrefix(e.getDisplayString(withNullability: false)))
//           .toList();
// }

// class TsClass extends TsAbstractClass {
//   TsClass(super.element);

//   /// all Freezed UnionValues and their factory constructor
//   late final Iterable<UnionValueCtor> unionValueCtor =
//       element.constructors.where((ctor) {
//     return !(!ctor.isFactory ||
//         ctor.name == 'fromJson' ||
//         null == ctor.redirectedConstructor);
//   }).map((ctor) => UnionValueCtor(ctor));
// }

// class UnionValueCtor {
//   UnionValueCtor(this.element);
//   final ConstructorElement element;

//   /// fixes reserved Typescript names
//   /// or create a name for base constructor
//   late final String name = () {
//     switch (element.name) {
//       case '':
//         return 'new';
//       case 'length':
//         return 'length_';
//       case 'name':
//         return 'name_';
//       default:
//         return element.name;
//     }
//   }();

//   /// f:1:SizedBox etc
//   late final String unionValue = () {
//     final uv = element.metadata
//         .map((e) => e.computeConstantValue())
//         .firstWhere((element) =>
//             element?.type?.getDisplayString(withNullability: false) ==
//             'FreezedUnionValue')
//         ?.getField('value')
//         ?.toStringValue();
//     if (null == uv) {
//       throw StateError('UnionValue must not be null');
//     }
//     return uv;
//   }();
// }

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