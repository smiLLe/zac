import 'package:zac/src/zac/context.dart';
import 'package:zac/src/zac/zac_build.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:zac/src/base.dart';

part 'drawer.freezed.dart';
part 'drawer.g.dart';

@freezedZacBuilder
class FlutterDrawer with _$FlutterDrawer implements ZacBuilder<Drawer> {
  const FlutterDrawer._();

  static const String unionValue = 'f:1:Drawer';

  factory FlutterDrawer.fromJson(Map<String, dynamic> json) =>
      _$FlutterDrawerFromJson(json);

  @FreezedUnionValue(FlutterDrawer.unionValue)
  factory FlutterDrawer({
    ZacBuilder<Key?>? key,
    ZacBuilder<Color?>? backgroundColor,
    ZacBuilder<double?>? elevation,
    ZacBuilder<ShapeBorder?>? shape,
    ZacBuilder<Widget?>? child,
    ZacBuilder<String?>? semanticLabel,
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
