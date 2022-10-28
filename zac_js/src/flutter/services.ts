import { ZacConverter, ZacConverterType } from "../base";
import { ZacValue } from "../zac/zac_value";
import { Brightness, Color } from "./dart_ui";

export class SystemUiOverlayStyle extends ZacConverter {
    private constructor(data: ZacConverterType) {
        super(data);
    }
    static new(data: {
        systemNavigationBarColor?: Color,
        systemNavigationBarDividerColor?: Color,
        systemNavigationBarIconBrightness?: Brightness,
        systemNavigationBarContrastEnforced?: ZacValue<boolean>,
        statusBarColor?: Color,
        statusBarBrightness?: Brightness,
        statusBarIconBrightness?: Brightness,
        systemStatusBarContrastEnforced?: ZacValue<boolean>
    }) {
        return new SystemUiOverlayStyle({ converter: 'f:1:SystemUiOverlayStyle', ...data })
    }
}
export class TextInputType extends ZacConverter {
    private constructor(data: ZacConverterType) {
        super(data);
    }
    static datetime() {
        return new TextInputType({ converter: 'f:1:TextInputType.datetime' })
    }
    static emailAddress() {
        return new TextInputType({ converter: 'f:1:TextInputType.emailAddress' })
    }
    static multiline() {
        return new TextInputType({ converter: 'f:1:TextInputType.multiline' })
    }
    static name_() {
        return new TextInputType({ converter: 'f:1:TextInputType.name' })
    }
    static none() {
        return new TextInputType({ converter: 'f:1:TextInputType.none' })
    }
    static number() {
        return new TextInputType({ converter: 'f:1:TextInputType.number' })
    }
    static phone() {
        return new TextInputType({ converter: 'f:1:TextInputType.phone' })
    }
    static streetAddress() {
        return new TextInputType({ converter: 'f:1:TextInputType.streetAddress' })
    }
    static text() {
        return new TextInputType({ converter: 'f:1:TextInputType.text' })
    }
    static url() {
        return new TextInputType({ converter: 'f:1:TextInputType.url' })
    }
    static visiblePassword() {
        return new TextInputType({ converter: 'f:1:TextInputType.visiblePassword' })
    }
}
export class TextInputAction extends ZacConverter {
    private constructor(data: ZacConverterType) {
        super(data);
    }
    static continueAction() {
        return new TextInputAction({ converter: 'f:1:TextInputAction.continueAction' })
    }
    static done() {
        return new TextInputAction({ converter: 'f:1:TextInputAction.done' })
    }
    static emergencyCall() {
        return new TextInputAction({ converter: 'f:1:TextInputAction.emergencyCall' })
    }
    static go() {
        return new TextInputAction({ converter: 'f:1:TextInputAction.go' })
    }
    static join() {
        return new TextInputAction({ converter: 'f:1:TextInputAction.join' })
    }
    static newline() {
        return new TextInputAction({ converter: 'f:1:TextInputAction.newline' })
    }
    static next() {
        return new TextInputAction({ converter: 'f:1:TextInputAction.next' })
    }
    static none() {
        return new TextInputAction({ converter: 'f:1:TextInputAction.none' })
    }
    static previous() {
        return new TextInputAction({ converter: 'f:1:TextInputAction.previous' })
    }
    static route() {
        return new TextInputAction({ converter: 'f:1:TextInputAction.route' })
    }
    static search() {
        return new TextInputAction({ converter: 'f:1:TextInputAction.search' })
    }
    static send() {
        return new TextInputAction({ converter: 'f:1:TextInputAction.send' })
    }
    static unspecified() {
        return new TextInputAction({ converter: 'f:1:TextInputAction.unspecified' })
    }
}
export class TextCapitalization extends ZacConverter {
    private constructor(data: ZacConverterType) {
        super(data);
    }
    static characters() {
        return new TextCapitalization({ converter: 'f:1:TextCapitalization.characters' })
    }
    static none() {
        return new TextCapitalization({ converter: 'f:1:TextCapitalization.none' })
    }
    static sentences() {
        return new TextCapitalization({ converter: 'f:1:TextCapitalization.sentences' })
    }
    static words() {
        return new TextCapitalization({ converter: 'f:1:TextCapitalization.words' })
    }
}
export class SmartDashesType extends ZacConverter {
    private constructor(data: ZacConverterType) {
        super(data);
    }
    static disabled() {
        return new SmartDashesType({ converter: 'f:1:SmartDashesType.disabled' })
    }
    static enabled() {
        return new SmartDashesType({ converter: 'f:1:SmartDashesType.enabled' })
    }
}
export class SmartQuotesType extends ZacConverter {
    private constructor(data: ZacConverterType) {
        super(data);
    }
    static disabled() {
        return new SmartQuotesType({ converter: 'f:1:SmartQuotesType.disabled' })
    }
    static enabled() {
        return new SmartQuotesType({ converter: 'f:1:SmartQuotesType.enabled' })
    }
}
export class ScrollViewKeyboardDismissBehavior extends ZacConverter {
    private constructor(data: ZacConverterType) {
        super(data);
    }
    static manual() {
        return new ScrollViewKeyboardDismissBehavior({ converter: 'f:1:ScrollViewKeyboardDismissBehavior.manual' })
    }
    static onDrag() {
        return new ScrollViewKeyboardDismissBehavior({ converter: 'f:1:ScrollViewKeyboardDismissBehavior.onDrag' })
    }
}
