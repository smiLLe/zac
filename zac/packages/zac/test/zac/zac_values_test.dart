import 'package:flutter/material.dart';
import 'package:zac/zac.dart';
import 'package:flutter_test/flutter_test.dart';

import '../helper.dart';

void main() {
  test('ZacNum', () {
    expectInRegistry(ZacNum.unionValue, ZacNum.fromJson);
    expect(ZacBuilder<num>.fromJson(5), ZacNum(5));
    expect(ZacBuilder<num>.fromJson(5.1), ZacNum(5.1));
    expect(ZacBuilder<num?>.fromJson(5), ZacNum(5));
  });

  test('ZacInt', () {
    expectInRegistry(ZacInt.unionValue, ZacInt.fromJson);
    expect(ZacBuilder<int>.fromJson(5), ZacInt(5));
    expect(ZacBuilder<int?>.fromJson(5), ZacInt(5));
  });

  test('ZacDouble', () {
    expectInRegistry(ZacDouble.unionValue, ZacDouble.fromJson);
    expect(ZacBuilder<double>.fromJson(5), ZacDouble(5.0));
    expect(ZacBuilder<double>.fromJson(5.1), ZacDouble(5.1));
    expect(ZacBuilder<double?>.fromJson(5.1), ZacDouble(5.1));
  });

  test('ZacString', () {
    expectInRegistry(ZacString.unionValue, ZacString.fromJson);
    expect(ZacBuilder<String>.fromJson('foo'), ZacString('foo'));
    expect(ZacBuilder<String?>.fromJson('foo'), ZacString('foo'));
  });

  test('ZacBool', () {
    expectInRegistry(ZacBool.unionValue, ZacBool.fromJson);
    expect(ZacBuilder<bool>.fromJson(false), ZacBool(false));
    expect(ZacBuilder<bool?>.fromJson(false), ZacBool(false));
  });

  test('ZacDateTime', () {
    expectInRegistry(ZacDateTime.unionValue, ZacDateTime.fromJson);
    final now = DateTime.now();
    expect(
        ZacBuilder<DateTime>.fromJson(now.toIso8601String()), ZacDateTime(now));
    expect(ZacBuilder<DateTime?>.fromJson(now.toIso8601String()),
        ZacDateTime(now));
  });

  test('ZacObject', () {
    expectInRegistry(ZacObject.unionValue, ZacObject.fromJson);
    final now = DateTime.now();
    expect(ZacBuilder<Object>.fromJson(now.toIso8601String()),
        ZacObject(now.toIso8601String()));
    expect(ZacBuilder<Object>.fromJson(5.1), ZacObject(5.1));
    expect(ZacBuilder<Object?>.fromJson(5.1), ZacObject(5.1));
  });

  test('ZacListOfWidgets', () {
    expectInRegistry(ZacListOfWidgets.unionValue, ZacListOfWidgets.fromJson);
    expect(
        ZacBuilder<List<Widget>>.fromJson([
          {'builder': 'f:1:SizedBox'}
        ]),
        ZacListOfWidgets([FlutterSizedBox()]));
    expect(
        ZacBuilder<List<Widget>?>.fromJson([
          {'builder': 'f:1:SizedBox'}
        ]),
        ZacListOfWidgets([FlutterSizedBox()]));
  });

  test('ZacMapOfWidgets', () {
    expectInRegistry(ZacMapOfWidgets.unionValue, ZacMapOfWidgets.fromJson);
    expect(
        ZacBuilder<Map<String, Widget>>.fromJson({
          'a': {'builder': 'f:1:SizedBox'}
        }),
        ZacMapOfWidgets({'a': FlutterSizedBox()}));
    expect(
        ZacBuilder<Map<String, Widget>?>.fromJson({
          'a': {'builder': 'f:1:SizedBox'}
        }),
        ZacMapOfWidgets({'a': FlutterSizedBox()}));
  });

  test('ZacListOfActions', () {
    ZacRegistry().register<ZacAction>('test:TestAction', TestAction.noop);
    expectInRegistry(ZacListOfActions.unionValue, ZacListOfActions.fromJson);
    expect(
        ZacBuilder<List<ZacAction>>.fromJson([
          {'builder': 'test:TestAction'}
        ]),
        isA<ZacListOfActions>().having(
            (p0) => p0.value,
            'ZacListOfActions value',
            isA<List<ZacBuilder<ZacAction>>>()
                .having((p0) => p0.length, 'length', 1)
                .having((p0) => p0.first, 'first', isA<TestAction>())));

    expect(
        ZacBuilder<List<ZacAction>?>.fromJson([
          {'builder': 'test:TestAction'}
        ]),
        isA<ZacListOfActions>());
  });

  test('ZacListOfTransformers', () {
    ZacRegistry()
        .register<ZacTransform>('test:TestTransform', TestTransform.noop);
    expectInRegistry(
        ZacListOfTransformers.unionValue, ZacListOfTransformers.fromJson);
    expect(
        ZacBuilder<List<ZacTransform>>.fromJson([
          {'builder': 'test:TestTransform'}
        ]),
        isA<ZacListOfTransformers>().having(
            (p0) => p0.value,
            'ZacListOfTransformers value',
            isA<List<ZacBuilder<ZacTransform>>>()
                .having((p0) => p0.length, 'length', 1)
                .having((p0) => p0.first, 'first', isA<TestTransform>())));

    expect(
        ZacBuilder<List<ZacTransform>?>.fromJson([
          {'builder': 'test:TestTransform'}
        ]),
        isA<ZacListOfTransformers>());
  });

  testWidgets('Pick a ZacValue and pass it to new actions as payload',
      (tester) async {
    late ZacActionPayload payload;
    await testWidgetBuilder(
      tester,
      ZacExecuteActionsBuilder.once(
        actions: ZacListOfActions([
          ZacValueActions.asPayload(
            value: ZacBuilder<Object>.fromJson('hello'),
            actions: ZacListOfActions([
              TestAction(
                (p, context, zacContext) {
                  payload = p;
                },
              )
            ]),
          ),
        ]),
        child: FlutterSizedBox(),
      ),
    );

    expect(payload, ZacActionPayload.param('hello'));
  });
}
