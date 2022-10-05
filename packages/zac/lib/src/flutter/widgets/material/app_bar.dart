import 'package:zac/src/flutter/widgets/icon.dart';
import 'package:zac/src/zac/origin.dart';
import 'package:zac/src/zac/zac_values.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:zac/src/base.dart';
import 'package:zac/src/flutter/dart_ui.dart';
import 'package:zac/src/flutter/foundation.dart';
import 'package:zac/src/flutter/painting.dart';
import 'package:zac/src/flutter/services.dart';

part 'app_bar.freezed.dart';
part 'app_bar.g.dart';

@defaultConverterFreezed
class FlutterAppBar with _$FlutterAppBar implements FlutterWidget {
  const FlutterAppBar._();

  static const String unionValue = 'f:1:AppBar';

  factory FlutterAppBar.fromJson(Map<String, dynamic> json) =>
      _$FlutterAppBarFromJson(json);

  @FreezedUnionValue(FlutterAppBar.unionValue)
  factory FlutterAppBar({
    FlutterKey? key,
    FlutterWidget? leading,
    ZacBool? automaticallyImplyLeading,
    FlutterWidget? title,
    ListOfZacWidget? actions,
    FlutterWidget? flexibleSpace,
// PreferredSizeWidget
    FlutterWidget? bottom,
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
  AppBar buildWidget(ZacOriginWidgetTree origin) {
    assert(() {
      final w = bottom?.buildWidget(origin);
      if (null == w) return true;
      if (w is! PreferredSizeWidget) {
        throw AssertionError(
            'Trying to add an Scaffold.appBar that does not implement PreferredSizeWidget');
      }
      return true;
    }(), '');

    return AppBar(
      key: key?.buildKey(origin),
      leading: leading?.buildWidget(origin),
      automaticallyImplyLeading:
          automaticallyImplyLeading?.getValue(origin) ?? true,
      title: title?.buildWidget(origin),
      actions: actions?.getValue(origin) ?? const <Widget>[],
      flexibleSpace: flexibleSpace?.buildWidget(origin),
      bottom: bottom?.buildWidget(origin) as PreferredSizeWidget?,
      elevation: elevation?.getValue(origin),
      shadowColor: shadowColor?.build(origin),
      shape: shape?.build(origin),
      backgroundColor: backgroundColor?.build(origin),
      foregroundColor: foregroundColor?.build(origin),
      iconTheme: iconTheme?.build(origin),
      actionsIconTheme: actionsIconTheme?.build(origin),
      primary: primary?.getValue(origin) ?? true,
      centerTitle: centerTitle?.getValue(origin),
      excludeHeaderSemantics: excludeHeaderSemantics?.getValue(origin) ?? false,
      titleSpacing: titleSpacing?.getValue(origin),
      toolbarOpacity: toolbarOpacity?.getValue(origin) ?? 1.0,
      bottomOpacity: bottomOpacity?.getValue(origin) ?? 1.0,
      toolbarHeight: toolbarHeight?.getValue(origin),
      leadingWidth: leadingWidth?.getValue(origin),
      toolbarTextStyle: toolbarTextStyle?.build(origin),
      titleTextStyle: titleTextStyle?.build(origin),
      systemOverlayStyle: systemOverlayStyle?.build(origin),
    );
  }
}
