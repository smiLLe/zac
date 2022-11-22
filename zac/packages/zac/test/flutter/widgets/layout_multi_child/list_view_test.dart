import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:zac/src/flutter/all.dart';
import 'package:zac/src/zac/context.dart';
import 'package:zac/src/zac/shared_value.dart';
import 'package:zac/src/zac/zac_value.dart';

import '../../../helper.dart';
import '../../models.dart';

void main() {
  late Map<String, dynamic> map;
  setUp(() {
    map = <String, dynamic>{
      'converter': FlutterListView.unionValue,
      'key': KeysModel.getValueKey('FINDME'),
      'scrollDirection': {'converter': 'f:1:Axis.horizontal'},
      'shrinkWrap': true,
      'reverse': true,
      'padding': EdgeInsetsModel.geometry_edgeInsetsAll,
      'primary': true,
      'physics': {
        'converter': 'f:1:AlwaysScrollableScrollPhysics',
      },
      // 'addAutomaticKeepAlives': false,
      // 'addRepaintBoundaries': false,
      // 'addSemanticIndexes': false,
      'cacheExtent': 900,

      'children': [
        ChildModel.getSizedBox(key: 'child1'),
        ChildModel.getSizedBox(key: 'child2')
      ],
      'clipBehavior': {
        'converter': 'f:1:Clip.none',
      },
      'restorationId': 'resto_id',
      'keyboardDismissBehavior': {
        'converter': 'f:1:ScrollViewKeyboardDismissBehavior.onDrag',
      },
    };
  });

  testWidgets('FlutterListView() #1', (tester) async {
    await testMap(tester, <String, dynamic>{
      'converter': FlutterListView.unionValue,
      'key': KeysModel.getValueKey('FINDME'),
      'prototypeItem': {
        'converter': 'f:1:SizedBox',
        'height': 300,
      },
      'children': [
        ChildModel.getSizedBox(key: 'child1'),
        ChildModel.getSizedBox(key: 'child2')
      ],
    });
    final findMe = find.byKey(const ValueKey('FINDME'));
    expect(findMe, findsOneWidget);
    expect(find.byKey(const ValueKey('child1'), skipOffstage: false),
        findsOneWidget);
    expect(find.byKey(const ValueKey('child2'), skipOffstage: false),
        findsOneWidget);

    final widget = findMe.evaluate().first.widget;

    expect(
        widget,
        isA<ListView>().having((p0) => p0.prototypeItem,
            'ListView.prototypeItem', isA<SizedBox>()));
  });

  testWidgets('FlutterListView() #2', (tester) async {
    await testMap(tester, <String, dynamic>{
      'converter': FlutterListView.unionValue,
      'key': KeysModel.getValueKey('FINDME'),
      'itemExtent': 300,
      'children': [
        ChildModel.getSizedBox(key: 'child1'),
        ChildModel.getSizedBox(key: 'child2')
      ],
    });

    final findMe = find.byKey(const ValueKey('FINDME'));
    expect(findMe, findsOneWidget);
    expect(find.byKey(const ValueKey('child1')), findsOneWidget);
    expect(find.byKey(const ValueKey('child2')), findsOneWidget);

    final widget = findMe.evaluate().first.widget;

    expect(
        widget,
        isA<ListView>()
            .having((p0) => p0.itemExtent, 'ListView.itemExtent', 300));
  });

  testWidgets('FlutterListView() #3', (tester) async {
    await testMap(tester, map);

    final findMe = find.byKey(const ValueKey('FINDME'));
    expect(findMe, findsOneWidget);

    final widget = findMe.evaluate().first.widget;

    expect(
        widget,
        isA<ListView>()
            .having((p0) => p0.scrollDirection, 'ListView.scrollDirection',
                Axis.horizontal)
            .having((p0) => p0.reverse, 'ListView.reverse', isTrue)
            .having((p0) => p0.primary, 'ListView.primary', isTrue)
            .having((p0) => p0.shrinkWrap, 'ListView.shrinkWrap', isTrue)
            .having((p0) => p0.cacheExtent, 'ListView.cacheExtent', 900)
            .having((p0) => p0.padding, 'ListView.padding',
                EdgeInsetsModel.equalsAll)
            .having((p0) => p0.clipBehavior, 'ListView.clipBehavior', Clip.none)
            .having((p0) => p0.restorationId, 'ListView.restorationId',
                equals('resto_id'))
            .having(
                (p0) => p0.keyboardDismissBehavior,
                'ListView.keyboardDismissBehavior',
                ScrollViewKeyboardDismissBehavior.onDrag)
            .having((p0) => p0.physics, 'ListView.physics',
                isA<AlwaysScrollableScrollPhysics>()));
  });

  testWidgets('FlutterListView() consumes the ScrollController',
      (tester) async {
    late ZacContext zacContext;
    final ctrl = ScrollController();
    await testWithinMaterialApp(
        tester,
        SharedValueProvider(
          childBuilder: (c) {
            zacContext = c;
            return FlutterListView(
              key: FlutterValueKey('LIST_VIEW'),
              controller: FlutterScrollController.consume(family: 'shared'),
            ).buildWidget(zacContext);
          },
          valueBuilder: (ref, zacContext) => ctrl,
          family: 'shared',
          autoCreate: true,
        ));

    final findMe = find.byKey(const ValueKey('LIST_VIEW'));
    expect(findMe, findsOneWidget);

    final widget = findMe.evaluate().first.widget;

    expect(
        widget,
        isA<ListView>()
            .having((p0) => p0.controller, 'ListView.controller', ctrl));
  });
}
