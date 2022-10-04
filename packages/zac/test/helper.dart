import 'package:zac/src/zac/action.dart';
import 'package:zac/src/zac/any_value.dart';
import 'package:zac/src/zac/interactions.dart';
import 'package:zac/src/zac/misc.dart';
import 'package:zac/src/zac/update_context.dart';
import 'package:zac/src/zac/shared_value.dart';
import 'package:zac/src/zac/transformers.dart';
import 'package:zac/src/zac/widget_builder.dart';
import 'package:zac/src/base.dart';

import 'package:zac/src/converter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

part 'helper.freezed.dart';
part 'helper.g.dart';

class FakeZacWidgetContext extends Fake implements ZacBuildContext {}

class FakeBuildContext extends Fake implements BuildContext {}

class FakeWidgetRef extends Fake implements WidgetRef {}

class FakeZacRef extends Fake implements ZacRef {}

class FakeActionHelper extends Fake implements ZacActionHelper {}

class FakeZacInteractionLifetime extends Fake
    implements ZacInteractionLifetime {}

Matcher throwsConverterError = throwsA(isA<ConverterError>());

TypeMatcher<FilledSharedValue> isFilledSharedValue(dynamic matcher) {
  return isA<FilledSharedValue>()
      .having((p0) => p0.data, 'FilledSharedValue.data', matcher);
}

void fakeBuild<T>(
  Object Function(
          BuildContext context, WidgetRef ref, ZacInteractionLifetime lifetime)
      builder,
  TypeMatcher<T> Function(TypeMatcher<T> matcher) matcher,
) {
  final lifetime = FakeZacInteractionLifetime();
  final context = FakeBuildContext();
  final ref = FakeWidgetRef();
  expect(builder(context, ref, lifetime), isA<T>());
  expect(builder(context, ref, lifetime), matcher(isA<T>()));
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
//           '_converter': 'f:1:SizedBox',
//           'key': {'_converter': 'f:1:ValueKey', 'value': 'THE_PARENT'},
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
    ZacWidgetBuilderFromMap(zacMap: ZacMap(data)),
    converter: converter,
    useContainer: useContainer,
  );
}

Future<void> testZacWidget(
  WidgetTester tester,
  ZacWidget zacWidget, {
  Map<String, Convert>? converter,
  ProviderContainer? useContainer,
}) async {
  return testWithinMaterialApp(
    tester,
    ZacWidgetBuilder(zacWidget: zacWidget),
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
  allConverters = {...allConverters, ...(converter ?? <String, Convert>{})};

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
  void call(BuildContext context, WidgetRef ref,
      ZacInteractionLifetime lifetime, ContextBag bag);
}

@GenerateMocks([LeakBagCb])
class LeakBagCb extends Mock {
  void call(Map<String, dynamic> bag) {}
}

@nonConverterFreezed
class LeakUiAction with _$LeakUiAction implements ZacInteraction {
  const LeakUiAction._();

  factory LeakUiAction(
      void Function(BuildContext context, WidgetRef ref,
              ZacInteractionLifetime lifetime, ContextBag bag)
          cb) = _LeakUiAction;

  static ZacInteractions createActions(
          void Function(BuildContext context, WidgetRef ref,
                  ZacInteractionLifetime lifetime, ContextBag bag)
              cb) =>
      ZacInteractions([LeakUiAction(cb)]);

  @override
  void execute(BuildContext context, WidgetRef ref,
          ZacInteractionLifetime lifetime, ContextBag bag) =>
      cb(context, ref, lifetime, bag);
}

@nonConverterFreezed
class LeakBagContentAction
    with _$LeakBagContentAction
    implements ZacInteraction {
  const LeakBagContentAction._();

  factory LeakBagContentAction(void Function(Map<String, dynamic> bag) cb) =
      _LeakBagContentAction;

  static ZacInteractions createActions(
          void Function(Map<String, dynamic> bag) cb) =>
      ZacInteractions([LeakBagContentAction(cb)]);

  @override
  void execute(BuildContext context, WidgetRef ref,
          ZacInteractionLifetime lifetime, ContextBag bag) =>
      cb(<String, dynamic>{...bag});
}

@defaultConverterFreezed
class NoopAction with _$NoopAction implements ZacInteraction {
  const NoopAction._();

  static const String unionValue = 'z:1:test:NoopAction';

  static Map<String, dynamic> createActions() => <String, dynamic>{
        '_converter': 'z:1:Interactions',
        'interactions': [
          {
            '_converter': NoopAction.unionValue,
          }
        ],
      };

  factory NoopAction.fromJson(Map<String, dynamic> json) =>
      _$NoopActionFromJson(json);

  const factory NoopAction() = _NoopAction;

  @override
  void execute(BuildContext context, WidgetRef ref,
      ZacInteractionLifetime lifetime, ContextBag bag) {}
}

@GenerateMocks([LeakeContextCb])
class LeakeContextCb extends Mock {
  void call(ZacBuildContext context);
}

class CustomTransformer implements ZacTransformer {
  CustomTransformer(this.cb);

  final Object? Function(
      ZacTransformValue transformValue, ZacRef ref, ContextBag bag) cb;

  @override
  Object? transform(
      ZacTransformValue transformValue, ZacRef ref, ContextBag bag) {
    return cb(transformValue, ref, bag);
  }
}

@GenerateMocks([LeakBagTransformer])
class LeakBagTransformer extends Mock implements ZacTransformer {
  LeakBagTransformer(this.cb);

  final void Function(Map<String, dynamic> bag) cb;

  Object? call(ZacTransformValue transformValue, ZacRef ref, ContextBag bag) {
    cb(<String, dynamic>{...bag});
    return transformValue.value;
  }

  @override
  Object? transform(
      ZacTransformValue transformValue, ZacRef ref, ContextBag bag) {
    cb(<String, dynamic>{...bag});
    return transformValue.value;
  }
}

@GenerateMocks([TransformerCb])
class TransformerCb extends Mock implements ZacTransformer {
  Object? call(ZacTransformValue transformValue, ZacBuildContext context,
      ContextBag bag) {
    return transformValue.value;
  }

  @override
  Object? transform(
      ZacTransformValue transformValue, ZacRef ref, ContextBag bag) {
    return transformValue.value;
  }
}

@nonConverterFreezed
class LeakContext with _$LeakContext implements ZacWidget {
  LeakContext._();

  factory LeakContext({
    required void Function(BuildContext context, WidgetRef ref,
            ZacInteractionLifetime lifetime)
        cb,
    ZacWidget? child,
  }) = _LeakContext;

  @override
  Widget buildWidget(
      BuildContext context, WidgetRef ref, ZacInteractionLifetime lifetime) {
    cb(context, ref, lifetime);
    return child?.buildWidget(context, ref, lifetime) ??
        const SizedBox.shrink();
  }
}
