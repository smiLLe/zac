import 'package:zac/src/base.dart';
import 'package:zac/src/flutter/all.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:zac/src/zac/action.dart';
import 'package:zac/src/zac/context.dart';
import 'package:zac/src/zac/shared_state.dart';
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
              condition: ZacListOfTransformers(
                  [ObjectTransformer.equals(other: ZacString('hello'))]),
              ifTrue: ZacListOfActions([TestAction(trueCb)]),
              ifFalse: ZacListOfActions([TestAction(falseCb)]),
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
              condition: ZacListOfTransformers(
                  [ObjectTransformer.equals(other: ZacString('world'))]),
              ifTrue: ZacListOfActions([TestAction(trueCb)]),
              ifFalse: ZacListOfActions([TestAction(falseCb)]),
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
            condition: ZacListOfTransformers([
              ObjectTransformer.equals(other: ZacString('hello')),
              ObjectTransformer.equals(other: ZacString('THAT IS FALSE')),
              ObjectTransformer.equals(other: ZacString('hello')),
            ]),
            ifTrue: ZacListOfActions([TestAction(trueCb)]),
            ifFalse: ZacListOfActions([TestAction(falseCb)]),
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
      });

      testWidgets('will throw an error if payload is empty', (tester) async {
        await testWithContexts(tester, (getContext, getZacContext) {
          expect(
              () => ZacControlFlowAction.ifCond(
                    condition: ZacListOfTransformers([]),
                    ifTrue: ZacListOfActions([]),
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
                    condition:
                        ZacListOfTransformers([ObjectTransformer.toString()]),
                    ifTrue: ZacListOfActions(
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
      await testJSON(tester, <String, dynamic>{
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

      await testWidgetBuilder(
          tester,
          ZacExecuteActionsBuilder.once(
            actions: ZacListOfActions([TestAction(executeCb)]),
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

  group('ZacActionPayloadTransformer', () {
    testWidgets('toList', (tester) async {
      expectInRegistry('z:1:Transformer:ActionPayload.toList',
          ZacActionPayloadTransformer.fromJson);

      await testWithContexts(
        tester,
        (getContext, getZacContext) {
          expect(
              ZacActionPayloadTransformer.toList()
                  .build(getContext(), getZacContext())
                  .transform(ZacTransformValue(const ZacActionPayload()),
                      getContext(), getZacContext(), null),
              <Object>[]);

          expect(
              ZacActionPayloadTransformer.toList()
                  .build(getContext(), getZacContext())
                  .transform(ZacTransformValue(ZacActionPayload.param('foo')),
                      getContext(), getZacContext(), null),
              <Object>['foo']);
        },
      );
    });

    testWidgets('toObject', (tester) async {
      expectInRegistry('z:1:Transformer:ActionPayload.toObject',
          ZacActionPayloadTransformer.fromJson);

      await testWithContexts(
        tester,
        (getContext, getZacContext) {
          expect(
              ZacActionPayloadTransformer.toObject()
                  .build(getContext(), getZacContext())
                  .transform(ZacTransformValue(const ZacActionPayload()),
                      getContext(), getZacContext(), null),
              isNull);

          expect(
              ZacActionPayloadTransformer.toObject()
                  .build(getContext(), getZacContext())
                  .transform(ZacTransformValue(ZacActionPayload.param('foo')),
                      getContext(), getZacContext(), null),
              'foo');

          expect(
              ZacActionPayloadTransformer.toObject()
                  .build(getContext(), getZacContext())
                  .transform(
                      ZacTransformValue(ZacActionPayload.param2('foo', 'bar')),
                      getContext(),
                      getZacContext(),
                      null),
              ['foo', 'bar']);
        },
      );
    });
  });
}
