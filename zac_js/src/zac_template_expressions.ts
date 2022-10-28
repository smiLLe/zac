import { ValidTypes, ZacTransformer } from "./base";
import { ZacValueRead } from "./zac/zac_value";

export class ZacTemplateExpressionsTransformer extends ZacTransformer {
    static process(data: {
        expression: string,
        context?: { [key: string]: ZacValueRead<ValidTypes> },
        syntax?:
        ZacTemplateExpressionsSyntax,
    }) {
        return new ZacTemplateExpressionsTransformer({ converter: 'template_expressions:1:Transformer:Template.process', ...data })
    }
}
export class ZacTemplateExpressionsSyntax extends ZacTransformer {
    static standard() {
        return new ZacTemplateExpressionsSyntax({ converter: 'template_expressions:1:Syntax:Standard' })
    }
}