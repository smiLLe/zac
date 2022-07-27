import 'dart:ui';

import 'package:zac/src/flutter/mixed/shadow/shadow.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:zac/src/converter.dart';

import 'models.dart';

void main() {
  test('Shadow', () {
    final config = FakeWidgetConfig();
    expect(
        FlutterShadow.fromJson(<String, dynamic>{
          converterKey: 'f:1:Shadow',
          'color': ColorModel.json,
          'offset': OffsetModel.json,
          'blurRadius': 10,
        }).build(config),
        const Shadow(
            color: ColorModel.equals,
            offset: OffsetModel.equals,
            blurRadius: 10));
  });

  test('BoxShadow', () {
    final config = FakeWidgetConfig();
    expect(
        FlutterShadow.fromJson(<String, dynamic>{
          converterKey: FlutterBoxShadow.unionValue,
          ...BoxShadowModel.json,
        }).build(config),
        BoxShadowModel.equals);
  });
}
