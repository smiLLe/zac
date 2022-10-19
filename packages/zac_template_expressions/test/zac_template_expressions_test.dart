import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:zac/zac.dart';
// ignore: depend_on_referenced_packages
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:zac_template_expressions/zac_template_expressions.dart';

void _expectFromJson<T>({
  required T Function(Map<String, dynamic> json) fromJson,
  required String converter,
  required Object equals,
  Map<String, dynamic>? props,
}) {
  expect(
      ConverterHelper.convertToType<T>(<String, dynamic>{
        '_converter': converter,
        ...(props ?? <String, dynamic>{}),
      }),
      equals);
  expect(
      fromJson(<String, dynamic>{
        '_converter': converter,
        ...(props ?? <String, dynamic>{}),
      }),
      equals);
}

void main() {
  setUp(() {
    allConverters = {
      ...allConverters,
      ...zacTemplateExpressionsConverter,
    };
  });

  test('Convert ZacTemplateExpressionsSyntax', () {
    _expectFromJson<ZacTemplateExpressionsSyntax>(
      fromJson: ZacTemplateExpressionsSyntax.fromJson,
      converter: 'template_expressions:1:Syntax:Standard',
      equals: const ZacTemplateExpressionsSyntax(),
    );
  });

  test('Convert ZacTemplateExpressionsTransformer', () {
    _expectFromJson<ZacTemplateExpressionsTransformer>(
      fromJson: ZacTemplateExpressionsTransformer.fromJson,
      converter: 'template_expressions:1:Transformer:Template.process',
      equals: ZacTemplateExpressionsTransformer(
        expression: 'expr',
        context: {
          'simple': ZacObject(1),
          'shared': ZacObject.consume('fam'),
        },
      ),
      props: <String, dynamic>{
        'expression': 'expr',
        'context': {
          'simple': 1,
          'shared': {
            '_converter': 'z:1:ZacObject.consume',
            'family': 'fam',
          },
        },
      },
    );
  });

  testWidgets('Template.process', (tester) async {
    late ZacContext zacContext;
    await tester.pumpWidget(
      UncontrolledProviderScope(
        container: ProviderContainer(),
        child: MaterialApp(
          home: ZacWidget(
            widget: LeakOrigin(cb: (o) => zacContext = o),
          ),
        ),
      ),
    );

    expect(
        ZacTemplateExpressionsTransformer(expression: r'''${tValue}''')
            .transform(ZacTransformValue('hello world'), origin, ContextBag()),
        'hello world');

    expect(
        ZacTemplateExpressionsTransformer(
          expression: r'''${hello}''',
          context: {
            'hello': ZacObject('hello world'),
          },
        ).transform(ZacTransformValue(null), origin, ContextBag()),
        'hello world');

    expect(
        ZacTemplateExpressionsTransformer(
          expression: r'''${bagValue}''',
        ).transform(ZacTransformValue(null), origin,
            ContextBag()..addAll(<String, dynamic>{'bagValue': 'YEAH'})),
        'YEAH');
  });

  test(
      'Template.process will add StateMachine state and context to Template context',
      () {
    late Object? state;
    late MachineContext context;
    final container = ProviderContainer(
      overrides: [
        StateMachine.provider('machine').overrideWithProvider(
          StateNotifierProvider.autoDispose<StateMachine, CurrentState>(
            (ref) => StateMachine(
              ref: ref,
              context: 'the_context',
              state: 'a',
              nodes: [
                StateNode(
                  state: 'a',
                  actions: ZacActions(
                    [
                      LeakAction(
                        cb: (origin, bag) {
                          state = ZacTransformers([
                            ZacTemplateExpressionsTransformer(
                              expression: r'''${machine_state}''',
                            )
                          ]).transformWithBag(
                              ZacTransformValue(null), origin, bag);

                          context = ZacTransformers([
                            ZacTemplateExpressionsTransformer(
                              expression: r'''${machine_context}''',
                            )
                          ]).transformWithBag(
                              ZacTransformValue(null), origin, bag);
                        },
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        )
      ],
    );

    container.listen(
      StateMachine.provider('machine'),
      (previous, next) {},
    );
    expect(state, 'a');
    expect(context, 'the_context');
  });
}

class LeakOrigin implements FlutterWidget {
  LeakOrigin({
    required this.cb,
    this.child,
  });

  final void Function(ZacContext zacContext) cb;
  final FlutterWidget? child;

  @override
  Widget buildWidget(ZacContext zacContext) {
    cb(zacContext);
    return child?.buildWidget(zacContext) ?? const SizedBox.shrink();
  }
}

class LeakAction implements ZacAction {
  LeakAction({required this.cb});

  final void Function(ZacContext zacContext, ContextBag bag) cb;

  @override
  void execute(ZacContext zacContext, ContextBag bag) => cb(origin, bag);
}
