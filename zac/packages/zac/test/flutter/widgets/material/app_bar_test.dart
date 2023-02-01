import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../../helper.dart';
import '../../models.dart';

void main() {
  testWidgets('check non widget properties', (tester) async {
    await testBuilder<AppBar>(
      tester,
      'f:1:AppBar',
      props: <String, dynamic>{
        'automaticallyImplyLeading': false,
        'elevation': 33,
        'shadowColor': ColorModel.json,
        'shape': BorderModel.shape_box_borderAll,
        'backgroundColor': ColorModel.json,
        'foregroundColor': ColorModel.json,
        'iconTheme': {
          'builder': 'f:1:IconThemeData',
          'color': ColorModel.json,
          'opacity': 0.9,
          'size': 22,
        },
        'actionsIconTheme': {
          'builder': 'f:1:IconThemeData',
          'color': ColorModel.json,
          'opacity': 0.9,
          'size': 22,
        },
        'primary': false,
        'centerTitle': true,
        'excludeHeaderSemantics': true,
        'titleSpacing': 22,
        'toolbarOpacity': 23,
        'bottomOpacity': 0.8,
        'toolbarHeight': 55,
        'leadingWidth': 66,
        'toolbarTextStyle': TextModel.textStyle,
        'titleTextStyle': TextModel.textStyle,
        'systemOverlayStyle': SystemUiOverlayStyleModel.json,
      },
      matcher: (matcher) => matcher
          .having((p0) => p0.automaticallyImplyLeading,
              'AppBar.automaticallyImplyLeading', isFalse)
          .having((p0) => p0.elevation, 'AppBar.elevation', 33)
          .having(
              (p0) => p0.shadowColor, 'AppBar.shadowColor', ColorModel.equals)
          .having((p0) => p0.shape, 'AppBar.shape',
              BorderModel.equals_shape_box_borderAll)
          .having((p0) => p0.backgroundColor, 'AppBar.backgroundColor',
              ColorModel.equals)
          .having((p0) => p0.foregroundColor, 'AppBar.foregroundColor',
              ColorModel.equals)
          .having(
              (p0) => p0.iconTheme,
              'AppBar.iconTheme',
              const IconThemeData(
                  color: ColorModel.equals, opacity: 0.9, size: 22))
          .having(
              (p0) => p0.actionsIconTheme,
              'AppBar.actionsIconTheme',
              const IconThemeData(
                  color: ColorModel.equals, opacity: 0.9, size: 22))
          .having((p0) => p0.primary, 'AppBar.primary', isFalse)
          .having((p0) => p0.centerTitle, 'AppBar.centerTitle', isTrue)
          .having((p0) => p0.excludeHeaderSemantics,
              'AppBar.excludeHeaderSemantics', isTrue)
          .having((p0) => p0.titleSpacing, 'AppBar.titleSpacing', 22)
          .having((p0) => p0.toolbarOpacity, 'AppBar.toolbarOpacity', 23)
          .having((p0) => p0.bottomOpacity, 'AppBar.bottomOpacity', 0.8)
          .having((p0) => p0.toolbarHeight, 'AppBar.toolbarHeight', 55)
          .having((p0) => p0.leadingWidth, 'AppBar.leadingWidth', 66)
          .having((p0) => p0.toolbarTextStyle, 'AppBar.toolbarTextStyle',
              TextModel.equalsTextStyle)
          .having((p0) => p0.titleTextStyle, 'AppBar.titleTextStyle',
              TextModel.equalsTextStyle)
          .having((p0) => p0.systemOverlayStyle, 'AppBar.systemOverlayStyle',
              SystemUiOverlayStyleModel.equals),
    );
  });
  testWidgets('find all widgets', (tester) async {
    await testJSON(tester, <String, dynamic>{
      'builder': 'f:1:AppBar',
      'key': KeysModel.getValueKey('test_key'),
      'leading': ChildModel.getSizedBox(key: 'test_leading'),
      'title': ChildModel.getSizedBox(key: 'test_title'),
      'actions': [
        ChildModel.getSizedBox(key: 'test_action'),
      ],
      'flexibleSpace': ChildModel.getSizedBox(key: 'test_flexibleSpace'),
      'bottom': {
        'builder': 'f:1:AppBar',
        'key': KeysModel.getValueKey('test_bottom'),
      },
    });

    expect(find.byKey(const ValueKey('test_key')), findsOneWidget);
    expect(find.byKey(const ValueKey('test_leading')), findsOneWidget);
    expect(find.byKey(const ValueKey('test_title')), findsOneWidget);
    expect(find.byKey(const ValueKey('test_action')), findsOneWidget);
    expect(find.byKey(const ValueKey('test_flexibleSpace')), findsOneWidget);
    expect(find.byKey(const ValueKey('test_bottom')), findsOneWidget);
  });
}
