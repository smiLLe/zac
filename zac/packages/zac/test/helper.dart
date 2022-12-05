import 'package:zac/src/zac/action.dart';
import 'package:zac/src/zac/context.dart';

import 'package:zac/src/zac/shared_value.dart';
import 'package:zac/src/zac/transformers.dart';
import 'package:zac/src/zac/widget.dart';
import 'package:zac/src/base.dart';

import 'package:zac/src/converter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:zac/src/zac/zac_builder.dart';

part 'helper.freezed.dart';
part 'helper.g.dart';

void expectInConverter(Object obj, Convert fn) {
  if (obj is! String && obj is! List<String>) throw Error();

  List<String> items = obj is String ? [obj] : obj as List<String>;
  for (var item in items) {
    expect(allConverter.containsKey(item), isTrue);
    expect(allConverter[item], fn);
  }
}

TypeMatcher<ZacBuilder<T>> isAZacBuilder<T>() {
  return isA<ZacBuilder<T>>();
}

void expectConvert<Builder>({
  required Object? json,
  required Builder expected,
}) {
  expect(ConverterHelper.convertToType<Builder>(json), expected);
}

void expectConvertToZacBuilder<Builder, Value>({
  required Object? json,
  required ZacBuilder<Value> expected,
}) {
  expect(ConverterHelper.convertToType<Builder>(json), expected);
}

void expectConvertIsA<Builder, IsA>({
  required Object? json,
}) {
  expect(ConverterHelper.convertToType<Builder>(json), isA<IsA>());
}

void expectConvertConsumeSharedValue<Builder, Value>({
  required String converter,
  required Builder Function({
    required Object family,
    ZacTransformers? transformer,
    ZacTransformers? select,
    SharedValueConsumeType? forceConsume,
  })
      create,
}) {
  expect(
      ConverterHelper.convertToType<Builder>(
          {'converter': converter, 'family': 'shared'}),
      isA<ConsumeSharedValue<Value>>());
  expect(
      ConverterHelper.convertToType<Builder>(
          {'converter': converter, 'family': 'shared'}),
      create(family: 'shared'));
}

void expectConvertConsumeListSharedValue<Builder, Value>({
  required String converter,
  required Builder Function({
    required Object family,
    ZacTransformers? transformer,
    ZacTransformers? select,
    SharedValueConsumeType? forceConsume,
  })
      create,
}) {
  expect(
      ConverterHelper.convertToType<Builder>(
          {'converter': converter, 'family': 'shared'}),
      isA<ConsumeSharedValueList<Value>>());
  expect(
      ConverterHelper.convertToType<Builder>(
          {'converter': converter, 'family': 'shared'}),
      create(family: 'shared'));
}

Future<void>
    expectValueFromZacBuilder<Builder extends ZacBuilder<Value>, Value>({
  required WidgetTester tester,
  required Builder builder,
  required Value expectValue,
  required Value? expectValueOrNull,
}) async {
  dynamic obj;
  await tester.pumpWidget(ProviderScope(
    child: ZacWidget(data: LeakContext(cb: (zacContext) {
      obj = builder.build(zacContext);
    })),
  ));

  expect(obj, isA<Value>());
  expect(obj, expectValue);

  await tester.pumpWidget(ProviderScope(
    child: ZacWidget(data: LeakContext(cb: (zacContext) {
      obj = builder.buildOrNull(zacContext);
    })),
  ));

  expect(obj, isA<Value?>());
  expect(obj, expectValueOrNull);
}

Future<void> expectConsumedValueFromZacBuilder<Value, SharedValue>({
  required WidgetTester tester,
  required Object Function({
    required Object family,
    ZacTransformers? transformer,
    ZacTransformers? select,
    SharedValueConsumeType? forceConsume,
  })
      createBuilder,
  required Value expectValue,
  required SharedValue sharedValue,
}) async {
  dynamic obj;
  final builder = createBuilder(family: 'shared');
  expect(builder, isA<ConsumeSharedValue<SharedValue>>());
  expect(builder, isAZacBuilder<Value>());

  builder as ZacBuilder<Value>;

  await tester.pumpWidget(ProviderScope(
    child: ZacWidget(
      data: SharedValueProviderBuilder(
        value: expectValue,
        family: 'shared',
        child: LeakContext(
          cb: (zacContext) {
            obj = builder.build(zacContext);
          },
        ),
      ),
    ),
  ));

  expect(obj, isA<Value>());
  expect(obj, expectValue);

  await tester.pumpWidget(ProviderScope(
    child: ZacWidget(
      data: SharedValueProviderBuilder(
        value: null,
        family: 'shared',
        child: LeakContext(
          cb: (zacContext) {
            obj = builder.buildOrNull(zacContext);
          },
        ),
      ),
    ),
  ));

  expect(obj, isA<Value?>());
  expect(obj, isNull);
}

class FakeBuildContext extends Fake implements BuildContext {}

class FakeWidgetRef extends Fake implements WidgetRef {}

class FakeZacOrigin extends Fake implements ZacContext {}

class FakeZacContext extends Fake implements ZacContext {}

Matcher throwsConverterError = throwsA(isA<ConverterError>());

TypeMatcher<ZacContext> isZacContext = isA<ZacContext>();

TypeMatcher<SharedValueType> isSharedValue(dynamic matcher) {
  return isA<SharedValueType>().having((p0) => p0, 'SharedValueType', matcher);
}

void fakeBuild<T>(
  Object Function(ZacContext zacContext) builder,
  TypeMatcher<T> Function(TypeMatcher<T> matcher) matcher,
) {
  final zacContext = FakeZacContext();
  expect(builder(zacContext), isA<T>());
  expect(builder(zacContext), matcher(isA<T>()));
}

