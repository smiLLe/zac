import 'package:zac/src/flutter/widgets/icon.dart';
import 'package:zac/src/zac/interactions.dart';
import 'package:zac/src/zac/zac_values.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zac/src/zac/misc.dart';
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
  AppBar buildWidget(
      BuildContext context, WidgetRef ref, ZacInteractionLifetime lifetime) {
    assert(() {
      final w = bottom?.buildWidget(context, ref, lifetime);
      if (null == w) return true;
      if (w is! PreferredSizeWidget) {
        throw AssertionError(
            'Trying to add an Scaffold.appBar that does not implement PreferredSizeWidget');
      }
      return true;
    }(), '');
    final zacRef = ZacRef.widget(ref);
    return AppBar(
      key: key?.buildKey(context, ref, lifetime),
      leading: leading?.buildWidget(context, ref, lifetime),
      automaticallyImplyLeading:
          automaticallyImplyLeading?.getValue(zacRef) ?? true,
      title: title?.buildWidget(context, ref, lifetime),
      actions: actions?.getValue(context, ref, lifetime) ?? const <Widget>[],
      flexibleSpace: flexibleSpace?.buildWidget(context, ref, lifetime),
      bottom:
          bottom?.buildWidget(context, ref, lifetime) as PreferredSizeWidget?,
      elevation: elevation?.getValue(zacRef),
      shadowColor: shadowColor?.build(context, ref, lifetime),
      shape: shape?.build(context, ref, lifetime),
      backgroundColor: backgroundColor?.build(context, ref, lifetime),
      foregroundColor: foregroundColor?.build(context, ref, lifetime),
      iconTheme: iconTheme?.build(context, ref, lifetime),
      actionsIconTheme: actionsIconTheme?.build(context, ref, lifetime),
      primary: primary?.getValue(zacRef) ?? true,
      centerTitle: centerTitle?.getValue(zacRef),
      excludeHeaderSemantics: excludeHeaderSemantics?.getValue(zacRef) ?? false,
      titleSpacing: titleSpacing?.getValue(zacRef),
      toolbarOpacity: toolbarOpacity?.getValue(zacRef) ?? 1.0,
      bottomOpacity: bottomOpacity?.getValue(zacRef) ?? 1.0,
      toolbarHeight: toolbarHeight?.getValue(zacRef),
      leadingWidth: leadingWidth?.getValue(zacRef),
      toolbarTextStyle: toolbarTextStyle?.build(context, ref, lifetime),
      titleTextStyle: titleTextStyle?.build(context, ref, lifetime),
      systemOverlayStyle: systemOverlayStyle?.build(context, ref, lifetime),
    );
  }
}
