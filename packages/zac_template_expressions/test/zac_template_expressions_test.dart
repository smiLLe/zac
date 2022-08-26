import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:zac/zac.dart';
// ignore: depend_on_referenced_packages
import 'package:flutter_riverpod/flutter_riverpod.dart';
// ignore: depend_on_referenced_packages
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:zac_template_expressions/zac_template_expressions.dart';

part 'zac_template_expressions_test.freezed.dart';

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

  test('Syntax', () {
    _expectFromJson<ZacTemplateExpressionsSyntax>(
      fromJson: ZacTemplateExpressionsSyntax.fromJson,
      converter: 'template_expressions:1:Syntax:Standard',
      equals: const ZacTemplateExpressionsSyntax(),
    );
  });

  testWidgets('Template.process', (tester) async {
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

    late ZacBuildContext context;
    await tester.pumpWidget(
      UncontrolledProviderScope(
        container: ProviderContainer(),
        child: MaterialApp(
          home: ZacWidgetBuilder(
            zacWidget: LeakContext(cb: (c) => context = c),
          ),
        ),
      ),
    );

    expect(
        ZacTemplateExpressionsTransformer(expression: r'''${tValue}''')
            .transform('hello world',
                ZacSharedValueInteractionType.consume(context: context)),
        'hello world');

    expect(
        ZacTemplateExpressionsTransformer(
          expression: r'''${hello}''',
          context: {
            'hello': ZacObject('hello world'),
          },
        ).transform(
            null, ZacSharedValueInteractionType.consume(context: context)),
        'hello world');

    expect(
        () => ZacTemplateExpressionsTransformer(
              expression: '',
              context: {
                'will': ZacObject('throw'),
              },
            ).transform('hello world', TestSharedValueInteractionType()),
        throwsA(isA<ZacTemplateExpressionsTransformerError>()));
  });
}

@nonConverterFreezed
class LeakContext with _$LeakContext implements ZacWidget {
  LeakContext._();

  factory LeakContext({
    required void Function(ZacBuildContext context) cb,
    ZacWidget? child,
  }) = _LeakContext;

  @override
  Widget buildWidget(ZacBuildContext context) {
    cb(context);
    return child?.buildWidget(context) ?? const SizedBox.shrink();
  }
}

class TestSharedValueInteractionType extends SharedValueInteractionType {}
