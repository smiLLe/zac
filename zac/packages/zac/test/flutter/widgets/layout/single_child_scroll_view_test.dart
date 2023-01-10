import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:zac/src/flutter/widgets/layout/single_child_scroll_view.dart';

import '../../../helper.dart';
import '../../models.dart';

void main() {
  testWidgets('FlutterSingleChildScrollView()', (tester) async {
    await testJSON(
      tester,
      <String, dynamic>{
        'builder': FlutterSingleChildScrollView.unionValue,
        'key': KeysModel.getValueKey('FINDME'),
        'scrollDirection': {'builder': 'f:1:Axis.horizontal'},
        'padding': EdgeInsetsModel.geometry_edgeInsetsAll,
        'primary': true,
        'clipBehavior': {
          'builder': 'f:1:Clip.none',
        },
        'restorationId': 'resto_id',
        'keyboardDismissBehavior': {
          'builder': 'f:1:ScrollViewKeyboardDismissBehavior.onDrag',
        },
        'child': ChildModel.getSizedBox(key: 'child'),
      },
    );
    final findMe = find.byKey(const ValueKey('FINDME'));
    expect(findMe, findsOneWidget);
    expect(find.byKey(const ValueKey('child')), findsOneWidget);

    final widget = findMe.evaluate().first.widget;

    expect(
        widget,
        isA<SingleChildScrollView>()
            .having((p0) => p0.scrollDirection,
                'SingleChildScrollView.scrollDirection', Axis.horizontal)
            .having((p0) => p0.padding, 'SingleChildScrollView.padding',
                EdgeInsetsModel.equalsAll)
            .having((p0) => p0.primary, 'SingleChildScrollView.primary', isTrue)
            .having((p0) => p0.clipBehavior,
                'SingleChildScrollView.clipBehavior', Clip.none)
            .having((p0) => p0.restorationId,
                'SingleChildScrollView.restorationId', equals('resto_id'))
            .having(
                (p0) => p0.keyboardDismissBehavior,
                'SingleChildScrollView.keyboardDismissBehavior',
                ScrollViewKeyboardDismissBehavior.onDrag));
  });
}
