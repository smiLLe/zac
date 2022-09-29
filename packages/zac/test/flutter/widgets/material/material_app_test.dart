import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:riverpod/riverpod.dart';
import 'package:zac/src/flutter/widgets/material/material_app.dart';
import 'package:zac/src/zac/update_context.dart';
import 'package:zac/src/zac/flutter/navigator.dart';
import 'package:zac/src/zac/shared_value.dart';
import 'package:zac/src/zac/widget_builder.dart';

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
    late WidgetRef ref;

    await testWithConverters(
      tester: tester,
      widget: ZacWidgetBuilder(
        zacWidget: ZacFlutterGlobalKeyNavigatorState.provide(
          family: 'foo',
          child: FlutterMaterialApp(
            navigatorKey: ZacFlutterGlobalKeyNavigatorState.consume('foo'),
            home: LeakContext(cb: (c, r, helper) => ref = r),
          ),
        ),
      ),
      container: ProviderContainer(),
    );

    expect(
        ref.read(SharedValue.provider('foo')),
        isA<FilledSharedValue>().having(
            (p0) => p0.data,
            'data',
            isA<GlobalKey<NavigatorState>>()
                .having((p0) => p0.currentState, 'NavigatorState', isNotNull)));
  });
}
