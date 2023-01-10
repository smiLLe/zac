import 'package:zac/src/flutter/all.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:zac/src/zac/action.dart';
import 'package:zac/src/zac/zac_value.dart';

import '../../../helper.dart';
import '../../../helper.mocks.dart';
import '../../models.dart';

void main() {
  testWidgets('FlutterListTile()', (tester) async {
    // @Todo: Add missing props
    await testJSON(
      tester,
      <String, dynamic>{
        'builder': 'f:1:Scaffold',
        'body': {
          'builder': 'f:1:ListTile',
          'key': KeysModel.getValueKey('FIND_ME'),
        },
      },
    );

    final findMe = find.byKey(const ValueKey('FIND_ME'));

    expect(findMe, findsOneWidget);
  });

  testWidgets('FlutterListTile interactions', (tester) async {
    final onTapCb = MockTestActionExecute();
    final onLongPressCb = MockTestActionExecute();
    await testWidgetBuilder(
      tester,
      FlutterScaffold(
        body: FlutterListTile(
          key: FlutterValueKey('FIND_ME'),
          onTap:
              ZacValueList<ZacAction, List<ZacAction>>([TestAction(onTapCb)]),
          onLongPress: ZacValueList<ZacAction, List<ZacAction>>(
              [TestAction(onLongPressCb)]),
        ),
      ),
    );

    final findMe = find.byKey(const ValueKey('FIND_ME'));

    await tester.tap(findMe);
    await tester.longPress(findMe);

    verifyInOrder([
      onTapCb(argThat(isA<ZacActionPayload>()), any, argThat(isZacContext)),
      onLongPressCb(
          argThat(isA<ZacActionPayload>()), any, argThat(isZacContext)),
    ]);

    verifyNoMoreInteractions(onTapCb);
    verifyNoMoreInteractions(onLongPressCb);
  });
}
