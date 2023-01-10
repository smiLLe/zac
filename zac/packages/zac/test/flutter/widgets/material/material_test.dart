import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:zac/src/flutter/widgets/material/material.dart';

import '../../../helper.dart';
import '../../models.dart';

void main() {
  testWidgets('check borderRadius', (tester) async {
    await testJSON(
      tester,
      <String, dynamic>{
        'builder': FlutterMaterial.unionValue,
        'key': KeysModel.getValueKey('FIND_ME'),
        'borderRadius': BorderRadiusModel.circularJson,
      },
    );

    final findMe = find.byKey(const ValueKey('FIND_ME'));

    expect(findMe, findsOneWidget);

    final widget = findMe.evaluate().first.widget;

    expect(
        widget,
        isA<Material>().having((p0) => p0.borderRadius, 'Material.borderRadius',
            BorderRadiusModel.circularEquals));
  });

  testWidgets('all properties', (tester) async {
    await testJSON(
      tester,
      <String, dynamic>{
        'builder': FlutterMaterial.unionValue,
        'key': KeysModel.getValueKey('FIND_ME'),
        'child': ChildModel.getSizedBox(key: 'child1'),
        'clipBehavior': {
          'builder': 'f:1:Clip.hardEdge',
        },
        'color': ColorModel.json,
        'elevation': 21,
        'shadowColor': ColorModel.json,
        'shape': BorderModel.shape_box_borderAll,
        'textStyle': TextModel.textStyle,
      },
    );

    final findMe = find.byKey(const ValueKey('FIND_ME'));

    expect(findMe, findsOneWidget);
    expect(find.byKey(const ValueKey('child1')), findsOneWidget);

    final widget = findMe.evaluate().first.widget;

    expect(
        widget,
        isA<Material>()
            .having(
                (p0) => p0.clipBehavior, 'Material.clipBehavior', Clip.hardEdge)
            .having((p0) => p0.color, 'Material.color', ColorModel.equals)
            .having((p0) => p0.elevation, 'Material.elevation', 21)
            .having((p0) => p0.shadowColor, 'Material.shadowColor',
                ColorModel.equals)
            .having((p0) => p0.shape, 'Material.shape',
                BorderModel.equals_shape_box_borderAll)
            .having((p0) => p0.textStyle, 'Material.textStyle',
                TextModel.equalsTextStyle));
  });
}
