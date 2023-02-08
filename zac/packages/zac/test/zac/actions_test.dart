import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:zac/src/base.dart';
import 'package:zac/src/flutter/all.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:zac/src/zac/action.dart';
import 'package:zac/src/zac/build.dart';
import 'package:zac/src/zac/context.dart';
import 'package:zac/src/zac/registry.dart';
import 'package:zac/src/zac/shared_state.dart';
import 'package:zac/src/zac/transformers.dart';
import 'package:zac/src/zac/zac_value.dart';

import '../flutter/models.dart';
import '../helper.dart';
import '../helper.mocks.dart';

void main() {
  test('In Registry', () {
    expectInRegistry('z:1:CaptureActionArgs', CaptureActionArgs.fromJson);
    expectInRegistry('z:1:Action:If', ZacControlFlowAction.fromJson);
    expectInRegistry(['z:1:ExecuteActionsOnce', 'z:1:ExecuteActionsOnChange'],
        ZacExecuteActionsBuilder.fromJson);
  });

  group('List of Actions', () {
    testWidgets('BuldIn has correct value', (tester) async {
      await testWithContexts(
        tester,
        (getContext, getZacContext) {
          late BuildIn buildIn;
          [
            TestAction((buildContext, zacContext) {
              buildIn = zacContext.buildIn;
            }).build(getContext(), getZacContext())
          ].callack(getContext(), getZacContext())();

          expect(buildIn, BuildIn.action);
        },
      );
    });
  });

  group('Args', () {
    testWidgets('can be captured by using ZacBuild', (tester) async {
      await tester.pumpWidget(ProviderScope(
        child: ZacBuildWidget(data: FlutterSizedBox()),
      ));
      expect(find.byType(CaptureActionArgsWidget), findsOneWidget);

      await tester.pumpWidget(const SizedBox());

      await tester.pumpWidget(const ProviderScope(
        child: ZacBuildIsolatedWidget.fromBuilderMap(
            map: <String, dynamic>{'builder': 'f:1:SizedBox'}),
      ));
      await pumpUntilFound(tester, find.byType(CaptureActionArgsWidget));
      expect(find.byType(CaptureActionArgsWidget), findsOneWidget);
    });

    testWidgets('will be captured and are available through shared state',
        (tester) async {
      ZacRegistry().register<ZacAction>(
          'test:action',
          (map) => TestAction(
                (context, zacContext) {},
              ));
      final a1 = expectAsync1((p0) => expect(p0, 1));
      final a2 = expectAsync1((p0) => expect(p0, 2));
      final a3 = expectAsync1((p0) => expect(p0, Never));
      await testWithContextsWraped(
          tester, (child) => CaptureActionArgs(child: child),
          (getContext, getZacContext) {
        [
          TestAction(
            (context, zacContext) {
              a1(SharedState.consume(
                context: context,
                zacContext: zacContext,
                consume: const SharedStateConsumeType.read(),
                family: 'actionArg.1',
              ));

              a2(SharedState.consume(
                context: context,
                zacContext: zacContext,
                consume: const SharedStateConsumeType.read(),
                family: 'actionArg.2',
              ));

              a3(SharedState.consume(
                context: context,
                zacContext: zacContext,
                consume: const SharedStateConsumeType.read(),
                family: 'actionArg.3',
              ));
            },
          ).build(getContext(), getZacContext())
        ].callbackTwoParams(getContext(), getZacContext())(1, 2);

        expect(
            SharedState.consume(
              context: getContext(),
              zacContext: getZacContext(),
              consume: const SharedStateConsumeType.read(),
              family: 'actionArg.1',
            ),
            Never);

        expect(
            SharedState.consume(
              context: getContext(),
              zacContext: getZacContext(),
              consume: const SharedStateConsumeType.read(),
              family: 'actionArg.2',
            ),
            Never);

        expect(
            SharedState.consume(
              context: getContext(),
              zacContext: getZacContext(),
              consume: const SharedStateConsumeType.read(),
              family: 'actionArg.3',
            ),
            Never);
      });
    });
  });

  group('Control Flow Actions:', () {
    group('if Action', () {
      testWidgets('will execute Action if condition is true', (tester) async {
        await testWithContexts(
          tester,
          (getContext, getZacContext) {
            final trueCb = MockTestActionExecute();
            final falseCb = MockTestActionExecute();

            [
              ZacControlFlowAction.ifCond(
                conditionValue: ZacString('hello'),
                condition: ZacListOfTransformers([
                  TestTransform((transformValue, context, zacContext) => true)
                ]),
                ifTrue: ZacListOfActions([TestAction(trueCb)]),
                ifFalse: ZacListOfActions([TestAction(falseCb)]),
              ).build(getContext(), getZacContext())
            ].callack(getContext(), getZacContext())();

            verify(trueCb(any, argThat(isA<ZacContext>()))).called(1);
            verifyZeroInteractions(falseCb);
          },
        );
      });

      testWidgets('will execute Action if condition is false', (tester) async {
        await testWithContexts(
          tester,
          (getContext, getZacContext) {
            final trueCb = MockTestActionExecute();
            final falseCb = MockTestActionExecute();
            [
              ZacControlFlowAction.ifCond(
                conditionValue: ZacString('hello'),
                condition: ZacListOfTransformers(
                    [ObjectTransformer.equals(other: ZacString('world'))]),
                ifTrue: ZacListOfActions([TestAction(trueCb)]),
                ifFalse: ZacListOfActions([TestAction(falseCb)]),
              ).build(getContext(), getZacContext())
            ].callack(getContext(), getZacContext())();

            verify(falseCb(any, argThat(isA<ZacContext>()))).called(1);
            verifyZeroInteractions(trueCb);
          },
        );
      });

      testWidgets(
          'condition can be an array and once returned false it will execute ifFalse Actions',
          (tester) async {
        await testWithContexts(tester, (getContext, getZacContext) {
          final trueCb = MockTestActionExecute();
          final falseCb = MockTestActionExecute();
          [
            ZacControlFlowAction.ifCond(
              conditionValue: ZacString('hello'),
              condition: ZacListOfTransformers([
                ObjectTransformer.equals(other: ZacString('hello')),
                ObjectTransformer.equals(other: ZacString('THAT IS FALSE')),
                ObjectTransformer.equals(other: ZacString('hello')),
              ]),
              ifTrue: ZacListOfActions([TestAction(trueCb)]),
              ifFalse: ZacListOfActions([TestAction(falseCb)]),
            ).build(getContext(), getZacContext())
          ].callack(getContext(), getZacContext())();

          verify(falseCb(any, argThat(isA<ZacContext>()))).called(1);
          verifyZeroInteractions(trueCb);
        });
      });

      testWidgets('will throw an error if condition is not a bool',
          (tester) async {
        await testWithContexts(tester, (getContext, getZacContext) {
          expect(
              () => [
                    ZacControlFlowAction.ifCond(
                      conditionValue: ZacString('hello'),
                      condition:
                          ZacListOfTransformers([ObjectTransformer.toString()]),
                      ifTrue: ZacListOfActions(
                          [TestAction.noop(<String, dynamic>{})]),
                    ).build(getContext(), getZacContext())
                  ].callack(getContext(), getZacContext())(),
              throwsA(isA<StateError>().having(
                  (p0) => p0.message,
                  'error message',
                  contains(
                      'It is not possible to execute "z:1:Action:If". The ZacTransform condition did not result in a bool but "hello"'))));
        });
      });
    });
  });
  group('ZacExecuteActionsOnce', () {
    testWidgets('can be converted', (tester) async {
      await testJSON(tester, <String, dynamic>{
        'builder': 'z:1:ExecuteActionsOnce',
        'actions': [
          {'builder': 'f:1:showDialog', 'child': ChildModel.getSizedBox()}
        ],
        'child': {
          'builder': 'f:1:SizedBox',
          'key': KeysModel.getValueKey('child')
        }
      });
      expect(find.byKey(const ValueKey('child')), findsNothing);
      await tester.pumpAndSettle();
      expect(find.byKey(const ValueKey('child')), findsOneWidget);
    });

    testWidgets('will execute interactions', (tester) async {
      final executeCb = MockTestActionExecute();

      await testWidgetBuilder(
          tester,
          ZacExecuteActionsBuilder.once(
            actions: ZacListOfActions([TestAction(executeCb)]),
          ));
      verify(executeCb(any, argThat(isZacContext))).called(1);
      await tester.pump();
      await tester.pump();
      await tester.pump();

      verifyNoMoreInteractions(executeCb);
    });
  });

  group('ZacExecuteActionsListen', () {
    testWidgets('execute interactions', (tester) async {
      final cb = MockTestActionExecute();
      await testWithContextsWraped(
        tester,
        (child) => ZacSharedStateProvider(
          states: {'shared': ZacSharedStateProvide.value(1)},
          child: ZacExecuteActionsBuilder.listen(
            actions: ZacListOfActions([TestAction(cb)]),
            family: 'shared',
            child: FlutterSizedBox(
              key: FlutterValueKey('child'),
              child: child,
            ),
          ),
        ),
        (getContext, getZacContext) async {
          verifyZeroInteractions(cb);

          getContext()
              .widgetRef
              .read(SharedState.provider('shared'))
              .update((_) => 2);

          await tester.pumpAndSettle();

          verify(cb(any, any)).called(1);
          verifyNoMoreInteractions(cb);
        },
      );
    });
  });
}
