import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:zac/src/flutter/widgets/layout_multi_child/grid_view.dart';

import '../../../helper.dart';
import '../../models.dart';

void main() {
  late Map<String, dynamic> map;
  setUp(() {
    map = <String, dynamic>{
      '_converter': FlutterGridView.unionValue,
      'key': KeysModel.getValueKey('FINDME'),
      'gridDelegate': GridDelegateModel.json,
      'scrollDirection': {'_converter': 'f:1:Axis.horizontal'},
      'shrinkWrap': true,
      'reverse': true,
      'padding': EdgeInsetsModel.geometry_edgeInsetsAll,
      'primary': true,
      // 'addAutomaticKeepAlives': false,
      // 'addRepaintBoundaries': false,
      // 'addSemanticIndexes': false,
      'cacheExtent': 900,

      'children': [
        ChildModel.getSizedBox(key: 'child1'),
        ChildModel.getSizedBox(key: 'child2')
      ],
      'clipBehavior': {
        '_converter': 'f:1:Clip.none',
      },
      'restorationId': 'resto_id',
      'keyboardDismissBehavior': {
        '_converter': 'f:1:ScrollViewKeyboardDismissBehavior.onDrag',
      },
    };
  });

  testWidgets('FlutterGridView()', (tester) async {
    await testMap(
      tester,
      map,
    );
    final findMe = find.byKey(const ValueKey('FINDME'));
    expect(findMe, findsOneWidget);
    expect(find.byKey(const ValueKey('child1')), findsOneWidget);
    expect(find.byKey(const ValueKey('child2')), findsOneWidget);

    final widget = findMe.evaluate().first.widget;

    expect(
        widget,
        isA<GridView>()
            .having(
                (p0) => p0.gridDelegate,
                'GridView.gridDelegate',
                isA<SliverGridDelegateWithFixedCrossAxisCount>()
                    .having((p0) => p0.crossAxisCount, 'crossAxisCount', 7))
            .having((p0) => p0.scrollDirection, 'GridView.scrollDirection',
                Axis.horizontal)
            .having((p0) => p0.reverse, 'GridView.reverse', isTrue)
            .having((p0) => p0.primary, 'GridView.primary', isTrue)
            .having((p0) => p0.shrinkWrap, 'GridView.shrinkWrap', isTrue)
            .having((p0) => p0.cacheExtent, 'GridView.cacheExtent', 900)
            .having((p0) => p0.padding, 'GridView.padding',
                EdgeInsetsModel.equalsAll)
            .having((p0) => p0.clipBehavior, 'GridView.clipBehavior', Clip.none)
            .having((p0) => p0.restorationId, 'GridView.restorationId',
                equals('resto_id'))
            .having(
                (p0) => p0.keyboardDismissBehavior,
                'GridView.keyboardDismissBehavior',
                ScrollViewKeyboardDismissBehavior.onDrag));
  });
}
