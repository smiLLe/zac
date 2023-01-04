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
  late final String nativeTypesFiles;
  late final String jsRoot;
  parser.addMultiOption('path', callback: (list) => paths = list);
  parser.addOption(
    'nativeTypesFiles',
    mandatory: true,
    callback: (str) => nativeTypesFiles = str ?? 'UNKNOWN PATH',
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

String cleanUpFlutterPrefix(String name) {
  if (name.startsWith('Flutter')) {
    return name.substring('Flutter'.length);
  }

  return name;
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

extension ZacBuilderExtension on List<InterfaceType> {
  bool implementsZacBuilder() {
    return any((element) {
      final displayString = element.getDisplayString(withNullability: false);
      return displayString.startsWith('ZacBuilder');
    });
  }

  InterfaceType getImplementedZacBuilder() {
    return firstWhere((element) {
      final displayString = element.getDisplayString(withNullability: false);
      return displayString.startsWith('ZacBuilder');
    });
  }
}

extension ClassElementExtension on ClassElement {
  DartType getZacBuilderType() {
    final zacBuilder = allSupertypes.getImplementedZacBuilder();
    return zacBuilder.typeArguments.first;
  }
}

// Future<void> createNativeTypesFile(
//     String outFile, NativeTypes nativeTypes) async {
//   final items = nativeTypes.map.entries.map((e) {
//     return '''
// export interface ${e.key} ${e.value is String ? 'extends ${e.value}' : ''} {
//   _${e.key}: unknown;
// }
// ''';
//   });

//   final writeFile = File(outFile);
//   writeFile.createSync();
//   writeFile.writeAsString(items.join('\n'));
// }

Future<void> createClassesFile(String outFile, AllFiles allFiles) async {
  final template = Template(allFiles);
  final writeFile = File(outFile);
  writeFile.createSync();
  writeFile.writeAsString(template.toString());

//   final builders = allFiles.builders.map((builder) {
//     final zacBuilderType = builder.getZacBuilderType();
//     final typeName = isFlutterNativeType(zacBuilderType)
//         ? 'native.${NativeTypes.getName(zacBuilderType)}'
//         : zacBuilderType.getDisplayString(withNullability: false);

//     final ctorTmpl = builder.constructors
//         .where((ctor) {
//           return !(!ctor.isFactory ||
//               ctor.name == 'fromJson' ||
//               null == ctor.redirectedConstructor);
//         })
//         .map((ctor) => UnionValueCtor(ctor))
//         .map((ctor) {
//           return '''
// static ${ctor.name}() {
//   return new ${builder.name}({});
// }
// ''';
//         });

//     return '''
// export class ${builder.name} extends ZacBuilder<$typeName> {
//   ${ctorTmpl.join('\n')}
// }''';
//   });

//   final transformer = allFiles.zacTransformer.map((builder) {
//     return 'export class ${builder.name} extends ZacTransformer {}';
//   });

//   final actions = allFiles.zacActions.map((builder) {
//     return 'export class ${builder.name} extends ZacAction {}';
//   });

//   final writeFile = File(outFile);
//   writeFile.createSync();
//   writeFile.writeAsString('''
// import { ZacBuilder, ZacTransformer, ZacAction } from 'base';
// import * as native from 'generated.nativetypes';

// ${builders.join('\n')}
// ${transformer.join('\n')}
// ${actions.join('\n')}
// ''');
}

class NativeTypes {
  NativeTypes(this.allFiles);

  final AllFiles allFiles;
  // final Map<String, String?> map = {
  //   'Widget': null,
  //   'AlignmentGeometry': null,
  //   'EdgeInsetsGeometry': null,
  //   'Flexible': null,
  //   'Alignment': null,
  // };

  static String getName(DartType type) {
    if (null != type.alias) {
      return type.alias!.element.name;
    }
    if (type is InterfaceType) {
      return type.element.name;
      // return type.getDisplayString(withNullability: false);
    }

    throw StateError('Invalid type in $NativeTypes: $type');
  }

  // Future<void> create() async {
  //   for (var builder in allFiles.builders) {
  //     for (var supertype in builder.allSupertypes) {
  //       final displayString =
  //           supertype.getDisplayString(withNullability: false);
  //       if (displayString.startsWith('ZacBuilder') ||
  //           displayString.startsWith('ZacListBuilder') ||
  //           displayString.startsWith('ZacMapBuilder')) {
  //         add(supertype.typeArguments.first);
  //         // _fromSuperType(supertype);
  //       }
  //     }
  //   }
  // }

  // void _fromSuperType(ParameterizedType type) {
  //   for (var typeArg in type.typeArguments) {
  //     if (typeArg is ParameterizedType) {
  //       _fromSuperType(typeArg);

  //       if (typeArg is InterfaceType) {
  //         if (null != typeArg.superclass) {
  //           _fromSuperType(typeArg.superclass!);
  //         }
  //       }
  //     } else {
  //       add(typeArg);
  //     }
  //   }
  //   for (var typeArg in type.typeArguments) {
  //     if (typeArg is InterfaceType) {
  //       for (var i in typeArg.interfaces) {
  //         _fromSuperType(i);
  //       }
  //     }
  //   }
  //   add(type);
  // }

  // void add(DartType type) {
  //   if (!isFlutterNativeType(type)) {
  //     return;
  //   }

  //   if (type is! InterfaceType) {
  //     map.putIfAbsent(NativeTypes.getName(type), () => null);
  //     return;
  //   }

  //   final supertypes = type.superclass!.allSupertypes;

  //   if (supertypes.any((element) =>
  //       element.getDisplayString(withNullability: false) == 'Widget')) {
  //     map.putIfAbsent(NativeTypes.getName(type), () => 'Widget');
  //   } else if (supertypes.any((element) =>
  //           element.getDisplayString(withNullability: false) ==
  //           'AlignmentGeometry') ||
  //       supertypes.any((element) => element.interfaces.any((element) =>
  //           element.getDisplayString(withNullability: false) ==
  //           'AlignmentGeometry'))) {
  //     map.putIfAbsent(NativeTypes.getName(type), () => 'AlignmentGeometry');
  //   } else if (supertypes.any((element) =>
  //           element.getDisplayString(withNullability: false) ==
  //           'EdgeInsetsGeometry') ||
  //       type.interfaces.any((element) =>
  //           element.getDisplayString(withNullability: false) ==
  //           'EdgeInsetsGeometry')) {
  //     map.putIfAbsent(NativeTypes.getName(type), () => 'EdgeInsetsGeometry');
  //   } else if (supertypes.any((element) =>
  //           element.getDisplayString(withNullability: false) == 'Flexible') ||
  //       supertypes.any((element) => element.interfaces.any((element) =>
  //           element.getDisplayString(withNullability: false) == 'Flexible'))) {
  //     map.putIfAbsent(NativeTypes.getName(type), () => 'Flexible');
  //   } else if (supertypes.any((element) =>
  //           element.getDisplayString(withNullability: false) == 'Alignment') ||
  //       supertypes.any((element) => element.interfaces.any((element) =>
  //           element.getDisplayString(withNullability: false) == 'Alignment'))) {
  //     map.putIfAbsent(NativeTypes.getName(type), () => 'Alignment');
  //   } else {
  //     map.putIfAbsent(NativeTypes.getName(type), () => null);
  //   }
  //   // final superName = NativeTypes.getName(type.superclass!);
  //   // switch (superName) {
  //   //   case 'Enum':
  //   //   case 'Object':
  //   //     map.putIfAbsent(NativeTypes.getName(type), () => null);
  //   //     break;
  //   //   default:
  //   //     // add(type.superclass!);
  //   //     map.putIfAbsent(NativeTypes.getName(type), () => superName);
  //   // }
  //   // if (!isFlutterNativeType(type)) {
  //   //   return;
  //   // }

  //   // if (type is! InterfaceType || null == type.superclass) {
  //   //   map.putIfAbsent(NativeTypes.getName(type), () => null);
  //   //   return;
  //   // }

  //   // final superName = NativeTypes.getName(type.superclass!);
  //   // switch (superName) {
  //   //   case 'Enum':
  //   //   case 'Object':
  //   //     map.putIfAbsent(NativeTypes.getName(type), () => null);
  //   //     break;
  //   //   default:
  //   //     // add(type.superclass!);
  //   //     map.putIfAbsent(NativeTypes.getName(type), () => superName);
  //   // }
  // }
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

  late final Iterable<ClassElement> others = [
    ...files
        .where((oneFile) => oneFile.others.isNotEmpty)
        .fold<Iterable<ClassElement>>([], (previousValue, element) {
      return [...previousValue, ...element.others];
    })
  ]..sortByCompare((element) => element.displayName, (a, b) => a.compareTo(b));

  late final Iterable<ClassElement> builders = [
    ...files
        .where((oneFile) => oneFile.builders.isNotEmpty)
        .fold<Iterable<ClassElement>>([], (previousValue, element) {
      return [...previousValue, ...element.builders];
    })
  ]..sortByCompare((element) => element.displayName, (a, b) => a.compareTo(b));

  late final Iterable<ClassElement> zacActions = [
    ...files
        .where((oneFile) => oneFile.zacActions.isNotEmpty)
        .fold<Iterable<ClassElement>>([], (previousValue, element) {
      return [...previousValue, ...element.zacActions];
    })
  ]..sortByCompare((element) => element.displayName, (a, b) => a.compareTo(b));

  late final Iterable<ClassElement> zacTransformer = [
    ...files
        .where((oneFile) => oneFile.zacTransformer.isNotEmpty)
        .fold<Iterable<ClassElement>>([], (previousValue, element) {
      return [...previousValue, ...element.zacTransformer];
    })
  ]..sortByCompare((element) => element.displayName, (a, b) => a.compareTo(b));
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
  late final Iterable<ClassElement> others = _filteredClasses
      .where((cls) => !cls.allSupertypes.any((element) => element
          .getDisplayString(withNullability: false)
          .startsWith('ZacBuilder')))
      .where((cls) => !cls.allSupertypes.any((element) => element
          .getDisplayString(withNullability: false)
          .startsWith('ZacAction')))
      .where((cls) => !cls.allSupertypes.any((element) => element
          .getDisplayString(withNullability: false)
          .startsWith('ZacTransformer')));

  late final Iterable<ClassElement> builders =
      _builders.where((cls) => cls.typeParameters.isEmpty);

  late final Iterable<ClassElement> buildersWithTypeParams =
      _builders.where((cls) => cls.typeParameters.isNotEmpty);

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
}

class Template {
  Template(this.allFiles);
  final AllFiles allFiles;

  Iterable<String> _ctorTmpl(ClassElement freezedClass) {
    return freezedClass.constructors
        .where((ctor) {
          return !(!ctor.isFactory ||
              ctor.name == 'fromJson' ||
              null == ctor.redirectedConstructor);
        })
        .map((ctor) => UnionValueCtor(ctor))
        .map((ctor) {
          final mappedParams = ctor.element.parameters.map((paramEle) {
            final mappedType = mapDartTypeToTypescript(allFiles, paramEle.type);

            /// This will allow a param to be required but still to accept null
            /// param: string | null
            /// In Dart this could be {required String? param}
            ///
            /// But it will also allow a param to be completely optional
            /// param?: string
            /// In Dart this could be {String? param}
            ///
            /// Also the analyzers isOptional could not be used here because
            /// isOptional is false when Dart uses {required String? param}
            /// So just check if the type ends with an ? and assume it is Optional
            final isOptional = paramEle.type
                .getDisplayString(withNullability: true)
                .endsWith('?');
            var paramNameOpt = (!paramEle.isRequired && isOptional) ? '?' : '';
            var orNull = (paramEle.isRequired && isOptional) ? ' | null' : '';

            return '${paramEle.displayName}$paramNameOpt: $mappedType$orNull';
          });

          return '''
static ${ctor.name}(${mappedParams.isNotEmpty ? 'data: {${mappedParams.join(',\n')}}' : ''}) {
  return new ${freezedClass.name}({
    builder: '${ctor.unionValue}'${mappedParams.isNotEmpty ? ',' : ''}
    ${mappedParams.isNotEmpty ? '...data' : ''}
  })
}''';
        });
  }

  Iterable<String> _builderTmpl() {
    return allFiles.builders.map((b) {
      final zacBuilderType = b.getZacBuilderType();
      final typeName = mapDartTypeToTypescript(allFiles, zacBuilderType);

      return '''
export class ${b.name} extends ZacBuilder<$typeName> {
  ${_ctorTmpl(b).join('\n')}
}''';
    });
  }

  Iterable<String> _othersTmpl() {
    return allFiles.others.map((b) {
      return '''
export class ${b.name} extends ZacConvertable {
  ${_ctorTmpl(b).join('\n')}
}''';
    });
  }

  Iterable<String> _transformersTmpl() {
    return allFiles.zacTransformer.map((b) {
      return '''
export class ${b.name} extends ZacTransformer {
  ${_ctorTmpl(b).join('\n')}
}''';
    });
  }

  Iterable<String> _actionsTmpl() {
    return allFiles.zacActions.map((b) {
      return '''
export class ${b.name} extends ZacAction {
  ${_ctorTmpl(b).join('\n')}
}''';
    });
  }

  @override
  String toString() {
    return '''
/* eslint-disable @typescript-eslint/no-explicit-any */
import { ConsumeSharedValue, ZacConvertable, ZacBuilder, ZacListBuilder, ZacMapBuilder, ZacTransformer, ZacAction, DartDateTime } from 'base';
import * as native from 'generated.nativetypes';

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
        : type.alias!.element.name;
  }
  if (type is! InterfaceType) {
    throw Error();
  }
  var name = type.getDisplayString(withNullability: false);
  if (type.typeArguments.isNotEmpty) {
    name = name.split('<').first;
  }
  name = cleanUpFlutterPrefix(name);
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
      return 'string${opt()}';
    case 'DateTime':
      return 'DartDateTime${opt()}';
    case 'double':
    case 'int':
      return 'number${opt()}';
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
          : type.getDisplayString(withNullability: false);
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