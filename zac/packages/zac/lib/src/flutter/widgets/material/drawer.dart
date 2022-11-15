import 'package:zac/src/flutter/painting.dart';
import 'package:zac/src/zac/context.dart';
import 'package:zac/src/zac/zac_value.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:zac/src/base.dart';
import 'package:zac/src/flutter/dart_ui.dart';
import 'package:zac/src/flutter/foundation.dart';

part 'drawer.freezed.dart';
part 'drawer.g.dart';

@freezedZacBuilder
@ZacGenerate(order: zacGenerateOrderFlutterWidget)
class FlutterDrawer with _$FlutterDrawer implements FlutterWidget {
  const FlutterDrawer._();

  static const String unionValue = 'f:1:Drawer';

  factory FlutterDrawer.fromJson(Map<String, dynamic> json) =>
      _$FlutterDrawerFromJson(json);

  @FreezedUnionValue(FlutterDrawer.unionValue)
  factory FlutterDrawer({
    FlutterKey? key,
    FlutterColor? backgroundColor,
    ZacValue<double>? elevation,
    FlutterShapeBorder? shape,
    FlutterWidget? child,
    ZacValue<String>? semanticLabel,
  }) = _FlutterDrawer;

  @override
  Drawer buildWidget(ZacContext zacContext) {
    return Drawer(
      key: key?.buildKey(zacContext),
      backgroundColor: backgroundColor?.build(zacContext),
      elevation: elevation?.getValue(zacContext),
      semanticLabel: semanticLabel?.getValue(zacContext),
      shape: shape?.build(zacContext),
      child: child?.buildWidget(zacContext),
    );
  }
}
