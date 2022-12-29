import 'package:flutter/services.dart';
import 'package:zac/src/zac/context.dart';
import 'package:zac/src/zac/zac_builder.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:zac/src/base.dart';

part 'app_bar.freezed.dart';
part 'app_bar.g.dart';

@freezedZacBuilder
class FlutterAppBar with _$FlutterAppBar implements ZacBuilder<AppBar> {
  const FlutterAppBar._();

  static const String unionValue = 'f:1:AppBar';

  factory FlutterAppBar.fromJson(Map<String, dynamic> json) =>
      _$FlutterAppBarFromJson(json);

  @FreezedUnionValue(FlutterAppBar.unionValue)
  factory FlutterAppBar({
    ZacBuilder<Key?>? key,
    ZacBuilder<Widget?>? leading,
    ZacBuilder<bool?>? automaticallyImplyLeading,
    ZacBuilder<Widget?>? title,
    ZacListBuilder<Widget, List<Widget>?>? actions,
    ZacBuilder<Widget?>? flexibleSpace,
// PreferredSizeWidget
    ZacBuilder<Widget?>? bottom,
    ZacBuilder<double?>? elevation,
    ZacBuilder<Color?>? shadowColor,
    ZacBuilder<ShapeBorder?>? shape,
    ZacBuilder<Color?>? backgroundColor,
    ZacBuilder<Color?>? foregroundColor,
    ZacBuilder<IconThemeData?>? iconTheme,
    ZacBuilder<IconThemeData?>? actionsIconTheme,
    ZacBuilder<bool?>? primary,
    ZacBuilder<bool?>? centerTitle,
    ZacBuilder<bool?>? excludeHeaderSemantics,
    ZacBuilder<double?>? titleSpacing,
    ZacBuilder<double?>? toolbarOpacity,
    ZacBuilder<double?>? bottomOpacity,
    ZacBuilder<double?>? toolbarHeight,
    ZacBuilder<double?>? leadingWidth,
    ZacBuilder<TextStyle?>? toolbarTextStyle,
    ZacBuilder<TextStyle?>? titleTextStyle,
    ZacBuilder<SystemUiOverlayStyle?>? systemOverlayStyle,
  }) = _FlutterAppBar;

  AppBar _buildWidget(ZacContext zacContext) {
    assert(() {
      final w = bottom?.build(zacContext);
      if (null == w) return true;
      if (w is! PreferredSizeWidget) {
        throw AssertionError(
            'Trying to add an Scaffold.appBar that does not implement PreferredSizeWidget');
      }
      return true;
    }(), '');

    return AppBar(
      key: key?.build(zacContext),
      leading: leading?.build(zacContext),
      automaticallyImplyLeading:
          automaticallyImplyLeading?.build(zacContext) ?? true,
      title: title?.build(zacContext),
      actions: actions?.build(zacContext) ?? const <Widget>[],
      flexibleSpace: flexibleSpace?.build(zacContext),
      bottom: bottom?.build(zacContext) as PreferredSizeWidget?,
      elevation: elevation?.build(zacContext),
      shadowColor: shadowColor?.build(zacContext),
      shape: shape?.build(zacContext),
      backgroundColor: backgroundColor?.build(zacContext),
      foregroundColor: foregroundColor?.build(zacContext),
      iconTheme: iconTheme?.build(zacContext),
      actionsIconTheme: actionsIconTheme?.build(zacContext),
      primary: primary?.build(zacContext) ?? true,
      centerTitle: centerTitle?.build(zacContext),
      excludeHeaderSemantics:
          excludeHeaderSemantics?.build(zacContext) ?? false,
      titleSpacing: titleSpacing?.build(zacContext),
      toolbarOpacity: toolbarOpacity?.build(zacContext) ?? 1.0,
      bottomOpacity: bottomOpacity?.build(zacContext) ?? 1.0,
      toolbarHeight: toolbarHeight?.build(zacContext),
      leadingWidth: leadingWidth?.build(zacContext),
      toolbarTextStyle: toolbarTextStyle?.build(zacContext),
      titleTextStyle: titleTextStyle?.build(zacContext),
      systemOverlayStyle: systemOverlayStyle?.build(zacContext),
    );
  }

  @override
  AppBar build(ZacContext zacContext) {
    return _buildWidget(zacContext);
  }
}
