import 'dart:async';

import 'package:zac/src/flutter/all.dart';
import 'package:zac/src/zac/action.dart';
import 'package:zac/src/zac/context.dart';
import 'package:zac/src/zac/transformers.dart';
import 'package:zac/src/zac/widget.dart';
import 'package:zac/src/zac/registry.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:zac/src/zac/zac_builder.dart';

void expectInRegistry(Object obj, Object fn) {
  if (obj is! String && obj is! List<String>) throw Error();

  List<String> items = obj is String ? [obj] : obj as List<String>;
  for (var item in items) {
    expect(ZacRegistry().containsKey(item), isTrue);
    final map = ZacRegistry();
    expect(map[item], fn);
  }
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
          child: ZacWidget(
            data: build(
              TestWidget(
                (context, zacContext) {
                  _context = context;
                  _zacContext = zacContext;
                  return const FlutterSizedBox.shrink();
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
          child: ZacWidget(
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
  final Object? Function(ZacTransformValue transformValue, BuildContext context,
      ZacContext zacContext, ZacActionPayload? payload) cb;

  TestTransform(this.cb);
  factory TestTransform.noop(Map<String, dynamic> map) {
    return TestTransform((transformValue, context, zacContext, payload) {
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
      ZacContext zacContext, ZacActionPayload? payload);
}

class TestWidget implements ZacBuilder<Widget> {
  final ZacBuilder<Widget> Function(BuildContext context, ZacContext zacContext)
      cb;

  TestWidget(this.cb);

  @override
  Widget build(BuildContext context, ZacContext zacContext) {
    return cb(context, zacContext).build(context, zacContext);
  }
}

class TestAction implements ZacBuilder<ZacAction> {
  final void Function(
      ZacActionPayload payload, BuildContext context, ZacContext zacContext) cb;

  TestAction(this.cb);
  factory TestAction.noop(Map<String, dynamic> map) {
    return TestAction((payload, context, zacContext) {});
  }

  @override
  ZacAction build(BuildContext context, ZacContext zacContext) {
    return ZacAction(cb);
  }
}

@GenerateMocks([TestActionExecute])
class TestActionExecute extends Mock {
  void call(
      ZacActionPayload payload, BuildContext context, ZacContext zacContext);
}

class FakeBuildContext extends Fake implements BuildContext {}

class FakeWidgetRef extends Fake implements WidgetRef {}

class FakeZacOrigin extends Fake implements ZacContext {}

class FakeZacContext extends Fake implements ZacContext {}

TypeMatcher<ZacContext> isZacContext = isA<ZacContext>();

void fakeBuild<T>(
  Object Function(BuildContext context, ZacContext zacContext) builder,
  TypeMatcher<T> Function(TypeMatcher<T> matcher) matcher,
) {
  final zacContext = FakeZacContext();
  final context = FakeBuildContext();
  expect(builder(context, zacContext), isA<T>());
  expect(builder(context, zacContext), matcher(isA<T>()));
}

Future<void> testMap(
  WidgetTester tester,
  Map<String, dynamic> data, {
  ProviderContainer? useContainer,
}) async {
  return testWithinMaterialApp(
    tester,
    ZacWidget(data: data),
    useContainer: useContainer,
  );
}

Future<void> testZacWidget(
  WidgetTester tester,
  ZacBuilder<Widget> zacWidget, {
  ProviderContainer? useContainer,
}) async {
  return testWithinMaterialApp(
    tester,
    ZacWidget(data: zacWidget),
    useContainer: useContainer,
  );
}

Future<void> testWithinMaterialApp(
  WidgetTester tester,
  Widget widget, {
  ProviderContainer? useContainer,
}) async {
  return testWithConverters(
    tester: tester,
    widget: MaterialApp(home: widget),
    container: useContainer ?? ProviderContainer(),
  );
}

Future<void> testWithConverters({
  required WidgetTester tester,
  required Widget widget,
  required ProviderContainer container,
}) async {
  return tester.pumpWidget(
    UncontrolledProviderScope(
      key: GlobalKey(),
      container: container,
      child: widget,
    ),
  );
}
