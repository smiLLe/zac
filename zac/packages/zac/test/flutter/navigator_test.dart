import 'package:zac/zac.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import '../flutter/models.dart';
import '../helper.dart';

void main() {
  test('fromJson', () {
    expect(
        ConverterHelper.convertToType<
            ZacFlutterGlobalKeyNavigatorStateProvider>({
          'converter': 'z:1:GlobalKeyNavigatorStateProvider',
          'family': 'foo',
          'child': ChildModel.sizedBox,
          'debugLabel': 'label',
        }),
        ZacFlutterGlobalKeyNavigatorStateProvider(
          family: 'foo',
          child: FlutterSizedBox(),
          debugLabel: ZacValue<String>.fromJson('label'),
        ));

    expect(
        ConverterHelper.convertToType<FlutterNavigatorState>({
          'converter': 'z:1:NavigatorState.shared',
          'value': {'converter': 'z:1:ZacValue.watch', 'family': 'foo'}
        }),
        FlutterNavigatorState.shared(
            value: ZacValueConsume<GlobalKey<NavigatorState>>.watch(
                family: 'foo')));
  });

  group('ZacFlutterGlobalKeyNavigatorState', () {
    testWidgets('provide and read', (tester) async {
      late ZacContext zacContext;
      await testZacWidget(
        tester,
        ZacFlutterGlobalKeyNavigatorStateProvider(
          family: 'foo',
          child: LeakContext(cb: (o) => zacContext = o),
        ),
      );

      expect(
          zacContext.ref.read(SharedValue.provider('foo')),
          isA<SharedValueType>()
              .having((p0) => p0, 'data', isA<GlobalKey<NavigatorState>>()));
    });
  });

  group('Navigator', () {
    test('.fromJson', () {
      final routeMap = <String, dynamic>{
        'converter': 'f:1:MaterialPageRoute',
        'child': ChildModel.getSizedBox(key: 'FIND_ME'),
      };
      final route = FlutterMaterialPageRoute(
          child: FlutterSizedBox(key: FlutterValueKey('FIND_ME')));
      expect(
          ConverterHelper.convertToType<FlutterNavigator>({
            'converter': 'f:1:Navigator',
            'initialRoute': '/foo',
            'requestFocus': false,
          }),
          FlutterNavigator(
              initialRoute: ZacValue<String>.fromJson('/foo'),
              requestFocus: ZacValue<bool>.fromJson(false)));
      expect(
          ConverterHelper.convertToType<FlutterNavigatorActions>({
            'converter': 'f:1:Navigator.push',
            'route': routeMap,
          }),
          FlutterNavigatorActions.push(route: route));
      expect(
          ConverterHelper.convertToType<FlutterNavigatorActions>(
              {'converter': 'f:1:Navigator.pushNamed', 'routeName': '/cool'}),
          FlutterNavigatorActions.pushNamed(
              routeName: ZacValue<String>.fromJson('/cool')));
      expect(
          ConverterHelper.convertToType<FlutterNavigatorActions>(
              {'converter': 'f:1:Navigator.pop'}),
          FlutterNavigatorActions.pop());
      expect(
          ConverterHelper.convertToType<FlutterNavigatorActions>(
              {'converter': 'f:1:Navigator.maybePop'}),
          FlutterNavigatorActions.maybePop());
      expect(
          ConverterHelper.convertToType<FlutterNavigatorActions>({
            'converter': 'f:1:Navigator.pushReplacement',
            'route': routeMap,
          }),
          FlutterNavigatorActions.pushReplacement(route: route));
      expect(
          ConverterHelper.convertToType<FlutterNavigatorActions>({
            'converter': 'f:1:Navigator.pushReplacementNamed',
            'routeName': '/cool'
          }),
          FlutterNavigatorActions.pushReplacementNamed(
              routeName: ZacValue<String>.fromJson('/cool')));
      expect(
          ConverterHelper.convertToType<ZacFlutterNavigatorActions>({
            'converter': 'z:1:Navigator.popUntilRouteName',
            'routeName': '/cool'
          }),
          ZacFlutterNavigatorActions.popUntilRouteName(
              routeName: ZacValue<String>.fromJson('/cool')));
    });
  });

  group('FlutterRouteFactory', () {
    group('RouteFactorySingleRoute', () {
      test('fromJson', () {
        expect(
            FlutterRouteFactory.fromJson(
              {
                'converter': 'z:1:RouteFactorySingleRoute',
                'routeConfig': {
                  'converter': 'z:1:RouteFactoryRouteConfig',
                  'route': {
                    'converter': 'f:1:MaterialPageRoute',
                    'child': ChildModel.getSizedBox(key: 'FIND_ME'),
                  },
                }
              },
            ),
            isA<RouteFactorySingleRoute>());

        expect(
            ConverterHelper.convertToType<RouteFactorySingleRoute>(
              {
                'converter': 'z:1:RouteFactorySingleRoute',
                'routeConfig': {
                  'converter': 'z:1:RouteFactoryRouteConfig',
                  'route': {
                    'converter': 'f:1:MaterialPageRoute',
                    'child': ChildModel.getSizedBox(key: 'FIND_ME'),
                  },
                }
              },
            ),
            isA<RouteFactorySingleRoute>());
      });

      testWidgets('provide arguments', (tester) async {
        late ZacContext zacContext;

        await testZacWidget(
          tester,
          FlutterNavigator(
            onUnknownRoute: RouteFactorySingleRoute(
              routeConfig: RouteFactoryRouteConfig(
                route: FlutterMaterialPageRoute(
                  child: LeakContext(cb: (o) {
                    zacContext = o;
                  }),
                ),
              ),
            ),
            onGenerateRoute: RouteFactoryFromRoutes(
              routes: {
                '/': RouteFactoryRouteConfig(
                  route: FlutterMaterialPageRoute(
                    child: ZacExecuteActionsBuilder.once(
                      actions: ZacActions(
                        [
                          FlutterNavigatorActions.pushNamed(
                            routeName: ZacValue<String>.fromJson('/other'),
                            arguments: 22,
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              },
            ),
          ),
        );
        await tester.pumpAndSettle();

        expect(
            zacContext.ref.read(SharedValue.provider(
                RouteFactoryFromRoutes.defaultProviderName)),
            22);
      });
    });

    group('RouteFactoryFromRoutes', () {
      test('fromJson', () {
        expect(
            FlutterRouteFactory.fromJson({
              'converter': 'z:1:RouteFactoryFromRoutes',
              'routes': {
                '/': {
                  'converter': 'z:1:RouteFactoryRouteConfig',
                  'route': {
                    'converter': 'f:1:MaterialPageRoute',
                    'child': ChildModel.getSizedBox(key: 'FIND_ME'),
                  }
                },
                '/other': {
                  'converter': 'z:1:RouteFactoryRouteConfig',
                  'route': {
                    'converter': 'f:1:MaterialPageRoute',
                    'child': ChildModel.getSizedBox(key: 'FIND_ME'),
                  }
                },
              }
            }),
            isA<RouteFactoryFromRoutes>());
        expect(
            ConverterHelper.convertToType<RouteFactoryFromRoutes>({
              'converter': 'z:1:RouteFactoryFromRoutes',
              'routes': {
                '/': {
                  'converter': 'z:1:RouteFactoryRouteConfig',
                  'route': {
                    'converter': 'f:1:MaterialPageRoute',
                    'child': ChildModel.getSizedBox(key: 'FIND_ME'),
                  }
                },
                '/other': {
                  'converter': 'z:1:RouteFactoryRouteConfig',
                  'route': {
                    'converter': 'f:1:MaterialPageRoute',
                    'child': ChildModel.getSizedBox(key: 'FIND_ME'),
                  }
                },
              }
            }),
            isA<RouteFactoryFromRoutes>());
      });

      testWidgets('provide arguments', (tester) async {
        late ZacContext zacContext;

        await testZacWidget(
          tester,
          FlutterNavigator(
            onGenerateRoute: RouteFactoryFromRoutes(
              routes: {
                '/': RouteFactoryRouteConfig(
                  route: FlutterMaterialPageRoute(
                    child: ZacExecuteActionsBuilder.once(
                      actions: ZacActions(
                        [
                          FlutterNavigatorActions.pushNamed(
                            routeName: ZacValue<String>.fromJson('/other'),
                            arguments: 1,
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                '/other': RouteFactoryRouteConfig(
                  route: FlutterMaterialPageRoute(
                    child: FlutterTextButton(
                      key: FlutterValueKey('press_me'),
                      onPressed: ZacActions([
                        FlutterNavigatorActions.pushNamed(
                          routeName: ZacValue<String>.fromJson('/otherother'),
                          arguments: 11,
                        )
                      ]),
                      child: LeakContext(cb: (o) {
                        zacContext = o;
                      }),
                    ),
                  ),
                ),
                '/otherother': RouteFactoryRouteConfig(
                  route: FlutterMaterialPageRoute(
                    child: LeakContext(cb: (o) {
                      zacContext = o;
                    }),
                  ),
                ),
              },
            ),
          ),
        );
        await tester.pumpAndSettle();

        expect(
            zacContext.ref.read(SharedValue.provider(
                RouteFactoryFromRoutes.defaultProviderName)),
            1);

        await tester.tap(find.byKey(const ValueKey('press_me')));
        await tester.pumpAndSettle();

        expect(
            zacContext.ref.read(SharedValue.provider(
                RouteFactoryFromRoutes.defaultProviderName)),
            11);
      });

      testWidgets('providerName', (tester) async {
        late ZacContext zacContext;
        await testZacWidget(tester, LeakContext(cb: ((o) {
          zacContext = o;
        })));

        expect(
            RouteFactoryFromRoutes.providerName(
              zacContext,
              RouteFactoryRouteConfig(
                route: FlutterMaterialPageRoute(
                  child: FlutterSizedBox(),
                ),
              ),
              null,
            ),
            RouteFactoryFromRoutes.defaultProviderName);

        expect(
            RouteFactoryFromRoutes.providerName(
              zacContext,
              RouteFactoryRouteConfig(
                provideArgsName: ZacValue<String>.fromJson('foo'),
                route: FlutterMaterialPageRoute(
                  child: FlutterSizedBox(),
                ),
              ),
              null,
            ),
            'foo');

        expect(
            RouteFactoryFromRoutes.providerName(
                zacContext,
                RouteFactoryRouteConfig(
                  route: FlutterMaterialPageRoute(
                    child: FlutterSizedBox(),
                  ),
                ),
                'prefix'),
            'prefix.${RouteFactoryFromRoutes.defaultProviderName}');

        expect(
            RouteFactoryFromRoutes.providerName(
                zacContext,
                RouteFactoryRouteConfig(
                  provideArgsName: ZacValue<String>.fromJson('foo'),
                  route: FlutterMaterialPageRoute(
                    child: FlutterSizedBox(),
                  ),
                ),
                'prefix'),
            'prefix.foo');
      });
    });
  });
}
