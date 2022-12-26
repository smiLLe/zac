import 'package:zac/src/flutter/all.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:zac/src/zac/action.dart';
import 'package:zac/src/zac/zac_value.dart';

import '../../../helper.dart';
import '../../../helper.mocks.dart';
import '../../models.dart';
import '../helper.dart';

void main() {
  group('Default Button', () {
    Future<Widget> testButton(WidgetTester tester, String rt) async {
      await testMap(
        tester,
        <String, dynamic>{
          'converter': rt,
          'key': KeysModel.getValueKey('FIND_ME'),
          'child': ChildModel.getSizedBox(key: 'test_sizedBox'),
          'clipBehavior': {'converter': 'f:1:Clip.antiAlias'},
          'onPressed': NoopAction.createActions(),
          'onLongPress': NoopAction.createActions(),
          'autofocus': true,
        },
        converter: {
          NoopAction.unionValue: NoopAction.fromJson,
        },
      );
      expect(find.byKey(const ValueKey('test_sizedBox')), findsOneWidget);

      final findMe = find.byKey(const ValueKey('FIND_ME'));

      return findMe.evaluate().first.widget;
    }

    testWidgets('interaction', (tester) async {
      final onPressedCb = MockLeakedActionCb();
      final onLongPressCb = MockLeakedActionCb();

      final findMe = find.byKey(const ValueKey('FIND_ME'));

      await testZacWidget(
        tester,
        FlutterElevatedButton(
          child: ZacValue<Widget>(FlutterSizedBox()),
          key: FlutterValueKey('FIND_ME').toZacValue(),
          onPressed: LeakAction.createActions(onPressedCb),
          onLongPress: LeakAction.createActions(onLongPressCb),
        ),
      );

      await tester.tap(findMe);
      await tester.pump();
      await tester.longPress(findMe);
      await tester.pump();

      await testZacWidget(
        tester,
        FlutterOutlinedButton(
          child: ZacValue<Widget>(FlutterSizedBox()),
          key: FlutterValueKey('FIND_ME').toZacValue(),
          onPressed: LeakAction.createActions(onPressedCb),
          onLongPress: LeakAction.createActions(onLongPressCb),
        ),
      );

      await tester.tap(findMe);
      await tester.pump();
      await tester.longPress(findMe);
      await tester.pump();

      await testZacWidget(
        tester,
        FlutterTextButton(
          child: ZacValue<Widget>(FlutterSizedBox()),
          key: FlutterValueKey('FIND_ME').toZacValue(),
          onPressed: LeakAction.createActions(onPressedCb),
          onLongPress: LeakAction.createActions(onLongPressCb),
        ),
      );

      await tester.tap(findMe);
      await tester.pump();
      await tester.longPress(findMe);
      await tester.pump();

      verify(onPressedCb(
              argThat(isA<ZacActionPayload>()), argThat(isZacContext)))
          .called(3);
      verify(onLongPressCb(
              argThat(isA<ZacActionPayload>()), argThat(isZacContext)))
          .called(3);
    });

    testWidgets('ElevatedButton()', (tester) async {
      final widget = await testButton(tester, FlutterElevatedButton.unionValue);
      expect(
          widget,
          isA<ElevatedButton>()
              .having((p0) => p0.autofocus, 'OutlinedButton.autofocus', isTrue)
              .having((p0) => p0.clipBehavior, 'ElevatedButton.clipBehavior',
                  Clip.antiAlias));
    });

    testWidgets('OutlinedButton()', (tester) async {
      expect(
          await testButton(tester, FlutterOutlinedButton.unionValue),
          isA<OutlinedButton>()
              .having((p0) => p0.autofocus, 'OutlinedButton.autofocus', isTrue)
              .having((p0) => p0.clipBehavior, 'OutlinedButton.clipBehavior',
                  Clip.antiAlias));
    });

    testWidgets('TextButton()', (tester) async {
      expect(
          await testButton(tester, FlutterTextButton.unionValue),
          isA<TextButton>()
              .having((p0) => p0.autofocus, 'OutlinedButton.autofocus', isTrue)
              .having((p0) => p0.clipBehavior, 'OutlinedButton.clipBehavior',
                  Clip.antiAlias));
    });
  });

  group('Button.icon', () {
    Future<Widget> testButton(WidgetTester tester, String rt) async {
      await testMap(
        tester,
        <String, dynamic>{
          'converter': rt,
          'key': KeysModel.getValueKey('FIND_ME'),
          'icon': ChildModel.getSizedBox(key: 'test_icon'),
          'label': ChildModel.getSizedBox(key: 'test_label'),
          'clipBehavior': {'converter': 'f:1:Clip.antiAlias'},
          'onPressed': NoopAction.createActions(),
          'onLongPress': NoopAction.createActions(),
          'autofocus': true,
        },
        converter: {
          NoopAction.unionValue: NoopAction.fromJson,
        },
      );

      expect(find.byKey(const ValueKey('test_icon')), findsOneWidget);
      expect(find.byKey(const ValueKey('test_label')), findsOneWidget);

      final findMe = find.byKey(const ValueKey('FIND_ME'));

      return findMe.evaluate().first.widget;
    }

    testWidgets('interaction', (tester) async {
      final onPressedCb = MockLeakedActionCb();
      final onLongPressCb = MockLeakedActionCb();

      final findMe = find.byKey(const ValueKey('FIND_ME'));

      await testZacWidget(
        tester,
        FlutterElevatedButton.icon(
          icon: ZacValue<Widget>(FlutterSizedBox()),
          label: ZacValue<Widget>(FlutterSizedBox()),
          key: FlutterValueKey('FIND_ME').toZacValue(),
          onPressed: LeakAction.createActions(onPressedCb),
          onLongPress: LeakAction.createActions(onLongPressCb),
        ),
      );

      await tester.tap(findMe);
      await tester.pump();
      await tester.longPress(findMe);
      await tester.pump();

      await testZacWidget(
        tester,
        FlutterOutlinedButton.icon(
          icon: ZacValue<Widget>(FlutterSizedBox()),
          label: ZacValue<Widget>(FlutterSizedBox()),
          key: FlutterValueKey('FIND_ME').toZacValue(),
          onPressed: LeakAction.createActions(onPressedCb),
          onLongPress: LeakAction.createActions(onLongPressCb),
        ),
      );

      await tester.tap(findMe);
      await tester.pump();
      await tester.longPress(findMe);
      await tester.pump();

      await testZacWidget(
        tester,
        FlutterTextButton.icon(
          icon: ZacValue<Widget>(FlutterSizedBox()),
          label: ZacValue<Widget>(FlutterSizedBox()),
          key: FlutterValueKey('FIND_ME').toZacValue(),
          onPressed: LeakAction.createActions(onPressedCb),
          onLongPress: LeakAction.createActions(onLongPressCb),
        ),
      );

      await tester.tap(findMe);
      await tester.pump();
      await tester.longPress(findMe);
      await tester.pump();

      verify(onPressedCb(
              argThat(isA<ZacActionPayload>()), argThat(isZacContext)))
          .called(3);
      verify(onLongPressCb(
              argThat(isA<ZacActionPayload>()), argThat(isZacContext)))
          .called(3);
    });

    testWidgets('ElevatedButton', (tester) async {
      final widget =
          await testButton(tester, FlutterElevatedButton.unionValueIcon);
      expect(
          widget,
          isA<ElevatedButton>()
              .having((p0) => p0.autofocus, 'OutlinedButton.autofocus', isTrue)
              .having((p0) => p0.clipBehavior, 'ElevatedButton.clipBehavior',
                  Clip.antiAlias));
    });

    testWidgets('OutlinedButton', (tester) async {
      final widget =
          await testButton(tester, FlutterOutlinedButton.unionValueIcon);
      expect(
          widget,
          isA<OutlinedButton>()
              .having((p0) => p0.autofocus, 'OutlinedButton.autofocus', isTrue)
              .having((p0) => p0.clipBehavior, 'ElevatedButton.clipBehavior',
                  Clip.antiAlias));
    });

    testWidgets('TextButton', (tester) async {
      final widget = await testButton(tester, FlutterTextButton.unionValueIcon);
      expect(
          widget,
          isA<TextButton>()
              .having((p0) => p0.autofocus, 'OutlinedButton.autofocus', isTrue)
              .having((p0) => p0.clipBehavior, 'ElevatedButton.clipBehavior',
                  Clip.antiAlias));
    });
  });

  group('ElevatedButton.icon()', () {
    test('properties', () {
      fakeBuild<ElevatedButton>(
        FlutterElevatedButton.fromJson(<String, dynamic>{
          'converter': FlutterElevatedButton.unionValueIcon,
          'key': KeysModel.getValueKey('test_key'),
          'icon': ChildModel.getSizedBox(key: 'test_icon'),
          'label': ChildModel.getSizedBox(key: 'test_label'),
          'clipBehavior': {'converter': 'f:1:Clip.antiAlias'}
        }).build,
        (matcher) => matcher.havingValueKey('test_key').having(
            (p0) => p0.clipBehavior,
            'ElevatedButton.clipBehavior',
            Clip.antiAlias),
      );
    });

    testWidgets('created a label and icon', (tester) async {
      await testMap(tester, <String, dynamic>{
        'converter': 'f:1:ElevatedButton.icon',
        'icon': ChildModel.getSizedBox(key: 'test_icon'),
        'label': ChildModel.getSizedBox(key: 'test_label'),
      });

      expect(find.byKey(const ValueKey('test_icon')), findsOneWidget);
      expect(find.byKey(const ValueKey('test_label')), findsOneWidget);
    });
  });
}
