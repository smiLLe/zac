import 'package:zac/src/flutter/all.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:zac/src/zac/action.dart';
import 'package:zac/src/zac/context.dart';
import 'package:zac/src/zac/shared_value.dart';
import 'package:zac/src/zac/transformers.dart';

import '../flutter/models.dart';
import '../helper.dart';
import '../helper.mocks.dart';

void main() {
  group('List of Actions', () {
    testWidgets('BuldIn has correct value', (tester) async {
      await testWithContext(
        tester,
        (getContext, getZacContext) {
          late BuildIn buildIn;
          [
            LeakAction(
              (payload, zacContext) {
                buildIn = zacContext.buildIn;
              },
            )
          ].execute(const ZacActionPayload(), getContext(), getZacContext());

          expect(buildIn, BuildIn.action);
        },
      );
    });
  });

  group('Control Flow Actions:', () {
    group('if Action', () {
      testWidgets('will execute Action if condition is true', (tester) async {
        await testWithContext(
          tester,
          (getContext, getZacContext) {
            final trueCb = MockLeakedActionCb();
            final falseCb = MockLeakedActionCb();

            ZacControlFlowAction.ifCond(
              condition:
                  ZacTransformers([ObjectTransformer.equals(other: 'hello')]),
              ifTrue: ZacActions([LeakAction(trueCb)]),
              ifFalse: ZacActions([LeakAction(falseCb)]),
            ).execute(
                ZacActionPayload.param('hello'), getContext(), getZacContext());

            verify(trueCb(
                    argThat(isA<ZacActionPayload>()
                        .having((p0) => p0.params, 'payload params', 'hello')),
                    argThat(isA<ZacContext>())))
                .called(1);
            verifyZeroInteractions(falseCb);
          },
        );
      });

      testWidgets('will execute Action if condition is false', (tester) async {
        await testWithContext(
          tester,
          (getContext, getZacContext) {
            final trueCb = MockLeakedActionCb();
            final falseCb = MockLeakedActionCb();
            ZacControlFlowAction.ifCond(
              condition:
                  ZacTransformers([ObjectTransformer.equals(other: 'world')]),
              ifTrue: ZacActions([LeakAction(trueCb)]),
              ifFalse: ZacActions([LeakAction(falseCb)]),
            ).execute(
                ZacActionPayload.param('hello'), getContext(), getZacContext());

            verify(falseCb(
                    argThat(isA<ZacActionPayload>()
                        .having((p0) => p0.params, 'payload params', 'hello')),
                    argThat(isA<ZacContext>())))
                .called(1);
            verifyZeroInteractions(trueCb);
          },
        );
      });

      testWidgets(
          'condition can be an array and once returned false it will execute ifFalse Actions',
          (tester) async {
        await testWithContext(tester, (getContext, getZacContext) {
          final trueCb = MockLeakedActionCb();
          final falseCb = MockLeakedActionCb();
          ZacControlFlowAction.ifCond(
            condition: ZacTransformers([
              ObjectTransformer.equals(other: 'hello'),
              ObjectTransformer.equals(other: 'THAT IS FALSE'),
              ObjectTransformer.equals(other: 'hello'),
            ]),
            ifTrue: ZacActions([LeakAction(trueCb)]),
            ifFalse: ZacActions([LeakAction(falseCb)]),
          ).execute(
              ZacActionPayload.param('hello'), getContext(), getZacContext());

          verify(falseCb(
                  argThat(isA<ZacActionPayload>()
                      .having((p0) => p0.params, 'payload params', 'hello')),
                  argThat(isA<ZacContext>())))
              .called(1);
          verifyZeroInteractions(trueCb);
        });
        // late ZacContext zacContext;
        // final trueCb = MockLeakedActionCb();
        // final falseCb = MockLeakedActionCb();

        // await testZacWidget(tester, LeakContext(cb: (c) => zacContext = c));
        // ZacControlFlowAction.ifCond(
        //   condition: ZacTransformers([
        //     ObjectTransformer.equals(other: 'hello'),
        //     ObjectTransformer.equals(other: 'THAT IS FALSE'),
        //     ObjectTransformer.equals(other: 'hello'),
        //   ]),
        //   ifTrue: ZacActions([LeakAction(trueCb)]),
        //   ifFalse: ZacActions([LeakAction(falseCb)]),
        // ).execute(ZacActionPayload.param('hello'), zacContext);

        // verify(falseCb(
        //         argThat(isA<ZacActionPayload>()
        //             .having((p0) => p0.params, 'payload params', 'hello')),
        //         argThat(isA<ZacContext>())))
        //     .called(1);
        // verifyZeroInteractions(trueCb);
      });

      testWidgets('will throw an error if payload is empty', (tester) async {
        await testWithContext(tester, (getContext, getZacContext) {
          expect(
              () => ZacControlFlowAction.ifCond(
                    condition: ZacTransformers([]),
                    ifTrue: const ZacActions([]),
                  ).execute(
                      const ZacActionPayload(), getContext(), getZacContext()),
              throwsA(isA<StateError>().having(
                  (p0) => p0.message,
                  'error message',
                  contains(
                      'It is not possible to execute "z:1:ControlFlowAction.if". The ZacActionPayload was empty'))));
        });
      });

      testWidgets('will throw an error if condition is not a bool',
          (tester) async {
        await testWithContext(tester, (getContext, getZacContext) {
          expect(
              () => ZacControlFlowAction.ifCond(
                    condition: ZacTransformers([ObjectTransformer.toString()]),
                    ifTrue: const ZacActions([]),
                  ).execute(ZacActionPayload.param('hello'), getContext(),
                      getZacContext()),
              throwsA(isA<StateError>().having(
                  (p0) => p0.message,
                  'error message',
                  contains(
                      'It is not possible to execute "z:1:ControlFlowAction.if". The ZacTransformers condition did not result in a bool but "hello"'))));
        });
      });
    });
  });

  test('ActionPayload can expose the values as list', () {
    expect(const ZacActionPayload().paramsAsList, <Object?>[]);
    expect(ZacActionPayload.param('foo').paramsAsList, <Object?>['foo']);
    expect(ZacActionPayload.param2('foo', 'bar').paramsAsList,
        <Object?>['foo', 'bar']);
  });

  group('ZacExecuteActionsOnce', () {
    testWidgets('can be converted', (tester) async {
      await testMap(tester, <String, dynamic>{
        'builder': 'z:1:ExecuteActions.once',
        'actions': {
          'builder': 'z:1:Actions',
          'actions': [
            {'builder': 'f:1:showDialog', 'child': ChildModel.getSizedBox()}
          ],
        },
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
      final executeCb = MockLeakedActionCb();

      await testZacWidget(
        tester,
        ZacExecuteActionsBuilder.once(
            actions: LeakAction.createActions(executeCb)),
      );
      verify(executeCb(argThat(isA<ZacActionPayload>()), argThat(isZacContext)))
          .called(1);
      await tester.pump();
      await tester.pump();
      await tester.pump();

      verifyNoMoreInteractions(executeCb);
    });
  });

  group('ZacExecuteActionsListen', () {
    testWidgets('execute interactions', (tester) async {
      final cb = MockLeakedActionCb();
      await testWithContextWithChild(
        tester,
        (child) => SharedValueProviderBuilder.provideInt(
          value: 1,
          family: 'shared',
          child: ZacExecuteActionsBuilder.listen(
            actions: ZacActions([LeakAction(cb)]),
            family: 'shared',
            child: FlutterSizedBox(
              key: FlutterValueKey('child'),
              child: child,
            ),
          ),
        ),
        (getContext, getZacContext) async {
          verifyZeroInteractions(cb);

          SharedValue.update(
              getContext(), getZacContext(), 'shared', (current) => 2);
          await tester.pumpAndSettle();

          verify(cb(
                  argThat(isA<ZacActionPayload>()
                      .having((p0) => p0.params, 'param', [2, 1])),
                  any))
              .called(1);
          verifyNoMoreInteractions(cb);
        },
      );
    });
  });

  group('showDialog', () {
    testWidgets('show a simple Dialog', (tester) async {
      await testMap(
        tester,
        <String, dynamic>{
          'builder': FlutterElevatedButton.unionValue,
          'key': KeysModel.getValueKey('button'),
          'onPressed': {
            'builder': 'z:1:Actions',
            'actions': [
              {
                'builder': 'f:1:showDialog',
                'child': ChildModel.getSizedBox(key: 'dialog_child')
              },
            ],
          }
        },
      );

      expect(find.byKey(const ValueKey('dialog_child')), findsNothing);

      await tester.tap(find.byKey(const ValueKey('button')));
      await tester.pumpAndSettle();

      expect(find.byKey(const ValueKey('dialog_child')), findsOneWidget);
    });
  });
}
