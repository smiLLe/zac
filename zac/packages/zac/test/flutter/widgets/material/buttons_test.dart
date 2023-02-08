import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:zac/zac.dart';

import '../../../helper.dart';
import '../../../helper.mocks.dart';
import '../../models.dart';
import '../helper.dart';

void main() {
  group('Default Button', () {
    ZacRegistry().register<ZacAction>('test.action', TestAction.noop);
    Future<Widget> testButton(WidgetTester tester, String rt) async {
      await testJSON(
        tester,
        <String, dynamic>{
          'builder': rt,
          'key': KeysModel.getValueKey('FIND_ME'),
          'child': ChildModel.getSizedBox(key: 'test_sizedBox'),
          'clipBehavior': {'builder': 'f:1:Clip.antiAlias'},
          'onPressed': const [
            {'builder': 'test.action'}
          ],
          'onLongPress': const [
            {'builder': 'test.action'}
          ],
          'autofocus': true,
        },
      );
      expect(find.byKey(const ValueKey('test_sizedBox')), findsOneWidget);

      final findMe = find.byKey(const ValueKey('FIND_ME'));

      return findMe.evaluate().first.widget;
    }

    testWidgets('interaction', (tester) async {
      final onPressedCb = MockTestActionExecute();
      final onLongPressCb = MockTestActionExecute();

      final findMe = find.byKey(const ValueKey('FIND_ME'));

      await testWithContextsWraped(
        tester,
        (child) => FlutterElevatedButton(
          child: child,
          key: FlutterValueKey('FIND_ME'),
          onPressed: ZacListOfActions([TestAction(onPressedCb)]),
          onLongPress: ZacListOfActions([TestAction(onLongPressCb)]),
        ),
        (getContext, getZacContext) async {
          await tester.tap(findMe);
          await tester.pump();
          await tester.longPress(findMe);
          await tester.pump();

          await testWithContextsWraped(
            tester,
            (child) => FlutterOutlinedButton(
              child: child,
              key: FlutterValueKey('FIND_ME'),
              onPressed: ZacListOfActions([TestAction(onPressedCb)]),
              onLongPress: ZacListOfActions([TestAction(onLongPressCb)]),
            ),
            (getContext, getZacContext) async {
              await tester.tap(findMe);
              await tester.pump();
              await tester.longPress(findMe);
              await tester.pump();

              await testWithContextsWraped(
                tester,
                (child) => FlutterTextButton(
                  child: child,
                  key: FlutterValueKey('FIND_ME'),
                  onPressed: ZacListOfActions([TestAction(onPressedCb)]),
                  onLongPress: ZacListOfActions([TestAction(onLongPressCb)]),
                ),
                (getContext, getZacContext) async {
                  await tester.tap(findMe);
                  await tester.pump();
                  await tester.longPress(findMe);
                  await tester.pump();

                  verify(onPressedCb(any, argThat(isZacContext))).called(3);
                  verify(onLongPressCb(any, argThat(isZacContext))).called(3);
                },
              );
            },
          );
        },
      );
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
    ZacRegistry().register<ZacAction>('test.action', TestAction.noop);
    Future<Widget> testButton(WidgetTester tester, String rt) async {
      await testJSON(
        tester,
        <String, dynamic>{
          'builder': rt,
          'key': KeysModel.getValueKey('FIND_ME'),
          'icon': ChildModel.getSizedBox(key: 'test_icon'),
          'label': ChildModel.getSizedBox(key: 'test_label'),
          'clipBehavior': {'builder': 'f:1:Clip.antiAlias'},
          'onPressed': const [
            {'builder': 'test.action'}
          ],
          'onLongPress': const [
            {'builder': 'test.action'}
          ],
          'autofocus': true,
        },
      );

      expect(find.byKey(const ValueKey('test_icon')), findsOneWidget);
      expect(find.byKey(const ValueKey('test_label')), findsOneWidget);

      final findMe = find.byKey(const ValueKey('FIND_ME'));

      return findMe.evaluate().first.widget;
    }

    testWidgets('interaction', (tester) async {
      final onPressedCb = MockTestActionExecute();
      final onLongPressCb = MockTestActionExecute();

      await testWidgetBuilder(
        tester,
        FlutterElevatedButton.icon(
          icon: FlutterSizedBox(),
          label: FlutterSizedBox(),
          key: FlutterValueKey('FIND_ME'),
          onPressed: ZacListOfActions([TestAction(onPressedCb)]),
          onLongPress: ZacListOfActions([TestAction(onLongPressCb)]),
        ),
      );
      var findMe = find.byKey(const ValueKey('FIND_ME'));

      await tester.tap(findMe);
      await tester.pump();
      await tester.longPress(findMe);
      await tester.pump();

      await testWidgetBuilder(
        tester,
        FlutterOutlinedButton.icon(
          icon: FlutterSizedBox(),
          label: FlutterSizedBox(),
          key: FlutterValueKey('FIND_ME'),
          onPressed: ZacListOfActions([TestAction(onPressedCb)]),
          onLongPress: ZacListOfActions([TestAction(onLongPressCb)]),
        ),
      );

      findMe = find.byKey(const ValueKey('FIND_ME'));

      await tester.tap(findMe);
      await tester.pump();
      await tester.longPress(findMe);
      await tester.pump();

      await testWidgetBuilder(
        tester,
        FlutterTextButton.icon(
          icon: FlutterSizedBox(),
          label: FlutterSizedBox(),
          key: FlutterValueKey('FIND_ME'),
          onPressed: ZacListOfActions([TestAction(onPressedCb)]),
          onLongPress: ZacListOfActions([TestAction(onLongPressCb)]),
        ),
      );
      findMe = find.byKey(const ValueKey('FIND_ME'));

      await tester.tap(findMe);
      await tester.pump();
      await tester.longPress(findMe);
      await tester.pump();

      verify(onPressedCb(any, argThat(isZacContext))).called(3);
      verify(onLongPressCb(any, argThat(isZacContext))).called(3);
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
    testWidgets('properties', (tester) async {
      await testBuilder<ElevatedButton>(
        tester,
        'f:1:ElevatedButton.icon',
        props: <String, dynamic>{
          'key': KeysModel.getValueKey('test_key'),
          'icon': ChildModel.getSizedBox(key: 'test_icon'),
          'label': ChildModel.getSizedBox(key: 'test_label'),
          'clipBehavior': {'builder': 'f:1:Clip.antiAlias'}
        },
        matcher: (matcher) => matcher.havingValueKey('test_key').having(
            (p0) => p0.clipBehavior,
            'ElevatedButton.clipBehavior',
            Clip.antiAlias),
      );
    });

    testWidgets('created a label and icon', (tester) async {
      await testJSON(tester, <String, dynamic>{
        'builder': 'f:1:ElevatedButton.icon',
        'icon': ChildModel.getSizedBox(key: 'test_icon'),
        'label': ChildModel.getSizedBox(key: 'test_label'),
      });

      expect(find.byKey(const ValueKey('test_icon')), findsOneWidget);
      expect(find.byKey(const ValueKey('test_label')), findsOneWidget);
    });
  });
}
