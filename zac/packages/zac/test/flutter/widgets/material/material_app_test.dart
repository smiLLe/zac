import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:zac/src/flutter/widgets/material/material_app.dart';
import 'package:zac/src/zac/context.dart';
import 'package:zac/src/zac/flutter/navigator.dart';
import 'package:zac/src/zac/shared_value.dart';
import 'package:zac/src/zac/widget.dart';
import 'package:zac/src/zac/zac_values.dart';

import '../../../helper.dart';
import '../../models.dart';

void main() {
  testWidgets('FlutterMaterialApp()', (tester) async {
    await testMap(tester, <String, dynamic>{
      'converter': 'f:1:MaterialApp',
      'key': KeysModel.getValueKey('FIND_ME'),
      'home': {
        'converter': 'f:1:SizedBox',
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
    late ZacContext zacContext;

    await testWithConverters(
      tester: tester,
      widget: ZacWidget(
        widget: ZacFlutterGlobalKeyNavigatorStateProvider(
          family: 'foo',
          child: FlutterMaterialApp(
            navigatorKey:
                ZacValueConsume<GlobalKey<NavigatorState>>.watch(family: 'foo'),
            home: LeakContext(cb: (o) => zacContext = o),
          ),
        ),
      ),
      container: ProviderContainer(),
    );

    expect(
        zacContext.ref.read(SharedValue.provider('foo')),
        isA<SharedValueType>().having(
            (p0) => p0,
            'data',
            isA<GlobalKey<NavigatorState>>()
                .having((p0) => p0.currentState, 'NavigatorState', isNotNull)));
  });
}
