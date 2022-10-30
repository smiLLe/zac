import 'dart:io';

import 'package:analyzer/dart/analysis/analysis_context_collection.dart';
import 'package:analyzer/dart/analysis/features.dart';
import 'package:analyzer/dart/analysis/results.dart';
import 'package:analyzer/dart/analysis/session.dart';
import 'package:analyzer/dart/analysis/utilities.dart';
import 'package:analyzer/dart/ast/ast.dart';
import 'package:analyzer/dart/element/element.dart';
import 'package:analyzer/dart/element/type.dart';

void main() async {
  final ctxColl = AnalysisContextCollection(includedPaths: [
    File('${Directory.current.path}${Platform.pathSeparator}${[
      'zac',
      'packages',
      'zac',
      'lib',
      'src',
    ].join(Platform.pathSeparator)}')
        .path
  ]);

  for (var ctx in ctxColl.contexts) {
    final fileSystemEntities = Directory.fromUri(
            File('${Directory.current.path}${Platform.pathSeparator}${[
      'zac',
      'packages',
      'zac',
      'lib',
      'src',
    ].join(Platform.pathSeparator)}')
                .uri)
        .listSync(recursive: true)
        .whereType<File>()
        .where((file) => !(file.path.contains('.g.dart') ||
            file.path.contains('.freezed.dart') ||
            file.path.contains('${Platform.pathSeparator}all.dart')))
        .toList();

    final filesToCreate = await Future.wait([
      ...fileSystemEntities.map((file) async {
        final lib = (await ctx.currentSession.getResolvedLibrary(file.path))
            as ResolvedLibraryResult;

        return OneFile(lib, file.uri.pathSegments.last);
      })
    ]);

    final allFiles = AllFiles(filesToCreate);

    final writeFile = File(
        '${Directory.current.path}${Platform.pathSeparator}${[
      'zac_js',
      'src',
      'test.ts'
    ].join(Platform.pathSeparator)}');
    writeFile.createSync();
    await writeFile.writeAsString('''
import { DartDouble, DartInt, FlutterWidget, ValidTypes, ZacConverter, ZacTransformer } from "./base"
import { ZacAction, ZacActions } from "./zac/action"
import { ZacValue, ZacValueList, ZacValueRead } from "./zac/zac_value"

${allFiles.abstracts.join('\n')}
${allFiles.builders.join('\n')}''');
  }
}

/// Map "simple" Dart types to TS types
String getMappedType(String dartType) {
  /// for example Map<string, dynamic> to {[key: string | number]: ValidTypes}}
  if (dartType.startsWith('Map<')) {
    final parts =
        dartType.replaceAll('Map<', '').replaceAll('>', '').split(',');
    final mappedParts =
        parts.map((e) => e.trim()).map((e) => getMappedType(e)).toList();
    return '{[key: string | number]: ${mappedParts[1]}}';
  }

  switch (dartType) {
    case 'bool':
      return 'boolean';
    case 'bool?':
      return 'boolean?';
    case 'String':
    case 'DateTime':
      return 'string';
    case 'String?':
    case 'DateTime?':
      return 'string?';
    case 'double':
      return 'DartDouble';
    case 'double?':
      return 'DartDouble?';
    case 'int':
      return 'DartInt';
    case 'int?':
      return 'DartInt?';
    case 'dynamic':
    case 'Object':
    case 'Object?':
      return 'ValidTypes';
    case 'GlobalKey<NavigatorState>':
      return 'any /*$dartType*/';
    default:
      return dartType;
  }
}

/// Map DartTypes with generics like List<T>, Map<T, T>, SomeClass<T>
/// to Typescript Types
String getMappedTypeWithTypeArgs(String dartType, List<DartType> types) {
  if (dartType == 'Map' && types.length == 2) {
    return '{[key: string]: ${getMappedType(types[1].getDisplayString(withNullability: true))}}';
  }
  if (dartType == 'List' && types.length == 1) {
    return 'Array<${getMappedType(types[0].getDisplayString(withNullability: true))}>';
  }
  if (dartType == 'Iterable' && types.length == 1) {
    return 'Array<${getMappedType(types[0].getDisplayString(withNullability: true))}>';
  }
  if (dartType == 'Set' && types.length == 1) {
    return 'Array<${getMappedType(types[0].getDisplayString(withNullability: true))}>';
  }

  return '$dartType<${types.map((e) {
    return getMappedType(e.getDisplayString(withNullability: true));
  }).join(',')}>';
}

class AllFiles {
  final Iterable<OneFile> files;

  AllFiles(this.files);

  late final Iterable<TsAbstractClass> abstracts = files
      .where((oneFile) => oneFile.abstracts.isNotEmpty)
      .fold<Iterable<TsAbstractClass>>([], (previousValue, element) {
    return [...previousValue, ...element.abstracts];
  }).toList()
    ..sort((a, b) => a.order.compareTo(b.order));

