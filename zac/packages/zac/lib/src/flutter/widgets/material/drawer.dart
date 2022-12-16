import 'package:zac/src/flutter/painting.dart';
import 'package:zac/src/zac/context.dart';
import 'package:zac/src/zac/zac_builder.dart';
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
class FlutterDrawer with _$FlutterDrawer implements ZacBuilder<Drawer> {
  const FlutterDrawer._();

  static const String unionValue = 'f:1:Drawer';

  factory FlutterDrawer.fromJson(Map<String, dynamic> json) =>
      _$FlutterDrawerFromJson(json);

  @FreezedUnionValue(FlutterDrawer.unionValue)
  factory FlutterDrawer({
    FlutterKey? key,
    FlutterColor? backgroundColor,
    ZacValue<double?>? elevation,
    FlutterShapeBorder? shape,
    ZacValue<Widget?>? child,
    ZacValue<String?>? semanticLabel,
  }) = _FlutterDrawer;

  Drawer _buildWidget(ZacContext zacContext) {
    return Drawer(
      key: key?.build(zacContext),
      backgroundColor: backgroundColor?.build(zacContext),
      elevation: elevation?.build(zacContext),
      semanticLabel: semanticLabel?.build(zacContext),
      shape: shape?.build(zacContext),
      child: child?.build(zacContext),
    );
  }

  @override
  Drawer build(ZacContext zacContext) {
    return _buildWidget(zacContext);
  }
}
