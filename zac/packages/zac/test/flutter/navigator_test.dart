import 'package:zac/zac.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import '../flutter/models.dart';
import '../helper.dart';

void main() {
  test('Is registered converter', () {
    expectInConverter([
      'f:1:NavigatorState.closest',
      'f:1:NavigatorState.root',
      'z:1:NavigatorState.shared'
    ], FlutterNavigatorState.fromJson);

    expectInConverter(
        'f:1:MaterialPageRoute', FlutterMaterialPageRoute.fromJson);

    expectInConverter('f:1:PageRouteBuilder', FlutterPageRouteBuilder.fromJson);

    expectInConverter('f:1:Navigator', FlutterNavigator.fromJson);

    expectInConverter([
      'f:1:Navigator.push',
      'f:1:Navigator.pushNamed',
      'f:1:Navigator.pop',
      'f:1:Navigator.maybePop',
      'f:1:Navigator.pushReplacement',
      'f:1:Navigator.pushReplacementNamed',
      'z:1:Navigator.popUntilRouteName',
    ], FlutterNavigatorActions.fromJson);

    expectInConverter('f:1:RouteFactory', FlutterRouteFactory.fromJson);

    expectInConverter('f:1:RouteSettings', FlutterRouteSettings.fromJson);
  });

  group('navigation', () {
    testWidgets('simple', (tester) async {
      Map<String, dynamic> page({
        required int number,
        required List<Map<String, dynamic>> interactions,
        required List<Map<String, dynamic>> backActions,
      }) {
        return <String, dynamic>{
          'converter': FlutterColumn.unionValue,
          'children': [
            ChildModel.getSizedBox(key: 'page$number'),
            {
              'converter': FlutterElevatedButton.unionValue,
              'key': KeysModel.getValueKey('page${number}_button'),
              'child': ChildModel.sizedBox,
              'onPressed': {
                'converter': 'z:1:Actions',
                'actions': interactions,
              }
            },
            {
              'converter': FlutterElevatedButton.unionValue,
              'key': KeysModel.getValueKey('pageback${number}_button'),
              'child': ChildModel.sizedBox,
              'onPressed': {
                'converter': 'z:1:Actions',
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
              'converter': 'f:1:Navigator.push',
              'route': {
                'converter': 'f:1:MaterialPageRoute',
                'child': page(
                  number: 2,
                  interactions: [
                    <String, dynamic>{
                      'converter': 'f:1:Navigator.push',
                      'route': {
                        'converter': 'f:1:MaterialPageRoute',
                        'child': page(
                          number: 3,
                          interactions: [
                            <String, dynamic>{
                              'converter': 'f:1:Navigator.pushReplacement',
                              'route': {
                                'converter': 'f:1:MaterialPageRoute',
                                'child': page(
                                  number: 4,
                                  interactions: [],
                                  backActions: [
                                    <String, dynamic>{
                                      'converter': 'f:1:Navigator.maybePop',
                                    }
                                  ],
                                ),
                              },
                            },
                          ],
                          backActions: [
                            <String, dynamic>{
                              'converter': 'f:1:Navigator.maybePop',
                            }
                          ],
                        ),
                      }
                    },
                  ],
                  backActions: [
                    <String, dynamic>{
                      'converter': 'f:1:Navigator.pop',
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
