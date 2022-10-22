import 'package:zac/src/flutter/widgets/icon.dart';
import 'package:zac/src/zac/context.dart';
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
    ZacValue<double>? elevation,
    FlutterColor? shadowColor,
    FlutterShapeBorder? shape,
    FlutterColor? backgroundColor,
    FlutterColor? foregroundColor,
    FlutterIconThemeData? iconTheme,
    FlutterIconThemeData? actionsIconTheme,
    ZacBool? primary,
    ZacBool? centerTitle,
    ZacBool? excludeHeaderSemantics,
    ZacValue<double>? titleSpacing,
    ZacValue<double>? toolbarOpacity,
    ZacValue<double>? bottomOpacity,
    ZacValue<double>? toolbarHeight,
    ZacValue<double>? leadingWidth,
    FlutterTextStyle? toolbarTextStyle,
    FlutterTextStyle? titleTextStyle,
    FlutterSystemUiOverlayStyle? systemOverlayStyle,
  }) = _FlutterAppBar;

  @override
  AppBar buildWidget(ZacContext zacContext) {
    assert(() {
      final w = bottom?.buildWidget(zacContext);
      if (null == w) return true;
      if (w is! PreferredSizeWidget) {
        throw AssertionError(
            'Trying to add an Scaffold.appBar that does not implement PreferredSizeWidget');
      }
      return true;
    }(), '');

    return AppBar(
      key: key?.buildKey(zacContext),
      leading: leading?.buildWidget(zacContext),
      automaticallyImplyLeading:
          automaticallyImplyLeading?.getValue(zacContext) ?? true,
      title: title?.buildWidget(zacContext),
      actions: actions?.getValue(zacContext) ?? const <Widget>[],
      flexibleSpace: flexibleSpace?.buildWidget(zacContext),
      bottom: bottom?.buildWidget(zacContext) as PreferredSizeWidget?,
      elevation: elevation?.getValue(zacContext),
      shadowColor: shadowColor?.build(zacContext),
      shape: shape?.build(zacContext),
      backgroundColor: backgroundColor?.build(zacContext),
      foregroundColor: foregroundColor?.build(zacContext),
      iconTheme: iconTheme?.build(zacContext),
      actionsIconTheme: actionsIconTheme?.build(zacContext),
      primary: primary?.getValue(zacContext) ?? true,
      centerTitle: centerTitle?.getValue(zacContext),
      excludeHeaderSemantics:
          excludeHeaderSemantics?.getValue(zacContext) ?? false,
      titleSpacing: titleSpacing?.getValue(zacContext),
      toolbarOpacity: toolbarOpacity?.getValue(zacContext) ?? 1.0,
      bottomOpacity: bottomOpacity?.getValue(zacContext) ?? 1.0,
      toolbarHeight: toolbarHeight?.getValue(zacContext),
      leadingWidth: leadingWidth?.getValue(zacContext),
      toolbarTextStyle: toolbarTextStyle?.build(zacContext),
      titleTextStyle: titleTextStyle?.build(zacContext),
      systemOverlayStyle: systemOverlayStyle?.build(zacContext),
    );
  }
}
