import 'package:flutter/widgets.dart';
import 'package:zac/src/zac/context.dart';
import 'package:zac/src/zac/zac_build.dart';
import 'package:zac/src/zac/zac_value.dart';
import 'package:flutter/services.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:zac/src/flutter/dart_ui.dart';
import 'package:zac/src/base.dart';

part 'services.freezed.dart';
part 'services.g.dart';

@freezedZacBuilder
class FlutterSystemUiOverlayStyle
    with _$FlutterSystemUiOverlayStyle, ZacBuild<SystemUiOverlayStyle> {
  const FlutterSystemUiOverlayStyle._();

  factory FlutterSystemUiOverlayStyle.fromJson(Map<String, dynamic> json) =>
      _$FlutterSystemUiOverlayStyleFromJson(json);

  @FreezedUnionValue('f:1:SystemUiOverlayStyle')
  factory FlutterSystemUiOverlayStyle({
    ZacValue<Color?>? systemNavigationBarColor,
    ZacValue<Color?>? systemNavigationBarDividerColor,
    FlutterBrightness? systemNavigationBarIconBrightness,
    ZacValue<bool?>? systemNavigationBarContrastEnforced,
    ZacValue<Color?>? statusBarColor,
    FlutterBrightness? statusBarBrightness,
    FlutterBrightness? statusBarIconBrightness,
    ZacValue<bool?>? systemStatusBarContrastEnforced,
  }) = _FlutterSystemUiOverlayStyle;

  SystemUiOverlayStyle _build(ZacContext zacContext) {
    return SystemUiOverlayStyle(
      systemNavigationBarColor: systemNavigationBarColor?.build(zacContext),
      systemNavigationBarDividerColor:
          systemNavigationBarDividerColor?.build(zacContext),
      systemNavigationBarIconBrightness:
          systemNavigationBarIconBrightness?.build(zacContext),
      systemNavigationBarContrastEnforced:
          systemNavigationBarContrastEnforced?.build(zacContext),
      statusBarColor: statusBarColor?.build(zacContext),
      statusBarBrightness: statusBarBrightness?.build(zacContext),
      statusBarIconBrightness: statusBarIconBrightness?.build(zacContext),
      systemStatusBarContrastEnforced:
          systemStatusBarContrastEnforced?.build(zacContext),
    );
  }

  @override
  SystemUiOverlayStyle build(ZacContext zacContext) {
    return _build(zacContext);
  }
}

@freezedZacBuilder
class FlutterTextInputType
    with _$FlutterTextInputType, ZacBuild<TextInputType> {
  const FlutterTextInputType._();

  factory FlutterTextInputType.fromJson(Map<String, dynamic> json) =>
      _$FlutterTextInputTypeFromJson(json);

  @FreezedUnionValue('f:1:TextInputType.datetime')
  factory FlutterTextInputType.datetime() = _FlutterTextInputTypedatetime;
  @FreezedUnionValue('f:1:TextInputType.emailAddress')
  factory FlutterTextInputType.emailAddress() =
      _FlutterTextInputTypeemailAddress;
  @FreezedUnionValue('f:1:TextInputType.multiline')
  factory FlutterTextInputType.multiline() = _FlutterTextInputTypemultiline;
  @FreezedUnionValue('f:1:TextInputType.name')
  factory FlutterTextInputType.name() = _FlutterTextInputTypename;
  @FreezedUnionValue('f:1:TextInputType.none')
  factory FlutterTextInputType.none() = _FlutterTextInputTypenone;
  @FreezedUnionValue('f:1:TextInputType.number')
  factory FlutterTextInputType.number() = _FlutterTextInputTypenumber;
  @FreezedUnionValue('f:1:TextInputType.phone')
  factory FlutterTextInputType.phone() = _FlutterTextInputTypephone;
  @FreezedUnionValue('f:1:TextInputType.streetAddress')
  factory FlutterTextInputType.streetAddress() =
      _FlutterTextInputTypestreetAddress;
  @FreezedUnionValue('f:1:TextInputType.text')
  factory FlutterTextInputType.text() = _FlutterTextInputTypetext;
  @FreezedUnionValue('f:1:TextInputType.url')
  factory FlutterTextInputType.url() = _FlutterTextInputTypeurl;
  @FreezedUnionValue('f:1:TextInputType.visiblePassword')
  factory FlutterTextInputType.visiblePassword() =
      _FlutterTextInputTypevisiblePassword;

  TextInputType _build(ZacContext zacContext) {
    return map(
      datetime: (_) => TextInputType.datetime,
      emailAddress: (_) => TextInputType.emailAddress,
      multiline: (_) => TextInputType.multiline,
      name: (_) => TextInputType.name,
      none: (_) => TextInputType.none,
      number: (_) => TextInputType.number,
      phone: (_) => TextInputType.phone,
      streetAddress: (_) => TextInputType.streetAddress,
      text: (_) => TextInputType.text,
      url: (_) => TextInputType.url,
      visiblePassword: (_) => TextInputType.visiblePassword,
    );
  }

  @override
  TextInputType build(ZacContext zacContext) {
    return _build(zacContext);
  }
}

