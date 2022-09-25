// ignore: depend_on_referenced_packages
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:zac/zac.dart';
import 'package:template_expressions/template_expressions.dart';

part 'zac_template_expressions.freezed.dart';
part 'zac_template_expressions.g.dart';

Map<String, Convert> zacTemplateExpressionsConverter = const {
  ZacTemplateExpressionsTransformer.unionValue:
      ZacTemplateExpressionsTransformer.fromJson,
  ZacTemplateExpressionsSyntax.unionValue:
      ZacTemplateExpressionsSyntax.fromJson,
};

class ZacTemplateExpressionsTransformerError extends ZacTransformError {
  ZacTemplateExpressionsTransformerError(super.message);
}

@defaultConverterFreezed
class ZacTemplateExpressionsTransformer
    with _$ZacTemplateExpressionsTransformer
    implements ZacTransformer {
  const ZacTemplateExpressionsTransformer._();
  static const String unionValue =
      'template_expressions:1:Transformer:Template.process';

  factory ZacTemplateExpressionsTransformer.fromJson(
          Map<String, dynamic> json) =>
      _$ZacTemplateExpressionsTransformerFromJson(json);

  @FreezedUnionValue(ZacTemplateExpressionsTransformer.unionValue)
  factory ZacTemplateExpressionsTransformer({
    required String expression,
    Map<String, ZacObject>? context,
    @Default(ZacTemplateExpressionsSyntax())
        ZacTemplateExpressionsSyntax syntax,
  }) = _ZacTemplateExpressionsTransformer;

  @override
  Object? transform(
      Object? value, ZacBuildContext context, ZacTransformerExtra? extra) {
    return map(
      (obj) {
        final template = Template(
          value: obj.expression,
          syntax: [syntax.map((_) => const StandardExpressionSyntax())],
        );

        final templateContext = obj.context?.map<String, Object?>(
            (key, value) => MapEntry(key, value.getValue(context)));
        return template.process(context: <dynamic, dynamic>{
          'tValue': value,
          if (null != templateContext) ...templateContext,
        });
      },
    );
  }
}

@defaultConverterFreezed
class ZacTemplateExpressionsSyntax with _$ZacTemplateExpressionsSyntax {
  const ZacTemplateExpressionsSyntax._();
  static const String unionValue = 'template_expressions:1:Syntax:Standard';

  factory ZacTemplateExpressionsSyntax.fromJson(Map<String, dynamic> json) =>
      _$ZacTemplateExpressionsSyntaxFromJson(json);

  @FreezedUnionValue(ZacTemplateExpressionsSyntax.unionValue)
  const factory ZacTemplateExpressionsSyntax() =
      _ZacTemplateExpressionsSyntaxStandard;
}
