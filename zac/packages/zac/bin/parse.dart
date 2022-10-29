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
  final cur = Directory.current;
  final cur2 = Directory.current.parent.path;

  final file = File('${Directory.current.path}${Platform.pathSeparator}${[
    'zac',
    'packages',
    'zac',
    'lib',
    'src',
    'flutter',
    // 'foundation.dart'
    'dart_ui.dart'
  ].join(Platform.pathSeparator)}');

  final ctxColl = AnalysisContextCollection(includedPaths: [
    File('${Directory.current.path}${Platform.pathSeparator}${[
      'zac',
      'packages',
      'zac',
      'lib',
      'src',
      'flutter'
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
      'flutter',
    ].join(Platform.pathSeparator)}')
                .uri)
        .listSync(recursive: true)
        .whereType<File>()
        .where((file) => !(file.path.contains('.g.dart') ||
            file.path.contains('.freezed.dart') ||
            file.path.contains('all.dart')))
        .toList();

    final contents = await Future.wait([
      ...fileSystemEntities.map((file) async {
        final lib = (await ctx.currentSession.getResolvedLibrary(file.path))
            as ResolvedLibraryResult;

        return '''
/// FROM: ${file.uri.pathSegments.last}
${contentFromLib(lib).join('\n')}''';
      })
    ]);

    final writeFile = File(
        '${Directory.current.path}${Platform.pathSeparator}${[
      'zac_js',
      'src',
      'test.ts'
    ].join(Platform.pathSeparator)}');
    writeFile.createSync();
    await writeFile.writeAsString('''
import { DartDouble, DartInt, FlutterWidget, ValidTypes, ZacConverter } from "./base"
import { ZacAction, ZacActions } from "./zac/action"
import { ZacValue, ZacValueList } from "./zac/zac_value"

${contents.join('\n')}''');
  }
}

/// Map "simple" Dart types to TS types
String getMappedType(String dartType) {
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

Iterable<String> contentFromLib(ResolvedLibraryResult lib) {
  final classes = lib.element.topLevelElements.whereType<ClassElement>();
  return classes.where((cls) => !cls.displayName.startsWith('_')).map((cls) {
    final className = cls.displayName;

    final implements = cls.interfaces.isEmpty
        ? 'ZacConverter'
        : cls.interfaces
            .map((e) => e.getDisplayString(withNullability: false))
            .join(',');

    final staticCtors = cls.constructors.where((ctor) {
      return !(!ctor.isFactory ||
          ctor.name == 'fromJson' ||
          null == ctor.redirectedConstructor);
    }).map((ctor) {
      final name = ctor.name.isEmpty ? 'new' : ctor.name;
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
static $name(${params.isNotEmpty ? 'data: {${params.join(',\n')}}' : ''}) {
  return new $className({
    converter: '$unionValue'${params.isNotEmpty ? ',' : ''}
    ${params.isNotEmpty ? '...data' : ''}
  })
}''';
    });

    return '''
export ${cls.isAbstract ? 'abstract ' : ''}class $className extends $implements {
  ${staticCtors.join('\n')}
}''';
  });
}
