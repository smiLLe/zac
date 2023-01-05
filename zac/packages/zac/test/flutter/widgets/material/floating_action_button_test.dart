import 'package:flutter_test/flutter_test.dart';
import 'package:zac/src/flutter/widgets/material/floating_action_button.dart';

import '../../../helper.dart';
import '../../models.dart';

void main() {
  test('Is in registry', () {
    expectInRegistry([
      'f:1:FloatingActionButton',
      'f:1:FloatingActionButton.extended',
      'f:1:FloatingActionButton.large',
      'f:1:FloatingActionButton.small'
    ], FlutterFloatingActionButton.fromJson);
  });

  testWidgets('create', (tester) async {
    // TODO: fill
  }, skip: true);
}
