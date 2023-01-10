import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../helper.dart';
import '../models.dart';

void main() {
  testWidgets('IconData', (tester) async {
    await foo<IconData>(
      tester,
      'f:1:IconData',
      props: <String, dynamic>{
        'codePoint': 30,
        'fontFamily': 'someFamily',
        'fontPackage': 'somePackage',
        'matchTextDirection': true,
      },
      matcher: (matcher) => matcher
          .having((p0) => p0.codePoint, 'IconData.codepoint', 30)
          .having((p0) => p0.fontFamily, 'IconData.fontFamily', 'someFamily')
          .having((p0) => p0.fontPackage, 'IconData.fontPackage', 'somePackage')
          .having((p0) => p0.matchTextDirection, 'IconData.matchTextDirection',
              true),
    );
  });

  testWidgets('Icon', (tester) async {
    await foo<Icon>(
      tester,
      'f:1:Icon',
      props: <String, dynamic>{
        'icon': {
          'builder': 'f:1:IconData',
          'codePoint': 30,
        },
        'key': KeysModel.getValueKey('test_key'),
        'size': 20,
        'color': ColorModel.json,
        'semanticLabel': 'semantic',
        'textDirection': {'builder': 'f:1:TextDirection.ltr'}
      },
      matcher: (matcher) => matcher
          .having((p0) => p0.icon, 'Icon.icon', isA<IconData>())
          .having((p0) => p0.size, 'Icon.size', equals(20))
          .having((p0) => p0.color, 'Icon.color', ColorModel.equals)
          .having((p0) => p0.semanticLabel, 'Icon.semanticLabel', 'semantic')
          .having((p0) => p0.textDirection, 'Icon.textDirection',
              TextDirection.ltr),
    );
  });

  testWidgets('IconThemeData', (tester) async {
    await foo<IconThemeData>(
      tester,
      'f:1:IconThemeData',
      props: <String, dynamic>{
        'color': ColorModel.json,
        'opacity': 0.9,
        'size': 22,
      },
      matcher: (matcher) => matcher
          .having((p0) => p0.color, 'IconThemeData.color', ColorModel.equals)
          .having((p0) => p0.opacity, 'IconThemeData.opacity', 0.9)
          .having((p0) => p0.size, 'IconThemeData.size', 22),
    );
  });
}
