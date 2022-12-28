import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:zac/src/flutter/widgets/scroll_controller.dart';
import 'package:zac/src/zac/context.dart';
import 'package:zac/src/zac/widget.dart';
import 'package:zac/src/zac/zac_build.dart';

import '../helper.dart';

void main() {
  testWidgets('Provide ScrollController', (tester) async {
    late ZacContext zacContext;
    await tester.pumpWidget(
      ProviderScope(
        child: ZacWidget(
          data: FlutterScrollController(
            child: LeakContext(
              cb: (z) => zacContext = z,
            ),
          ),
        ),
      ),
    );

    expect(
        ConsumeSharedValue<ScrollController>(
                family: FlutterScrollController.familyName)
            .build(zacContext),
        isA<ScrollController>());
  });
}
