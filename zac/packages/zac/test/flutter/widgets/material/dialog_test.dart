import 'package:zac/src/zac/registry.dart';
import 'package:zac/src/flutter/all.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:zac/src/zac/action.dart';
import 'package:zac/src/zac/zac_value.dart';

import '../../../helper.dart';
import '../../../helper.mocks.dart';
import '../../models.dart';

void main() {
  testWidgets('Dialog', (tester) async {
    await testMap(tester, <String, dynamic>{
      'builder': FlutterDialogs.unionValueDialog,
      'key': KeysModel.getValueKey('FIND_ME'),
      'child': ChildModel.getSizedBox(key: 'test_child'),
      'alignment': AlignmentModel.geometry_alignment,
      'backgroundColor': ColorModel.json,
      'clipBehavior': {
        'builder': 'f:1:Clip.hardEdge',
      },
      'insetPadding': EdgeInsetsModel.geometry_edgeInsetsAll,
      'elevation': 42,
      'shape': BorderModel.shape_box_borderAll,
    });

    final findMe = find.byKey(const ValueKey('FIND_ME'));

    expect(findMe, findsOneWidget);
    expect(find.byKey(const ValueKey('test_child')), findsOneWidget);

    final widget = findMe.evaluate().first.widget;

    expect(
        widget,
        isA<Dialog>()
            .having(
                (p0) => p0.alignment, 'Dialog.alignment', AlignmentModel.equals)
            .having((p0) => p0.backgroundColor, 'Dialog.backgroundColor',
                ColorModel.equals)
            .having((p0) => p0.insetPadding, 'Dialog.insetPadding',
                EdgeInsetsModel.equalsAll)
            .having((p0) => p0.elevation, 'Dialog.elevation', 42)
            .having((p0) => p0.shape, 'Dialog.shape',
                BorderModel.equals_shape_box_borderAll)
            .having(
                (p0) => p0.clipBehavior, 'Dialog.clipBehavior', Clip.hardEdge));
  });

  testWidgets('AlertDialog', (tester) async {
    await testMap(tester, <String, dynamic>{
      'builder': FlutterDialogs.unionValueAlertDialog,
      'key': KeysModel.getValueKey('FIND_ME'),
      'title': ChildModel.getSizedBox(key: 'title_child'),
      'content': ChildModel.getSizedBox(key: 'content_child'),
      'actions': [
        ChildModel.getSizedBox(key: 'action1_child'),
        ChildModel.getSizedBox(key: 'action2_child')
      ],
      'actionsAlignment': {
        'builder': 'f:1:MainAxisAlignment.spaceAround',
      },
      'actionsOverflowButtonSpacing': 11,
      'actionsOverflowDirection': {
        'builder': 'f:1:VerticalDirection.up',
      },
      'actionsPadding': EdgeInsetsModel.geometry_edgeInsetsAll,
      'alignment': AlignmentModel.geometry_alignment,
      'backgroundColor': ColorModel.json,
      'clipBehavior': {
        'builder': 'f:1:Clip.hardEdge',
      },
      'contentPadding': EdgeInsetsModel.geometry_edgeInsetsAll,
      'insetPadding': EdgeInsetsModel.geometry_edgeInsetsAll,
      'elevation': 42,
      'shape': BorderModel.shape_box_borderAll,
      'contentTextStyle': TextModel.textStyle,
      'titlePadding': EdgeInsetsModel.geometry_edgeInsetsAll,
      'titleTextStyle': TextModel.textStyle,
    });

    final findMe = find.byKey(const ValueKey('FIND_ME'));

    expect(findMe, findsOneWidget);
    expect(find.byKey(const ValueKey('title_child')), findsOneWidget);
    expect(find.byKey(const ValueKey('content_child')), findsOneWidget);
    expect(find.byKey(const ValueKey('action1_child')), findsOneWidget);
    expect(find.byKey(const ValueKey('action2_child')), findsOneWidget);

    final widget = findMe.evaluate().first.widget;

    expect(
        widget,
        isA<AlertDialog>()
            .having((p0) => p0.actionsAlignment, 'AlertDialog.actionsAlignment',
                MainAxisAlignment.spaceAround)
            .having((p0) => p0.actionsOverflowButtonSpacing,
                'AlertDialog.actionsOverflowButtonSpacing', 11)
            .having((p0) => p0.actionsPadding, 'AlertDialog.actionsPadding',
                EdgeInsetsModel.equalsAll)
            .having((p0) => p0.actionsOverflowDirection,
                'AlertDialog.actionsOverflowDirection', VerticalDirection.up)
            .having((p0) => p0.alignment, 'AlertDialog.alignment',
                AlignmentModel.equals)
            .having((p0) => p0.backgroundColor, 'AlertDialog.backgroundColor',
                ColorModel.equals)
            .having((p0) => p0.insetPadding, 'AlertDialog.insetPadding',
                EdgeInsetsModel.equalsAll)
            .having((p0) => p0.elevation, 'AlertDialog.elevation', 42)
            .having((p0) => p0.shape, 'AlertDialog.shape',
                BorderModel.equals_shape_box_borderAll)
            .having((p0) => p0.clipBehavior, 'AlertDialog.clipBehavior',
                Clip.hardEdge)
            .having((p0) => p0.contentPadding, 'AlertDialog.contentPadding',
                EdgeInsetsModel.equalsAll)
            .having((p0) => p0.contentTextStyle, 'AlertDialog.contentTextStyle',
                TextModel.equalsTextStyle)
            .having((p0) => p0.titlePadding, 'AlertDialog.titlePadding',
                EdgeInsetsModel.equalsAll)
            .having((p0) => p0.titleTextStyle, 'AlertDialog.titleTextStyle',
                TextModel.equalsTextStyle));
  });

  testWidgets('SimpleDialog', (tester) async {
    await testMap(tester, <String, dynamic>{
      'builder': FlutterDialogs.unionValueSimpleDialog,
      'key': KeysModel.getValueKey('FIND_ME'),
      'title': ChildModel.getSizedBox(key: 'title_child'),
      'children': [
        ChildModel.getSizedBox(key: 'child1'),
        ChildModel.getSizedBox(key: 'child2')
      ],
      'alignment': AlignmentModel.geometry_alignment,
      'backgroundColor': ColorModel.json,
      'clipBehavior': {
        'builder': 'f:1:Clip.hardEdge',
      },
      'contentPadding': EdgeInsetsModel.geometry_edgeInsetsAll,
      'insetPadding': EdgeInsetsModel.geometry_edgeInsetsAll,
      'elevation': 42,
      'shape': BorderModel.shape_box_borderAll,
      'titlePadding': EdgeInsetsModel.geometry_edgeInsetsAll,
      'titleTextStyle': TextModel.textStyle,
    });

    final findMe = find.byKey(const ValueKey('FIND_ME'));

    expect(findMe, findsOneWidget);
    expect(find.byKey(const ValueKey('title_child')), findsOneWidget);
    expect(find.byKey(const ValueKey('child1')), findsOneWidget);
    expect(find.byKey(const ValueKey('child2')), findsOneWidget);

    final widget = findMe.evaluate().first.widget;

    expect(
        widget,
        isA<SimpleDialog>()
            .having((p0) => p0.alignment, 'SimpleDialog.alignment',
                AlignmentModel.equals)
            .having((p0) => p0.backgroundColor, 'SimpleDialog.backgroundColor',
                ColorModel.equals)
            .having((p0) => p0.insetPadding, 'SimpleDialog.insetPadding',
                EdgeInsetsModel.equalsAll)
            .having((p0) => p0.elevation, 'SimpleDialog.elevation', 42)
            .having((p0) => p0.shape, 'SimpleDialog.shape',
                BorderModel.equals_shape_box_borderAll)
            .having((p0) => p0.clipBehavior, 'SimpleDialog.clipBehavior',
                Clip.hardEdge)
            .having((p0) => p0.contentPadding, 'SimpleDialog.contentPadding',
                EdgeInsetsModel.equalsAll)
            .having((p0) => p0.titlePadding, 'SimpleDialog.titlePadding',
                EdgeInsetsModel.equalsAll)
            .having((p0) => p0.titleTextStyle, 'SimpleDialog.titleTextStyle',
                TextModel.equalsTextStyle));
  });

  group('SimpleDialogOption', () {
    testWidgets('SimpleDialogOption*', (tester) async {
      ZacRegistry().register<ZacAction>('test.action', TestAction.noop);
      await testMap(
        tester,
        <String, dynamic>{
          'builder': FlutterMaterial.unionValue,
          'child': {
            'builder': FlutterDialogs.unionValueSimpleDialogOption,
            'key': KeysModel.getValueKey('FIND_ME'),
            'child': ChildModel.getSizedBox(key: 'child1'),
            'padding': EdgeInsetsModel.geometry_edgeInsetsAll,
            'onPressed': const [
              {'builder': 'test.action'}
            ],
          }
        },
      );

      final findMe = find.byKey(const ValueKey('FIND_ME'));

      expect(findMe, findsOneWidget);
      expect(find.byKey(const ValueKey('child1')), findsOneWidget);

      final widget = findMe.evaluate().first.widget;

      expect(
          widget,
          isA<SimpleDialogOption>().having((p0) => p0.padding,
              'SimpleDialogOption.padding', EdgeInsetsModel.equalsAll));
    });

    testWidgets('interaction', (tester) async {
      final cb = MockTestExecute();
      await testZacWidget(
          tester,
          FlutterMaterial(
              child: FlutterDialogs.simpleDialogOption(
            key: FlutterValueKey('FIND_ME'),
            child: FlutterSizedBox(key: FlutterValueKey('child1')),
            onPressed:
                ZacValueList<ZacAction, List<ZacAction>>([TestAction(cb)]),
          )));

      final findMe = find.byKey(const ValueKey('FIND_ME'));

      await tester.tap(findMe);

      verify(cb(argThat(isA<ZacActionPayload>()), any, argThat(isZacContext)))
          .called(1);
    });
  });
}
