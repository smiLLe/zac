import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:zac/src/flutter/dart_ui.dart';
import 'package:zac/src/flutter/interface.dart';

import 'package:zac/src/flutter/painting/painting.dart';

part 'widgets.freezed.dart';
part 'widgets.g.dart';

@Freezed(maybeMap: false, maybeWhen: false)
class ZacWidget with _$ZacWidget implements ZacToFlutter<Widget> {
  const ZacWidget._();

  factory ZacWidget.fromJson(Map<String, dynamic> json) =>
      _$ZacWidgetFromJson(json);

  @FreezedUnionValue('zac:widget:container')
  factory ZacWidget.container({
    ZacWidget? child,
    ZacColor? color,
    ZacEdgeInsetsGeometry? margin,
    ZacEdgeInsetsGeometry? padding,
    ZacAlignment? alignment,
    ZacDecoration? decoration,
  }) = _ZacWidgetContainer;

  @FreezedUnionValue('zac:widget:elevatedButton')
  factory ZacWidget.elevatedButton({
    required ZacWidget? child,
  }) = _ZacWidgetElevatedButton;

  @FreezedUnionValue('zac:widget:elevatedButton.icon')
  factory ZacWidget.elevatedButtonIcon({
    required ZacWidget icon,
    required ZacWidget label,
  }) = _ZacWidgetElevatedButtonIcon;

  @FreezedUnionValue('zac:widget:icon')
  factory ZacWidget.icon({
    ZacIconData? icon,
    ZacColor? color,
    String? semanticLabel,
    double? size,
  }) = _ZacWidgetIcon;

  @override
  Widget toFlutter(BuildContext context) {
    return map(
      container: (value) {
        return Container(
          child: value.child?.toFlutter(context),
          color: value.color?.toFlutter(context),
          padding: value.padding?.toFlutter(context),
          margin: value.margin?.toFlutter(context),
          alignment: value.alignment?.toFlutter(context),
          decoration: value.decoration?.toFlutter(context),
        );
      },
      elevatedButton: (value) {
        return ElevatedButton(
          onPressed: () => ZacNotification().dispatch(context),
          child: value.child?.toFlutter(context),
        );
      },
      elevatedButtonIcon: (value) {
        return ElevatedButton.icon(
          onPressed: () => ZacNotification().dispatch(context),
          icon: value.icon.toFlutter(context),
          label: value.label.toFlutter(context),
        );
      },
      icon: (value) {
        return Icon(
          value.icon?.toFlutter(context),
          color: value.color?.toFlutter(context),
          semanticLabel: value.semanticLabel,
          size: value.size,
        );
      },
    );
  }
}

@Freezed(maybeMap: false, maybeWhen: false)
class ZacIconData with _$ZacIconData implements ZacToFlutter<IconData> {
  const ZacIconData._();

  factory ZacIconData.fromJson(Map<String, dynamic> json) =>
      _$ZacIconDataFromJson(json);

  @FreezedUnionValue('zac:widget:iconData')
  factory ZacIconData.base(
    int codePoint, {
    String? fontFamily,
    String? fontPackage,
    bool? matchTextDirection,
  }) = _ZacIconDataBase;

  @override
  IconData toFlutter(BuildContext context) {
    return IconData(
      codePoint,
      fontFamily: fontFamily,
      fontPackage: fontPackage,
      matchTextDirection: matchTextDirection ?? false,
    );
  }
}
