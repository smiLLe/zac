import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:zac/src/converter.dart';
import 'package:zac/src/flutter/painting.dart';
import 'package:zac/src/zac/update_context.dart';

import '../../helper.dart';
import '../models.dart';

void main() {
  group('Alignment', () {
    test('FlutterAlignmentGeometry', () {
      final config = FakeZacContext();

      expect(
          FlutterAlignmentGeometry.fromJson(<String, dynamic>{
            '_converter': FlutterAlignment.unionValue,
            'x': 10,
            'y': 20,
          }).build(config),
          isA<Alignment>()
              .having((p0) => p0.x, 'Alignment.x', 10)
              .having((p0) => p0.y, 'Alignment.y', 20));

      expect(
          FlutterAlignmentGeometry.fromJson(<String, dynamic>{
            '_converter': FlutterAlignment.unionValueBottomCenter,
          }).build(config),
          isA<Alignment>()
              .having((p0) => p0, 'Alignment', Alignment.bottomCenter));

      expect(
          FlutterAlignmentGeometry.fromJson(<String, dynamic>{
            '_converter': FlutterAlignment.unionValueBottomLeft,
          }).build(config),
          isA<Alignment>()
              .having((p0) => p0, 'Alignment', Alignment.bottomLeft));

      expect(
          FlutterAlignmentGeometry.fromJson(<String, dynamic>{
            '_converter': FlutterAlignment.unionValueBottomRight,
          }).build(config),
          isA<Alignment>()
              .having((p0) => p0, 'Alignment', Alignment.bottomRight));

      expect(
          FlutterAlignmentGeometry.fromJson(<String, dynamic>{
            '_converter': FlutterAlignment.unionValueCenter,
          }).build(config),
          isA<Alignment>().having((p0) => p0, 'Alignment', Alignment.center));

      expect(
          FlutterAlignmentGeometry.fromJson(<String, dynamic>{
            '_converter': FlutterAlignment.unionValueCenterLeft,
          }).build(config),
          isA<Alignment>()
              .having((p0) => p0, 'Alignment', Alignment.centerLeft));

      expect(
          FlutterAlignmentGeometry.fromJson(<String, dynamic>{
            '_converter': FlutterAlignment.unionValueCenterRight,
          }).build(config),
          isA<Alignment>()
              .having((p0) => p0, 'Alignment', Alignment.centerRight));

      expect(
          FlutterAlignmentGeometry.fromJson(<String, dynamic>{
            '_converter': FlutterAlignment.unionValueTopCenter,
          }).build(config),
          isA<Alignment>()
              .having((p0) => p0, 'Alignment', Alignment.topCenter));

      expect(
          FlutterAlignmentGeometry.fromJson(<String, dynamic>{
            '_converter': FlutterAlignment.unionValueTopLeft,
          }).build(config),
          isA<Alignment>().having((p0) => p0, 'Alignment', Alignment.topLeft));

      expect(
          FlutterAlignmentGeometry.fromJson(<String, dynamic>{
            '_converter': FlutterAlignment.unionValueTopRight,
          }).build(config),
          isA<Alignment>().having((p0) => p0, 'Alignment', Alignment.topRight));
    });
    test('FlutterAlignment', () {
      final config = FakeZacContext();
      final data = FlutterAlignment.fromJson(<String, dynamic>{
        '_converter': FlutterAlignment.unionValue,
        'x': 10,
        'y': 20,
      });

      expect(
          data.build(config),
          isA<Alignment>()
              .having((p0) => p0.x, 'Alignment.x', 10)
              .having((p0) => p0.y, 'Alignment.y', 20));

      expect(
          FlutterAlignment.fromJson(<String, dynamic>{
            '_converter': FlutterAlignment.unionValueBottomCenter,
          }).build(config),
          isA<Alignment>()
              .having((p0) => p0, 'Alignment', Alignment.bottomCenter));

      expect(
          FlutterAlignment.fromJson(<String, dynamic>{
            '_converter': FlutterAlignment.unionValueBottomLeft,
          }).build(config),
          isA<Alignment>()
              .having((p0) => p0, 'Alignment', Alignment.bottomLeft));

      expect(
          FlutterAlignment.fromJson(<String, dynamic>{
            '_converter': FlutterAlignment.unionValueBottomRight,
          }).build(config),
          isA<Alignment>()
              .having((p0) => p0, 'Alignment', Alignment.bottomRight));

      expect(
          FlutterAlignment.fromJson(<String, dynamic>{
            '_converter': FlutterAlignment.unionValueCenter,
          }).build(config),
          isA<Alignment>().having((p0) => p0, 'Alignment', Alignment.center));

      expect(
          FlutterAlignment.fromJson(<String, dynamic>{
            '_converter': FlutterAlignment.unionValueCenterLeft,
          }).build(config),
          isA<Alignment>()
              .having((p0) => p0, 'Alignment', Alignment.centerLeft));

      expect(
          FlutterAlignment.fromJson(<String, dynamic>{
            '_converter': FlutterAlignment.unionValueCenterRight,
          }).build(config),
          isA<Alignment>()
              .having((p0) => p0, 'Alignment', Alignment.centerRight));

      expect(
          FlutterAlignment.fromJson(<String, dynamic>{
            '_converter': FlutterAlignment.unionValueTopCenter,
          }).build(config),
          isA<Alignment>()
              .having((p0) => p0, 'Alignment', Alignment.topCenter));

      expect(
          FlutterAlignment.fromJson(<String, dynamic>{
            '_converter': FlutterAlignment.unionValueTopLeft,
          }).build(config),
          isA<Alignment>().having((p0) => p0, 'Alignment', Alignment.topLeft));

      expect(
          FlutterAlignment.fromJson(<String, dynamic>{
            '_converter': FlutterAlignment.unionValueTopRight,
          }).build(config),
          isA<Alignment>().having((p0) => p0, 'Alignment', Alignment.topRight));
    });
  });

  group('AlignmentDirectional', () {
    test('FlutterAlignmentGeometry', () {
      final config = FakeZacContext();

      expect(
          FlutterAlignmentGeometry.fromJson(<String, dynamic>{
            '_converter': FlutterAlignmentDirectional.unionValue,
            'start': 10,
            'y': 20,
          }).build(config),
          isA<AlignmentDirectional>()
              .having((p0) => p0.start, 'AlignmentDirectional.start', 10)
              .having((p0) => p0.y, 'AlignmentDirectional.y', 20));

      expect(
          FlutterAlignmentGeometry.fromJson(<String, dynamic>{
            '_converter': FlutterAlignmentDirectional.unionValueBottomCenter,
          }).build(config),
          isA<AlignmentDirectional>().having((p0) => p0, 'AlignmentDirectional',
              AlignmentDirectional.bottomCenter));

      expect(
          FlutterAlignmentGeometry.fromJson(<String, dynamic>{
            '_converter': FlutterAlignmentDirectional.unionValueBottomStart,
          }).build(config),
          isA<AlignmentDirectional>().having((p0) => p0, 'AlignmentDirectional',
              AlignmentDirectional.bottomStart));
      expect(
          FlutterAlignmentGeometry.fromJson(<String, dynamic>{
            '_converter': FlutterAlignmentDirectional.unionValueBottomEnd,
          }).build(config),
          isA<AlignmentDirectional>().having((p0) => p0, 'AlignmentDirectional',
              AlignmentDirectional.bottomEnd));
      expect(
          FlutterAlignmentGeometry.fromJson(<String, dynamic>{
            '_converter': FlutterAlignmentDirectional.unionValueCenter,
          }).build(config),
          isA<AlignmentDirectional>().having(
              (p0) => p0, 'AlignmentDirectional', AlignmentDirectional.center));
      expect(
          FlutterAlignmentGeometry.fromJson(<String, dynamic>{
            '_converter': FlutterAlignmentDirectional.unionValueCenterStart,
          }).build(config),
          isA<AlignmentDirectional>().having((p0) => p0, 'AlignmentDirectional',
              AlignmentDirectional.centerStart));
      expect(
          FlutterAlignmentGeometry.fromJson(<String, dynamic>{
            '_converter': FlutterAlignmentDirectional.unionValueCenterEnd,
          }).build(config),
          isA<AlignmentDirectional>().having((p0) => p0, 'AlignmentDirectional',
              AlignmentDirectional.centerEnd));
      expect(
          FlutterAlignmentGeometry.fromJson(<String, dynamic>{
            '_converter': FlutterAlignmentDirectional.unionValueTopCenter,
          }).build(config),
          isA<AlignmentDirectional>().having((p0) => p0, 'AlignmentDirectional',
              AlignmentDirectional.topCenter));
      expect(
          FlutterAlignmentGeometry.fromJson(<String, dynamic>{
            '_converter': FlutterAlignmentDirectional.unionValueTopStart,
          }).build(config),
          isA<AlignmentDirectional>().having((p0) => p0, 'AlignmentDirectional',
              AlignmentDirectional.topStart));
      expect(
          FlutterAlignmentGeometry.fromJson(<String, dynamic>{
            '_converter': FlutterAlignmentDirectional.unionValueTopEnd,
          }).build(config),
          isA<AlignmentDirectional>().having(
              (p0) => p0, 'AlignmentDirectional', AlignmentDirectional.topEnd));
    });

    test('FlutterAlignmentDirectional', () {
      final config = FakeZacContext();
      final data = FlutterAlignmentDirectional.fromJson(<String, dynamic>{
        '_converter': FlutterAlignmentDirectional.unionValue,
        'start': 10,
        'y': 20,
      });

      expect(
          data.build(config),
          isA<AlignmentDirectional>()
              .having((p0) => p0.start, 'AlignmentDirectional.start', 10)
              .having((p0) => p0.y, 'AlignmentDirectional.y', 20));

      expect(
          FlutterAlignmentDirectional.fromJson(<String, dynamic>{
            '_converter': FlutterAlignmentDirectional.unionValueBottomCenter,
          }).build(config),
          isA<AlignmentDirectional>().having((p0) => p0, 'AlignmentDirectional',
              AlignmentDirectional.bottomCenter));

      expect(
          FlutterAlignmentDirectional.fromJson(<String, dynamic>{
            '_converter': FlutterAlignmentDirectional.unionValueBottomStart,
          }).build(config),
          isA<AlignmentDirectional>().having((p0) => p0, 'AlignmentDirectional',
              AlignmentDirectional.bottomStart));
      expect(
          FlutterAlignmentDirectional.fromJson(<String, dynamic>{
            '_converter': FlutterAlignmentDirectional.unionValueBottomEnd,
          }).build(config),
          isA<AlignmentDirectional>().having((p0) => p0, 'AlignmentDirectional',
              AlignmentDirectional.bottomEnd));
      expect(
          FlutterAlignmentDirectional.fromJson(<String, dynamic>{
            '_converter': FlutterAlignmentDirectional.unionValueCenter,
          }).build(config),
          isA<AlignmentDirectional>().having(
              (p0) => p0, 'AlignmentDirectional', AlignmentDirectional.center));
      expect(
          FlutterAlignmentDirectional.fromJson(<String, dynamic>{
            '_converter': FlutterAlignmentDirectional.unionValueCenterStart,
          }).build(config),
          isA<AlignmentDirectional>().having((p0) => p0, 'AlignmentDirectional',
              AlignmentDirectional.centerStart));
      expect(
          FlutterAlignmentDirectional.fromJson(<String, dynamic>{
            '_converter': FlutterAlignmentDirectional.unionValueCenterEnd,
          }).build(config),
          isA<AlignmentDirectional>().having((p0) => p0, 'AlignmentDirectional',
              AlignmentDirectional.centerEnd));
      expect(
          FlutterAlignmentDirectional.fromJson(<String, dynamic>{
            '_converter': FlutterAlignmentDirectional.unionValueTopCenter,
          }).build(config),
          isA<AlignmentDirectional>().having((p0) => p0, 'AlignmentDirectional',
              AlignmentDirectional.topCenter));
      expect(
          FlutterAlignmentDirectional.fromJson(<String, dynamic>{
            '_converter': FlutterAlignmentDirectional.unionValueTopStart,
          }).build(config),
          isA<AlignmentDirectional>().having((p0) => p0, 'AlignmentDirectional',
              AlignmentDirectional.topStart));
      expect(
          FlutterAlignmentDirectional.fromJson(<String, dynamic>{
            '_converter': FlutterAlignmentDirectional.unionValueTopEnd,
          }).build(config),
          isA<AlignmentDirectional>().having(
              (p0) => p0, 'AlignmentDirectional', AlignmentDirectional.topEnd));
    });
  });

  group('FractionalOffset', () {
    testWidgets('FractionalOffset()', (tester) async {
      late ZacBuildContext context;
      await testZacWidget(tester, LeakContext(cb: (c) => context = c));

      expect(
          FlutterAlignmentGeometry.fromJson(<String, dynamic>{
            '_converter': 'f:1:FractionalOffset',
            'dx': 10,
            'dy': 20,
          }).build(context),
          isA<FractionalOffset>()
              .having((p0) => p0.dx, 'FractionalOffset.dx', 10)
              .having((p0) => p0.dy, 'FractionalOffset.dy', 20));
    });
  });
}
