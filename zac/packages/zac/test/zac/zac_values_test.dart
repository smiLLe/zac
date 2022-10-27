import 'package:zac/zac.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../helper.dart';

part 'zac_values_test.freezed.dart';
part 'zac_values_test.g.dart';

class CustomData {}

@defaultConverterFreezed
class ZacValueTest with _$ZacValueTest {
  factory ZacValueTest.fromJson(Map<String, dynamic> json) =>
      _$ZacValueTestFromJson(json);

  factory ZacValueTest({
    required ZacValue<int> value,
    required ZacValue<int> simple,
    required ZacValue<int> watch,
    required ZacValue<int> read,
    ZacValue<DateTime>? date,
    ZacValue<CustomData>? custom,
  }) = _ZacValueTest;
}

@defaultConverterFreezed
class ZacValueReadTest with _$ZacValueReadTest {
  factory ZacValueReadTest.fromJson(Map<String, dynamic> json) =>
      _$ZacValueReadTestFromJson(json);

  factory ZacValueReadTest({
    required ZacValueRead<int> value,
    required ZacValueRead<int> simple,
    required ZacValueRead<int> read,
  }) = _ZacValueReadTest;
}

void main() {
  test('Create a ZacValue', () {
    expect(ZacValue<int>.fromJson(5), ZacValueConsume<int>.simple(value: 5));

    expect(
        ZacValue<int>.fromJson(
            <String, dynamic>{'converter': 'z:1:ZacValue', 'value': 5}),
        ZacValueConsume<int>.simple(value: 5));

    expect(
        ZacValue<int>.fromJson(<String, dynamic>{
          'converter': 'z:1:ZacValue.watch',
          'family': 'shared'
        }),
        ZacValueConsume<int>.watch(family: 'shared'));

    expect(
        ZacValue<int>.fromJson(<String, dynamic>{
          'converter': 'z:1:ZacValue.read',
          'family': 'shared'
        }),
        ZacValueConsume<int>.read(family: 'shared'));

    final now = DateTime.now();
    expect(ZacValue<DateTime>.fromJson(now.toString()),
        ZacValueConsume<DateTime>.simple(value: now));

    expect(
        ZacValue<Map<String, dynamic>>.fromJson(
            <String, dynamic>{'foo': 'bar'}),
        ZacValueConsume<Map<String, dynamic>>.simple(
            value: <String, dynamic>{'foo': 'bar'}));

    expect(ZacValue<List>.fromJson(<dynamic>[1, 'foo']),
        ZacValueConsume<List>.simple(value: <dynamic>[1, 'foo']));

    expect(
        ZacValue<FlutterWidget>.fromJson(
            <String, dynamic>{'converter': 'f:1:SizedBox'}),
        ZacValueConsume<FlutterWidget>.simple(value: FlutterSizedBox()));

    expect(
        () => ZacValue<int>.fromJson(() {}),
        throwsA(isA<StateError>().having((p0) => p0.message, 'error',
            contains('because the data given is not supported'))));

    expect(ZacValue<int>.fromJson(4.1), ZacValueConsume<int>.simple(value: 4));
    expect(ZacValue<double>.fromJson(4),
        ZacValueConsume<double>.simple(value: 4.0));
    expect(ZacValue<bool>.fromJson(false),
        ZacValueConsume<bool>.simple(value: false));
  });

  test('Create a ZacValueRead', () {
    expect(
        ZacValueRead<int>.fromJson(5), ZacValueConsume<int>.simple(value: 5));

    expect(
        ZacValueRead<int>.fromJson(
            <String, dynamic>{'converter': 'z:1:ZacValue', 'value': 5}),
        ZacValueConsume<int>.simple(value: 5));

    expect(
        () => ZacValueRead<int>.fromJson(<String, dynamic>{
              'converter': 'z:1:ZacValue.watch',
              'family': 'shared'
            }),
        throwsA(isA<StateError>().having((p0) => p0.message, 'error',
            contains('It was not possible to create "ZacValueRead<int>"'))));

    expect(
        ZacValueRead<int>.fromJson(<String, dynamic>{
          'converter': 'z:1:ZacValue.read',
          'family': 'shared'
        }),
        ZacValueConsume<int>.read(family: 'shared'));

    final now = DateTime.now();
    expect(ZacValueRead<DateTime>.fromJson(now.toString()),
        ZacValueConsume<DateTime>.simple(value: now));

    expect(
        ZacValueRead<Map<String, dynamic>>.fromJson(
            <String, dynamic>{'foo': 'bar'}),
        ZacValueConsume<Map<String, dynamic>>.simple(
            value: <String, dynamic>{'foo': 'bar'}));

    expect(ZacValueRead<List>.fromJson(<dynamic>[1, 'foo']),
        ZacValueConsume<List>.simple(value: <dynamic>[1, 'foo']));

    expect(
        ZacValueRead<FlutterWidget>.fromJson(
            <String, dynamic>{'converter': 'f:1:SizedBox'}),
        ZacValueConsume<FlutterWidget>.simple(value: FlutterSizedBox()));

    expect(
        () => ZacValueRead<int>.fromJson(() {}),
        throwsA(isA<StateError>().having((p0) => p0.message, 'error',
            contains('because the data given is not supported'))));

    expect(
        ZacValueRead<int>.fromJson(4.1), ZacValueConsume<int>.simple(value: 4));
    expect(ZacValueRead<double>.fromJson(4),
        ZacValueConsume<double>.simple(value: 4.0));
    expect(ZacValueRead<bool>.fromJson(false),
        ZacValueConsume<bool>.simple(value: false));
  });

  test(
      'ZacValueConsume.simple will throw error in .fromJson if the value has a wrong type',
      () {
    expect(
        () => ZacValueConsume<int>.fromJson(<String, dynamic>{
              'converter': 'z:1:ZacValue',
              'value': 'not valid'
            }),
        throwsA(isA<StateError>().having((p0) => p0.message, 'error',
            contains('It was not possible to create ZacValueConsume<int>'))));

    expect(
        () => ZacValueConsume<int>.fromJson(<String, dynamic>{
              'converter': 'z:1:ZacValue',
              'value': 'not valid',
              'transformer': <Object?>[]
            }),
        throwsA(isA<StateError>().having((p0) => p0.message, 'error',
            contains('It was not possible to create ZacValueConsume<int>'))));

    expect(
        () => ZacValueConsume<int>.fromJson(<String, dynamic>{
              'converter': 'z:1:ZacValue',
              'value': 'not valid',
              'transformer': <Object?>[
                {'converter': 'z:1:Transformer:Object.toString'}
              ]
            }),
        returnsNormally);

    expect(
        () => ZacValueConsume<Object?>.fromJson(
            <String, dynamic>{'converter': 'z:1:ZacValue', 'value': 'foo'}),
        returnsNormally);

    expect(
        () => ZacValueConsume<Object?>.fromJson(
            <String, dynamic>{'converter': 'z:1:ZacValue', 'value': null}),
        returnsNormally);

    expect(
        () => ZacValueConsume<Object>.fromJson(
            <String, dynamic>{'converter': 'z:1:ZacValue', 'value': 'foo'}),
        returnsNormally);
  });

  testWidgets('Read/Watch an exposed value', (tester) async {
    late ZacContext zacContext;

    await testZacWidget(
        tester,
        SharedValueProviderBuilder(
          family: 'shared',
          value: 5,
          child: LeakContext(
            cb: (o) => zacContext = o,
          ),
        ));

    expect(
        ZacValueConsume<int>.watch(family: 'shared').getValue(zacContext), 5);
    expect(ZacValueConsume<int>.read(family: 'shared').getValue(zacContext), 5);

    expect(
        ZacValueConsume<String>.watch(
                family: 'shared',
                transformer: ZacTransformers([ObjectTransformer.toString()]))
            .getValue(zacContext),
        '5');

    expect(
        () => ZacValueConsume<String>.watch(
              family: 'shared',
            ).getValue(zacContext),
        throwsA(isA<StateError>().having((p0) => p0.message, 'error',
            contains('It was not possible to return a SharedValue in '))));

    expect(
        () => ZacValueConsume<int>.watch(
                family: 'shared',
                transformer: ZacTransformers([ObjectTransformer.toString()]))
            .getValue(zacContext),
        throwsA(isA<StateError>().having((p0) => p0.message, 'error',
            contains('Unexpected type found after transforming a consumed'))));

    expect(
        ZacValueConsume<String>.read(
                family: 'shared',
                transformer: ZacTransformers([ObjectTransformer.toString()]))
            .getValue(zacContext),
        '5');

    expect(
        () => ZacValueConsume<String>.read(
              family: 'shared',
            ).getValue(zacContext),
        throwsA(isA<StateError>().having((p0) => p0.message, 'error',
            contains('It was not possible to return a SharedValue in '))));

    expect(
        () => ZacValueConsume<int>.read(
                family: 'shared',
                transformer: ZacTransformers([ObjectTransformer.toString()]))
            .getValue(zacContext),
        throwsA(isA<StateError>().having((p0) => p0.message, 'error',
            contains('Unexpected type found after transforming a consumed'))));
  });

  test('Create a ZacValueList', () {
    expect(ZacValueList<int>.fromJson([5]),
        ZacValueListConsume<int>.simple(value: [ZacValue<int>.fromJson(5)]));

    expect(
        ZacValueList<FlutterWidget>.fromJson([
          <String, dynamic>{'converter': 'f:1:SizedBox'}
        ]),
        ZacValueListConsume<FlutterWidget>.simple(
            value: [ZacValue<FlutterWidget>.fromJson(FlutterSizedBox())]));

    expect(
        ZacValueList<int>.fromJson(<String, dynamic>{
          'converter': 'z:1:ZacValue',
          'value': [5]
        }),
        ZacValueListConsume<int>.simple(value: [ZacValue<int>.fromJson(5)]));

    expect(
        ZacValueList<int>.fromJson(<String, dynamic>{
          'converter': 'z:1:ZacValue.read',
          'family': 'shared'
        }),
        ZacValueListConsume<int>.read(family: 'shared'));

    expect(
        ZacValueList<int>.fromJson(<String, dynamic>{
          'converter': 'z:1:ZacValue.watch',
          'family': 'shared'
        }),
        ZacValueListConsume<int>.watch(family: 'shared'));
  });

  test('Create a ZacValueListRead', () {
    expect(ZacValueListRead<int>.fromJson([5]),
        ZacValueListConsume<int>.simple(value: [ZacValue<int>.fromJson(5)]));

    expect(
        ZacValueListRead<FlutterWidget>.fromJson([
          <String, dynamic>{'converter': 'f:1:SizedBox'}
        ]),
        ZacValueListConsume<FlutterWidget>.simple(
            value: [ZacValue<FlutterWidget>.fromJson(FlutterSizedBox())]));

    expect(
        ZacValueListRead<int>.fromJson(<String, dynamic>{
          'converter': 'z:1:ZacValue',
          'value': [5]
        }),
        ZacValueListConsume<int>.simple(value: [ZacValue<int>.fromJson(5)]));

    expect(
        ZacValueListRead<int>.fromJson(<String, dynamic>{
          'converter': 'z:1:ZacValue.read',
          'family': 'shared'
        }),
        ZacValueListConsume<int>.read(family: 'shared'));
  });

  testWidgets('Read/Watch a List of exposed value', (tester) async {
    late ZacContext zacContext;

    await testZacWidget(
        tester,
        SharedValueProviderBuilder(
          family: 'shared',
          value: [5, 10],
          child: LeakContext(
            cb: (o) => zacContext = o,
          ),
        ));

    expect(
        ZacValueListConsume<int>.watch(family: 'shared').getValue(zacContext),
        [5, 10]);
    expect(ZacValueListConsume<int>.read(family: 'shared').getValue(zacContext),
        [5, 10]);

    expect(
        ZacValueListConsume<String>.watch(
                family: 'shared',
                transformer: ZacTransformers([ObjectTransformer.toString()]))
            .getValue(zacContext),
        ['5', '10']);

    expect(
        () => ZacValueListConsume<String>.watch(
              family: 'shared',
            ).getValue(zacContext),
        throwsA(isA<StateError>().having((p0) => p0.message, 'error',
            contains('It was not possible to return a SharedValue in '))));

    expect(
        () => ZacValueListConsume<int>.watch(
                family: 'shared',
                transformer: ZacTransformers([ObjectTransformer.toString()]))
            .getValue(zacContext),
        throwsA(isA<StateError>().having(
            (p0) => p0.message,
            'error',
            contains(
                'Unexpected type found after transforming an item in a consumed'))));

    expect(
        ZacValueListConsume<String>.read(
                family: 'shared',
                transformer: ZacTransformers([ObjectTransformer.toString()]))
            .getValue(zacContext),
        ['5', '10']);

    expect(
        () => ZacValueListConsume<String>.read(
              family: 'shared',
            ).getValue(zacContext),
        throwsA(isA<StateError>().having((p0) => p0.message, 'error',
            contains('It was not possible to return a SharedValue in '))));

    expect(
        () => ZacValueListConsume<int>.read(
                family: 'shared',
                transformer: ZacTransformers([ObjectTransformer.toString()]))
            .getValue(zacContext),
        throwsA(isA<StateError>().having(
            (p0) => p0.message,
            'error',
            contains(
                'Unexpected type found after transforming an item in a consumed'))));
  });

  testWidgets('pick a ZacValue and pass it to new actions as payload',
      (tester) async {
    expect(
        () => ConverterHelper.convertToType<ZacValueActions>(<String, dynamic>{
              'converter': 'z:1:ZacValue.asActionPayload',
              'value': 5,
              'actions': <Object>[],
            }),
        returnsNormally);

    late ZacActionPayload payload;
    await testZacWidget(
      tester,
      ZacExecuteActionsBuilder.once(
        actions: ZacActions([
          ZacValueActions.asPayload(
            value: ZacValue<String>.fromJson('hello'),
            actions: ZacActions([
              LeakAction(
                (p, zacContext) => payload = p,
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
