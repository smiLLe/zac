import 'package:zac/src/flutter/painting.dart';
import 'package:zac/src/zac/origin.dart';
import 'package:zac/src/zac/zac_values.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:zac/src/base.dart';
import 'package:zac/src/flutter/dart_ui.dart';
import 'package:zac/src/flutter/foundation.dart';

part 'drawer.freezed.dart';
part 'drawer.g.dart';

@defaultConverterFreezed
class FlutterDrawer with _$FlutterDrawer implements FlutterWidget {
  const FlutterDrawer._();

  static const String unionValue = 'f:1:Drawer';

  factory FlutterDrawer.fromJson(Map<String, dynamic> json) =>
      _$FlutterDrawerFromJson(json);

  @FreezedUnionValue(FlutterDrawer.unionValue)
  factory FlutterDrawer({
    FlutterKey? key,
    FlutterColor? backgroundColor,
    ZacDouble? elevation,
    FlutterShapeBorder? shape,
    FlutterWidget? child,
    ZacString? semanticLabel,
  }) = _FlutterDrawer;

  @override
  Drawer buildWidget(ZacOriginWidgetTree origin) {
    return Drawer(
      key: key?.buildKey(origin),
      backgroundColor: backgroundColor?.build(origin),
      child: child?.buildWidget(origin),
      elevation: elevation?.getValue(origin),
      semanticLabel: semanticLabel?.getValue(origin),
      shape: shape?.build(origin),
    );
  }
}
