// ignore: depend_on_referenced_packages
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:zac/zac.dart';
import 'package:template_expressions/template_expressions.dart';

part 'zac_template_expressions.freezed.dart';
part 'zac_template_expressions.g.dart';

class ZacTemplateExpressionsTransformerError extends ZacTransformError {
  ZacTemplateExpressionsTransformerError(super.message);
}

@freezedZacBuilder
class ZacTemplateExpressionsTransformer
    with _$ZacTemplateExpressionsTransformer
    implements ZacTransformer {
  const ZacTemplateExpressionsTransformer._();

  static const String machineState = 'machine_state';
  static const String machineContext = 'machine_context';

  static const String unionValue =
      'template_expressions:1:Transformer:Template.process';

  factory ZacTemplateExpressionsTransformer.fromJson(
          Map<String, dynamic> json) =>
      _$ZacTemplateExpressionsTransformerFromJson(json);

  @FreezedUnionValue(ZacTemplateExpressionsTransformer.unionValue)
  factory ZacTemplateExpressionsTransformer({
    required String expression,
    ZacValueMap<Object>? context,
    @Default(ZacTemplateExpressionsSyntax())
        ZacTemplateExpressionsSyntax syntax,
  }) = _ZacTemplateExpressionsTransformer;

  @override
  Object? transform(ZacTransformValue transformValue, ZacContext zacContext,
      ZacActionPayload? payload) {
    return map(
      (obj) {
        final template = Template(
          value: obj.expression,
          syntax: [syntax.map((_) => const StandardExpressionSyntax())],
        );

        final templateContext = obj.context?.getValue(
          zacContext,
          prefered: const SharedValueConsumeType.read(),
        );

        return template.process(context: <dynamic, dynamic>{
          'tValue': transformValue.value,
          if (transformValue.value is ZacStateMachine) ...<String, dynamic>{
            'machine_state': (transformValue.value as ZacStateMachine).state,
            'machine_context':
                (transformValue.value as ZacStateMachine).context,
          },
          if (null != payload) ...<String, dynamic>{'payload': payload.params},
          if (null != templateContext) ...templateContext,
        });
      },
    );
  }
}

@freezedZacBuilder
class ZacTemplateExpressionsSyntax with _$ZacTemplateExpressionsSyntax {
  const ZacTemplateExpressionsSyntax._();
  static const String unionValue = 'template_expressions:1:Syntax:Standard';

  factory ZacTemplateExpressionsSyntax.fromJson(Map<String, dynamic> json) =>
      _$ZacTemplateExpressionsSyntaxFromJson(json);

  @FreezedUnionValue(ZacTemplateExpressionsSyntax.unionValue)
  const factory ZacTemplateExpressionsSyntax() =
      _ZacTemplateExpressionsSyntaxStandard;
}
