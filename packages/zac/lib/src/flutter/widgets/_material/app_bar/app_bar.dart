import 'package:zac/src/flutter/widgets/icon/icon.dart';
import 'package:zac/src/zac/any_value/any_value.dart';

import 'package:zac/src/zac/context/widget_context.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:zac/src/base.dart';
import 'package:zac/src/flutter/dart_ui/dart_ui.dart';
import 'package:zac/src/flutter/foundation/foundation.dart';
import 'package:zac/src/flutter/painting/painting.dart';
import 'package:zac/src/flutter/services/services.dart';

part 'app_bar.freezed.dart';
part 'app_bar.g.dart';

@defaultConverterFreezed
class FlutterAppBar with _$FlutterAppBar implements ZacWidget {
  const FlutterAppBar._();

  static const String unionValue = 'f:1:AppBar';

  factory FlutterAppBar.fromJson(Map<String, dynamic> json) =>
      _$FlutterAppBarFromJson(json);

  @FreezedUnionValue(FlutterAppBar.unionValue)
  factory FlutterAppBar({
    FlutterKey? key,
    ZacWidget? leading,
    ZacBool? automaticallyImplyLeading,
    ZacWidget? title,
    ListOfZacWidget? actions,
    ZacWidget? flexibleSpace,
// PreferredSizeWidget
    ZacWidget? bottom,
    ZacDouble? elevation,
    FlutterColor? shadowColor,
    FlutterShapeBorder? shape,
    FlutterColor? backgroundColor,
    FlutterColor? foregroundColor,
    FlutterIconThemeData? iconTheme,
    FlutterIconThemeData? actionsIconTheme,
    ZacBool? primary,
    ZacBool? centerTitle,
    ZacBool? excludeHeaderSemantics,
    ZacDouble? titleSpacing,
    ZacDouble? toolbarOpacity,
    ZacDouble? bottomOpacity,
    ZacDouble? toolbarHeight,
    ZacDouble? leadingWidth,
    FlutterTextStyle? toolbarTextStyle,
    FlutterTextStyle? titleTextStyle,
    FlutterSystemUiOverlayStyle? systemOverlayStyle,
  }) = _FlutterAppBar;

  @override
  AppBar buildWidget(ZacBuildContext context) {
    assert(() {
      final w = bottom?.buildWidget(context);
      if (null == w) return true;
      if (w is! PreferredSizeWidget) {
        throw AssertionError(
            'Trying to add an Scaffold.appBar that does not implement PreferredSizeWidget');
      }
      return true;
    }(), '');
    return AppBar(
      key: key?.build(context),
      leading: leading?.buildWidget(context),
      automaticallyImplyLeading:
          automaticallyImplyLeading?.getValue(context) ?? true,
      title: title?.buildWidget(context),
      actions: actions?.getValue(context) ?? const <Widget>[],
      flexibleSpace: flexibleSpace?.buildWidget(context),
      bottom: bottom?.buildWidget(context) as PreferredSizeWidget?,
      elevation: elevation?.getValue(context),
      shadowColor: shadowColor?.build(context),
      shape: shape?.build(context),
      backgroundColor: backgroundColor?.build(context),
      foregroundColor: foregroundColor?.build(context),
      iconTheme: iconTheme?.build(context),
      actionsIconTheme: actionsIconTheme?.build(context),
      primary: primary?.getValue(context) ?? true,
      centerTitle: centerTitle?.getValue(context),
      excludeHeaderSemantics:
          excludeHeaderSemantics?.getValue(context) ?? false,
      titleSpacing: titleSpacing?.getValue(context),
      toolbarOpacity: toolbarOpacity?.getValue(context) ?? 1.0,
      bottomOpacity: bottomOpacity?.getValue(context) ?? 1.0,
      toolbarHeight: toolbarHeight?.getValue(context),
      leadingWidth: leadingWidth?.getValue(context),
      toolbarTextStyle: toolbarTextStyle?.build(context),
      titleTextStyle: titleTextStyle?.build(context),
      systemOverlayStyle: systemOverlayStyle?.build(context),
    );
  }
}
