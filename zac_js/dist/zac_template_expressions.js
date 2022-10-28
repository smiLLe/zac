import { ZacTransformer } from "./base";
export class ZacTemplateExpressionsTransformer extends ZacTransformer {
    static process(data) {
        return new ZacTemplateExpressionsTransformer(Object.assign({ converter: 'template_expressions:1:Transformer:Template.process' }, data));
    }
}
export class ZacTemplateExpressionsSyntax extends ZacTransformer {
    static standard() {
        return new ZacTemplateExpressionsSyntax({ converter: 'template_expressions:1:Syntax:Standard' });
    }
}
