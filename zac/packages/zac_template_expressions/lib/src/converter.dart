import 'package:zac_template_expressions/src/zac_template_expressions.dart';

Map<String, Object Function(Map<String, dynamic> data)>
    zacTemplateExpressionConverter = const {
  'template_expressions:1:Syntax:Standard':
      ZacTemplateExpressionsSyntax.fromJson,
  'template_expressions:1:Transformer:Template.process':
      ZacTemplateExpressionsTransformer.fromJson
};
