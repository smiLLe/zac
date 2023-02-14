import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:zac/src/zac/action.dart';
import 'package:zac/src/zac/context.dart';
import 'package:zac/src/zac/registry.dart';
import 'package:zac/src/zac/state.dart';
import 'package:zac/src/zac/transformers.dart';
import 'package:zac/src/zac/zac_value.dart';

import '../flutter/models.dart';
import '../helper.dart';
import '../helper.mocks.dart';

void main() {
  test('In Registry', () {
    expectInRegistry('z:1:Action:If', ZacControlFlowAction.fromJson);
    expectInRegistry(
        'z:1:ExecuteActionsOnce', ZacExecuteActionsBuilder.fromJson);
  });

  group('List of Actions:', () {
    testWidgets(
        'Allow to pass arguments in execute and share them through state',
        (tester) async {
      final a1 = expectAsync1((p0) => expect(p0, 1));
      final a2 = expectAsync1((p0) => expect(p0, 2));

      ZacRegistry().register(
        'test:widget',
        (map) => TestWidget(
          (context, zacContext) {
            return ElevatedButton(
              key: const ValueKey('BUTTON'),
              onPressed: () {
                [
                  ZacAction(
                    (context, zacContext) {
                      a1(ZacStateConsume.consumeValue(
                        context: context,
                        zacContext: zacContext,
                        family: 'actionArg.1',
                      ));

                      a2(ZacStateConsume.consumeValue(
                        context: context,
                        zacContext: zacContext,
                        family: 'actionArg.2',
                      ));
                    },
                  )
                ].callbackTwoParams(context, zacContext)(1, 2);
              },
              child: const SizedBox(),
            );
          },
        ),
      );

      await testJSON(tester, <String, dynamic>{
        'builder': 'test:widget',
      });
      await tester.tap(find.byKey(const ValueKey('BUTTON')));

      ZacRegistry().remove('test:widget');
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
                condition: ZacListOfTransformers(
                    [TestTransform((context, zacContext) => true)]),
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
                condition: ZacListOfTransformers([
                  ObjectTransformer.equals(
                    object: ZacTransformValue<Object?>.current(),
                    other: ZacString('world'),
                  )
                ]),
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
                ObjectTransformer.equals(
                  object: ZacTransformValue<Object?>.current(),
                  other: ZacString('hello'),
                ),
                ObjectTransformer.equals(
                  object: ZacTransformValue<Object?>.current(),
                  other: ZacString('THAT IS FALSE'),
                ),
                ObjectTransformer.equals(
                  object: ZacTransformValue<Object?>.current(),
                  other: ZacString('hello'),
                ),
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
                      condition: ZacListOfTransformers([
                        ObjectTransformer.toString(
                          ZacTransformValue<Object?>.current(),
                        )
                      ]),
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
}
