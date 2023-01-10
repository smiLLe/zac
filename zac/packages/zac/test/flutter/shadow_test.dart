import 'dart:ui';

import 'package:flutter_test/flutter_test.dart';

import '../helper.dart';
import 'models.dart';

void main() {
  testWidgets('Shadow', (tester) async {
    await testBuilder<Shadow>(
      tester,
      'f:1:Shadow',
      props: <String, dynamic>{
        'color': ColorModel.json,
        'offset': OffsetModel.json,
        'blurRadius': 10,
      },
      matcher: (matcher) => matcher.having(
          (p0) => p0,
          'Shadow',
          equals(const Shadow(
              color: ColorModel.equals,
              offset: OffsetModel.equals,
              blurRadius: 10))),
    );
  });

  testWidgets('BoxShadow', (tester) async {
    await testBuilder<Shadow>(
      tester,
      'f:1:BoxShadow',
      props: BoxShadowModel.json,
      matcher: (matcher) => matcher.having(
          (p0) => p0, 'BoxShadowModel', equals(BoxShadowModel.equals)),
    );
  });
}
