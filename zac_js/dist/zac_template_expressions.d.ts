import { ValidTypes, ZacTransformer } from "./base";
import { ZacValueRead } from "./zac/zac_value";
export declare class ZacTemplateExpressionsTransformer extends ZacTransformer {
    static process(data: {
        expression: string;
        context?: {
            [key: string]: ZacValueRead<ValidTypes>;
        };
        syntax?: ZacTemplateExpressionsSyntax;
    }): ZacTemplateExpressionsTransformer;
}
export declare class ZacTemplateExpressionsSyntax extends ZacTransformer {
    static standard(): ZacTemplateExpressionsSyntax;
}
