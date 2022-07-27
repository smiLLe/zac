import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:zac/src/converter.dart';
import 'package:zac/src/flutter/mixed/alignment/alignment.dart';

import 'models.dart';

void main() {
  group('Alignment', () {
    test('FlutterAlignmentGeometry', () {
      final config = FakeWidgetConfig();

      expect(
          FlutterAlignmentGeometry.fromJson(<String, dynamic>{
            converterKey: FlutterAlignment.unionValue,
            'x': 10,
            'y': 20,
          }).build(config),
          isA<Alignment>()
              .having((p0) => p0.x, 'Alignment.x', 10)
              .having((p0) => p0.y, 'Alignment.y', 20));

      expect(
          FlutterAlignmentGeometry.fromJson(<String, dynamic>{
            converterKey: FlutterAlignment.unionValueBottomCenter,
          }).build(config),
          isA<Alignment>()
              .having((p0) => p0, 'Alignment', Alignment.bottomCenter));

      expect(
          FlutterAlignmentGeometry.fromJson(<String, dynamic>{
            converterKey: FlutterAlignment.unionValueBottomLeft,
          }).build(config),
          isA<Alignment>()
              .having((p0) => p0, 'Alignment', Alignment.bottomLeft));

      expect(
          FlutterAlignmentGeometry.fromJson(<String, dynamic>{
            converterKey: FlutterAlignment.unionValueBottomRight,
          }).build(config),
          isA<Alignment>()
              .having((p0) => p0, 'Alignment', Alignment.bottomRight));

      expect(
          FlutterAlignmentGeometry.fromJson(<String, dynamic>{
            converterKey: FlutterAlignment.unionValueCenter,
          }).build(config),
          isA<Alignment>().having((p0) => p0, 'Alignment', Alignment.center));

      expect(
          FlutterAlignmentGeometry.fromJson(<String, dynamic>{
            converterKey: FlutterAlignment.unionValueCenterLeft,
          }).build(config),
          isA<Alignment>()
              .having((p0) => p0, 'Alignment', Alignment.centerLeft));

      expect(
          FlutterAlignmentGeometry.fromJson(<String, dynamic>{
            converterKey: FlutterAlignment.unionValueCenterRight,
          }).build(config),
          isA<Alignment>()
              .having((p0) => p0, 'Alignment', Alignment.centerRight));

      expect(
          FlutterAlignmentGeometry.fromJson(<String, dynamic>{
            converterKey: FlutterAlignment.unionValueTopCenter,
          }).build(config),
          isA<Alignment>()
              .having((p0) => p0, 'Alignment', Alignment.topCenter));

      expect(
          FlutterAlignmentGeometry.fromJson(<String, dynamic>{
            converterKey: FlutterAlignment.unionValueTopLeft,
          }).build(config),
          isA<Alignment>().having((p0) => p0, 'Alignment', Alignment.topLeft));

      expect(
          FlutterAlignmentGeometry.fromJson(<String, dynamic>{
            converterKey: FlutterAlignment.unionValueTopRight,
          }).build(config),
          isA<Alignment>().having((p0) => p0, 'Alignment', Alignment.topRight));
    });
    test('FlutterAlignment', () {
      final config = FakeWidgetConfig();
      final data = FlutterAlignment.fromJson(<String, dynamic>{
        converterKey: FlutterAlignment.unionValue,
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
            converterKey: FlutterAlignment.unionValueBottomCenter,
          }).build(config),
          isA<Alignment>()
              .having((p0) => p0, 'Alignment', Alignment.bottomCenter));

      expect(
          FlutterAlignment.fromJson(<String, dynamic>{
            converterKey: FlutterAlignment.unionValueBottomLeft,
          }).build(config),
          isA<Alignment>()
              .having((p0) => p0, 'Alignment', Alignment.bottomLeft));

      expect(
          FlutterAlignment.fromJson(<String, dynamic>{
            converterKey: FlutterAlignment.unionValueBottomRight,
          }).build(config),
          isA<Alignment>()
              .having((p0) => p0, 'Alignment', Alignment.bottomRight));

      expect(
          FlutterAlignment.fromJson(<String, dynamic>{
            converterKey: FlutterAlignment.unionValueCenter,
          }).build(config),
          isA<Alignment>().having((p0) => p0, 'Alignment', Alignment.center));

      expect(
          FlutterAlignment.fromJson(<String, dynamic>{
            converterKey: FlutterAlignment.unionValueCenterLeft,
          }).build(config),
          isA<Alignment>()
              .having((p0) => p0, 'Alignment', Alignment.centerLeft));

      expect(
          FlutterAlignment.fromJson(<String, dynamic>{
            converterKey: FlutterAlignment.unionValueCenterRight,
          }).build(config),
          isA<Alignment>()
              .having((p0) => p0, 'Alignment', Alignment.centerRight));

      expect(
          FlutterAlignment.fromJson(<String, dynamic>{
            converterKey: FlutterAlignment.unionValueTopCenter,
          }).build(config),
          isA<Alignment>()
              .having((p0) => p0, 'Alignment', Alignment.topCenter));

      expect(
          FlutterAlignment.fromJson(<String, dynamic>{
            converterKey: FlutterAlignment.unionValueTopLeft,
          }).build(config),
          isA<Alignment>().having((p0) => p0, 'Alignment', Alignment.topLeft));

      expect(
          FlutterAlignment.fromJson(<String, dynamic>{
            converterKey: FlutterAlignment.unionValueTopRight,
          }).build(config),
          isA<Alignment>().having((p0) => p0, 'Alignment', Alignment.topRight));
    });
  });

  group('AlignmentDirectional', () {
    test('FlutterAlignmentGeometry', () {
      final config = FakeWidgetConfig();

      expect(
          FlutterAlignmentGeometry.fromJson(<String, dynamic>{
            converterKey: FlutterAlignmentDirectional.unionValue,
            'start': 10,
            'y': 20,
          }).build(config),
          isA<AlignmentDirectional>()
              .having((p0) => p0.start, 'AlignmentDirectional.start', 10)
              .having((p0) => p0.y, 'AlignmentDirectional.y', 20));

      expect(
          FlutterAlignmentGeometry.fromJson(<String, dynamic>{
            converterKey: FlutterAlignmentDirectional.unionValueBottomCenter,
          }).build(config),
          isA<AlignmentDirectional>().having((p0) => p0, 'AlignmentDirectional',
              AlignmentDirectional.bottomCenter));

      expect(
          FlutterAlignmentGeometry.fromJson(<String, dynamic>{
            converterKey: FlutterAlignmentDirectional.unionValueBottomStart,
          }).build(config),
          isA<AlignmentDirectional>().having((p0) => p0, 'AlignmentDirectional',
              AlignmentDirectional.bottomStart));
      expect(
          FlutterAlignmentGeometry.fromJson(<String, dynamic>{
            converterKey: FlutterAlignmentDirectional.unionValueBottomEnd,
          }).build(config),
          isA<AlignmentDirectional>().having((p0) => p0, 'AlignmentDirectional',
              AlignmentDirectional.bottomEnd));
      expect(
          FlutterAlignmentGeometry.fromJson(<String, dynamic>{
            converterKey: FlutterAlignmentDirectional.unionValueCenter,
          }).build(config),
          isA<AlignmentDirectional>().having(
              (p0) => p0, 'AlignmentDirectional', AlignmentDirectional.center));
      expect(
          FlutterAlignmentGeometry.fromJson(<String, dynamic>{
            converterKey: FlutterAlignmentDirectional.unionValueCenterStart,
          }).build(config),
          isA<AlignmentDirectional>().having((p0) => p0, 'AlignmentDirectional',
              AlignmentDirectional.centerStart));
      expect(
          FlutterAlignmentGeometry.fromJson(<String, dynamic>{
            converterKey: FlutterAlignmentDirectional.unionValueCenterEnd,
          }).build(config),
          isA<AlignmentDirectional>().having((p0) => p0, 'AlignmentDirectional',
              AlignmentDirectional.centerEnd));
      expect(
          FlutterAlignmentGeometry.fromJson(<String, dynamic>{
            converterKey: FlutterAlignmentDirectional.unionValueTopCenter,
          }).build(config),
          isA<AlignmentDirectional>().having((p0) => p0, 'AlignmentDirectional',
              AlignmentDirectional.topCenter));
      expect(
          FlutterAlignmentGeometry.fromJson(<String, dynamic>{
            converterKey: FlutterAlignmentDirectional.unionValueTopStart,
          }).build(config),
          isA<AlignmentDirectional>().having((p0) => p0, 'AlignmentDirectional',
              AlignmentDirectional.topStart));
      expect(
          FlutterAlignmentGeometry.fromJson(<String, dynamic>{
            converterKey: FlutterAlignmentDirectional.unionValueTopEnd,
          }).build(config),
          isA<AlignmentDirectional>().having(
              (p0) => p0, 'AlignmentDirectional', AlignmentDirectional.topEnd));
    });

    test('FlutterAlignmentDirectional', () {
      final config = FakeWidgetConfig();
      final data = FlutterAlignmentDirectional.fromJson(<String, dynamic>{
        converterKey: FlutterAlignmentDirectional.unionValue,
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
            converterKey: FlutterAlignmentDirectional.unionValueBottomCenter,
          }).build(config),
          isA<AlignmentDirectional>().having((p0) => p0, 'AlignmentDirectional',
              AlignmentDirectional.bottomCenter));

      expect(
          FlutterAlignmentDirectional.fromJson(<String, dynamic>{
            converterKey: FlutterAlignmentDirectional.unionValueBottomStart,
          }).build(config),
          isA<AlignmentDirectional>().having((p0) => p0, 'AlignmentDirectional',
              AlignmentDirectional.bottomStart));
      expect(
          FlutterAlignmentDirectional.fromJson(<String, dynamic>{
            converterKey: FlutterAlignmentDirectional.unionValueBottomEnd,
          }).build(config),
          isA<AlignmentDirectional>().having((p0) => p0, 'AlignmentDirectional',
              AlignmentDirectional.bottomEnd));
      expect(
          FlutterAlignmentDirectional.fromJson(<String, dynamic>{
            converterKey: FlutterAlignmentDirectional.unionValueCenter,
          }).build(config),
          isA<AlignmentDirectional>().having(
              (p0) => p0, 'AlignmentDirectional', AlignmentDirectional.center));
      expect(
          FlutterAlignmentDirectional.fromJson(<String, dynamic>{
            converterKey: FlutterAlignmentDirectional.unionValueCenterStart,
          }).build(config),
          isA<AlignmentDirectional>().having((p0) => p0, 'AlignmentDirectional',
              AlignmentDirectional.centerStart));
      expect(
          FlutterAlignmentDirectional.fromJson(<String, dynamic>{
            converterKey: FlutterAlignmentDirectional.unionValueCenterEnd,
          }).build(config),
          isA<AlignmentDirectional>().having((p0) => p0, 'AlignmentDirectional',
              AlignmentDirectional.centerEnd));
      expect(
          FlutterAlignmentDirectional.fromJson(<String, dynamic>{
            converterKey: FlutterAlignmentDirectional.unionValueTopCenter,
          }).build(config),
          isA<AlignmentDirectional>().having((p0) => p0, 'AlignmentDirectional',
              AlignmentDirectional.topCenter));
      expect(
          FlutterAlignmentDirectional.fromJson(<String, dynamic>{
            converterKey: FlutterAlignmentDirectional.unionValueTopStart,
          }).build(config),
          isA<AlignmentDirectional>().having((p0) => p0, 'AlignmentDirectional',
              AlignmentDirectional.topStart));
      expect(
          FlutterAlignmentDirectional.fromJson(<String, dynamic>{
            converterKey: FlutterAlignmentDirectional.unionValueTopEnd,
          }).build(config),
          isA<AlignmentDirectional>().having(
              (p0) => p0, 'AlignmentDirectional', AlignmentDirectional.topEnd));
    });
  });
}