  late final Iterable<TsClass> builders = files
      .where((oneFile) => oneFile.builders.isNotEmpty)
      .fold<Iterable<TsClass>>([], (previousValue, element) {
    return [...previousValue, ...element.builders];
  }).toList()
    ..sort((a, b) => a.order.compareTo(b.order));
}

class OneFile {
  final ResolvedLibraryResult lib;
  final String origin;

  OneFile(this.lib, this.origin);

  late final Iterable<TsAbstractClass> abstracts = lib.element.topLevelElements
      .whereType<ClassElement>()
      .where((cls) => !cls.displayName.startsWith('_'))
      .where((cls) => cls.isAbstract)
      .where((cls) => cls.metadata
          .where((element) =>
              element
                  .computeConstantValue()
                  ?.type
                  ?.getDisplayString(withNullability: false) ==
              'TsClass')
          .isNotEmpty) // free
      .map((cls) {
    final order = cls.metadata
        .map((e) => e.computeConstantValue())
        .where((e) =>
            e?.type?.getDisplayString(withNullability: false) == 'TsClass')
        .map((e) => e?.getField('order')?.toIntValue())
        .first;
    if (null == order) {
      throw Error();
    }
    return TsAbstractClass(cls, order);
  });

  late final Iterable<TsClass> builders = lib.element.topLevelElements
      .whereType<ClassElement>()
      .where((cls) => !cls.displayName.startsWith('_'))
      .where((cls) => !cls.isAbstract)
      .where((cls) => cls.metadata
          .where((element) =>
              element
                  .computeConstantValue()
                  ?.type
                  ?.getDisplayString(withNullability: false) ==
              'TsClass')
          .isNotEmpty) // free
      .map((cls) {
    final order = cls.metadata
        .map((e) => e.computeConstantValue())
        .where((e) =>
            e?.type?.getDisplayString(withNullability: false) == 'TsClass')
        .map((e) => e?.getField('order')?.toIntValue())
        .first;
    if (null == order) {
      throw Error();
    }

    return TsClass(cls, order);
  });
}

class TsClass {
  final ClassElement element;
  final int order;

  TsClass(this.element, this.order);

  /// fixes reserved Typescript names
  /// or create a name for base constructor
  String ctorName(ConstructorElement ctor) {
    switch (ctor.name) {
      case '':
        return 'new';
      case 'length':
        return 'length_';
      case 'name':
        return 'name_';
      default:
        return ctor.name;
    }
  }

  late final String className = element.displayName;

  late final String implements = element.interfaces.isEmpty
      ? 'ZacConverter'
      : element.interfaces
          .map((e) => e.getDisplayString(withNullability: false))
          .join(',');

  late final Iterable<String> staticCtors = element.constructors.where((ctor) {
    return !(!ctor.isFactory ||
        ctor.name == 'fromJson' ||
        null == ctor.redirectedConstructor);
  }).map((ctor) {
    String? unionValue = ctor.metadata
        .map((e) => e.computeConstantValue())
        .firstWhere((element) =>
            element?.type?.getDisplayString(withNullability: false) ==
            'FreezedUnionValue')
        ?.getField('value')
        ?.toStringValue();

    final params = ctor.parameters.map((param) {
      if (param.type is! InterfaceType) {
        throw Error();
      }

      final t = param.type as InterfaceType;

      /// Everything that has no generic like: int, SomeClass, string...
      if (t.typeArguments.isEmpty) {
        return '${param.displayName}${param.isOptional ? '?' : ''}: ${getMappedType(t.getDisplayString(withNullability: false))}';
      }

      /// Here classes with generics like ZacValue<XYZ, ABC>

      /// ZacValue<double> into ZacValue
      final typeName =
          param.type.getDisplayString(withNullability: false).split('<')[0];

      return '${param.displayName}${param.isOptional ? '?' : ''}: ${getMappedTypeWithTypeArgs(typeName, t.typeArguments)}';
    });
    return '''
static ${ctorName(ctor)}(${params.isNotEmpty ? 'data: {${params.join(',\n')}}' : ''}) {
  return new $className({
    converter: '$unionValue'${params.isNotEmpty ? ',' : ''}
    ${params.isNotEmpty ? '...data' : ''}
  })
}''';
  });

  @override
  String toString() {
    return '''
export ${element.isAbstract ? 'abstract ' : ''}class $className extends $implements {
  ${staticCtors.join('\n')}
}''';
  }
}

class TsAbstractClass extends TsClass {
  TsAbstractClass(super.element, super.order);

  @override
  String toString() {
    return 'export abstract class $className extends $implements {}';
  }
}
