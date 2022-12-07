import 'package:zac/src/flutter/widgets/icon.dart';
import 'package:zac/src/zac/context.dart';
import 'package:zac/src/zac/zac_builder.dart';
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
    ZacValue<bool>? automaticallyImplyLeading,
    FlutterWidget? title,
    ZacListOfFlutterWidget? actions,
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
    ZacValue<bool>? primary,
    ZacValue<bool>? centerTitle,
    ZacValue<bool>? excludeHeaderSemantics,
    ZacValue<double>? titleSpacing,
    ZacValue<double>? toolbarOpacity,
    ZacValue<double>? bottomOpacity,
    ZacValue<double>? toolbarHeight,
    ZacValue<double>? leadingWidth,
    FlutterTextStyle? toolbarTextStyle,
    FlutterTextStyle? titleTextStyle,
    FlutterSystemUiOverlayStyle? systemOverlayStyle,
  }) = _FlutterAppBar;

  AppBar _buildWidget(ZacContext zacContext) {
    assert(() {
      final w = bottom?.buildOrNull(zacContext);
      if (null == w) return true;
      if (w is! PreferredSizeWidget) {
        throw AssertionError(
            'Trying to add an Scaffold.appBar that does not implement PreferredSizeWidget');
      }
      return true;
    }(), '');

    return AppBar(
      key: key?.buildOrNull(zacContext),
      leading: leading?.buildOrNull(zacContext),
      automaticallyImplyLeading:
          automaticallyImplyLeading?.buildOrNull(zacContext) ?? true,
      title: title?.buildOrNull(zacContext),
      actions: actions?.buildOrNull(zacContext) ?? const <Widget>[],
      flexibleSpace: flexibleSpace?.buildOrNull(zacContext),
      bottom: bottom?.buildOrNull(zacContext) as PreferredSizeWidget?,
      elevation: elevation?.buildOrNull(zacContext),
      shadowColor: shadowColor?.buildOrNull(zacContext),
      shape: shape?.buildOrNull(zacContext),
      backgroundColor: backgroundColor?.buildOrNull(zacContext),
      foregroundColor: foregroundColor?.buildOrNull(zacContext),
      iconTheme: iconTheme?.buildOrNull(zacContext),
      actionsIconTheme: actionsIconTheme?.buildOrNull(zacContext),
      primary: primary?.buildOrNull(zacContext) ?? true,
      centerTitle: centerTitle?.buildOrNull(zacContext),
      excludeHeaderSemantics:
          excludeHeaderSemantics?.buildOrNull(zacContext) ?? false,
      titleSpacing: titleSpacing?.buildOrNull(zacContext),
      toolbarOpacity: toolbarOpacity?.buildOrNull(zacContext) ?? 1.0,
      bottomOpacity: bottomOpacity?.buildOrNull(zacContext) ?? 1.0,
      toolbarHeight: toolbarHeight?.buildOrNull(zacContext),
      leadingWidth: leadingWidth?.buildOrNull(zacContext),
      toolbarTextStyle: toolbarTextStyle?.buildOrNull(zacContext),
      titleTextStyle: titleTextStyle?.buildOrNull(zacContext),
      systemOverlayStyle: systemOverlayStyle?.buildOrNull(zacContext),
    );
  }

  @override
  AppBar build(ZacContext zacContext,
      {ZacBuilderConsume onConsume = const ZacBuilderConsume()}) {
    return _buildWidget(zacContext);
  }

  @override
  AppBar? buildOrNull(ZacContext zacContext,
      {ZacBuilderConsume onConsume = const ZacBuilderConsume()}) {
    return _buildWidget(zacContext);
  }
}