@freezedZacBuilder
class FlutterTextInputAction
    with _$FlutterTextInputAction, ZacBuild<TextInputAction> {
  const FlutterTextInputAction._();

  factory FlutterTextInputAction.fromJson(Map<String, dynamic> json) =>
      _$FlutterTextInputActionFromJson(json);

  @FreezedUnionValue('f:1:TextInputAction.continueAction')
  factory FlutterTextInputAction.continueAction() =
      _FlutterTextInputActioncontinueAction;
  @FreezedUnionValue('f:1:TextInputAction.done')
  factory FlutterTextInputAction.done() = _FlutterTextInputActiondone;
  @FreezedUnionValue('f:1:TextInputAction.emergencyCall')
  factory FlutterTextInputAction.emergencyCall() =
      _FlutterTextInputActionemergencyCall;
  @FreezedUnionValue('f:1:TextInputAction.go')
  factory FlutterTextInputAction.go() = _FlutterTextInputActiongo;
  @FreezedUnionValue('f:1:TextInputAction.join')
  factory FlutterTextInputAction.join() = _FlutterTextInputActionjoin;
  @FreezedUnionValue('f:1:TextInputAction.newline')
  factory FlutterTextInputAction.newline() = _FlutterTextInputActionnewline;
  @FreezedUnionValue('f:1:TextInputAction.next')
  factory FlutterTextInputAction.next() = _FlutterTextInputActionnext;
  @FreezedUnionValue('f:1:TextInputAction.none')
  factory FlutterTextInputAction.none() = _FlutterTextInputActionnone;
  @FreezedUnionValue('f:1:TextInputAction.previous')
  factory FlutterTextInputAction.previous() = _FlutterTextInputActionprevious;
  @FreezedUnionValue('f:1:TextInputAction.route')
  factory FlutterTextInputAction.route() = _FlutterTextInputActionroute;
  @FreezedUnionValue('f:1:TextInputAction.search')
  factory FlutterTextInputAction.search() = _FlutterTextInputActionsearch;
  @FreezedUnionValue('f:1:TextInputAction.send')
  factory FlutterTextInputAction.send() = _FlutterTextInputActionsend;
  @FreezedUnionValue('f:1:TextInputAction.unspecified')
  factory FlutterTextInputAction.unspecified() =
      _FlutterTextInputActionunspecified;

  TextInputAction _build(ZacContext zacContext) {
    return map(
      continueAction: (_) => TextInputAction.continueAction,
      done: (_) => TextInputAction.done,
      emergencyCall: (_) => TextInputAction.emergencyCall,
      go: (_) => TextInputAction.go,
      join: (_) => TextInputAction.join,
      newline: (_) => TextInputAction.newline,
      next: (_) => TextInputAction.next,
      none: (_) => TextInputAction.none,
      previous: (_) => TextInputAction.previous,
      route: (_) => TextInputAction.route,
      search: (_) => TextInputAction.search,
      send: (_) => TextInputAction.send,
      unspecified: (_) => TextInputAction.unspecified,
    );
  }

  @override
  TextInputAction build(ZacContext zacContext) {
    return _build(zacContext);
  }
}

