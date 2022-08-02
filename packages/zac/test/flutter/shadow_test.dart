import 'dart:ui';

import 'package:flutter_test/flutter_test.dart';
import 'package:zac/src/converter.dart';
import 'package:zac/src/flutter/dart_ui/dart_ui.dart';
import 'package:zac/src/flutter/painting/painting.dart';

import 'models.dart';

void main() {
  test('Shadow', () {
    final config = FakeZacContext();
    expect(
        FlutterDartUiShadow.fromJson(<String, dynamic>{
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
    final config = FakeZacContext();
    expect(
        FlutterDartUiShadow.fromJson(<String, dynamic>{
          converterKey: FlutterBoxShadow.unionValue,
          ...BoxShadowModel.json,
        }).build(config),
        BoxShadowModel.equals);
  });
}