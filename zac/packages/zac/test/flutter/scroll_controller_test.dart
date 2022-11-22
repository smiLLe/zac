import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:zac/src/flutter/widgets/scroll_controller.dart';
import '../zac/zac_values_test.dart';

void main() {
  test('can be created', () {
    expectCreateShared<FlutterScrollController, ScrollController>(
      converter: 'z:1:ScrollController.consume',
      create: FlutterScrollController.consume,
    );
  });

  testWidgets('will return correct value', (tester) async {
    final ctrl = ScrollController();
    await expectShared<ScrollController>(
      tester: tester,
      createBuilder: FlutterScrollController.consume,
      expectValue: ctrl,
    );
  });
}
