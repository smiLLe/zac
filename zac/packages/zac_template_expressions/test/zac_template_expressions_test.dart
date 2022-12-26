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
        'builder': converter,
        ...(props ?? <String, dynamic>{}),
      }),
      equals);
  expect(
      fromJson(<String, dynamic>{
        'builder': converter,
        ...(props ?? <String, dynamic>{}),
      }),
      equals);
}

void main() {
  setUp(() {
    allBuilder = {
      ...allBuilder,
      ...zacTemplateExpressionConverter,
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
        context: ZacValueMap<Object>(data: {
          'simple': 1,
          'shared': ZacObject.consume(family: 'fam'),
        }),
      ),
      props: <String, dynamic>{
        'expression': 'expr',
        'context': {
          'builder': 'z:1:ZacValueMap',
          'data': {
            'simple': 1,
            'shared': {
              'builder': 'z:1:ZacValue.consume',
              'family': 'fam',
            },
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
            data: LeakOrigin(cb: (o) => zacContext = o),
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
          context: ZacValueMap<Object>.fromJson({
            'builder': 'z:1:ZacValueMap',
            'data': {
              'hello': 'hello world',
            },
          }),
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
            data: LeakOrigin(cb: (o) => zacContext = o),
          ),
        ),
      ),
    );
    final machine = ZacStateMachine(
      states: {
        'a': ZacStateConfig(
          widget: ZacFlutterWidget(
            value: FlutterSizedBox(
              key: FlutterValueKey('in a'),
            ),
          ),
        ),
      },
      state: 'a',
      context: 1,
      send: (event, context) {},
      trySend: (event, context) {},
      isActive: () => true,
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

  Widget buildWidget(ZacContext zacContext) {
    cb(zacContext);
    return child?._buildWidget(zacContext) ?? const SizedBox.shrink();
  }
}

class LeakAction implements ZacAction {
  LeakAction({required this.cb});

  final void Function(ZacActionPayload payload, ZacContext zacContext) cb;

  @override
  void execute(ZacActionPayload payload, ZacContext zacContext) =>
      cb(payload, zacContext);
}