// Future<void> testSingleWidget<TWidget>({
//   required WidgetTester tester,
//   required Map<String, dynamic> widget,
// }) async {
//   await testZacWidget(
//     tester,
//     ZacWidgetBuilderBuilder.map(
//       data: ZacMap(
//         <String, dynamic>{
//           'converter': 'f:1:SizedBox',
//           'key': {'converter': 'f:1:ValueKey', 'value': 'THE_PARENT'},
//           'child': widget,
//         },
//       ),
//     ),
//   );

//   final finder = find
//       .descendant(
//         of: find.byKey(const ValueKey('THE_PARENT')),
//         matching: find.byWidgetPredicate((widget) => widget is TWidget),
//       )
//       .first
//       .evaluate()
//       .first
//       .widget;

//   expect(finder, isA<TWidget>());
// }

Future<void> testMap(
  WidgetTester tester,
  Map<String, dynamic> data, {
  Map<String, Convert>? converter,
  ProviderContainer? useContainer,
}) async {
  return testWithinMaterialApp(
    tester,
    ZacWidget(data: data),
    converter: converter,
    useContainer: useContainer,
  );
}

Future<void> testZacWidget(
  WidgetTester tester,
  FlutterWidget zacWidget, {
  Map<String, Convert>? converter,
  ProviderContainer? useContainer,
}) async {
  return testWithinMaterialApp(
    tester,
    ZacWidget(data: zacWidget),
    converter: converter,
    useContainer: useContainer,
  );
}

Future<void> testWithinMaterialApp(
  WidgetTester tester,
  Widget widget, {
  Map<String, Convert>? converter,
  ProviderContainer? useContainer,
}) async {
  return testWithConverters(
    tester: tester,
    widget: MaterialApp(
      home: widget,
    ),
    container: useContainer ?? ProviderContainer(),
    converter: converter,
  );
}

Future<void> testWithConverters({
  required WidgetTester tester,
  required Widget widget,
  required ProviderContainer container,
  Map<String, Convert>? converter,
}) async {
  allConverter = {...allConverter, ...(converter ?? <String, Convert>{})};

  return tester.pumpWidget(
    UncontrolledProviderScope(
      key: GlobalKey(),
      container: container,
      child: widget,
    ),
  );
}

@GenerateMocks([LeakedActionCb])
class LeakedActionCb extends Mock {
  void call(ZacActionPayload payload, ZacContext zacContext);
}

@GenerateMocks([LeakBagCb])
class LeakBagCb extends Mock {
  void call(Map<String, dynamic> bag) {}
}

@freezedZacDefaults
class LeakAction with _$LeakAction implements ZacAction {
  const LeakAction._();

  factory LeakAction(
          void Function(ZacActionPayload payload, ZacContext zacContext) cb) =
      _LeakAction;

  static ZacActions createActions(
          void Function(ZacActionPayload payload, ZacContext zacContext) cb) =>
      ZacActions([LeakAction(cb)]);

  @override
  void execute(ZacActionPayload payload, ZacContext zacContext) =>
      cb(payload, zacContext);
}

@freezedZacBuilder
class NoopAction with _$NoopAction implements ZacAction {
  const NoopAction._();

  static const String unionValue = 'z:1:test:NoopAction';

  static Map<String, dynamic> createActions() => <String, dynamic>{
        'converter': 'z:1:Actions',
        'actions': [
          {
            'converter': NoopAction.unionValue,
          }
        ],
      };

  factory NoopAction.fromJson(Map<String, dynamic> json) =>
      _$NoopActionFromJson(json);

  const factory NoopAction() = _NoopAction;

  @override
  void execute(ZacActionPayload payload, ZacContext zacContext) {}
}

class CustomTransformer implements ZacTransformer {
  CustomTransformer(this.cb);

  final Object? Function(ZacTransformValue transformValue,
      ZacContext zacContext, ZacActionPayload? payload) cb;

  @override
  Object? transform(ZacTransformValue transformValue, ZacContext zacContext,
      ZacActionPayload? payload) {
    return cb(transformValue, zacContext, payload);
  }
}

class LeakContext implements FlutterWidget {
  LeakContext({
    required this.cb,
    this.child,
  });

  final void Function(ZacContext zacContext) cb;
  final FlutterWidget? child;

  Widget _buildWidget(ZacContext zacContext) {
    cb(zacContext);
    return child?.buildOrNull(zacContext) ?? const SizedBox.shrink();
  }

  @override
  Widget build(ZacContext zacContext,
      {ZacBuilderConsume onConsume = const ZacBuilderConsume()}) {
    return _buildWidget(zacContext);
  }

  @override
  Widget? buildOrNull(ZacContext zacContext,
      {ZacBuilderConsume onConsume = const ZacBuilderConsume()}) {
    return _buildWidget(zacContext);
  }
}

class TestBuildCustomWidget implements FlutterWidget {
  TestBuildCustomWidget(
    this.cb,
  );

  final Widget Function(ZacContext zacContext) cb;

  Widget _buildWidget(ZacContext zacContext) {
    return cb(zacContext);
  }

  @override
  Widget build(ZacContext zacContext,
      {ZacBuilderConsume onConsume = const ZacBuilderConsume()}) {
    return _buildWidget(zacContext);
  }

  @override
  Widget? buildOrNull(ZacContext zacContext,
      {ZacBuilderConsume onConsume = const ZacBuilderConsume()}) {
    return _buildWidget(zacContext);
  }
}
