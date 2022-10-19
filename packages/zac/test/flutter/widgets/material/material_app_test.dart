import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:zac/src/flutter/widgets/material/material_app.dart';
import 'package:zac/src/zac/flutter/navigator.dart';
import 'package:zac/src/zac/origin.dart';
import 'package:zac/src/zac/shared_value.dart';
import 'package:zac/src/zac/widget.dart';

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
    late ZacOriginWidgetTree origin;

    await testWithConverters(
      tester: tester,
      widget: ZacWidget(
        widget: ZacFlutterGlobalKeyNavigatorState.provide(
          family: 'foo',
          child: FlutterMaterialApp(
            navigatorKey: ZacFlutterGlobalKeyNavigatorState.consume('foo'),
            home: LeakOrigin(cb: (o) => origin = o),
          ),
        ),
      ),
      container: ProviderContainer(),
    );

    expect(
        origin.ref.read(SharedValue.provider('foo')),
        isA<SharedValueType>().having(
            (p0) => p0,
            'data',
            isA<GlobalKey<NavigatorState>>()
                .having((p0) => p0.currentState, 'NavigatorState', isNotNull)));
  });
}
