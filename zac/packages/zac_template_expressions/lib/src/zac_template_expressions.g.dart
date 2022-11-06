// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'zac_template_expressions.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ZacTemplateExpressionsTransformer
    _$$_ZacTemplateExpressionsTransformerFromJson(Map<String, dynamic> json) =>
        _$_ZacTemplateExpressionsTransformer(
          expression: json['expression'] as String,
          context: (json['context'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(k, ZacValue<Object>.fromJson(e as Object)),
          ),
          syntax: json['syntax'] == null
              ? const ZacTemplateExpressionsSyntax()
              : ZacTemplateExpressionsSyntax.fromJson(
                  json['syntax'] as Map<String, dynamic>),
        );

_$_ZacTemplateExpressionsSyntaxStandard
    _$$_ZacTemplateExpressionsSyntaxStandardFromJson(
            Map<String, dynamic> json) =>
        _$_ZacTemplateExpressionsSyntaxStandard();
