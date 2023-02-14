import 'dart:async';

import 'package:zac/src/flutter/all.dart';
import 'package:zac/src/zac/action.dart';
import 'package:zac/src/zac/context.dart';
import 'package:zac/src/zac/transformers.dart';
import 'package:zac/src/zac/build.dart';
import 'package:zac/src/zac/registry.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:zac/src/zac/zac_builder.dart';

Future<void> pumpUntilFound(
  WidgetTester tester,
  Finder finder, {
  int iterations = 200,
}) async {
  var found = false;
  for (int i = 1; i <= iterations; i++) {
    found = tester.any(finder);
    if (!found) {
      await tester.runAsync<void>(
          () => Future.delayed(const Duration(milliseconds: 100)));
      await tester.pump();
    } else {
      return;
    }
  }
  if (!found) throw Exception('did not find $finder');
}

void expectInRegistry(Object obj, Object fn) {
  if (obj is! String && obj is! List<String>) throw Error();

  List<String> items = obj is String ? [obj] : obj as List<String>;
  for (var item in items) {
    expect(ZacRegistry().containsKey(item), isTrue);
    final map = ZacRegistry();
    expect(map[item], fn);
  }
}

Future<void> testBuilder<T>(
  WidgetTester tester,
  String name, {
  Map<String, dynamic>? props,
  required TypeMatcher<T> Function(TypeMatcher<T> matcher) matcher,
}) async {
  final builder = ZacRegistry().createBuilder<Object>(name,
      <String, dynamic>{'builder': name, ...(props ?? <String, dynamic>{})});

  expect(builder, isA<ZacBuilder<T>>());

  await testWithContexts(tester, (getContext, getZacContext) {
    final buildItem = builder.build(getContext(), getZacContext());

    expect(buildItem, matcher(isA<T>()));
  });
}

Future<void> testJSON(WidgetTester tester, Map<String, dynamic> data) async {
  await tester.pumpWidget(
    ProviderScope(
      child: MaterialApp(
        home: Material(
          child: ZacBuildWidget(data: data),
        ),
      ),
    ),
  );
}

Future<void> testWidgetBuilder(
    WidgetTester tester, ZacBuilder<Widget> builder) async {
  await tester.pumpWidget(
    ProviderScope(
      child: ZacBuildWidget(
        data: FlutterMaterialApp(
          home: FlutterMaterial(child: builder),
        ),
      ),
    ),
  );
}

Future<void> testWithContexts(
    WidgetTester tester,
    FutureOr<void> Function(BuildContext Function() getContext,
            ZacContext Function() getZacContext)
        cb) async {
  // ignore: no_leading_underscores_for_local_identifiers
  late BuildContext _context;
  // ignore: no_leading_underscores_for_local_identifiers
  late ZacContext _zacContext;
  await tester.pumpWidget(
    ProviderScope(
      child: ZacFlutterBuilder(
        builder: (context, zacContext) {
          _context = context;
          _zacContext = zacContext;
          return const SizedBox.shrink();
        },
      ),
    ),
  );
  final res = cb(() => _context, () => _zacContext);
  if (res is Future) await res;
}

Future<void> testWithContextsWraped(
    WidgetTester tester,
    ZacBuilder<Widget> Function(ZacBuilder<Widget> child) build,
    FutureOr<void> Function(BuildContext Function() getContext,
            ZacContext Function() getZacContext)
        cb) async {
  // ignore: no_leading_underscores_for_local_identifiers
  late BuildContext _context;
  // ignore: no_leading_underscores_for_local_identifiers
  late ZacContext _zacContext;

  await tester.pumpWidget(
    ProviderScope(
      child: MaterialApp(
        home: Material(
          child: ZacBuildWidget(
            data: build(
              TestWidget(
                (context, zacContext) {
                  _context = context;
                  _zacContext = zacContext;
                  return const SizedBox.shrink();
                },
              ),
            ),
          ),
        ),
      ),
    ),
  );
  final res = cb(() => _context, () => _zacContext);
  if (res is Future) await res;
}

Future<void> testFindWidget<T extends Widget>(
  WidgetTester tester,
  ZacBuilder<Widget> Function(FlutterValueKey valueKey) build, {
  TypeMatcher<T> Function(TypeMatcher<T> matcher)? match,
}) async {
  await tester.pumpWidget(
    ProviderScope(
      child: MaterialApp(
        home: Material(
          child: ZacBuildWidget(
            data: build(FlutterValueKey('FIND_ME')),
          ),
        ),
      ),
    ),
  );

  final widget = find.byKey(const ValueKey('FIND_ME'));

  expect(widget, findsOneWidget);

  if (null == match) {
    expect(widget.evaluate().first.widget, isA<T>());
  } else {
    expect(widget.evaluate().first.widget, match(isA<T>()));
  }
}

class TestTransform implements ZacBuilder<ZacTransform> {
  final Object? Function(BuildContext context, ZacContext zacContext) cb;

  TestTransform(this.cb);
  factory TestTransform.noop(Map<String, dynamic> map) {
    return TestTransform((context, zacContext) {
      return null;
    });
  }

  @override
  ZacTransform build(BuildContext context, ZacContext zacContext) {
    return ZacTransform(cb);
  }
}

@GenerateMocks([TestTransformExecute])
class TestTransformExecute extends Mock {
  Object? call(ZacTransformValue transformValue, BuildContext context,
      ZacContext zacContext);
}

class TestWidget implements ZacBuilder<Widget> {
  final Widget Function(BuildContext context, ZacContext zacContext) cb;

  TestWidget(this.cb);

  @override
  Widget build(BuildContext context, ZacContext zacContext) {
    return cb(context, zacContext);
  }
}

class TestAction implements ZacBuilder<ZacAction> {
  final void Function(BuildContext context, ZacContext zacContext) cb;

  TestAction(this.cb);
  factory TestAction.noop(Map<String, dynamic> map) {
    return TestAction((context, zacContext) {});
  }

  @override
  ZacAction build(BuildContext context, ZacContext zacContext) {
    return ZacAction(cb);
  }
}

@GenerateMocks([TestActionExecute])
class TestActionExecute extends Mock {
  void call(BuildContext context, ZacContext zacContext);
}

TypeMatcher<ZacContext> isZacContext = isA<ZacContext>();
