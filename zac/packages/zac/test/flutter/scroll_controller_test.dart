import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:zac/src/flutter/widgets/scroll_controller.dart';
import 'package:zac/src/zac/shared_value.dart';

import '../helper.dart';

void main() {
  testWidgets('Provide ScrollController', (tester) async {
    await testWithContextsWraped(
      tester,
      (child) => FlutterScrollController(
        child: child,
      ),
      (getContext, getZacContext) {
        expect(
            ConsumeSharedValue<ScrollController>(
                    family: FlutterScrollController.familyName)
                .build(getContext(), getZacContext()),
            isA<ScrollController>());
      },
    );
  });
}
