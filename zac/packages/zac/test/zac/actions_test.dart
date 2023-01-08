import 'package:zac/src/flutter/all.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:zac/src/zac/action.dart';
import 'package:zac/src/zac/context.dart';
import 'package:zac/src/zac/shared_value.dart';
import 'package:zac/src/zac/transformers.dart';
import 'package:zac/src/zac/zac_value.dart';

import '../flutter/models.dart';
import '../helper.dart';
import '../helper.mocks.dart';

void main() {
  group('List of Actions', () {
    testWidgets('BuldIn has correct value', (tester) async {
      await testWithContexts(
        tester,
        (getContext, getZacContext) {
          late BuildIn buildIn;
          [
            TestAction((payload, buildContext, zacContext) {
              buildIn = zacContext.buildIn;
            }).build(getContext(), getZacContext())
          ].execute(const ZacActionPayload(), getContext(), getZacContext());

          expect(buildIn, BuildIn.action);
        },
      );
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

            ZacControlFlowAction.ifCond(
              condition: ZacValueList<ZacTransform, List<ZacTransform>>(
                  [ObjectTransformer.equals(other: 'hello')]),
              ifTrue: ZacValueList<ZacAction, List<ZacAction>>(
                  [TestAction(trueCb)]),
              ifFalse: ZacValueList<ZacAction, List<ZacAction>>(
                  [TestAction(falseCb)]),
            ).build(getContext(), getZacContext()).execute(
                ZacActionPayload.param('hello'), getContext(), getZacContext());

            verify(trueCb(
                    argThat(isA<ZacActionPayload>()
                        .having((p0) => p0.params, 'payload params', 'hello')),
                    any,
                    argThat(isA<ZacContext>())))
                .called(1);
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
            ZacControlFlowAction.ifCond(
              condition: ZacValueList<ZacTransform, List<ZacTransform>>(
                  [ObjectTransformer.equals(other: 'world')]),
              ifTrue: ZacValueList<ZacAction, List<ZacAction>>(
                  [TestAction(trueCb)]),
              ifFalse: ZacValueList<ZacAction, List<ZacAction>>(
                  [TestAction(falseCb)]),
            ).build(getContext(), getZacContext()).execute(
                ZacActionPayload.param('hello'), getContext(), getZacContext());

            verify(falseCb(
                    argThat(isA<ZacActionPayload>()
                        .having((p0) => p0.params, 'payload params', 'hello')),
                    any,
                    argThat(isA<ZacContext>())))
                .called(1);
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
          ZacControlFlowAction.ifCond(
            condition: ZacValueList<ZacTransform, List<ZacTransform>>([
              ObjectTransformer.equals(other: 'hello'),
              ObjectTransformer.equals(other: 'THAT IS FALSE'),
              ObjectTransformer.equals(other: 'hello'),
            ]),
            ifTrue:
                ZacValueList<ZacAction, List<ZacAction>>([TestAction(trueCb)]),
            ifFalse:
                ZacValueList<ZacAction, List<ZacAction>>([TestAction(falseCb)]),
          ).build(getContext(), getZacContext()).execute(
              ZacActionPayload.param('hello'), getContext(), getZacContext());

          verify(falseCb(
                  argThat(isA<ZacActionPayload>()
                      .having((p0) => p0.params, 'payload params', 'hello')),
                  any,
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
        await testWithContexts(tester, (getContext, getZacContext) {
          expect(
              () => ZacControlFlowAction.ifCond(
                    condition:
                        ZacValueList<ZacTransform, List<ZacTransform>>([]),
                    ifTrue: ZacValueList<ZacAction, List<ZacAction>>([]),
                  ).build(getContext(), getZacContext()).execute(
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
        await testWithContexts(tester, (getContext, getZacContext) {
          expect(
              () => ZacControlFlowAction.ifCond(
                    condition: ZacValueList<ZacTransform, List<ZacTransform>>(
                        [ObjectTransformer.toString()]),
                    ifTrue: ZacValueList<ZacAction, List<ZacAction>>(
                        [TestAction.noop(<String, dynamic>{})]),
                  ).build(getContext(), getZacContext()).execute(
                      ZacActionPayload.param('hello'),
                      getContext(),
                      getZacContext()),
              throwsA(isA<StateError>().having(
                  (p0) => p0.message,
                  'error message',
                  contains(
                      'It is not possible to execute "z:1:ControlFlowAction.if". The ZacTransform condition did not result in a bool but "hello"'))));
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

      await testZacWidget(
          tester,
          ZacExecuteActionsBuilder.once(
            actions: ZacValueList<ZacAction, List<ZacAction>>(
                [TestAction(executeCb)]),
          ));
      verify(executeCb(
              argThat(isA<ZacActionPayload>()), any, argThat(isZacContext)))
          .called(1);
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
        (child) => SharedValueProviderBuilder.provideInt(
          value: 1,
          family: 'shared',
          child: ZacExecuteActionsBuilder.listen(
            actions: ZacValueList<ZacAction, List<ZacAction>>([TestAction(cb)]),
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
                  any,
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
          'onPressed': [
            {
              'builder': 'f:1:showDialog',
              'child': ChildModel.getSizedBox(key: 'dialog_child')
            },
          ],
        },
      );

      expect(find.byKey(const ValueKey('dialog_child')), findsNothing);

      await tester.tap(find.byKey(const ValueKey('button')));
      await tester.pumpAndSettle();

      expect(find.byKey(const ValueKey('dialog_child')), findsOneWidget);
    });
  });
}
