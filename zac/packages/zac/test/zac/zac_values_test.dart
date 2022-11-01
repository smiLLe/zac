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
    required ZacValueOrRead<int> value,
    required ZacValueOrRead<int> simple,
    required ZacValueOrRead<int> read,
  }) = _ZacValueReadTest;
}

void main() {
  test('zacValueFromJson', () {
    expect(
        zacValueFromJson<bool>(true, (converter, data) {
          throw Exception();
        }, null.runtimeType),
        ZacValueConsume<bool>.simple(value: true));
    expect(
        zacValueFromJson<int>(5, (converter, data) {
          throw Exception();
        }, null.runtimeType),
        ZacValueConsume<int>.simple(value: 5));
    expect(
        zacValueFromJson<int>(5.1, (converter, data) {
          throw Exception();
        }, null.runtimeType),
        ZacValueConsume<int>.simple(value: 5));

    expect(
        zacValueFromJson<double>(5.0, (converter, data) {
          throw Exception();
        }, null.runtimeType),
        ZacValueConsume<double>.simple(value: 5.0));
    expect(
        zacValueFromJson<double>(5, (converter, data) {
          throw Exception();
        }, null.runtimeType),
        ZacValueConsume<double>.simple(value: 5.0));

    final now = DateTime.now();
    expect(
        zacValueFromJson<DateTime>(now.toIso8601String(), (converter, data) {
          throw Exception();
        }, null.runtimeType),
        ZacValueConsume<DateTime>.simple(value: now));

    expect(
        zacValueFromJson<String>('hello', (converter, data) {
          throw Exception();
        }, null.runtimeType),
        ZacValueConsume<String>.simple(value: 'hello'));

    expect(
        zacValueFromJson<Map>({'foo': 'bar'}, (converter, data) {
          throw Exception();
        }, null.runtimeType),
        ZacValueConsume<Map>.simple(value: {'foo': 'bar'}));

    expect(
        zacValueFromJson<List>(['a', 1], (converter, data) {
          throw Exception();
        }, null.runtimeType),
        ZacValueConsume<List>.simple(value: ['a', 1]));

    expect(
        zacValueFromJson<FlutterSizedBox>({'converter': 'f:1:SizedBox'},
            (converter, data) {
          throw Exception();
        }, null.runtimeType),
        ZacValueConsume<FlutterSizedBox>.simple(value: FlutterSizedBox()));

    /// callback is called because of converter name
    expect(
        zacValueFromJson<int>({'converter': 'z:1:ZacValue'}, (converter, data) {
          return ZacValueConsume<int>.simple(value: 55);
        }, null.runtimeType),
        ZacValueConsume<int>.simple(value: 55));

    /// callback is called because of converter name
    expect(
        zacValueFromJson<int>({'converter': 'z:1:ZacValue.watch'},
            (converter, data) {
          return ZacValueConsume<int>.watch(family: 'foo');
        }, null.runtimeType),
        ZacValueConsume<int>.watch(family: 'foo'));

    /// callback is called because of converter name
    expect(
        zacValueFromJson<int>({'converter': 'z:1:ZacValue.read'},
            (converter, data) {
          return ZacValueConsume<int>.read(family: 'foo');
        }, null.runtimeType),
        ZacValueConsume<int>.read(family: 'foo'));

    // ignore: prefer_function_declarations_over_variables
    final unwanted = () {};
    expect(
        () => zacValueFromJson<int>(unwanted, (converter, data) {
              throw Exception();
            }, unwanted.runtimeType),
        throwsA(isA<StateError>().having(
            (p0) => p0.message,
            'error',
            contains(
                'It was not possible to create a "${unwanted.runtimeType}" because the data given is not supported'))));
  });

  test('Create a ZacValue', () {
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
  });

  test('Create a ZacValueOrRead', () {
    expect(
        ZacValueOrRead<int>.fromJson(
            <String, dynamic>{'converter': 'z:1:ZacValue', 'value': 5}),
        ZacValueConsume<int>.simple(value: 5));

    expect(
        ZacValueOrRead<int>.fromJson(<String, dynamic>{
          'converter': 'z:1:ZacValue.read',
          'family': 'shared'
        }),
        ZacValueConsume<int>.read(family: 'shared'));

    expect(
        () => ZacValueOrRead<int>.fromJson(<String, dynamic>{
              'converter': 'z:1:ZacValue.watch',
              'family': 'shared'
            }),
        throwsA(isA<StateError>().having((p0) => p0.message, 'error',
            contains('It was not possible to create "ZacValueOrRead<int>"'))));
  });

  test('Create a ZacValueOrWatch', () {
    expect(
        ZacValueOrWatch<int>.fromJson(
            <String, dynamic>{'converter': 'z:1:ZacValue', 'value': 5}),
        ZacValueConsume<int>.simple(value: 5));

    expect(
        ZacValueOrWatch<int>.fromJson(<String, dynamic>{
          'converter': 'z:1:ZacValue.watch',
          'family': 'shared'
        }),
        ZacValueConsume<int>.watch(family: 'shared'));

    expect(
        () => ZacValueOrWatch<int>.fromJson(<String, dynamic>{
              'converter': 'z:1:ZacValue.read',
              'family': 'shared'
            }),
        throwsA(isA<StateError>().having((p0) => p0.message, 'error',
            contains('It was not possible to create "ZacValueOrWatch<int>"'))));
  });

  test('Create a ZacFamilyRead', () {
    expect(
        ZacFamilyRead<int>.fromJson(<String, dynamic>{
          'converter': 'z:1:ZacValue.read',
          'family': 'shared'
        }),
        ZacValueConsume<int>.read(family: 'shared'));

    expect(
        () => ZacFamilyRead<int>.fromJson(
            <String, dynamic>{'converter': 'z:1:ZacValue', 'value': 5}),
        throwsA(isA<StateError>().having((p0) => p0.message, 'error',
            contains('It was not possible to create "ZacFamilyRead<int>"'))));

    expect(
        () => ZacFamilyRead<int>.fromJson(<String, dynamic>{
              'converter': 'z:1:ZacValue.watch',
              'family': 'shared'
            }),
        throwsA(isA<StateError>().having((p0) => p0.message, 'error',
            contains('It was not possible to create "ZacFamilyRead<int>"'))));
  });

  test('Create a ZacFamilyWatch', () {
    expect(
        ZacFamilyWatch<int>.fromJson(<String, dynamic>{
          'converter': 'z:1:ZacValue.watch',
          'family': 'shared'
        }),
        ZacValueConsume<int>.watch(family: 'shared'));

    expect(
        () => ZacFamilyWatch<int>.fromJson(
            <String, dynamic>{'converter': 'z:1:ZacValue', 'value': 5}),
        throwsA(isA<StateError>().having((p0) => p0.message, 'error',
            contains('It was not possible to create "ZacFamilyWatch<int>"'))));

    expect(
        () => ZacFamilyWatch<int>.fromJson(<String, dynamic>{
              'converter': 'z:1:ZacValue.read',
              'family': 'shared'
            }),
        throwsA(isA<StateError>().having((p0) => p0.message, 'error',
            contains('It was not possible to create "ZacFamilyWatch<int>"'))));
  });

  test('Create a ZacFamilyReadOrWatch', () {
    expect(
        ZacFamilyReadOrWatch<int>.fromJson(<String, dynamic>{
          'converter': 'z:1:ZacValue.watch',
          'family': 'shared'
        }),
        ZacValueConsume<int>.watch(family: 'shared'));
    expect(
        ZacFamilyReadOrWatch<int>.fromJson(<String, dynamic>{
          'converter': 'z:1:ZacValue.read',
          'family': 'shared'
        }),
        ZacValueConsume<int>.read(family: 'shared'));

    expect(
        () => ZacFamilyReadOrWatch<int>.fromJson(
            <String, dynamic>{'converter': 'z:1:ZacValue', 'value': 5}),
        throwsA(isA<StateError>().having(
            (p0) => p0.message,
            'error',
            contains(
                'It was not possible to create "ZacFamilyReadOrWatch<int>"'))));
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
