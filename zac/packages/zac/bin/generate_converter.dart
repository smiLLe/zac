// ignore_for_file:  depend_on_referenced_packages

import 'dart:io';

import 'package:analyzer/dart/analysis/analysis_context.dart';
import 'package:analyzer/dart/analysis/analysis_context_collection.dart';
import 'package:analyzer/dart/analysis/results.dart';
import 'package:analyzer/dart/element/element.dart';
import 'package:args/args.dart';

const String classAnnotation = 'ZacGenerate';

void main(List<String> args) async {
  final parser = ArgParser();
  late final String path;
  late final String outFile;
  late final String varName;
  parser.addOption(
    'path',
    mandatory: true,
    callback: (str) => path = str ?? 'UNKNOWN PATH',
  );
  parser.addOption(
    'outFile',
    mandatory: true,
    callback: (str) => outFile = str ?? 'NO FILE',
  );
  parser.addOption(
    'varName',
    mandatory: true,
    callback: (str) => varName = str ?? '#######',
  );
  parser.parse(args);

  final ctxColl = AnalysisContextCollection(includedPaths: [path]);
  final ctx = ctxColl.contextFor(path);
  final allFiles = AllFiles(await filesToCreate(ctx, Uri.directory(path)));

  final allConverter = allFiles.ctors.map<String>((ctor) {
    return '\'${ctor.ctorElement.freezedUnionValue}\': ${ctor.parent.name}.fromJson';
  });

  final allImports = allFiles.imports.map((import) => 'import \'$import\';');

  final writeFile = File(outFile);
  writeFile.createSync();
  await writeFile.writeAsString('''
${allImports.join('\n')}

Map<String, Object Function(Map<String, dynamic> data)> $varName = const {
${allConverter.join(',\n')}
};''');

  await Process.run(
    'dart format $outFile',
    [],
    runInShell: true,
  );
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
  final List<OneFile> files;

  AllFiles(this.files);

  late final Iterable<BuilderClass> classes = files
      .map((file) => file.getClasses())
      .where((it) => it.isNotEmpty)
      .fold<Iterable<BuilderClass>>([], (previousValue, element) {
    return [...previousValue, ...element];
  }).toList()
    ..sort((a, b) => a.name.compareTo(b.name));

  late final Iterable<BuilderCtor> ctors = classes
      .map((cls) => cls.getCtor())
      .fold<Iterable<BuilderCtor>>([], (previousValue, element) {
    return [...previousValue, ...element];
  }).toList()
    ..sort((a, b) => a.ctorElement.freezedUnionValue
        .compareTo(b.ctorElement.freezedUnionValue));

  late final Iterable<String> imports = files
      .where((file) => file.getClasses().isNotEmpty)
      .fold<Iterable<String>>([], (previousValue, element) {
    return [...previousValue, element.converterImport];
  }).toList()
    ..sort((a, b) => a.compareTo(b));
}

class OneFile {
  final ResolvedLibraryResult lib;
  final String origin;

  OneFile(this.lib, this.origin);

  String get converterImport => lib.element.identifier;

  late final Iterable<ClassElement> _filteredClasses = lib
      .element.topLevelElements
      .whereType<ClassElement>()
      .where((cls) => !cls.isPrivate)
      .where((cls) => !cls.displayName.startsWith('_'))
      .where((cls) => cls.metadata.checkHasClassAnnotation());

  Iterable<BuilderClass> getClasses() {
    return _filteredClasses
        .where((cls) => cls.constructors.checkHasValidBuilder())
        .map(BuilderClass.new);
  }
}

class BuilderClass {
  final ClassElement cls;

  BuilderClass(this.cls);

  String get name => cls.name;

  Iterable<BuilderCtor> getCtor() {
    return cls.constructors
        .where((element) => element.isValidBuilder())
        .map((ctor) => BuilderCtor(ctor, this));
  }
}

class BuilderCtor {
  final ConstructorElement ctorElement;
  final BuilderClass parent;

  BuilderCtor(this.ctorElement, this.parent);
}

extension ConstructorElementX on ConstructorElement {
  bool isValidBuilder() {
    return metadata
        .where((element) =>
            element
                .computeConstantValue()
                ?.type
                ?.getDisplayString(withNullability: false) ==
            'FreezedUnionValue')
        .isNotEmpty;
  }

  ElementAnnotation get freezedUnionValueAnnotation => metadata
      .where((element) =>
          element
              .computeConstantValue()
              ?.type
              ?.getDisplayString(withNullability: false) ==
          'FreezedUnionValue')
      .first;

  String get freezedUnionValue => () {
        final val = freezedUnionValueAnnotation
            .computeConstantValue()
            ?.getField('value')
            ?.toStringValue();
        if (null == val) {
          throw StateError('freezedUnionValue must not be null');
        }
        return val;
      }();
}

extension IterableElementAnnotation on Iterable<ElementAnnotation> {
  bool checkHasClassAnnotation() {
    return where((element) =>
        element
            .computeConstantValue()
            ?.type
            ?.getDisplayString(withNullability: false) ==
        classAnnotation).isNotEmpty;
  }
}

extension IterableConstructorElement on Iterable<ConstructorElement> {
  bool checkHasValidBuilder() {
    return where((ctor) => ctor.isValidBuilder()).isNotEmpty;
  }
}