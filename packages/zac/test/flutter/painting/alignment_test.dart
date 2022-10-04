import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:zac/src/flutter/painting.dart';
import 'package:zac/src/zac/update_widget.dart';

import '../../helper.dart';
import '../models.dart';

void main() {
  group('Alignment', () {
    test('FlutterAlignmentGeometry', () {
      fakeBuild<Alignment>(
        FlutterAlignmentGeometry.fromJson(<String, dynamic>{
          '_converter': FlutterAlignment.unionValue,
          'x': 10,
          'y': 20,
        }).build,
        (matcher) => matcher
            .having((p0) => p0.x, 'Alignment.x', 10)
            .having((p0) => p0.y, 'Alignment.y', 20),
      );

      fakeBuild<Alignment>(
        FlutterAlignmentGeometry.fromJson(<String, dynamic>{
          '_converter': FlutterAlignment.unionValueBottomCenter,
        }).build,
        (matcher) =>
            matcher.having((p0) => p0, 'Alignment', Alignment.bottomCenter),
      );

      fakeBuild<Alignment>(
        FlutterAlignmentGeometry.fromJson(<String, dynamic>{
          '_converter': FlutterAlignment.unionValueBottomLeft,
        }).build,
        (matcher) =>
            matcher.having((p0) => p0, 'Alignment', Alignment.bottomLeft),
      );

      fakeBuild<Alignment>(
        FlutterAlignmentGeometry.fromJson(<String, dynamic>{
          '_converter': FlutterAlignment.unionValueBottomRight,
        }).build,
        (matcher) =>
            matcher.having((p0) => p0, 'Alignment', Alignment.bottomRight),
      );

      fakeBuild<Alignment>(
        FlutterAlignmentGeometry.fromJson(<String, dynamic>{
          '_converter': FlutterAlignment.unionValueCenter,
        }).build,
        (matcher) => matcher.having((p0) => p0, 'Alignment', Alignment.center),
      );

      fakeBuild<Alignment>(
        FlutterAlignmentGeometry.fromJson(<String, dynamic>{
          '_converter': FlutterAlignment.unionValueCenterLeft,
        }).build,
        (matcher) =>
            matcher.having((p0) => p0, 'Alignment', Alignment.centerLeft),
      );

      fakeBuild<Alignment>(
        FlutterAlignmentGeometry.fromJson(<String, dynamic>{
          '_converter': FlutterAlignment.unionValueCenterRight,
        }).build,
        (matcher) =>
            matcher.having((p0) => p0, 'Alignment', Alignment.centerRight),
      );

      fakeBuild<Alignment>(
        FlutterAlignmentGeometry.fromJson(<String, dynamic>{
          '_converter': FlutterAlignment.unionValueTopCenter,
        }).build,
        (matcher) =>
            matcher.having((p0) => p0, 'Alignment', Alignment.topCenter),
      );

      fakeBuild<Alignment>(
        FlutterAlignmentGeometry.fromJson(<String, dynamic>{
          '_converter': FlutterAlignment.unionValueTopLeft,
        }).build,
        (matcher) => matcher.having((p0) => p0, 'Alignment', Alignment.topLeft),
      );

      fakeBuild<Alignment>(
        FlutterAlignmentGeometry.fromJson(<String, dynamic>{
          '_converter': FlutterAlignment.unionValueTopRight,
        }).build,
        (matcher) =>
            matcher.having((p0) => p0, 'Alignment', Alignment.topRight),
      );
    });

    test('FlutterAlignment', () {
      fakeBuild<Alignment>(
        FlutterAlignment.fromJson(<String, dynamic>{
          '_converter': FlutterAlignment.unionValue,
          'x': 10,
          'y': 20,
        }).build,
        (matcher) => matcher
            .having((p0) => p0.x, 'Alignment.x', 10)
            .having((p0) => p0.y, 'Alignment.y', 20),
      );

      fakeBuild<Alignment>(
        FlutterAlignment.fromJson(<String, dynamic>{
          '_converter': FlutterAlignment.unionValueBottomCenter,
        }).build,
        (matcher) =>
            matcher.having((p0) => p0, 'Alignment', Alignment.bottomCenter),
      );

      fakeBuild<Alignment>(
        FlutterAlignment.fromJson(<String, dynamic>{
          '_converter': FlutterAlignment.unionValueBottomLeft,
        }).build,
        (matcher) =>
            matcher.having((p0) => p0, 'Alignment', Alignment.bottomLeft),
      );

      fakeBuild<Alignment>(
        FlutterAlignment.fromJson(<String, dynamic>{
          '_converter': FlutterAlignment.unionValueBottomRight,
        }).build,
        (matcher) =>
            matcher.having((p0) => p0, 'Alignment', Alignment.bottomRight),
      );

      fakeBuild<Alignment>(
        FlutterAlignment.fromJson(<String, dynamic>{
          '_converter': FlutterAlignment.unionValueCenter,
        }).build,
        (matcher) => matcher.having((p0) => p0, 'Alignment', Alignment.center),
      );

      fakeBuild<Alignment>(
        FlutterAlignment.fromJson(<String, dynamic>{
          '_converter': FlutterAlignment.unionValueCenterLeft,
        }).build,
        (matcher) =>
            matcher.having((p0) => p0, 'Alignment', Alignment.centerLeft),
      );

      fakeBuild<Alignment>(
        FlutterAlignment.fromJson(<String, dynamic>{
          '_converter': FlutterAlignment.unionValueCenterRight,
        }).build,
        (matcher) =>
            matcher.having((p0) => p0, 'Alignment', Alignment.centerRight),
      );

      fakeBuild<Alignment>(
        FlutterAlignment.fromJson(<String, dynamic>{
          '_converter': FlutterAlignment.unionValueTopCenter,
        }).build,
        (matcher) =>
            matcher.having((p0) => p0, 'Alignment', Alignment.topCenter),
      );

      fakeBuild<Alignment>(
        FlutterAlignment.fromJson(<String, dynamic>{
          '_converter': FlutterAlignment.unionValueTopLeft,
        }).build,
        (matcher) => matcher.having((p0) => p0, 'Alignment', Alignment.topLeft),
      );

      fakeBuild<Alignment>(
        FlutterAlignment.fromJson(<String, dynamic>{
          '_converter': FlutterAlignment.unionValueTopRight,
        }).build,
        (matcher) =>
            matcher.having((p0) => p0, 'Alignment', Alignment.topRight),
      );
    });
  });

  group('AlignmentDirectional', () {
    test('FlutterAlignmentGeometry', () {
      fakeBuild<AlignmentDirectional>(
        FlutterAlignmentGeometry.fromJson(<String, dynamic>{
          '_converter': FlutterAlignmentDirectional.unionValue,
          'start': 10,
          'y': 20,
        }).build,
        (matcher) => matcher
            .having((p0) => p0.start, 'AlignmentDirectional.start', 10)
            .having((p0) => p0.y, 'AlignmentDirectional.y', 20),
      );

      fakeBuild<AlignmentDirectional>(
        FlutterAlignmentGeometry.fromJson(<String, dynamic>{
          '_converter': FlutterAlignmentDirectional.unionValueBottomCenter,
        }).build,
        (matcher) => matcher.having((p0) => p0, 'AlignmentDirectional',
            AlignmentDirectional.bottomCenter),
      );

      fakeBuild<AlignmentDirectional>(
        FlutterAlignmentGeometry.fromJson(<String, dynamic>{
          '_converter': FlutterAlignmentDirectional.unionValueBottomStart,
        }).build,
        (matcher) => matcher.having((p0) => p0, 'AlignmentDirectional',
            AlignmentDirectional.bottomStart),
      );

      fakeBuild<AlignmentDirectional>(
        FlutterAlignmentGeometry.fromJson(<String, dynamic>{
          '_converter': FlutterAlignmentDirectional.unionValueBottomEnd,
        }).build,
        (matcher) => matcher.having(
            (p0) => p0, 'AlignmentDirectional', AlignmentDirectional.bottomEnd),
      );

      fakeBuild<AlignmentDirectional>(
        FlutterAlignmentGeometry.fromJson(<String, dynamic>{
          '_converter': FlutterAlignmentDirectional.unionValueCenter,
        }).build,
        (matcher) => matcher.having(
            (p0) => p0, 'AlignmentDirectional', AlignmentDirectional.center),
      );

      fakeBuild<AlignmentDirectional>(
        FlutterAlignmentGeometry.fromJson(<String, dynamic>{
          '_converter': FlutterAlignmentDirectional.unionValueCenterStart,
        }).build,
        (matcher) => matcher.having((p0) => p0, 'AlignmentDirectional',
            AlignmentDirectional.centerStart),
      );

      fakeBuild<AlignmentDirectional>(
        FlutterAlignmentGeometry.fromJson(<String, dynamic>{
          '_converter': FlutterAlignmentDirectional.unionValueCenterEnd,
        }).build,
        (matcher) => matcher.having(
            (p0) => p0, 'AlignmentDirectional', AlignmentDirectional.centerEnd),
      );

      fakeBuild<AlignmentDirectional>(
        FlutterAlignmentGeometry.fromJson(<String, dynamic>{
          '_converter': FlutterAlignmentDirectional.unionValueTopCenter,
        }).build,
        (matcher) => matcher.having(
            (p0) => p0, 'AlignmentDirectional', AlignmentDirectional.topCenter),
      );

      fakeBuild<AlignmentDirectional>(
        FlutterAlignmentGeometry.fromJson(<String, dynamic>{
          '_converter': FlutterAlignmentDirectional.unionValueTopStart,
        }).build,
        (matcher) => matcher.having(
            (p0) => p0, 'AlignmentDirectional', AlignmentDirectional.topStart),
      );

      fakeBuild<AlignmentDirectional>(
        FlutterAlignmentGeometry.fromJson(<String, dynamic>{
          '_converter': FlutterAlignmentDirectional.unionValueTopEnd,
        }).build,
        (matcher) => matcher.having(
            (p0) => p0, 'AlignmentDirectional', AlignmentDirectional.topEnd),
      );
    });

    test('FlutterAlignmentDirectional', () {
      fakeBuild<AlignmentDirectional>(
        FlutterAlignmentDirectional.fromJson(<String, dynamic>{
          '_converter': FlutterAlignmentDirectional.unionValue,
          'start': 10,
          'y': 20,
        }).build,
        (matcher) => matcher
            .having((p0) => p0.start, 'AlignmentDirectional.start', 10)
            .having((p0) => p0.y, 'AlignmentDirectional.y', 20),
      );

      fakeBuild<AlignmentDirectional>(
        FlutterAlignmentDirectional.fromJson(<String, dynamic>{
          '_converter': FlutterAlignmentDirectional.unionValueBottomCenter,
        }).build,
        (matcher) => matcher.having((p0) => p0, 'AlignmentDirectional',
            AlignmentDirectional.bottomCenter),
      );

      fakeBuild<AlignmentDirectional>(
        FlutterAlignmentDirectional.fromJson(<String, dynamic>{
          '_converter': FlutterAlignmentDirectional.unionValueBottomStart,
        }).build,
        (matcher) => matcher.having((p0) => p0, 'AlignmentDirectional',
            AlignmentDirectional.bottomStart),
      );

      fakeBuild<AlignmentDirectional>(
        FlutterAlignmentDirectional.fromJson(<String, dynamic>{
          '_converter': FlutterAlignmentDirectional.unionValueBottomEnd,
        }).build,
        (matcher) => matcher.having(
            (p0) => p0, 'AlignmentDirectional', AlignmentDirectional.bottomEnd),
      );

      fakeBuild<AlignmentDirectional>(
        FlutterAlignmentDirectional.fromJson(<String, dynamic>{
          '_converter': FlutterAlignmentDirectional.unionValueCenter,
        }).build,
        (matcher) => matcher.having(
            (p0) => p0, 'AlignmentDirectional', AlignmentDirectional.center),
      );

      fakeBuild<AlignmentDirectional>(
        FlutterAlignmentDirectional.fromJson(<String, dynamic>{
          '_converter': FlutterAlignmentDirectional.unionValueCenterStart,
        }).build,
        (matcher) => matcher.having((p0) => p0, 'AlignmentDirectional',
            AlignmentDirectional.centerStart),
      );

      fakeBuild<AlignmentDirectional>(
        FlutterAlignmentDirectional.fromJson(<String, dynamic>{
          '_converter': FlutterAlignmentDirectional.unionValueCenterEnd,
        }).build,
        (matcher) => matcher.having(
            (p0) => p0, 'AlignmentDirectional', AlignmentDirectional.centerEnd),
      );

      fakeBuild<AlignmentDirectional>(
        FlutterAlignmentDirectional.fromJson(<String, dynamic>{
          '_converter': FlutterAlignmentDirectional.unionValueTopCenter,
        }).build,
        (matcher) => matcher.having(
            (p0) => p0, 'AlignmentDirectional', AlignmentDirectional.topCenter),
      );

      fakeBuild<AlignmentDirectional>(
        FlutterAlignmentDirectional.fromJson(<String, dynamic>{
          '_converter': FlutterAlignmentDirectional.unionValueTopStart,
        }).build,
        (matcher) => matcher.having(
            (p0) => p0, 'AlignmentDirectional', AlignmentDirectional.topStart),
      );

      fakeBuild<AlignmentDirectional>(
        FlutterAlignmentDirectional.fromJson(<String, dynamic>{
          '_converter': FlutterAlignmentDirectional.unionValueTopEnd,
        }).build,
        (matcher) => matcher.having(
            (p0) => p0, 'AlignmentDirectional', AlignmentDirectional.topEnd),
      );
    });
  });

  group('FractionalOffset', () {
    testWidgets('FractionalOffset()', (tester) async {
      fakeBuild<FractionalOffset>(
          FlutterAlignmentGeometry.fromJson(<String, dynamic>{
            '_converter': 'f:1:FractionalOffset',
            'dx': 10,
            'dy': 20,
          }).build,
          (matcher) => matcher
              .having((p0) => p0.dx, 'FractionalOffset.dx', 10)
              .having((p0) => p0.dy, 'FractionalOffset.dy', 20));
    });
  });
}
