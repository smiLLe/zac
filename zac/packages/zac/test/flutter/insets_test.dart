import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:zac/src/flutter/painting.dart';

import '../helper.dart';

void main() {
  group('FlutterEdgeInsets', () {
    test('.all', () {
      final map = {
        'builder': FlutterEdgeInsets.unionValueAll,
        'value': 10,
      };
      fakeBuild<EdgeInsets>(
        FlutterEdgeInsets.fromJson(map).build,
        (matcher) => matcher.having((p0) => p0.bottom, 'EdgeInsets.bottom', 10),
      );
    });

    test('.symmetric', () {
      final map = {
        'builder': FlutterEdgeInsets.unionValueSymmetric,
        'vertical': 10,
        'horizontal': 11,
      };
      fakeBuild<EdgeInsets>(
        FlutterEdgeInsets.fromJson(map).build,
        (matcher) => matcher
            .having((p0) => p0.bottom, 'EdgeInsets.bottom', 10)
            .having((p0) => p0.left, 'EdgeInsets.left', 11),
      );
    });

    test('.only', () {
      final map = {
        'builder': FlutterEdgeInsets.unionValueOnly,
        'left': 1,
        'top': 2,
        'right': 3,
        'bottom': 4,
      };
      fakeBuild<EdgeInsets>(
        FlutterEdgeInsets.fromJson(map).build,
        (matcher) => matcher
            .having((p0) => p0.left, 'EdgeInsets.left', 1)
            .having((p0) => p0.top, 'EdgeInsets.top', 2)
            .having((p0) => p0.right, 'EdgeInsets.left', 3)
            .having((p0) => p0.bottom, 'EdgeInsets.bottom', 4),
      );
    });
  });

  group('FlutterEdgeInsetsDirectional', () {
    test('.all', () {
      final map = {
        'builder': FlutterEdgeInsetsDirectional.unionValueAll,
        'value': 10,
      };
      fakeBuild<EdgeInsetsDirectional>(
        FlutterEdgeInsetsDirectional.fromJson(map).build,
        (matcher) => matcher.having(
            (p0) => p0.bottom, 'EdgeInsetsDirectional.bottom', 10),
      );
    });

    test('.only', () {
      final map = {
        'builder': FlutterEdgeInsetsDirectional.unionValueOnly,
        'start': 1,
        'top': 2,
        'end': 3,
        'bottom': 4,
      };

      fakeBuild<EdgeInsetsDirectional>(
        FlutterEdgeInsetsDirectional.fromJson(map).build,
        (matcher) => matcher
            .having((p0) => p0.start, 'EdgeInsets.start', 1)
            .having((p0) => p0.top, 'EdgeInsets.top', 2)
            .having((p0) => p0.end, 'EdgeInsets.end', 3)
            .having((p0) => p0.bottom, 'EdgeInsets.bottom', 4),
      );
    });
  });
}