@freezedZacBuilder
class FlutterTextCapitalization
    with _$FlutterTextCapitalization, ZacBuild<TextCapitalization> {
  const FlutterTextCapitalization._();

  factory FlutterTextCapitalization.fromJson(Map<String, dynamic> json) =>
      _$FlutterTextCapitalizationFromJson(json);

  @FreezedUnionValue('f:1:TextCapitalization.characters')
  factory FlutterTextCapitalization.characters() =
      _FlutterTextCapitalizationcharacters;
  @FreezedUnionValue('f:1:TextCapitalization.none')
  factory FlutterTextCapitalization.none() = _FlutterTextCapitalizationnone;
  @FreezedUnionValue('f:1:TextCapitalization.sentences')
  factory FlutterTextCapitalization.sentences() =
      _FlutterTextCapitalizationsentences;
  @FreezedUnionValue('f:1:TextCapitalization.words')
  factory FlutterTextCapitalization.words() = _FlutterTextCapitalizationwords;

  TextCapitalization _build(ZacContext zacContext) {
    return map(
      characters: (_) => TextCapitalization.characters,
      none: (_) => TextCapitalization.none,
      sentences: (_) => TextCapitalization.sentences,
      words: (_) => TextCapitalization.words,
    );
  }

  @override
  TextCapitalization build(ZacContext zacContext) {
    return _build(zacContext);
  }
}

@freezedZacBuilder
class FlutterSmartDashesType
    with _$FlutterSmartDashesType, ZacBuild<SmartDashesType> {
  const FlutterSmartDashesType._();

  factory FlutterSmartDashesType.fromJson(Map<String, dynamic> json) =>
      _$FlutterSmartDashesTypeFromJson(json);

  @FreezedUnionValue('f:1:SmartDashesType.disabled')
  factory FlutterSmartDashesType.disabled() = _FlutterSmartDashesTypedisabled;

  @FreezedUnionValue('f:1:SmartDashesType.enabled')
  factory FlutterSmartDashesType.enabled() = _FlutterSmartDashesTypeenabled;

  SmartDashesType _build(ZacContext zacContext) {
    return map(
      disabled: (_) => SmartDashesType.disabled,
      enabled: (_) => SmartDashesType.enabled,
    );
  }

  @override
  SmartDashesType build(ZacContext zacContext) {
    return _build(zacContext);
  }
}

@freezedZacBuilder
class FlutterSmartQuotesType
    with _$FlutterSmartQuotesType, ZacBuild<SmartQuotesType> {
  const FlutterSmartQuotesType._();

  factory FlutterSmartQuotesType.fromJson(Map<String, dynamic> json) =>
      _$FlutterSmartQuotesTypeFromJson(json);

  @FreezedUnionValue('f:1:SmartQuotesType.disabled')
  factory FlutterSmartQuotesType.disabled() = _FlutterSmartQuotesTypedisabled;

  @FreezedUnionValue('f:1:SmartQuotesType.enabled')
  factory FlutterSmartQuotesType.enabled() = _FlutterSmartQuotesTypeenabled;

  SmartQuotesType _build(ZacContext zacContext) {
    return map(
      disabled: (_) => SmartQuotesType.disabled,
      enabled: (_) => SmartQuotesType.enabled,
    );
  }

  @override
  SmartQuotesType build(ZacContext zacContext) {
    return _build(zacContext);
  }
}
