import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:zac/src/flutter/widgets/icon.dart';

import '../../helper.dart';
import '../models.dart';

void main() {
  test('IconData', () {
    fakeBuild<IconData>(
      FlutterIconData.fromJson(<String, dynamic>{
        'converter': 'f:1:IconData',
        'codePoint': 30,
        'fontFamily': 'someFamily',
        'fontPackage': 'somePackage',
        'matchTextDirection': true,
      }).build,
      (matcher) => matcher
          .having((p0) => p0.codePoint, 'IconData.codepoint', 30)
          .having((p0) => p0.fontFamily, 'IconData.fontFamily', 'someFamily')
          .having((p0) => p0.fontPackage, 'IconData.fontPackage', 'somePackage')
          .having((p0) => p0.matchTextDirection, 'IconData.matchTextDirection',
              true),
    );
  });

  test('Icon', () {
    fakeBuild<Icon>(
      FlutterIcon.fromJson(<String, dynamic>{
        'converter': 'f:1:Icon',
        'icon': {
          'converter': 'f:1:IconData',
          'codePoint': 30,
        },
        'key': KeysModel.getValueKey('test_key'),
        'size': 20,
        'color': ColorModel.json,
        'semanticLabel': 'semantic',
        'textDirection': {'converter': 'f:1:TextDirection.ltr'}
      }).buildWidget,
      (matcher) => matcher
          .having((p0) => p0.icon, 'Icon.icon', isA<IconData>())
          .having((p0) => p0.size, 'Icon.size', equals(20))
          .having((p0) => p0.color, 'Icon.color', ColorModel.equals)
          .having((p0) => p0.semanticLabel, 'Icon.semanticLabel', 'semantic')
          .having((p0) => p0.textDirection, 'Icon.textDirection',
              TextDirection.ltr),
    );
  });

  test('IconThemeData', () {
    fakeBuild<IconThemeData>(
      FlutterIconThemeData.fromJson(<String, dynamic>{
        'converter': 'f:1:IconThemeData',
        'color': ColorModel.json,
        'opacity': 0.9,
        'size': 22,
      }).build,
      (matcher) => matcher
          .having((p0) => p0.color, 'IconThemeData.color', ColorModel.equals)
          .having((p0) => p0.opacity, 'IconThemeData.opacity', 0.9)
          .having((p0) => p0.size, 'IconThemeData.size', 22),
    );
  });
}
