import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:zac/src/flutter/all.dart';
import 'package:zac/src/zac/build.dart';
import 'package:zac/src/zac/state.dart';
import 'package:zac/src/zac/zac_value.dart';

import '../../../helper.dart';
import '../../models.dart';
import '../helper.dart';

void main() {
  testWidgets('find all widgets', (tester) async {
    await testJSON(
      tester,
      <String, dynamic>{
        'builder': FlutterScaffold.unionValue,
        'key': KeysModel.getValueKey('test_key'),
        'appBar': {
          'builder': 'f:1:AppBar',
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
    await testJSON(
      tester,
      <String, dynamic>{
        'builder': FlutterScaffold.unionValue,
        'key': KeysModel.getValueKey('scaffold'),
        'drawer': ChildModel.getSizedBox(key: 'drawer_child'),
        'body': {
          'builder': 'f:1:Builder',
          'child': {
            'builder': FlutterElevatedButton.unionValue,
            'key': KeysModel.getValueKey('button'),
            'child': ChildModel.sizedBox,
            'onPressed': [
              {
                'builder': 'f:1:Scaffold.openDrawer',
                'child': ChildModel.getSizedBox(key: 'dialog_child')
              },
            ],
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
    await testJSON(
      tester,
      <String, dynamic>{
        'builder': FlutterScaffold.unionValue,
        'key': KeysModel.getValueKey('scaffold'),
        'endDrawer': ChildModel.getSizedBox(key: 'drawer_child'),
        'body': {
          'builder': 'f:1:Builder',
          'child': {
            'builder': FlutterElevatedButton.unionValue,
            'key': KeysModel.getValueKey('button'),
            'child': ChildModel.sizedBox,
            'onPressed': [
              {
                'builder': 'f:1:Scaffold.openEndDrawer',
                'child': ChildModel.getSizedBox(key: 'dialog_child')
              },
            ],
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
    await testJSON(
      tester,
      <String, dynamic>{
        'builder': FlutterScaffold.unionValue,
        'key': KeysModel.getValueKey('scaffold'),
        'body': {
          'builder': 'f:1:Builder',
          'child': {
            'builder': FlutterElevatedButton.unionValue,
            'key': KeysModel.getValueKey('button'),
            'child': ChildModel.sizedBox,
            'onPressed': [
              {
                'builder': 'f:1:Scaffold.showBodyScrim',
                'value': true,
                'opacity': 0.33,
              },
            ],
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

  group('showBottomSheet()', () {
    testWidgets('will show', (tester) async {
      await tester.pumpWidget(
        ProviderScope(
          child: MaterialApp(
            home: Material(
              child: ZacBuildWidget(
                data: FlutterScaffold(
                  body: FlutterBuilder(
                    child: FlutterElevatedButton(
                      key: FlutterValueKey('button'),
                      onPressed: ZacListOfActions([
                        FlutterScaffoldActions.showBottomSheet(
                          FlutterText(
                            ZacString('hello world'),
                          ),
                        ),
                      ]),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      );

      await tester.tap(find.byKey(const ValueKey('button')));
      await tester.pumpAndSettle();

      expect(find.text('hello world'), findsOneWidget);
    });

    testWidgets('will have access to parent shared values', (tester) async {
      await tester.pumpWidget(
        ProviderScope(
          child: ZacBuildWidget(
            data: FlutterMaterialApp(
              home: FlutterMaterial(
                child: FlutterScaffold(
                    body: ZacStatesProvider(
                  states: [
                    ZacStateProvide(family: 'shared', value: 'hello world'),
                  ],
                  child: FlutterElevatedButton(
                    key: FlutterValueKey('button'),
                    onPressed: ZacListOfActions([
                      FlutterScaffoldActions.showBottomSheet(
                        FlutterText(
                          ZacStateConsume<String>(family: 'shared'),
                        ),
                      ),
                    ]),
                  ),
                )),
              ),
            ),
          ),
        ),
      );

      await tester.tap(find.byKey(const ValueKey('button')));
      await tester.pumpAndSettle();

      expect(find.text('hello world'), findsOneWidget);
    });
  });

  group('SnackBar', () {
    testWidgets('showSnackBar() / hideCurrentSnackBar()', (tester) async {
      await tester.pumpWidget(
        ProviderScope(
          child: ZacBuildWidget(
            data: FlutterMaterialApp(
              home: FlutterMaterial(
                child: FlutterScaffold(
                  body: FlutterBuilder(
                    child: FlutterElevatedButton(
                      key: FlutterValueKey('show'),
                      onPressed: ZacListOfActions([
                        FlutterScaffoldMessenger.showSnackBar(
                          FlutterSnackBar(
                            content: FlutterElevatedButton(
                              key: FlutterValueKey('hide'),
                              child: FlutterText(ZacString('hello world')),
                              onPressed: ZacListOfActions([
                                FlutterScaffoldMessenger.hideCurrentSnackBar(),
                              ]),
                            ),
                          ),
                        ),
                      ]),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      );
      expect(find.text('hello world'), findsNothing);

      await tester.tap(find.byKey(const ValueKey('show')));
      await tester.pumpAndSettle();

      expect(find.text('hello world'), findsOneWidget);

      await tester.tap(find.byKey(const ValueKey('hide')));
      await tester.pumpAndSettle();

      expect(find.text('hello world'), findsNothing);
    });

    testWidgets('will have access to parent shared values', (tester) async {
      await tester.pumpWidget(
        ProviderScope(
          child: ZacBuildWidget(
            data: FlutterMaterialApp(
              home: FlutterMaterial(
                child: FlutterScaffold(
                  body: ZacStatesProvider(
                    states: [
                      ZacStateProvide(family: 'shared', value: 'hello world')
                    ],
                    child: FlutterElevatedButton(
                      key: FlutterValueKey('button'),
                      onPressed: ZacListOfActions([
                        FlutterScaffoldMessenger.showSnackBar(
                          FlutterSnackBar(
                            content: FlutterText(
                              ZacStateConsume<String>(family: 'shared'),
                            ),
                          ),
                        ),
                      ]),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      );

      await tester.tap(find.byKey(const ValueKey('button')));
      await tester.pumpAndSettle();

      expect(find.text('hello world'), findsOneWidget);
    });
  });

  group('MaterialBanner', () {
    testWidgets('showMaterialBanner() / removeCurrentMaterialBanner()',
        (tester) async {
      await tester.pumpWidget(
        ProviderScope(
          child: ZacBuildWidget(
            data: FlutterMaterialApp(
              home: FlutterMaterial(
                child: FlutterScaffold(
                  body: FlutterBuilder(
                    child: FlutterElevatedButton(
                      key: FlutterValueKey('show'),
                      onPressed: ZacListOfActions([
                        FlutterScaffoldMessenger.showMaterialBanner(
                          FlutterMaterialBanner(
                            content: FlutterText(ZacString('hello world')),
                            actions: ZacListOfWidgets([
                              FlutterElevatedButton(
                                key: FlutterValueKey('remove'),
                                onPressed: ZacListOfActions([
                                  FlutterScaffoldMessenger
                                      .removeCurrentMaterialBanner(),
                                ]),
                              ),
                            ]),
                          ),
                        ),
                      ]),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      );

      expect(find.text('hello world'), findsNothing);

      await tester.tap(find.byKey(const ValueKey('show')));
      await tester.pumpAndSettle();

      expect(find.text('hello world'), findsOneWidget);

      await tester.tap(find.byKey(const ValueKey('remove')));
      await tester.pumpAndSettle();

      expect(find.text('hello world'), findsNothing);
    });

    testWidgets('showMaterialBanner() / hideCurrentMaterialBanner()',
        (tester) async {
      await tester.pumpWidget(
        ProviderScope(
          child: ZacBuildWidget(
            data: FlutterMaterialApp(
              home: FlutterMaterial(
                child: FlutterScaffold(
                  body: FlutterBuilder(
                    child: FlutterElevatedButton(
                      key: FlutterValueKey('show'),
                      onPressed: ZacListOfActions([
                        FlutterScaffoldMessenger.showMaterialBanner(
                          FlutterMaterialBanner(
                            content: FlutterText(ZacString('hello world')),
                            actions: ZacListOfWidgets([
                              FlutterElevatedButton(
                                key: FlutterValueKey('hide'),
                                onPressed: ZacListOfActions([
                                  FlutterScaffoldMessenger
                                      .hideCurrentMaterialBanner(),
                                ]),
                              ),
                            ]),
                          ),
                        ),
                      ]),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      );

      expect(find.text('hello world'), findsNothing);

      await tester.tap(find.byKey(const ValueKey('show')));
      await tester.pumpAndSettle();

      expect(find.text('hello world'), findsOneWidget);

      await tester.tap(find.byKey(const ValueKey('hide')));
      await tester.pumpAndSettle();

      expect(find.text('hello world'), findsNothing);
    });

    testWidgets('will have access to parent shared values', (tester) async {
      await tester.pumpWidget(
        ProviderScope(
          child: ZacBuildWidget(
            data: FlutterMaterialApp(
              home: FlutterMaterial(
                child: FlutterScaffold(
                  body: ZacStatesProvider(
                    states: [
                      ZacStateProvide(family: 'shared', value: 'hello world')
                    ],
                    child: FlutterElevatedButton(
                      key: FlutterValueKey('button'),
                      onPressed: ZacListOfActions([
                        FlutterScaffoldMessenger.showMaterialBanner(
                          FlutterMaterialBanner(
                            content: FlutterText(ZacString('hello world')),
                            actions: ZacListOfWidgets([
                              FlutterElevatedButton(
                                key: FlutterValueKey('remove'),
                                onPressed: ZacListOfActions([
                                  FlutterScaffoldMessenger
                                      .removeCurrentMaterialBanner(),
                                ]),
                              ),
                            ]),
                          ),
                        ),
                      ]),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      );

      await tester.tap(find.byKey(const ValueKey('button')));
      await tester.pumpAndSettle();

      expect(find.text('hello world'), findsOneWidget);
    });
  });
}
