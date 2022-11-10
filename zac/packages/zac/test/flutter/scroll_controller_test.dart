import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:zac/src/flutter/widgets/scroll_controller.dart';
import 'package:zac/src/zac/context.dart';
import 'package:zac/src/zac/shared_value.dart';
import 'package:zac/src/zac/zac_value.dart';

import '../helper.dart';

void main() {
  testWidgets('ZacScrollController Can be manually created', (tester) async {
    late ZacContext zacContext;
    await testZacWidget(tester, LeakContext(cb: (c) => zacContext = c));
    final ctrl = ScrollController();
    expect(ZacScrollController(ctrl).getScrollController(zacContext), ctrl);
  });

  testWidgets('ZacScrollController can be consumed by ZacValue',
      (tester) async {
    late ZacContext zacContext;
    final ctrl = ScrollController();
    await testWithinMaterialApp(
        tester,
        SharedValueProvider(
          childBuilder: (c) {
            zacContext = c;
            return const SizedBox.shrink();
          },
          valueBuilder: (ref, zacContext) => ZacScrollController(ctrl),
          family: 'shared',
          autoCreate: true,
        ));

    expect(
        ZacValue<FlutterScrollController>.consume(family: 'shared')
            .getValue(zacContext)
            .getScrollController(zacContext),
        ctrl);
  });
}
