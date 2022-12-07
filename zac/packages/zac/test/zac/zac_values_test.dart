import 'package:flutter/widgets.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:zac/zac.dart';
import 'package:flutter_test/flutter_test.dart';

import '../helper.dart';

void main() {
  // group('ZacInt', () {
  //   test('can be created from json', () {
  //     expect(ZacInt.fromJson(5), ZacInt(value: 5));

  //     expect(ZacInt.fromJson(5.1), ZacInt(value: 5));

  //     expectConvertToZacBuilder<ZacInt, int>(json: {
  //       'converter': 'z:1:int',
  //       'value': 5,
  //     }, expected: ZacInt(value: 5));

  //     expectConvertToZacBuilder<ZacInt, int>(json: {
  //       'converter': 'z:1:int',
  //       'value': 5.1,
  //     }, expected: ZacInt(value: 5));

  //     expectConvertConsumeSharedValue<ZacInt, int>(
  //       converter: 'z:1:int.consume',
  //       create: ZacInt.consume,
  //     );
  //   });

  //   testWidgets('will return correct value', (tester) async {
  //     await expectValueFromZacBuilder<ZacInt, int>(
  //       tester: tester,
  //       builder: ZacInt(value: 5),
  //       expectValue: 5,
  //       expectValueOrNull: 5,
  //     );

  //     await expectConsumedValueFromZacBuilder<int, int>(
  //       tester: tester,
  //       createBuilder: ZacInt.consume,
  //       expectValue: 5,
  //       sharedValue: 5,
  //     );
  //   });
  // });

  // group('ZacDouble', () {
  //   test('can be created', () {
  //     expect(ZacDouble.fromJson(5), ZacDouble(value: 5.0));

  //     expect(ZacDouble.fromJson(5.1), ZacDouble(value: 5.1));

  //     expectConvertToZacBuilder<ZacDouble, double>(json: {
  //       'converter': 'z:1:double',
  //       'value': 5,
  //     }, expected: ZacDouble(value: 5.0));

  //     expectConvertToZacBuilder<ZacDouble, double>(json: {
  //       'converter': 'z:1:double',
  //       'value': 5.1,
  //     }, expected: ZacDouble(value: 5.1));

  //     expectConvertConsumeSharedValue<ZacDouble, double>(
  //       converter: 'z:1:double.consume',
  //       create: ZacDouble.consume,
  //     );
  //   });

  //   testWidgets('will return correct value', (tester) async {
  //     await expectValueFromZacBuilder<ZacDouble, double>(
  //       tester: tester,
  //       builder: ZacDouble(value: 5.1),
  //       expectValue: 5.1,
  //       expectValueOrNull: 5.1,
  //     );

  //     await expectConsumedValueFromZacBuilder<double, double>(
  //       tester: tester,
  //       createBuilder: ZacDouble.consume,
  //       expectValue: 5.1,
  //       sharedValue: 5.1,
  //     );
  //   });
  // });

  // group('ZacNum', () {
  //   test('can be created', () {
  //     expect(ZacNum.fromJson(5), ZacNum(value: 5));

  //     expect(ZacNum.fromJson(5.1), ZacNum(value: 5.1));

  //     expectConvertToZacBuilder<ZacNum, num>(json: {
  //       'converter': 'z:1:num',
  //       'value': 5,
  //     }, expected: ZacNum(value: 5));

  //     expectConvertToZacBuilder<ZacNum, num>(json: {
  //       'converter': 'z:1:num',
  //       'value': 5.1,
  //     }, expected: ZacNum(value: 5.1));

  //     expectConvertConsumeSharedValue<ZacNum, num>(
  //       converter: 'z:1:num.consume',
  //       create: ZacNum.consume,
  //     );
  //   });

  //   testWidgets('will return correct value', (tester) async {
  //     await expectValueFromZacBuilder<ZacNum, num>(
  //       tester: tester,
  //       builder: ZacNum(value: 5),
  //       expectValue: 5,
  //       expectValueOrNull: 5,
  //     );

  //     await expectConsumedValueFromZacBuilder<num, num>(
  //       tester: tester,
  //       createBuilder: ZacNum.consume,
  //       expectValue: 5,
  //       sharedValue: 5,
  //     );
  //   });
  // });

  // group('ZacString', () {
  //   test('can be created', () {
  //     expect(ZacString.fromJson('hello'), ZacString(value: 'hello'));

  //     expectConvertToZacBuilder<ZacString, String>(json: {
  //       'converter': 'z:1:String',
  //       'value': 'hello',
  //     }, expected: ZacString(value: 'hello'));

  //     expectConvertConsumeSharedValue<ZacString, String>(
  //       converter: 'z:1:String.consume',
  //       create: ZacString.consume,
  //     );
  //   });

  //   testWidgets('will return correct value', (tester) async {
  //     await expectValueFromZacBuilder<ZacString, String>(
  //       tester: tester,
  //       builder: ZacString(value: 'hello'),
  //       expectValue: 'hello',
  //       expectValueOrNull: 'hello',
  //     );

  //     await expectConsumedValueFromZacBuilder<String, String>(
  //       tester: tester,
  //       createBuilder: ZacString.consume,
  //       expectValue: 'hello',
  //       sharedValue: 'hello',
  //     );
  //   });
  // });

  // group('ZacBool', () {
  //   test('can be created', () {
  //     expectConvertToZacBuilder<ZacBool, bool>(json: {
  //       'converter': 'z:1:bool',
  //       'value': false,
  //     }, expected: ZacBool(value: false));

  //     expectConvertConsumeSharedValue<ZacBool, bool>(
  //       converter: 'z:1:bool.consume',
  //       create: ZacBool.consume,
  //     );
  //   });

  //   testWidgets('will return correct value', (tester) async {
  //     await expectValueFromZacBuilder<ZacBool, bool>(
  //       tester: tester,
  //       builder: ZacBool(value: false),
  //       expectValue: false,
  //       expectValueOrNull: false,
  //     );

  //     await expectConsumedValueFromZacBuilder<bool, bool>(
  //       tester: tester,
  //       createBuilder: ZacBool.consume,
  //       expectValue: false,
  //       sharedValue: false,
  //     );
  //   });
  // });

  // group('ZacObject', () {
  //   test('can be created', () {
  //     final obj = Object();
  //     expectConvertToZacBuilder<ZacObject, Object>(json: {
  //       'converter': 'z:1:Object',
  //       'value': obj,
  //     }, expected: ZacObject(value: obj));

  //     expectConvertConsumeSharedValue<ZacObject, Object>(
  //       converter: 'z:1:Object.consume',
  //       create: ZacObject.consume,
  //     );
  //   });

  //   testWidgets('will return correct value', (tester) async {
  //     final obj = Object();
  //     await expectValueFromZacBuilder<ZacObject, Object>(
  //       tester: tester,
  //       builder: ZacObject(value: obj),
  //       expectValue: obj,
  //       expectValueOrNull: obj,
  //     );

  //     await expectConsumedValueFromZacBuilder<Object, Object>(
  //       tester: tester,
  //       createBuilder: ZacObject.consume,
  //       expectValue: obj,
  //       sharedValue: obj,
  //     );
  //   });
  // });

  // group('ZacFlutterWidget', () {
  //   test('can be created', () {
  //     expectConvertToZacBuilder<ZacFlutterWidget, Widget>(json: {
  //       'converter': 'z:1:FlutterWidget',
  //       'value': {'converter': 'f:1:SizedBox'},
  //     }, expected: ZacFlutterWidget(value: FlutterSizedBox()));

  //     expectConvertConsumeSharedValue<ZacFlutterWidget, FlutterWidget>(
  //       converter: 'z:1:FlutterWidget.consume',
  //       create: ZacFlutterWidget.consume,
  //     );
  //   });

  //   testWidgets('will return correct value', (tester) async {
  //     await tester.pumpWidget(
  //       ZacUpdateContext(
  //         builder: (zacContext) {
  //           return ZacFlutterWidget(
  //             value: FlutterSizedBox(
  //               key: FlutterValueKey('FIND_ME'),
  //             ),
  //           ).build(zacContext);
  //         },
  //       ),
  //     );
  //     expect(find.byKey(const ValueKey('FIND_ME')), findsOneWidget);

  //     await tester.pumpWidget(
  //       ProviderScope(
  //         child: ZacWidget(
  //           data: SharedValueProviderBuilder(
  //             value: FlutterSizedBox(
  //               key: FlutterValueKey('FIND_ME_2'),
  //             ),
  //             family: 'shared',
  //             child: TestBuildCustomWidget(
  //               (zacContext) {
  //                 return ZacFlutterWidget.consume(family: 'shared')
  //                     .build(zacContext);
  //               },
  //             ),
  //           ),
  //         ),
  //       ),
  //     );

  //     expect(find.byKey(const ValueKey('FIND_ME_2')), findsOneWidget);
  //   });
  // });

  // group('ZacDateTime', () {
  //   test('can be created', () {
  //     final now = DateTime.now();
  //     expect(
  //         ZacDateTime.fromJson(now.toIso8601String()), ZacDateTime(value: now));

  //     expectConvertToZacBuilder<ZacDateTime, DateTime>(json: {
  //       'converter': 'z:1:DateTime',
  //       'value': now.toIso8601String(),
  //     }, expected: ZacDateTime(value: now));

  //     expectConvertConsumeSharedValue<ZacDateTime, DateTime>(
  //       converter: 'z:1:DateTime.consume',
  //       create: ZacDateTime.consume,
  //     );
  //   });

  //   testWidgets('will return correct value', (tester) async {
  //     final now = DateTime.now();
  //     await expectValueFromZacBuilder<ZacDateTime, DateTime>(
  //       tester: tester,
  //       builder: ZacDateTime(value: now),
  //       expectValue: now,
  //       expectValueOrNull: now,
  //     );

  //     await expectConsumedValueFromZacBuilder<DateTime, DateTime>(
  //       tester: tester,
  //       createBuilder: ZacDateTime.consume,
  //       expectValue: now,
  //       sharedValue: now,
  //     );
  //   });
  // });

  // group('ZacListOfFlutterWidget', () {
  //   test('can be created', () {
  //     expectConvertToZacBuilder<ZacListOfFlutterWidget, List<Widget>>(json: {
  //       'converter': 'z:1:List<FlutterWidget>',
  //       'items': [
  //         {'converter': 'f:1:SizedBox'}
  //       ],
  //     }, expected: ZacListOfFlutterWidget(items: [FlutterSizedBox()]));

  //     expectConvertConsumeListSharedValue<ZacListOfFlutterWidget,
  //         FlutterWidget>(
  //       converter: 'z:1:List<FlutterWidget>.consume',
  //       create: ZacListOfFlutterWidget.consume,
  //     );
  //   });
  // });

  // testWidgets('pick a ZacValue and pass it to new actions as payload',
  //     (tester) async {
  //   expect(
  //       () => ConverterHelper.convertToType<ZacValueActions>(<String, dynamic>{
  //             'converter': 'z:1:ZacValue.asActionPayload',
  //             'value': 5,
  //             'actions': <Object>[],
  //           }),
  //       returnsNormally);

  //   late ZacActionPayload payload;
  //   await testZacWidget(
  //     tester,
  //     ZacExecuteActionsBuilder.once(
  //       actions: ZacActions([
  //         ZacValueActions.asPayload(
  //           value: ZacObject.fromJson('hello'),
  //           actions: ZacActions([
  //             LeakAction(
  //               (p, zacContext) => payload = p,
  //             )
  //           ]),
  //         ),
  //       ]),
  //       child: FlutterSizedBox(),
  //     ),
  //   );

  //   expect(payload, ZacActionPayload.param('hello'));
  // });
}
