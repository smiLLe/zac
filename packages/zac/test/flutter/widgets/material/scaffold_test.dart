import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:zac/src/converter.dart';
import 'package:zac/src/flutter/widgets/builder.dart';
import 'package:zac/src/flutter/widgets/material/buttons.dart';
import 'package:zac/src/flutter/widgets/material/scaffold.dart';

import '../../../helper.dart';
import '../../models.dart';
import '../helper.dart';

void main() {
  testWidgets('find all widgets', (tester) async {
    await testMap(
      tester,
      <String, dynamic>{
        converterKey: FlutterScaffold.unionValue,
        'key': KeysModel.getValueKey('test_key'),
        'appBar': {
          converterKey: 'f:1:AppBar',
          'key': KeysModel.getValueKey('test_appBar'),
        },
        'body': ChildModel.getSizedBox(key: 'test_body'),
        'floatingActionButton':
            ChildModel.getSizedBox(key: 'test_floatingActionButton'),
        'persistentFooterButtons': [
          ChildModel.getSizedBox(key: 'test_persistentFooterButtons')
        ],
        'drawer': ChildModel.getSizedBox(key: 'test_drawer'),
        'endDrawer': ChildModel.getSizedBox(key: 'test_endDrawer'),
        'bottomNavigationBar':
            ChildModel.getSizedBox(key: 'test_bottomNavigationBar'),
        'bottomSheet': ChildModel.getSizedBox(key: 'test_bottomSheet'),
        'backgroundColor': ColorModel.json,
        'resizeToAvoidBottomInset': true,
        'primary': false,
        'extendBody': true,
        'extendBodyBehindAppBar': true,
        'drawerScrimColor': ColorModel.json,
        'drawerEdgeDragWidth': 22,
        'drawerEnableOpenDragGesture': false,
        'endDrawerEnableOpenDragGesture': false,
        'restorationId': 'resto_id',
      },
    );

    final widget =
        find.byKey(const ValueKey('test_key')).evaluate().first.widget;

    expect(
        widget,
        isA<Scaffold>()
            .havingValueKey('test_key')
            .having((p0) => p0.appBar, 'Scaffold.appBar', isA<AppBar>())
            .having((p0) => p0.body, 'Scaffold.body', isA<SizedBox>())
            .having((p0) => p0.floatingActionButton,
                'Scaffold.floatingActionButton', isA<SizedBox>())
            .having(
                (p0) => p0.persistentFooterButtons,
                'Scaffold.persistentFooterButtons',
                isA<List<Widget>>()
                    .having((p0) => p0.first, 'first element', isA<SizedBox>()))
            .having((p0) => p0.drawer, 'Scaffold.drawer', isA<SizedBox>())
            .having((p0) => p0.endDrawer, 'Scaffold.endDrawer', isA<SizedBox>())
            .having((p0) => p0.bottomNavigationBar,
                'Scaffold.bottomNavigationBar', isA<SizedBox>())
            .having(
                (p0) => p0.bottomSheet, 'Scaffold.bottomSheet', isA<SizedBox>())
            .having((p0) => p0.backgroundColor, 'Scaffold.backgroundColor',
                ColorModel.equals)
            .having((p0) => p0.resizeToAvoidBottomInset,
                'Scaffold.resizeToAvoidBottomInset', isTrue)
            .having((p0) => p0.primary, 'Scaffold.primary', isFalse)
            .having((p0) => p0.extendBody, 'Scaffold.extendBody', isTrue)
            .having((p0) => p0.extendBodyBehindAppBar,
                'Scaffold.extendBodyBehindAppBar', isTrue)
            .having((p0) => p0.drawerScrimColor, 'Scaffold.drawerScrimColor',
                ColorModel.equals)
            .having((p0) => p0.drawerEdgeDragWidth,
                'Scaffold.drawerEdgeDragWidth', 22)
            .having((p0) => p0.drawerEnableOpenDragGesture,
                'Scaffold.drawerEnableOpenDragGesture', isFalse)
            .having((p0) => p0.endDrawerEnableOpenDragGesture,
                'Scaffold.endDrawerEnableOpenDragGesture', isFalse)
            .having((p0) => p0.restorationId, 'Scaffold.restorationId',
                'resto_id'));
  });

  testWidgets('open drawer', (tester) async {
    await testMap(
      tester,
      <String, dynamic>{
        converterKey: FlutterScaffold.unionValue,
        'key': KeysModel.getValueKey('scaffold'),
        'drawer': ChildModel.getSizedBox(key: 'drawer_child'),
        'body': {
          converterKey: FlutterBuilder.unionValue,
          'child': {
            converterKey: FlutterElevatedButton.unionValue,
            'key': KeysModel.getValueKey('button'),
            'child': ChildModel.sizedBox,
            'onPressed': {
              converterKey: 'z:1:Actions',
              'actions': [
                {
                  converterKey: FlutterScaffold.unionValueOpenDrawer,
                  'child': ChildModel.getSizedBox(key: 'dialog_child')
                },
              ],
            }
          }
        }
      },
    );

    expect(find.byKey(const ValueKey('scaffold')), findsOneWidget);
    expect(find.byKey(const ValueKey('drawer_child')), findsNothing);

    await tester.tap(find.byKey(const ValueKey('button')));
    await tester.pumpAndSettle();

    expect(find.byKey(const ValueKey('drawer_child')), findsOneWidget);
  });

  testWidgets('open end drawer', (tester) async {
    await testMap(
      tester,
      <String, dynamic>{
        converterKey: FlutterScaffold.unionValue,
        'key': KeysModel.getValueKey('scaffold'),
        'endDrawer': ChildModel.getSizedBox(key: 'drawer_child'),
        'body': {
          converterKey: FlutterBuilder.unionValue,
          'child': {
            converterKey: FlutterElevatedButton.unionValue,
            'key': KeysModel.getValueKey('button'),
            'child': ChildModel.sizedBox,
            'onPressed': {
              converterKey: 'z:1:Actions',
              'actions': [
                {
                  converterKey: FlutterScaffold.unionValueOpenEndDrawer,
                  'child': ChildModel.getSizedBox(key: 'dialog_child')
                },
              ],
            }
          }
        }
      },
    );

    expect(find.byKey(const ValueKey('scaffold')), findsOneWidget);
    expect(find.byKey(const ValueKey('drawer_child')), findsNothing);

    await tester.tap(find.byKey(const ValueKey('button')));
    await tester.pumpAndSettle();

    expect(find.byKey(const ValueKey('drawer_child')), findsOneWidget);
  });

  testWidgets('showBodyScrim', (tester) async {
    await testMap(
      tester,
      <String, dynamic>{
        converterKey: FlutterScaffold.unionValue,
        'key': KeysModel.getValueKey('scaffold'),
        'body': {
          converterKey: FlutterBuilder.unionValue,
          'child': {
            converterKey: FlutterElevatedButton.unionValue,
            'key': KeysModel.getValueKey('button'),
            'child': ChildModel.sizedBox,
            'onPressed': {
              converterKey: 'z:1:Actions',
              'actions': [
                {
                  converterKey: FlutterScaffold.unionValueShowBodyScrim,
                  'value': true,
                  'opacity': 0.33,
                },
              ],
            }
          }
        }
      },
    );

    expect(find.byKey(const ValueKey('scaffold')), findsOneWidget);

    await tester.tap(find.byKey(const ValueKey('button')));
    await tester.pumpAndSettle();

    expect(
        find.byWidgetPredicate(
            // (w) => w is ModalBarrier && w.color == ColorModel.equals
            (w) =>
                w is ModalBarrier && w.color == Colors.black.withOpacity(0.33)),
        findsOneWidget);
  });

  testWidgets('showBottomSheet', (tester) async {
    await testMap(
      tester,
      <String, dynamic>{
        converterKey: FlutterScaffold.unionValue,
        'key': KeysModel.getValueKey('scaffold'),
        'body': {
          converterKey: FlutterBuilder.unionValue,
          'child': {
            converterKey: FlutterElevatedButton.unionValue,
            'key': KeysModel.getValueKey('button'),
            'child': ChildModel.sizedBox,
            'onPressed': {
              converterKey: 'z:1:Actions',
              'actions': [
                {
                  converterKey: FlutterScaffold.unionValueShowBottomSheet,
                  'child': ChildModel.getSizedBox(key: 'child')
                },
              ],
            }
          }
        }
      },
    );

    expect(find.byKey(const ValueKey('scaffold')), findsOneWidget);

    await tester.tap(find.byKey(const ValueKey('button')));
    await tester.pumpAndSettle();

    expect(find.byKey(const ValueKey('child')), findsOneWidget);
  });

  testWidgets('SnackBar', (tester) async {
    // TODO: Add more testing
    await testMap(
      tester,
      <String, dynamic>{
        converterKey: FlutterScaffold.unionValue,
        'key': KeysModel.getValueKey('scaffold'),
        'body': {
          converterKey: FlutterBuilder.unionValue,
          'child': {
            converterKey: FlutterElevatedButton.unionValue,
            'key': KeysModel.getValueKey('button'),
            'child': ChildModel.sizedBox,
            'onPressed': {
              converterKey: 'z:1:Actions',
              'actions': [
                {
                  converterKey: FlutterScaffoldMessenger.unionValueShowSnackBar,
                  'snackBar': {
                    converterKey: 'f:1:SnackBar',
                    'content': ChildModel.getSizedBox(key: 'child'),
                  }
                },
              ],
            }
          }
        }
      },
    );

    expect(find.byKey(const ValueKey('scaffold')), findsOneWidget);

    await tester.tap(find.byKey(const ValueKey('button')));
    await tester.pumpAndSettle();

    expect(find.byKey(const ValueKey('child')), findsOneWidget);
  });

  testWidgets('Material Banner', (tester) async {
    // TODO: Add more testing
    await testMap(
      tester,
      <String, dynamic>{
        converterKey: FlutterScaffold.unionValue,
        'key': KeysModel.getValueKey('scaffold'),
        'body': {
          converterKey: FlutterBuilder.unionValue,
          'child': {
            converterKey: FlutterElevatedButton.unionValue,
            'key': KeysModel.getValueKey('button'),
            'child': ChildModel.sizedBox,
            'onPressed': {
              converterKey: 'z:1:Actions',
              'actions': [
                {
                  converterKey:
                      FlutterScaffoldMessenger.unionValueShowMaterialBanner,
                  'materialBanner': {
                    converterKey: FlutterMaterialBanner.unionValue,
                    'content': ChildModel.getSizedBox(key: 'child'),
                    'actions': [
                      {
                        converterKey: FlutterElevatedButton.unionValue,
                        'key': KeysModel.getValueKey('remove_button'),
                        'child': ChildModel.sizedBox,
                        'onPressed': {
                          converterKey: 'z:1:Actions',
                          'actions': [
                            {
                              converterKey: FlutterScaffoldMessenger
                                  .unionValueRemoveCurrentMaterialBanner
                            }
                          ],
                        }
                      }
                    ]
                  },
                },
              ],
            }
          }
        }
      },
    );

    expect(find.byKey(const ValueKey('scaffold')), findsOneWidget);

    await tester.tap(find.byKey(const ValueKey('button')));
    await tester.pumpAndSettle();

    expect(find.byKey(const ValueKey('child')), findsOneWidget);

    await tester.tap(find.byKey(const ValueKey('remove_button')));
    await tester.pumpAndSettle();

    expect(find.byKey(const ValueKey('child')), findsNothing);
  });
}
