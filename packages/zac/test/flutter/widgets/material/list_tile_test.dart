import 'package:zac/zac_flutter_classes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:zac/src/converter.dart';
import 'package:mockito/mockito.dart';

import '../../../helper.dart';
import '../../../helper.mocks.dart';
import '../../models.dart';

void main() {
  testWidgets('FlutterListTile()', (tester) async {
    // @Todo: Add missing props
    await testMap(
      tester,
      <String, dynamic>{
        converterKey: 'f:1:Scaffold',
        'body': {
          converterKey: 'f:1:ListTile',
          'key': KeysModel.getValueKey('FIND_ME'),
        },
      },
    );

    final findMe = find.byKey(const ValueKey('FIND_ME'));

    expect(findMe, findsOneWidget);
  });

  testWidgets('FlutterListTile interactions', (tester) async {
    final onTapCb = MockLeakedActionCb();
    final onLongPressCb = MockLeakedActionCb();
    await testAnyWidget(
        tester,
        FlutterScaffold(
            body: FlutterListTile(
          key: FlutterValueKey('FIND_ME'),
          onTap: LeakAction.createActions(onTapCb),
          onLongPress: LeakAction.createActions(onLongPressCb),
        )));

    final findMe = find.byKey(const ValueKey('FIND_ME'));

    await tester.tap(findMe);
    await tester.longPress(findMe);

    verifyInOrder([
      onTapCb(any, any),
      onLongPressCb(any, any),
    ]);

    verifyNoMoreInteractions(onTapCb);
    verifyNoMoreInteractions(onLongPressCb);
  });
}
