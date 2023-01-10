import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../helper.dart';

void main() {
  testWidgets('FlutterScrollPhysics()', (tester) async {
    await foo<ScrollPhysics>(
      tester,
      'f:1:AlwaysScrollableScrollPhysics',
      matcher: (matcher) => matcher,
    );

    await foo<ScrollPhysics>(tester, 'f:1:ClampingScrollPhysics',
        matcher: (matcher) => matcher);

    await foo<ScrollPhysics>(
      tester,
      'f:1:BouncingScrollPhysics',
      matcher: (matcher) => matcher,
    );
  });
}
