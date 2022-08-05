import 'package:zac/zac_flutter_classes.dart';
import 'package:zac/src/zac/actions/action.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:zac/src/converter.dart';
import 'package:mockito/mockito.dart';

import '../flutter/models.dart';
import '../helper.dart';
import '../helper.mocks.dart';

void main() {
  test('AnyAction', () {
    expect(
        ZacAction.fromJson(
          <String, dynamic>{
            '_converter': 'f:1:showDialog',
            'child': ChildModel.getSizedBox(key: 'dialog_child')
          },
        ),
        FlutterDialogs.showDialog(
            child: FlutterSizedBox(key: FlutterValueKey('dialog_child'))));

    expect(() => ZacAction.fromJson(<String, dynamic>{}), throwsConverterError);
  });

  test('AnyActions', () {
    expect(
        ZacActions.fromJson({
          '_converter': 'z:1:Actions',
          'actions': [
            {
              '_converter': 'f:1:showDialog',
              'child': ChildModel.getSizedBox(key: 'dialog_child_1')
            },
            {
              '_converter': 'f:1:showDialog',
              'child': ChildModel.getSizedBox(key: 'dialog_child_1')
            }
          ]
        }),
        ZacActions([
          FlutterDialogs.showDialog(
              child: FlutterSizedBox(key: FlutterValueKey('dialog_child_1'))),
          FlutterDialogs.showDialog(
              child: FlutterSizedBox(key: FlutterValueKey('dialog_child_1')))
        ]));
    expect(
        ZacActions.fromJson([
          {
            '_converter': 'f:1:showDialog',
            'child': ChildModel.getSizedBox(key: 'dialog_child_1')
          },
          {
            '_converter': 'f:1:showDialog',
            'child': ChildModel.getSizedBox(key: 'dialog_child_1')
          }
        ]),
        ZacActions([
          FlutterDialogs.showDialog(
              child: FlutterSizedBox(key: FlutterValueKey('dialog_child_1'))),
          FlutterDialogs.showDialog(
              child: FlutterSizedBox(key: FlutterValueKey('dialog_child_1')))
        ]));
    expect(
        ZacActions.fromJson({
          '_converter': 'f:1:showDialog',
          'child': ChildModel.getSizedBox(key: 'dialog_child')
        }),
        ZacActions([
          FlutterDialogs.showDialog(
              child: FlutterSizedBox(key: FlutterValueKey('dialog_child')))
        ]));

    expect(() => ZacActions.fromJson('nonono'), throwsException);
    expect(() => ZacActions.fromJson(<String, dynamic>{}), throwsException);
  });

  group('ExecuteActions', () {
    testWidgets('can be converted', (tester) async {
      await testMap(tester, <String, dynamic>{
        '_converter': 'z:1:ExecuteActions',
        'key': KeysModel.getValueKey('FINDME'),
        'actions': [
          {'_converter': 'f:1:showDialog', 'child': ChildModel.getSizedBox()},
        ],
        'child': {
          '_converter': 'f:1:SizedBox',
          'key': KeysModel.getValueKey('child')
        }
      });
      final findMe = find.byKey(const ValueKey('FINDME'));
      expect(findMe, findsOneWidget);
      expect(find.byKey(const ValueKey('child')), findsNothing);
      await tester.pumpAndSettle();
      expect(findMe, findsOneWidget);
      expect(find.byKey(const ValueKey('child')), findsOneWidget);
    });

    testWidgets('will execute actions', (tester) async {
      final executeCb = MockLeakedActionCb();

      await testZacWidget(
        tester,
        ExecuteActionsBuilder(
            key: FlutterValueKey('FIND_ME'),
            actions: LeakAction.createActions(executeCb)),
      );
      verify(executeCb(any, any)).called(1);
      await tester.pump();
      await tester.pump();
      await tester.pump();

      verifyNoMoreInteractions(executeCb);
    });
  });

  group('showDialog', () {
    testWidgets('show a simple Dialog', (tester) async {
      await testMap(
        tester,
        <String, dynamic>{
          converterKey: FlutterElevatedButton.unionValue,
          'key': KeysModel.getValueKey('button'),
          'onPressed': {
            converterKey: 'z:1:Actions',
            'actions': [
              {
                converterKey: FlutterDialogs.unionValueShowDialog,
                'child': ChildModel.getSizedBox(key: 'dialog_child')
              },
            ],
          }
        },
      );

      expect(find.byKey(const ValueKey('dialog_child')), findsNothing);

      await tester.tap(find.byKey(const ValueKey('button')));
      await tester.pumpAndSettle();

      expect(find.byKey(const ValueKey('dialog_child')), findsOneWidget);
    });
  });

  group('navigation', () {
    testWidgets('simple', (tester) async {
      Map<String, dynamic> page({
        required int number,
        required List<Map<String, dynamic>> actions,
        required List<Map<String, dynamic>> backActions,
      }) {
        return <String, dynamic>{
          converterKey: FlutterColumn.unionValue,
          'children': [
            ChildModel.getSizedBox(key: 'page$number'),
            {
              converterKey: FlutterElevatedButton.unionValue,
              'key': KeysModel.getValueKey('page${number}_button'),
              'child': ChildModel.sizedBox,
              'onPressed': {
                converterKey: 'z:1:Actions',
                'actions': actions,
              }
            },
            {
              converterKey: FlutterElevatedButton.unionValue,
              'key': KeysModel.getValueKey('pageback${number}_button'),
              'child': ChildModel.sizedBox,
              'onPressed': {
                converterKey: 'z:1:Actions',
                'actions': backActions,
              }
            },
          ]
        };
      }

      await testMap(
        tester,
        page(
          number: 1,
          actions: [
            <String, dynamic>{
              converterKey: FlutterNavigatorActions.unionValuePush,
              'route': {
                converterKey: 'f:1:MaterialPageRoute',
                'child': page(
                  number: 2,
                  actions: [
                    <String, dynamic>{
                      converterKey: FlutterNavigatorActions.unionValuePush,
                      'route': {
                        converterKey: 'f:1:MaterialPageRoute',
                        'child': page(
                          number: 3,
                          actions: [
                            <String, dynamic>{
                              converterKey: FlutterNavigatorActions
                                  .unionValuePushReplacement,
                              'route': {
                                converterKey: 'f:1:MaterialPageRoute',
                                'child': page(
                                  number: 4,
                                  actions: [],
                                  backActions: [
                                    <String, dynamic>{
                                      converterKey:
                                          FlutterNavigatorActions.unionValuePop,
                                    }
                                  ],
                                ),
                              },
                            },
                          ],
                          backActions: [
                            <String, dynamic>{
                              converterKey:
                                  FlutterNavigatorActions.unionValueMaybePop,
                            }
                          ],
                        ),
                      }
                    },
                  ],
                  backActions: [
                    <String, dynamic>{
                      converterKey: FlutterNavigatorActions.unionValuePop,
                    }
                  ],
                ),
              }
            },
          ],
          backActions: [],
        ),
      );

      expect(find.byKey(const ValueKey('page4')), findsNothing);
      expect(find.byKey(const ValueKey('page3')), findsNothing);
      expect(find.byKey(const ValueKey('page2')), findsNothing);
      expect(find.byKey(const ValueKey('page1')), findsOneWidget);

      await tester.tap(find.byKey(const ValueKey('page1_button')));
      await tester.pumpAndSettle();
      expect(find.byKey(const ValueKey('page4')), findsNothing);
      expect(find.byKey(const ValueKey('page3')), findsNothing);
      expect(find.byKey(const ValueKey('page2')), findsOneWidget);
      expect(find.byKey(const ValueKey('page1')), findsNothing);

      await tester.tap(find.byKey(const ValueKey('page2_button')));
      await tester.pumpAndSettle();
      expect(find.byKey(const ValueKey('page4')), findsNothing);
      expect(find.byKey(const ValueKey('page3')), findsOneWidget);
      expect(find.byKey(const ValueKey('page2')), findsNothing);
      expect(find.byKey(const ValueKey('page1')), findsNothing);

      await tester.tap(find.byKey(const ValueKey('page3_button')));
      await tester.pumpAndSettle();
      expect(find.byKey(const ValueKey('page4')), findsOneWidget);
      expect(find.byKey(const ValueKey('page3')), findsNothing);
      expect(find.byKey(const ValueKey('page2')), findsNothing);
      expect(find.byKey(const ValueKey('page1')), findsNothing);

      await tester.tap(find.byKey(const ValueKey('pageback4_button')));
      await tester.pumpAndSettle();
      expect(find.byKey(const ValueKey('page4')), findsNothing);
      expect(find.byKey(const ValueKey('page3')), findsNothing);
      expect(find.byKey(const ValueKey('page2')), findsOneWidget);
      expect(find.byKey(const ValueKey('page1')), findsNothing);

      await tester.tap(find.byKey(const ValueKey('pageback2_button')));
      await tester.pumpAndSettle();
      expect(find.byKey(const ValueKey('page4')), findsNothing);
      expect(find.byKey(const ValueKey('page3')), findsNothing);
      expect(find.byKey(const ValueKey('page2')), findsNothing);
      expect(find.byKey(const ValueKey('page1')), findsOneWidget);
    });
  });
}
