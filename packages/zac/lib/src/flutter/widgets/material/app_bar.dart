import 'package:zac/src/flutter/widgets/icon.dart';
import 'package:zac/src/zac/any_value.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zac/src/zac/update_context.dart';
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
  AppBar buildWidget(
      BuildContext context, WidgetRef ref, ZacBuildContext zacContext) {
    assert(() {
      final w = bottom?.buildWidget(context, ref, zacContext);
      if (null == w) return true;
      if (w is! PreferredSizeWidget) {
        throw AssertionError(
            'Trying to add an Scaffold.appBar that does not implement PreferredSizeWidget');
      }
      return true;
    }(), '');
    return AppBar(
      key: key?.buildKey(context, ref, zacContext),
      leading: leading?.buildWidget(context, ref, zacContext),
      automaticallyImplyLeading:
          automaticallyImplyLeading?.getValue(zacContext) ?? true,
      title: title?.buildWidget(context, ref, zacContext),
      actions: actions?.getValue(context, ref, zacContext) ?? const <Widget>[],
      flexibleSpace: flexibleSpace?.buildWidget(context, ref, zacContext),
      bottom:
          bottom?.buildWidget(context, ref, zacContext) as PreferredSizeWidget?,
      elevation: elevation?.getValue(zacContext),
      shadowColor: shadowColor?.build(context, ref, zacContext),
      shape: shape?.build(context, ref, zacContext),
      backgroundColor: backgroundColor?.build(context, ref, zacContext),
      foregroundColor: foregroundColor?.build(context, ref, zacContext),
      iconTheme: iconTheme?.build(context, ref, zacContext),
      actionsIconTheme: actionsIconTheme?.build(context, ref, zacContext),
      primary: primary?.getValue(zacContext) ?? true,
      centerTitle: centerTitle?.getValue(zacContext),
      excludeHeaderSemantics:
          excludeHeaderSemantics?.getValue(zacContext) ?? false,
      titleSpacing: titleSpacing?.getValue(zacContext),
      toolbarOpacity: toolbarOpacity?.getValue(zacContext) ?? 1.0,
      bottomOpacity: bottomOpacity?.getValue(zacContext) ?? 1.0,
      toolbarHeight: toolbarHeight?.getValue(zacContext),
      leadingWidth: leadingWidth?.getValue(zacContext),
      toolbarTextStyle: toolbarTextStyle?.build(context, ref, zacContext),
      titleTextStyle: titleTextStyle?.build(context, ref, zacContext),
      systemOverlayStyle: systemOverlayStyle?.build(context, ref, zacContext),
    );
  }
}
