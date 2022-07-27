import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:zac/src/converter.dart';
import 'package:zac/src/flutter/widgets/assets/icon/icon.dart';

import '../../models.dart';

void main() {
  test('IconData', () {
    final config = FakeZacContext();
    final data = FlutterIconData.fromJson(<String, dynamic>{
      converterKey: 'f:1:IconData',
      'codePoint': 30,
      'fontFamily': 'someFamily',
      'fontPackage': 'somePackage',
      'matchTextDirection': true,
    });

    expect(
        data.build(config),
        isA<IconData>()
            .having((p0) => p0.codePoint, 'IconData.codepoint', 30)
            .having((p0) => p0.fontFamily, 'IconData.fontFamily', 'someFamily')
            .having(
                (p0) => p0.fontPackage, 'IconData.fontPackage', 'somePackage')
            .having((p0) => p0.matchTextDirection,
                'IconData.matchTextDirection', true));
  });

  test('Icon', () {
    final config = FakeZacContext();
    final data = FlutterIcon.fromJson(<String, dynamic>{
      converterKey: 'f:1:Icon',
      'icon': {
        converterKey: 'f:1:IconData',
        'codePoint': 30,
      },
      'key': KeysModel.getValueKey('test_key'),
      'size': 20,
      'color': ColorModel.json,
      'semanticLabel': 'semantic',
      'textDirection': {converterKey: 'f:1:TextDirection.ltr'}
    });

    expect(
        data.buildWidget(config),
        isA<Icon>()
            .having((p0) => p0.icon, 'Icon.icon', isA<IconData>())
            .having((p0) => p0.size, 'Icon.size', equals(20))
            .having((p0) => p0.color, 'Icon.color', ColorModel.equals)
            .having((p0) => p0.semanticLabel, 'Icon.semanticLabel', 'semantic')
            .having((p0) => p0.textDirection, 'Icon.textDirection',
                TextDirection.ltr));
  });

  test('IconThemeData', () {
    final config = FakeZacContext();
    final data = FlutterIconThemeData.fromJson(<String, dynamic>{
      converterKey: 'f:1:IconThemeData',
      'color': ColorModel.json,
      'opacity': 0.9,
      'size': 22,
    });

    expect(
        data.build(config),
        isA<IconThemeData>()
            .having((p0) => p0.color, 'IconThemeData.color', ColorModel.equals)
            .having((p0) => p0.opacity, 'IconThemeData.opacity', 0.9)
            .having((p0) => p0.size, 'IconThemeData.size', 22));
  });
}
