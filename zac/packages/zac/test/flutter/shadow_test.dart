import 'dart:ui';

import 'package:flutter_test/flutter_test.dart';
import 'package:zac/src/flutter/dart_ui.dart';
import 'package:zac/src/flutter/painting.dart';

import '../helper.dart';
import 'models.dart';

void main() {
  test('Shadow', () {
    fakeBuild<Shadow>(
      FlutterShadow.fromJson(<String, dynamic>{
        'converter': 'f:1:Shadow',
        'color': ColorModel.json,
        'offset': OffsetModel.json,
        'blurRadius': 10,
      }).build,
      (matcher) => matcher.having(
          (p0) => p0,
          'Shadow',
          equals(const Shadow(
              color: ColorModel.equals,
              offset: OffsetModel.equals,
              blurRadius: 10))),
    );
  });

  test('BoxShadow', () {
    fakeBuild<Shadow>(
      FlutterShadow.fromJson(<String, dynamic>{
        'converter': FlutterBoxShadow.unionValue,
        ...BoxShadowModel.json,
      }).build,
      (matcher) => matcher.having(
          (p0) => p0, 'BoxShadowModel', equals(BoxShadowModel.equals)),
    );
  });
}
