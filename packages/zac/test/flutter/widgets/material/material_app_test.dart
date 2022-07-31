import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:riverpod/riverpod.dart';
import 'package:zac/src/flutter/widgets/_material/material_app/material_app.dart';
import 'package:zac/src/zac/any_value/any_value.dart';
import 'package:zac/src/zac/context/widget_context.dart';
import 'package:zac/src/zac/flutter/navigator/navigator.dart';
import 'package:zac/src/zac/shared_value/shared_value.dart';
import 'package:zac/src/zac/widget_builder/widget_builder.dart';

import '../../../helper.dart';
import '../../models.dart';

void main() {
  testWidgets('FlutterMaterialApp()', (tester) async {
    await testMap(tester, <String, dynamic>{
      '_converter': 'f:1:MaterialApp',
      'key': KeysModel.getValueKey('FIND_ME'),
      'home': {
        '_converter': 'f:1:SizedBox',
        'key': KeysModel.getValueKey('HOME'),
      },
    });

    expect(find.byKey(const ValueKey('FIND_ME')), findsOneWidget);
    expect(find.byKey(const ValueKey('HOME')), findsOneWidget);

    final widget =
        find.byKey(const ValueKey('FIND_ME')).evaluate().first.widget;

    expect(
        widget,
        isA<MaterialApp>()
            .having((p0) => p0.home, 'MaterialApp.home', isA<SizedBox>()));
  });

  testWidgets('get NavigatorState', (tester) async {
    late ZacBuildContext context;

    await testWithConverters(
      tester: tester,
      widget: ZacWidgetBuilder(
        zacWidget: ZacFlutterGlobalKeyNavigatorState.provide(
          name: ZacString('foo'),
          child: FlutterMaterialApp(
            navigatorKey: ZacFlutterGlobalKeyNavigatorState.consume(
              name: 'foo',
            ),
            home: LeakContext(cb: (c) => context = c),
          ),
        ),
      ),
      container: ProviderContainer(),
    );

    expect(
        context.ref.read(SharedValue.provider('foo')),
        isA<FilledSharedValue>().having(
            (p0) => p0.data,
            'data',
            isA<GlobalKey<NavigatorState>>()
                .having((p0) => p0.currentState, 'NavigatorState', isNotNull)));
  });
}
