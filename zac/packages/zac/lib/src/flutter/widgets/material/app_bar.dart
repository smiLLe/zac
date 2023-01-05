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

  AppBar _buildWidget(BuildContext context, ZacContext zacContext) {
    assert(() {
      final w = bottom?.build(context, zacContext);
      if (null == w) return true;
      if (w is! PreferredSizeWidget) {
        throw AssertionError(
            'Trying to add an Scaffold.appBar that does not implement PreferredSizeWidget');
      }
      return true;
    }(), '');

    return AppBar(
      key: key?.build(context, zacContext),
      leading: leading?.build(context, zacContext),
      automaticallyImplyLeading:
          automaticallyImplyLeading?.build(context, zacContext) ?? true,
      title: title?.build(context, zacContext),
      actions: actions?.build(context, zacContext) ?? const <Widget>[],
      flexibleSpace: flexibleSpace?.build(context, zacContext),
      bottom: bottom?.build(context, zacContext) as PreferredSizeWidget?,
      elevation: elevation?.build(context, zacContext),
      shadowColor: shadowColor?.build(context, zacContext),
      shape: shape?.build(context, zacContext),
      backgroundColor: backgroundColor?.build(context, zacContext),
      foregroundColor: foregroundColor?.build(context, zacContext),
      iconTheme: iconTheme?.build(context, zacContext),
      actionsIconTheme: actionsIconTheme?.build(context, zacContext),
      primary: primary?.build(context, zacContext) ?? true,
      centerTitle: centerTitle?.build(context, zacContext),
      excludeHeaderSemantics:
          excludeHeaderSemantics?.build(context, zacContext) ?? false,
      titleSpacing: titleSpacing?.build(context, zacContext),
      toolbarOpacity: toolbarOpacity?.build(context, zacContext) ?? 1.0,
      bottomOpacity: bottomOpacity?.build(context, zacContext) ?? 1.0,
      toolbarHeight: toolbarHeight?.build(context, zacContext),
      leadingWidth: leadingWidth?.build(context, zacContext),
      toolbarTextStyle: toolbarTextStyle?.build(context, zacContext),
      titleTextStyle: titleTextStyle?.build(context, zacContext),
      systemOverlayStyle: systemOverlayStyle?.build(context, zacContext),
    );
  }

  @override
  AppBar build(BuildContext context, ZacContext zacContext) {
    return _buildWidget(context, zacContext);
  }
}
