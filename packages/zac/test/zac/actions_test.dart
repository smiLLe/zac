import 'package:zac/src/flutter/all.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:zac/src/converter.dart';
import 'package:mockito/mockito.dart';
import 'package:zac/src/zac/action.dart';
import 'package:zac/src/zac/origin.dart';
import 'package:zac/src/zac/shared_value.dart';

import '../flutter/models.dart';
import '../helper.dart';
import '../helper.mocks.dart';

void main() {
  test('AnyAction', () {
    expect(
        ZacActions.fromJson(
          <String, dynamic>{
            '_converter': 'f:1:showDialog',
            'child': ChildModel.getSizedBox(key: 'dialog_child')
          },
        ),
        ZacActions([
          FlutterDialogs.showDialog(
              child: FlutterSizedBox(key: FlutterValueKey('dialog_child')))
        ]));

    expect(() => ZacActions.fromJson(<String, dynamic>{}), throwsException);
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

  group('ZacExecuteActionsOnce', () {
    testWidgets('can be converted', (tester) async {
      await testMap(tester, <String, dynamic>{
        '_converter': 'z:1:ExecuteActions.once',
        'actions': [
          {'_converter': 'f:1:showDialog', 'child': ChildModel.getSizedBox()},
        ],
        'child': {
          '_converter': 'f:1:SizedBox',
          'key': KeysModel.getValueKey('child')
        }
      });
      expect(find.byKey(const ValueKey('child')), findsNothing);
      await tester.pumpAndSettle();
      expect(find.byKey(const ValueKey('child')), findsOneWidget);
    });

    testWidgets('will execute interactions', (tester) async {
      final executeCb = MockLeakedActionCb();

      await testZacWidget(
        tester,
        ZacExecuteActionsBuilder.once(
            actions: LeakAction.createActions(executeCb)),
      );
      verify(executeCb(argThat(isAOriginWidgetTree), any)).called(1);
      await tester.pump();
      await tester.pump();
      await tester.pump();

      verifyNoMoreInteractions(executeCb);
    });
  });

  group('ZacExecuteActionsListen', () {
    test('convert', () {
      allConverters = {
        ...allConverters,
        NoopAction.unionValue: NoopAction.fromJson
      };
      expect(
          ConverterHelper.convertToType<ZacExecuteActionsBuilder>({
            '_converter': 'z:1:ExecuteActions.listen',
            'family': 'foo',
            'actions': NoopAction.createActions(),
          }),
          ZacExecuteActionsBuilder.listen(
              actions: ZacActions([const NoopAction()]), family: 'foo'));

      expect(
          ZacExecuteActionsBuilder.fromJson(<String, dynamic>{
            '_converter': 'z:1:ExecuteActions.listen',
            'family': 'foo',
            'actions': NoopAction.createActions(),
          }),
          ZacExecuteActionsBuilder.listen(
              actions: ZacActions([const NoopAction()]), family: 'foo'));
    });

    testWidgets('execute interactions', (tester) async {
      late ZacContext zacContext;
      final cb = MockLeakBagCb();

      await testZacWidget(
        tester,
        SharedValueProviderBuilder(
          value: 1,
          family: 'shared',
          child: ZacExecuteActionsBuilder.listen(
            actions: LeakBagContentAction.createActions(cb),
            family: 'shared',
            child: FlutterSizedBox(
              key: FlutterValueKey('child'),
              child: LeakOrigin(cb: (o) => zacContext = o),
            ),
          ),
        ),
      );

      verifyZeroInteractions(cb);

      SharedValue.update(zacContext, 'shared', (current) => 2);
      await tester.pumpAndSettle();

      verify(cb(argThat(containsPair('action.payload', 2)))).called(1);
      verifyNoMoreInteractions(cb);
    });
  });

  group('showDialog', () {
    testWidgets('show a simple Dialog', (tester) async {
      await testMap(
        tester,
        <String, dynamic>{
          '_converter': FlutterElevatedButton.unionValue,
          'key': KeysModel.getValueKey('button'),
          'onPressed': {
            '_converter': 'z:1:Actions',
            'actions': [
              {
                '_converter': FlutterDialogs.unionValueShowDialog,
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
        required List<Map<String, dynamic>> interactions,
        required List<Map<String, dynamic>> backActions,
      }) {
        return <String, dynamic>{
          '_converter': FlutterColumn.unionValue,
          'children': [
            ChildModel.getSizedBox(key: 'page$number'),
            {
              '_converter': FlutterElevatedButton.unionValue,
              'key': KeysModel.getValueKey('page${number}_button'),
              'child': ChildModel.sizedBox,
              'onPressed': {
                '_converter': 'z:1:Actions',
                'actions': interactions,
              }
            },
            {
              '_converter': FlutterElevatedButton.unionValue,
              'key': KeysModel.getValueKey('pageback${number}_button'),
              'child': ChildModel.sizedBox,
              'onPressed': {
                '_converter': 'z:1:Actions',
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
          interactions: [
            <String, dynamic>{
              '_converter': FlutterNavigatorActions.unionValuePush,
              'route': {
                '_converter': 'f:1:MaterialPageRoute',
                'child': page(
                  number: 2,
                  interactions: [
                    <String, dynamic>{
                      '_converter': FlutterNavigatorActions.unionValuePush,
                      'route': {
                        '_converter': 'f:1:MaterialPageRoute',
                        'child': page(
                          number: 3,
                          interactions: [
                            <String, dynamic>{
                              '_converter': FlutterNavigatorActions
                                  .unionValuePushReplacement,
                              'route': {
                                '_converter': 'f:1:MaterialPageRoute',
                                'child': page(
                                  number: 4,
                                  interactions: [],
                                  backActions: [
                                    <String, dynamic>{
                                      '_converter':
                                          FlutterNavigatorActions.unionValuePop,
                                    }
                                  ],
                                ),
                              },
                            },
                          ],
                          backActions: [
                            <String, dynamic>{
                              '_converter':
                                  FlutterNavigatorActions.unionValueMaybePop,
                            }
                          ],
                        ),
                      }
                    },
                  ],
                  backActions: [
                    <String, dynamic>{
                      '_converter': FlutterNavigatorActions.unionValuePop,
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
