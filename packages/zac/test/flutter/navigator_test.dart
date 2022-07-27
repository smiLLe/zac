import 'package:zac/zac.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import '../flutter/models.dart';
import '../helper.dart';

void main() {
  group('GetNavigatorState', () {
    group('GlobalKeyNavigatorStateBuilder', () {
      test('fromJson', () {
        expect(
            ZacNavigatorState.fromJson(
                {'_converter': 'z:1:GlobalKeyNavigatorState'}),
            FlutterNavigatorState.builder());

        expect(
            ZacNavigatorState.fromJson({
              '_converter': 'z:1:GlobalKeyNavigatorState',
              'debugLabel': 'foo'
            }),
            FlutterNavigatorState.builder(debugLabel: 'foo'));

        expect(
            ConverterHelper.convertToType<FlutterNavigatorState>({
              '_converter': 'z:1:GlobalKeyNavigatorState.transformToGlobalKey',
            }),
            FlutterNavigatorState.transform());

        expect(
            ConverterHelper.convertToType<FlutterNavigatorState>({
              '_converter': 'z:1:NavigatorState.consumeFromGlobalKey',
              'name': 'foo',
            }),
            FlutterNavigatorState.consumeFromGlobalKey(name: 'foo'));
      });

      testWidgets('provide and consume', (tester) async {
        late ZacBuildContext awContext;

        await testZacWidget(
            tester,
            SharedValueProviderBuilder(
              name: 'foo',
              value: {
                '_converter': 'z:1:GlobalKeyNavigatorState',
              },
              transformer: [
                BuiltInTransformer.convert(),
                FlutterNavigatorState.transform()
              ],
              child: LeakContext(
                cb: (context) => awContext = context,
              ),
            ));

        final val = FlutterNavigatorState.consumeFromGlobalKey(name: 'foo').map(
            builder: (_) => throw Exception(),
            transform: (_) => throw Exception(),
            closest: (_) => throw Exception(),
            root: (_) => throw Exception(),
            consumeFromGlobalKey: (obj) => obj.getSharedValue(awContext));
        expect(val, isA<GlobalKey<NavigatorState>>());
      });
    });
  });

  group('Navigator', () {
    test('.fromJson', () {
      final routeMap = <String, dynamic>{
        '_converter': 'f:1:MaterialPageRoute',
        'child': ChildModel.getSizedBox(key: 'FIND_ME'),
      };
      final route = FlutterMaterialPageRoute(
          child: FlutterSizedBox(key: FlutterValueKey('FIND_ME')));
      expect(
          ConverterHelper.convertToType<FlutterNavigator>({
            '_converter': 'f:1:Navigator',
            'initialRoute': '/foo',
            'requestFocus': false,
          }),
          FlutterNavigator(
              initialRoute: ZacString('/foo'), requestFocus: ZacBool(false)));
      expect(
          ConverterHelper.convertToType<FlutterNavigator>({
            '_converter': 'f:1:Navigator.push',
            'route': routeMap,
          }),
          FlutterNavigator.push(route: route));
      expect(
          ConverterHelper.convertToType<FlutterNavigator>(
              {'_converter': 'f:1:Navigator.pushNamed', 'routeName': '/cool'}),
          FlutterNavigator.pushNamed(routeName: ZacString('/cool')));
      expect(
          ConverterHelper.convertToType<FlutterNavigator>(
              {'_converter': 'f:1:Navigator.pop'}),
          FlutterNavigator.pop());
      expect(
          ConverterHelper.convertToType<FlutterNavigator>(
              {'_converter': 'f:1:Navigator.maybePop'}),
          FlutterNavigator.maybePop());
      expect(
          ConverterHelper.convertToType<FlutterNavigator>({
            '_converter': 'f:1:Navigator.pushReplacement',
            'route': routeMap,
          }),
          FlutterNavigator.pushReplacement(route: route));
      expect(
          ConverterHelper.convertToType<FlutterNavigator>({
            '_converter': 'f:1:Navigator.pushReplacementNamed',
            'routeName': '/cool'
          }),
          FlutterNavigator.pushReplacementNamed(routeName: ZacString('/cool')));
      expect(
          ConverterHelper.convertToType<FlutterNavigator>({
            '_converter': 'z:1:Navigator.popUntilRouteName',
            'routeName': '/cool'
          }),
          FlutterNavigator.popUntilRouteName(routeName: ZacString('/cool')));
    });
  });

  group('FlutterRouteFactory', () {
    group('RouteFactorySingleRoute', () {
      test('fromJson', () {
        expect(
            FlutterRouteFactory.fromJson(
              {
                '_converter': 'z:1:RouteFactorySingleRoute',
                'routeConfig': {
                  '_converter': 'z:1:RouteFactoryRouteConfig',
                  'route': {
                    '_converter': 'f:1:MaterialPageRoute',
                    'child': ChildModel.getSizedBox(key: 'FIND_ME'),
                  },
                }
              },
            ),
            isA<RouteFactorySingleRoute>());

        expect(
            ConverterHelper.convertToType<RouteFactorySingleRoute>(
              {
                '_converter': 'z:1:RouteFactorySingleRoute',
                'routeConfig': {
                  '_converter': 'z:1:RouteFactoryRouteConfig',
                  'route': {
                    '_converter': 'f:1:MaterialPageRoute',
                    'child': ChildModel.getSizedBox(key: 'FIND_ME'),
                  },
                }
              },
            ),
            isA<RouteFactorySingleRoute>());
      });

      testWidgets('provide arguments', (tester) async {
        late ZacBuildContext context;

        await testZacWidget(
          tester,
          FlutterNavigator(
            onUnknownRoute: RouteFactorySingleRoute(
              routeConfig: RouteFactoryRouteConfig(
                route: FlutterMaterialPageRoute(
                  child: LeakContext(cb: (c) {
                    context = c;
                  }),
                ),
              ),
            ),
            onGenerateRoute: RouteFactoryFromRoutes(
              routes: {
                '/': RouteFactoryRouteConfig(
                  route: FlutterMaterialPageRoute(
                    child: ExecuteActionsBuilder(
                      actions: ZacActions(
                        [
                          FlutterNavigator.pushNamed(
                            routeName: ZacString('/other'),
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
            context.ref.read(SharedValue.provider(
                RouteFactoryFromRoutes.defaultProviderName)),
            SharedValue(22));
      });
    });

    group('RouteFactoryFromRoutes', () {
      test('fromJson', () {
        expect(
            FlutterRouteFactory.fromJson({
              '_converter': 'z:1:RouteFactoryFromRoutes',
              'routes': {
                '/': {
                  '_converter': 'z:1:RouteFactoryRouteConfig',
                  'route': {
                    '_converter': 'f:1:MaterialPageRoute',
                    'child': ChildModel.getSizedBox(key: 'FIND_ME'),
                  }
                },
                '/other': {
                  '_converter': 'z:1:RouteFactoryRouteConfig',
                  'route': {
                    '_converter': 'f:1:MaterialPageRoute',
                    'child': ChildModel.getSizedBox(key: 'FIND_ME'),
                  }
                },
              }
            }),
            isA<RouteFactoryFromRoutes>());
        expect(
            ConverterHelper.convertToType<RouteFactoryFromRoutes>({
              '_converter': 'z:1:RouteFactoryFromRoutes',
              'routes': {
                '/': {
                  '_converter': 'z:1:RouteFactoryRouteConfig',
                  'route': {
                    '_converter': 'f:1:MaterialPageRoute',
                    'child': ChildModel.getSizedBox(key: 'FIND_ME'),
                  }
                },
                '/other': {
                  '_converter': 'z:1:RouteFactoryRouteConfig',
                  'route': {
                    '_converter': 'f:1:MaterialPageRoute',
                    'child': ChildModel.getSizedBox(key: 'FIND_ME'),
                  }
                },
              }
            }),
            isA<RouteFactoryFromRoutes>());
      });

      testWidgets('provide arguments', (tester) async {
        late ZacBuildContext context;

        await testZacWidget(
          tester,
          FlutterNavigator(
            onGenerateRoute: RouteFactoryFromRoutes(
              routes: {
                '/': RouteFactoryRouteConfig(
                  route: FlutterMaterialPageRoute(
                    child: ExecuteActionsBuilder(
                      actions: ZacActions(
                        [
                          FlutterNavigator.pushNamed(
                            routeName: ZacString('/other'),
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
                        FlutterNavigator.pushNamed(
                          routeName: ZacString('/otherother'),
                          arguments: 11,
                        )
                      ]),
                      child: LeakContext(cb: (c) {
                        context = c;
                      }),
                    ),
                  ),
                ),
                '/otherother': RouteFactoryRouteConfig(
                  route: FlutterMaterialPageRoute(
                    child: LeakContext(cb: (c) {
                      context = c;
                    }),
                  ),
                ),
              },
            ),
          ),
        );
        await tester.pumpAndSettle();

        expect(
            context.ref.read(SharedValue.provider(
                RouteFactoryFromRoutes.defaultProviderName)),
            SharedValue(1));

        await tester.tap(find.byKey(const ValueKey('press_me')));
        await tester.pumpAndSettle();

        expect(
            context.ref.read(SharedValue.provider(
                RouteFactoryFromRoutes.defaultProviderName)),
            SharedValue(11));
      });

      testWidgets('providerName', (tester) async {
        late ZacBuildContext context;
        await testZacWidget(tester, LeakContext(cb: ((c) {
          context = c;
        })));

        expect(
            RouteFactoryFromRoutes.providerName(
              context,
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
              context,
              RouteFactoryRouteConfig(
                provideArgsName: ZacString('foo'),
                route: FlutterMaterialPageRoute(
                  child: FlutterSizedBox(),
                ),
              ),
              null,
            ),
            'foo');

        expect(
            RouteFactoryFromRoutes.providerName(
                context,
                RouteFactoryRouteConfig(
                  route: FlutterMaterialPageRoute(
                    child: FlutterSizedBox(),
                  ),
                ),
                'prefix'),
            'prefix.${RouteFactoryFromRoutes.defaultProviderName}');

        expect(
            RouteFactoryFromRoutes.providerName(
                context,
                RouteFactoryRouteConfig(
                  provideArgsName: ZacString('foo'),
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
