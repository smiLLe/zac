import 'package:zac/src/flutter/widgets/icon.dart';
import 'package:zac/src/zac/context.dart';
import 'package:zac/src/zac/zac_value.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:zac/src/base.dart';
import 'package:zac/src/flutter/dart_ui.dart';
import 'package:zac/src/flutter/foundation.dart';
import 'package:zac/src/flutter/painting.dart';
import 'package:zac/src/flutter/services.dart';

part 'app_bar.freezed.dart';
part 'app_bar.g.dart';

@freezedZacBuilder
@ZacGenerate(order: zacGenerateOrderFlutterWidget)
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
    ZacValueList<FlutterWidget>? actions,
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
          automaticallyImplyLeading?.buildOrNull(zacContext) ?? true,
      title: title?.buildWidget(zacContext),
      actions: actions?.getWidgets(zacContext) ?? const <Widget>[],
      flexibleSpace: flexibleSpace?.buildWidget(zacContext),
      bottom: bottom?.buildWidget(zacContext) as PreferredSizeWidget?,
      elevation: elevation?.buildOrNull(zacContext),
      shadowColor: shadowColor?.build(zacContext),
      shape: shape?.build(zacContext),
      backgroundColor: backgroundColor?.build(zacContext),
      foregroundColor: foregroundColor?.build(zacContext),
      iconTheme: iconTheme?.build(zacContext),
      actionsIconTheme: actionsIconTheme?.build(zacContext),
      primary: primary?.buildOrNull(zacContext) ?? true,
      centerTitle: centerTitle?.buildOrNull(zacContext),
      excludeHeaderSemantics:
          excludeHeaderSemantics?.buildOrNull(zacContext) ?? false,
      titleSpacing: titleSpacing?.buildOrNull(zacContext),
      toolbarOpacity: toolbarOpacity?.buildOrNull(zacContext) ?? 1.0,
      bottomOpacity: bottomOpacity?.buildOrNull(zacContext) ?? 1.0,
      toolbarHeight: toolbarHeight?.buildOrNull(zacContext),
      leadingWidth: leadingWidth?.buildOrNull(zacContext),
      toolbarTextStyle: toolbarTextStyle?.build(zacContext),
      titleTextStyle: titleTextStyle?.build(zacContext),
      systemOverlayStyle: systemOverlayStyle?.build(zacContext),
    );
  }
}
