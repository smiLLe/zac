import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:zac/src/flutter/all.dart';
import 'package:zac/src/zac/action.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:zac/src/converter.dart';
import 'package:mockito/mockito.dart';
import 'package:zac/src/zac/misc.dart';
import 'package:zac/src/zac/shared_value.dart';
import 'package:zac/src/zac/update_context.dart';

import '../flutter/models.dart';
import '../helper.dart';
import '../helper.mocks.dart';

void main() {
  test('AnyAction', () {
    expect(
        ZacUiAction.fromJson(
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
        ZacUiActions.fromJson({
          '_converter': 'z:1:UiActions',
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
        ZacUiActions([
          FlutterDialogs.showDialog(
              child: FlutterSizedBox(key: FlutterValueKey('dialog_child_1'))),
          FlutterDialogs.showDialog(
              child: FlutterSizedBox(key: FlutterValueKey('dialog_child_1')))
        ]));
    expect(
        ZacUiActions.fromJson([
          {
            '_converter': 'f:1:showDialog',
            'child': ChildModel.getSizedBox(key: 'dialog_child_1')
          },
          {
            '_converter': 'f:1:showDialog',
            'child': ChildModel.getSizedBox(key: 'dialog_child_1')
          }
        ]),
        ZacUiActions([
          FlutterDialogs.showDialog(
              child: FlutterSizedBox(key: FlutterValueKey('dialog_child_1'))),
          FlutterDialogs.showDialog(
              child: FlutterSizedBox(key: FlutterValueKey('dialog_child_1')))
        ]));
    expect(
        ZacUiActions.fromJson({
          '_converter': 'f:1:showDialog',
          'child': ChildModel.getSizedBox(key: 'dialog_child')
        }),
        ZacUiActions([
          FlutterDialogs.showDialog(
              child: FlutterSizedBox(key: FlutterValueKey('dialog_child')))
        ]));

    expect(() => ZacUiActions.fromJson('nonono'), throwsException);
    expect(() => ZacUiActions.fromJson(<String, dynamic>{}), throwsException);
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

    testWidgets('will execute actions', (tester) async {
      final executeCb = MockLeakedActionCb();

      await testZacWidget(
        tester,
        ZacExecuteActionsBuilder.once(
            actions: LeakUiAction.createActions(executeCb)),
      );
      verify(executeCb(any, any, any, any)).called(1);
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
              actions: ZacUiActions([const NoopAction()]), family: 'foo'));

      expect(
          ZacExecuteActionsBuilder.fromJson(<String, dynamic>{
            '_converter': 'z:1:ExecuteActions.listen',
            'family': 'foo',
            'actions': NoopAction.createActions(),
          }),
          ZacExecuteActionsBuilder.listen(
              actions: ZacUiActions([const NoopAction()]), family: 'foo'));
    });

    testWidgets('execute actions', (tester) async {
      late WidgetRef ref;
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
              child: LeakContext(cb: (_, r, __) => ref = r),
            ),
          ),
        ),
      );

      verifyZeroInteractions(cb);

      SharedValue.update(ZacRef.widget(ref), 'shared', (current) => 2);
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
            '_converter': 'z:1:UiActions',
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
        required List<Map<String, dynamic>> actions,
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
                '_converter': 'z:1:UiActions',
                'actions': actions,
              }
            },
            {
              '_converter': FlutterElevatedButton.unionValue,
              'key': KeysModel.getValueKey('pageback${number}_button'),
              'child': ChildModel.sizedBox,
              'onPressed': {
                '_converter': 'z:1:UiActions',
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
              '_converter': FlutterNavigatorActions.unionValuePush,
              'route': {
                '_converter': 'f:1:MaterialPageRoute',
                'child': page(
                  number: 2,
                  actions: [
                    <String, dynamic>{
                      '_converter': FlutterNavigatorActions.unionValuePush,
                      'route': {
                        '_converter': 'f:1:MaterialPageRoute',
                        'child': page(
                          number: 3,
                          actions: [
                            <String, dynamic>{
                              '_converter': FlutterNavigatorActions
                                  .unionValuePushReplacement,
                              'route': {
                                '_converter': 'f:1:MaterialPageRoute',
                                'child': page(
                                  number: 4,
                                  actions: [],
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
