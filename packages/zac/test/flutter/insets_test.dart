import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:zac/src/flutter/painting.dart';

import 'models.dart';

void main() {
  group('FlutterEdgeInsets', () {
    test('.all', () {
      final config = FakeZacContext();
      final map = {
        '_converter': FlutterEdgeInsets.unionValueAll,
        'value': 10,
      };
      expect(FlutterEdgeInsets.fromJson(map).build(config),
          isA<EdgeInsets>().having((p0) => p0.bottom, 'EdgeInsets.bottom', 10));

      expect(FlutterEdgeInsetsGeometry.fromJson(map).build(config),
          isA<EdgeInsets>().having((p0) => p0.bottom, 'EdgeInsets.bottom', 10));
    });

    test('.symmetric', () {
      final config = FakeZacContext();
      final map = {
        '_converter': FlutterEdgeInsets.unionValueSymmetric,
        'vertical': 10,
        'horizontal': 11,
      };
      expect(
          FlutterEdgeInsets.fromJson(map).build(config),
          isA<EdgeInsets>()
              .having((p0) => p0.bottom, 'EdgeInsets.bottom', 10)
              .having((p0) => p0.left, 'EdgeInsets.left', 11));

      expect(
          FlutterEdgeInsetsGeometry.fromJson(map).build(config),
          isA<EdgeInsets>()
              .having((p0) => p0.bottom, 'EdgeInsets.bottom', 10)
              .having((p0) => p0.left, 'EdgeInsets.left', 11));
    });

    test('.only', () {
      final config = FakeZacContext();
      final map = {
        '_converter': FlutterEdgeInsets.unionValueOnly,
        'left': 1,
        'top': 2,
        'right': 3,
        'bottom': 4,
      };
      expect(
          FlutterEdgeInsets.fromJson(map).build(config),
          isA<EdgeInsets>()
              .having((p0) => p0.left, 'EdgeInsets.left', 1)
              .having((p0) => p0.top, 'EdgeInsets.top', 2)
              .having((p0) => p0.right, 'EdgeInsets.left', 3)
              .having((p0) => p0.bottom, 'EdgeInsets.bottom', 4));

      expect(
          FlutterEdgeInsetsGeometry.fromJson(map).build(config),
          isA<EdgeInsets>()
              .having((p0) => p0.left, 'EdgeInsets.left', 1)
              .having((p0) => p0.top, 'EdgeInsets.top', 2)
              .having((p0) => p0.right, 'EdgeInsets.left', 3)
              .having((p0) => p0.bottom, 'EdgeInsets.bottom', 4));
    });
  });

  group('FlutterEdgeInsetsDirectional', () {
    test('.all', () {
      final config = FakeZacContext();
      final map = {
        '_converter': FlutterEdgeInsetsDirectional.unionValueAll,
        'value': 10,
      };
      expect(
          FlutterEdgeInsetsDirectional.fromJson(map).build(config),
          isA<EdgeInsetsDirectional>()
              .having((p0) => p0.bottom, 'EdgeInsetsDirectional.bottom', 10));

      expect(
          FlutterEdgeInsetsGeometry.fromJson(map).build(config),
          isA<EdgeInsetsDirectional>()
              .having((p0) => p0.bottom, 'EdgeInsetsDirectional.bottom', 10));
    });

    test('.only', () {
      final config = FakeZacContext();
      final map = {
        '_converter': FlutterEdgeInsetsDirectional.unionValueOnly,
        'start': 1,
        'top': 2,
        'end': 3,
        'bottom': 4,
      };
      expect(
          FlutterEdgeInsetsDirectional.fromJson(map).build(config),
          isA<EdgeInsetsDirectional>()
              .having((p0) => p0.start, 'EdgeInsets.start', 1)
              .having((p0) => p0.top, 'EdgeInsets.top', 2)
              .having((p0) => p0.end, 'EdgeInsets.end', 3)
              .having((p0) => p0.bottom, 'EdgeInsets.bottom', 4));

      expect(
          FlutterEdgeInsetsGeometry.fromJson(map).build(config),
          isA<EdgeInsetsDirectional>()
              .having((p0) => p0.start, 'EdgeInsets.start', 1)
              .having((p0) => p0.top, 'EdgeInsets.top', 2)
              .having((p0) => p0.end, 'EdgeInsets.end', 3)
              .having((p0) => p0.bottom, 'EdgeInsets.bottom', 4));
    });
  });
}
