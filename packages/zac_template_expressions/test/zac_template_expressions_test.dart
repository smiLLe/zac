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
        'converter': converter,
        ...(props ?? <String, dynamic>{}),
      }),
      equals);
  expect(
      fromJson(<String, dynamic>{
        'converter': converter,
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
          'simple': ZacValue<Object>.fromJson(1),
          'shared': ZacValueConsume<Object>.read(family: 'fam'),
        },
      ),
      props: <String, dynamic>{
        'expression': 'expr',
        'context': {
          'simple': 1,
          'shared': {
            'converter': 'z:1:ZacValue.read',
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
            .transform(ZacTransformValue('hello world'), zacContext, null),
        'hello world');

    expect(
        ZacTemplateExpressionsTransformer(
          expression: r'${hello}',
          context: {
            'hello': ZacValue<Object>.fromJson('hello world'),
          },
        ).transform(ZacTransformValue(null), zacContext, null),
        'hello world');

    expect(
        ZacTemplateExpressionsTransformer(
          expression: r'''${payload}''',
        ).transform(ZacTransformValue(null), zacContext,
            ZacActionPayload.param('YEAH')),
        'YEAH');
  });

  testWidgets(
      'Template.process will add StateMachine state and context to Template context',
      (tester) async {
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
    final machine = ZacStateMachine(
      states: {
        'a': ZacStateConfig(
          widget: FlutterSizedBox(
            key: FlutterValueKey('in a'),
          ),
        ),
      },
      state: 'a',
      context: 1,
      send: (event, context) {},
      trySend: (event, context) {},
    );

    expect(
        ZacTransformers([
          ZacTemplateExpressionsTransformer(
            expression: r'''${machine_state}''',
          )
        ]).transform(ZacTransformValue(machine), zacContext, null),
        'a');

    expect(
        ZacTransformers([
          ZacTemplateExpressionsTransformer(
            expression: r'${machine_context}',
          )
        ]).transform(ZacTransformValue(machine), zacContext, null),
        '1');
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

  final void Function(ZacActionPayload payload, ZacContext zacContext) cb;

  @override
  void execute(ZacActionPayload payload, ZacContext zacContext) =>
      cb(payload, zacContext);
}
