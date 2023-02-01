import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import '../helper.dart';

void main() {
  group('FlutterEdgeInsets', () {
    testWidgets('.all', (tester) async {
      await testBuilder<EdgeInsets>(
        tester,
        'f:1:EdgeInsets.all',
        props: <String, dynamic>{
          'value': 10,
        },
        matcher: (matcher) =>
            matcher.having((p0) => p0.bottom, 'EdgeInsets.bottom', 10),
      );
    });

    testWidgets('.symmetric', (tester) async {
      await testBuilder<EdgeInsets>(
        tester,
        'f:1:EdgeInsets.symmetric',
        props: <String, dynamic>{
          'vertical': 10,
          'horizontal': 11,
        },
        matcher: (matcher) => matcher
            .having((p0) => p0.bottom, 'EdgeInsets.bottom', 10)
            .having((p0) => p0.left, 'EdgeInsets.left', 11),
      );
    });

    testWidgets('.only', (tester) async {
      await testBuilder<EdgeInsets>(
        tester,
        'f:1:EdgeInsets.only',
        props: <String, dynamic>{
          'left': 1,
          'top': 2,
          'right': 3,
          'bottom': 4,
        },
        matcher: (matcher) => matcher
            .having((p0) => p0.left, 'EdgeInsets.left', 1)
            .having((p0) => p0.top, 'EdgeInsets.top', 2)
            .having((p0) => p0.right, 'EdgeInsets.left', 3)
            .having((p0) => p0.bottom, 'EdgeInsets.bottom', 4),
      );
    });
  });

  group('FlutterEdgeInsetsDirectional', () {
    testWidgets('.all', (tester) async {
      await testBuilder<EdgeInsetsDirectional>(
        tester,
        'f:1:EdgeInsetsDirectional.all',
        props: <String, dynamic>{
          'value': 10,
        },
        matcher: (matcher) => matcher.having(
            (p0) => p0.bottom, 'EdgeInsetsDirectional.bottom', 10),
      );
    });

    testWidgets('.only', (tester) async {
      await testBuilder<EdgeInsetsDirectional>(
        tester,
        'f:1:EdgeInsetsDirectional.only',
        props: <String, dynamic>{
          'start': 1,
          'top': 2,
          'end': 3,
          'bottom': 4,
        },
        matcher: (matcher) => matcher
            .having((p0) => p0.start, 'EdgeInsets.start', 1)
            .having((p0) => p0.top, 'EdgeInsets.top', 2)
            .having((p0) => p0.end, 'EdgeInsets.end', 3)
            .having((p0) => p0.bottom, 'EdgeInsets.bottom', 4),
      );
    });
  });
}
