import 'package:zac/src/zac/action.dart';
import 'package:zac/src/zac/any_value.dart';
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

Matcher throwsConverterError = throwsA(isA<ConverterError>());

TypeMatcher<FilledSharedValue> isFilledSharedValue(dynamic matcher) {
  return isA<FilledSharedValue>()
      .having((p0) => p0.data, 'FilledSharedValue.data', matcher);
}

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
    UncontrolledProviderScope(container: container, child: widget),
  );
}

@GenerateMocks([LeakedActionCb])
class LeakedActionCb extends Mock {
  void call(ZacBuildContext context, ActionPayload payload);
}

@nonConverterFreezed
class LeakAction with _$LeakAction implements ZacAction {
  const LeakAction._();

  factory LeakAction(
          void Function(ZacBuildContext context, ActionPayload payload) cb) =
      _LeakAction;

  static ZacActions createActions(
          void Function(ZacBuildContext context, ActionPayload payload) cb) =>
      ZacActions([LeakAction(cb)]);

  @override
  void execute(ZacBuildContext context, ActionPayload payload) =>
      cb(context, payload);
}

@defaultConverterFreezed
class NoopAction with _$NoopAction implements ZacAction {
  const NoopAction._();

  static const String unionValue = 'z:1:test:NoopAction';

  static Map<String, dynamic> createActions() => <String, dynamic>{
        '_converter': 'z:1:Actions',
        'actions': [
          {
            '_converter': NoopAction.unionValue,
          }
        ],
      };

  factory NoopAction.fromJson(Map<String, dynamic> json) =>
      _$NoopActionFromJson(json);

  factory NoopAction() = _NoopAction;

  @override
  void execute(ZacBuildContext context, ActionPayload payload) {}
}

@GenerateMocks([WhenZacCb])
class WhenZacCb<T> extends Mock {
  T? call(ZacSharedValueInteractionType obj);
}

@GenerateMocks([WhenNotZacCb])
class WhenNotZacCb<T> extends Mock {
  T? call(SharedValueInteractionType obj);
}

@GenerateMocks([LeakeContextCb])
class LeakeContextCb extends Mock {
  void call(ZacBuildContext context);
}

@GenerateMocks([TransformerCb])
class TransformerCb extends Mock implements SharedValueTransformer {
  Object? call(Object? value, SharedValueInteractionType interaction) {
    return value;
  }

  @override
  Object? transform(Object? value, SharedValueInteractionType interaction) {
    return value;
  }
}

@nonConverterFreezed
class LeakContext with _$LeakContext implements ZacWidget {
  LeakContext._();

  factory LeakContext({
    required void Function(ZacBuildContext context) cb,
    ZacWidget? child,
  }) = _LeakContext;

  @override
  Widget buildWidget(ZacBuildContext context) {
    cb(context);
    return child?.buildWidget(context) ?? const SizedBox.shrink();
  }
}
