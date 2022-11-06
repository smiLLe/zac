// ignore_for_file:  depend_on_referenced_packages

import 'dart:io';

import 'package:analyzer/dart/analysis/analysis_context.dart';
import 'package:analyzer/dart/analysis/analysis_context_collection.dart';
import 'package:analyzer/dart/analysis/results.dart';
import 'package:analyzer/dart/element/element.dart';
import 'package:analyzer/dart/element/type.dart';
import 'package:args/args.dart';

void main(List<String> args) async {
  final parser = ArgParser();
  late final List<String> paths;
  late final String outFile;
  parser.addMultiOption('path', callback: (list) => paths = list);
  parser.addOption(
    'outFile',
    mandatory: true,
    callback: (str) => outFile = str ?? 'UNKNOWN PATH',
  );
  parser.parse(args);

  final ctxColl = AnalysisContextCollection(includedPaths: paths);

  for (var ctx in ctxColl.contexts) {
    final listOfAllFiles = (await Future.wait(paths
            .map((path) => Uri.directory(path))
            .map((uri) => filesToCreate(ctx, uri))))
        .fold<List<OneFile>>([], (previousValue, element) {
      return [...previousValue, ...element];
    });

    final allFiles = AllFiles(listOfAllFiles);

    final writeFile = File(outFile);
    writeFile.createSync();
    await writeFile.writeAsString(Template(allFiles).toString());
  }
}

String cleanUpFlutterPrefix(String name) {
  if (name.startsWith('Flutter')) {
    return name.substring('Flutter'.length);
  }

  return name;
}

String mapDartTypeToTypescript(AllFiles allFiles, DartType type,
    [int depth = 0]) {
  if (type is DynamicType) {
    return 'any';
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
    case 'bool':
      return 'boolean${opt()}';
    case 'String':
      return 'string${opt()}';
    case 'DateTime':
      return 'DartDateTime${opt()}';
    case 'double':
      return 'DartDouble${opt()}';
    case 'int':
      return 'DartInt${opt()}';
    case 'dynamic':
    case 'Object':
      return 'ZacTypes${opt()}';
    case 'Map':
      return 'Record<string, ${mapDartTypeToTypescript(allFiles, type.typeArguments.last, depth + 1)}>${opt()}';
    case 'List':
    case 'Set':
    case 'Iterable':
      return 'Array<${mapDartTypeToTypescript(allFiles, type.typeArguments.first, depth + 1)}>${opt()}';
    default:
      if (allFiles.allKnownTypes.contains(name)) {
        if (type.typeArguments.isEmpty) {
          return '$name${opt()}';
        }

        return '$name<${type.typeArguments.map((subType) {
          return mapDartTypeToTypescript(allFiles, subType, depth + 1);
        }).join(',')}>${opt()}';
      }
      return 'any';
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

  late final Iterable<String> allKnownTypes = [
    'ZacValue',
    'ZacValueRead',
    'ZacValueList',
    'ZacValueListRead',
    ...files.fold(<String>[], (previousValue, oneFile) {
      final allInFile = [
        ...oneFile.abstracts.map((tsClass) => tsClass.className),
        ...oneFile.builders.map((tsClass) => tsClass.className)
      ];
      return [...previousValue, ...allInFile];
    })
  ];

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

  late final Iterable<ClassElement> tsClasses = lib.element.topLevelElements
      .whereType<ClassElement>()
      .where((cls) => !cls.displayName.startsWith('_'))
      .where((cls) => cls.metadata
          .where((element) =>
              element
                  .computeConstantValue()
                  ?.type
                  ?.getDisplayString(withNullability: false) ==
              'TsClass')
          .isNotEmpty);

  late final Iterable<TsAbstractClass> abstracts = tsClasses
      .where((cls) => cls.isAbstract)
      .map((cls) => TsAbstractClass(cls));

  late final Iterable<TsClass> builders =
      tsClasses.where((cls) => !cls.isAbstract).map((cls) => TsClass(cls));
}

class TsAbstractClass {
  TsAbstractClass(this.element) {
    final o = element.metadata
        .map((e) => e.computeConstantValue())
        .where((e) =>
            e?.type?.getDisplayString(withNullability: false) == 'TsClass')
        .map((e) => e?.getField('order')?.toIntValue())
        .first;
    if (null == o) {
      throw Error();
    }
    order = o;
  }

  final ClassElement element;
  late final int order;

  late final String className = () {
    return cleanUpFlutterPrefix(element.displayName);
  }();

  late final List<String> implements = element.interfaces.isEmpty
      ? <String>[]
      : element.interfaces
          .map((e) =>
              cleanUpFlutterPrefix(e.getDisplayString(withNullability: false)))
          .toList();
}

class TsClass extends TsAbstractClass {
  TsClass(super.element);

  /// all Freezed UnionValues and their factory constructor
  late final Iterable<UnionValueCtor> unionValueCtor =
      element.constructors.where((ctor) {
    return !(!ctor.isFactory ||
        ctor.name == 'fromJson' ||
        null == ctor.redirectedConstructor);
  }).map((ctor) => UnionValueCtor(ctor));
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
}

class Template {
  Template(this.allFiles);
  final AllFiles allFiles;

  @override
  String toString() {
    final abstractsTpl = allFiles.abstracts.map((abs) {
      return 'export abstract class ${abs.className} extends ZacConverter${abs.implements.isEmpty ? '' : ' implements ${abs.implements.join(', ')}'} {}';
    }).join('\n');

    final builderTpl = allFiles.builders.map((b) {
      final mappedCtor = b.unionValueCtor.map((ctor) {
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
  return new ${b.className}({
    converter: '${ctor.unionValue}'${mappedParams.isNotEmpty ? ',' : ''}
    ${mappedParams.isNotEmpty ? '...data' : ''}
  })
}''';
      });
      return '''
export class ${b.className} extends ZacConverter${b.implements.isEmpty ? '' : ' implements ${b.implements.join(', ')}'} {
  ${mappedCtor.join('\n')}
}''';
    }).join('\n');

    return '''
/* eslint-disable @typescript-eslint/no-explicit-any */
import { DartDouble, DartInt, DartDateTime, ZacTypes, ZacConverter } from "./base"
import { ZacValue, ZacValueList } from "./zac/zac_value"

$abstractsTpl
$builderTpl
''';
  }
}
