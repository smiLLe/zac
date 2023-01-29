import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import '../helper.dart';

void main() {
  testWidgets('ScrollController', (tester) async {
    await testBuilder<ScrollController>(
      tester,
      'f:1:ScrollController',
      matcher: (matcher) => matcher,
    );
  });
}
