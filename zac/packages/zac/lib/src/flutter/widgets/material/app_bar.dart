import 'package:flutter/services.dart';
import 'package:zac/src/flutter/widgets/icon.dart';
import 'package:zac/src/zac/context.dart';
import 'package:zac/src/zac/zac_build.dart';
import 'package:zac/src/zac/zac_value.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:zac/src/base.dart';
import 'package:zac/src/flutter/dart_ui.dart';
import 'package:zac/src/flutter/painting.dart';
import 'package:zac/src/flutter/services.dart';

part 'app_bar.freezed.dart';
part 'app_bar.g.dart';

@freezedZacBuilder
class FlutterAppBar with _$FlutterAppBar implements ZacBuild<AppBar> {
  const FlutterAppBar._();

  static const String unionValue = 'f:1:AppBar';

  factory FlutterAppBar.fromJson(Map<String, dynamic> json) =>
      _$FlutterAppBarFromJson(json);

  @FreezedUnionValue(FlutterAppBar.unionValue)
  factory FlutterAppBar({
    ZacValue<Key?>? key,
    ZacValue<Widget?>? leading,
    ZacValue<bool?>? automaticallyImplyLeading,
    ZacValue<Widget?>? title,
    ZacValueList<Widget, List<Widget>?>? actions,
    ZacValue<Widget?>? flexibleSpace,
// PreferredSizeWidget
    ZacValue<Widget?>? bottom,
    ZacValue<double?>? elevation,
    ZacValue<Color?>? shadowColor,
    ZacValue<ShapeBorder?>? shape,
    ZacValue<Color?>? backgroundColor,
    ZacValue<Color?>? foregroundColor,
    ZacValue<IconThemeData?>? iconTheme,
    ZacValue<IconThemeData?>? actionsIconTheme,
    ZacValue<bool?>? primary,
    ZacValue<bool?>? centerTitle,
    ZacValue<bool?>? excludeHeaderSemantics,
    ZacValue<double?>? titleSpacing,
    ZacValue<double?>? toolbarOpacity,
    ZacValue<double?>? bottomOpacity,
    ZacValue<double?>? toolbarHeight,
    ZacValue<double?>? leadingWidth,
    ZacValue<TextStyle?>? toolbarTextStyle,
    ZacValue<TextStyle?>? titleTextStyle,
    ZacValue<SystemUiOverlayStyle?>? systemOverlayStyle,
  }) = _FlutterAppBar;

  AppBar _buildWidget(ZacContext zacContext) {
    assert(() {
      final w = bottom?.getValue(zacContext);
      if (null == w) return true;
      if (w is! PreferredSizeWidget) {
        throw AssertionError(
            'Trying to add an Scaffold.appBar that does not implement PreferredSizeWidget');
      }
      return true;
    }(), '');

    return AppBar(
      key: key?.getValue(zacContext),
      leading: leading?.getValue(zacContext),
      automaticallyImplyLeading:
          automaticallyImplyLeading?.getValue(zacContext) ?? true,
      title: title?.getValue(zacContext),
      actions: actions?.build(zacContext) ?? const <Widget>[],
      flexibleSpace: flexibleSpace?.getValue(zacContext),
      bottom: bottom?.getValue(zacContext) as PreferredSizeWidget?,
      elevation: elevation?.getValue(zacContext),
      shadowColor: shadowColor?.getValue(zacContext),
      shape: shape?.getValue(zacContext),
      backgroundColor: backgroundColor?.getValue(zacContext),
      foregroundColor: foregroundColor?.getValue(zacContext),
      iconTheme: iconTheme?.getValue(zacContext),
      actionsIconTheme: actionsIconTheme?.getValue(zacContext),
      primary: primary?.getValue(zacContext) ?? true,
      centerTitle: centerTitle?.getValue(zacContext),
      excludeHeaderSemantics:
          excludeHeaderSemantics?.getValue(zacContext) ?? false,
      titleSpacing: titleSpacing?.getValue(zacContext),
      toolbarOpacity: toolbarOpacity?.getValue(zacContext) ?? 1.0,
      bottomOpacity: bottomOpacity?.getValue(zacContext) ?? 1.0,
      toolbarHeight: toolbarHeight?.getValue(zacContext),
      leadingWidth: leadingWidth?.getValue(zacContext),
      toolbarTextStyle: toolbarTextStyle?.getValue(zacContext),
      titleTextStyle: titleTextStyle?.getValue(zacContext),
      systemOverlayStyle: systemOverlayStyle?.getValue(zacContext),
    );
  }

  @override
  AppBar build(ZacContext zacContext) {
    return _buildWidget(zacContext);
  }
}
