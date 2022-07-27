import 'package:zac/src/zac/actions/action.dart';
import 'package:zac/src/zac/any_value/any_value.dart';
import 'package:zac/src/zac/context/any_widget_context.dart';
import 'package:zac/src/zac/any_widget_builder/any_widget_builder.dart';
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

class FakeAnyWidgetContext extends Fake implements ZacBuildContext {}

Future<void> testMap(
  WidgetTester tester,
  Map<String, dynamic> data, {
  Map<String, Convert>? converter,
  ProviderContainer? useContainer,
}) async {
  return testWithinMaterialApp(
    tester,
    AnyWidgetBuilderFromMap(anyMap: ZacMap(data)),
    converter: converter,
    useContainer: useContainer,
  );
}

Future<void> testAnyWidget(
  WidgetTester tester,
  ZacWidget anyWidget, {
  Map<String, Convert>? converter,
  ProviderContainer? useContainer,
}) async {
  return testWithinMaterialApp(
    tester,
    AnyWidgetBuilder(anyWidget: anyWidget),
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
class LeakAction with _$LeakAction implements AnyAction {
  const LeakAction._();

  factory LeakAction(
          void Function(ZacBuildContext context, ActionPayload payload) cb) =
      _LeakAction;

  static AnyActions createActions(
          void Function(ZacBuildContext context, ActionPayload payload) cb) =>
      AnyActions([LeakAction(cb)]);

  @override
  void execute(ZacBuildContext context, ActionPayload payload) =>
      cb(context, payload);
}

@defaultConverterFreezed
class NoopAction with _$NoopAction implements AnyAction {
  const NoopAction._();

  static const String unionValue = 'z:1:test:NoopAction';

  static Map<String, dynamic> createActions() => <String, dynamic>{
        converterKey: 'z:1:Actions',
        'actions': [
          {
            converterKey: NoopAction.unionValue,
          }
        ],
      };

  factory NoopAction.fromJson(Map<String, dynamic> json) =>
      _$NoopActionFromJson(json);

  factory NoopAction() = _NoopAction;

  @override
  void execute(ZacBuildContext context, ActionPayload payload) {}
}

@GenerateMocks([LeakeContextCb])
class LeakeContextCb extends Mock {
  void call(ZacBuildContext context);
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
