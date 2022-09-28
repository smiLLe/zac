import 'package:zac/src/flutter/painting.dart';
import 'package:zac/src/zac/any_value.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zac/src/zac/misc.dart';
import 'package:zac/src/zac/update_context.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:zac/src/base.dart';
import 'package:zac/src/flutter/dart_ui.dart';
import 'package:zac/src/flutter/foundation.dart';

part 'drawer.freezed.dart';
part 'drawer.g.dart';

@defaultConverterFreezed
class FlutterDrawer with _$FlutterDrawer implements ZacWidget {
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
    ZacWidget? child,
    ZacString? semanticLabel,
  }) = _FlutterDrawer;

  @override
  Drawer buildWidget(
      BuildContext context, WidgetRef ref, ZacBuildContext zacContext) {
    final zacRef = ZacRef.widget(ref);
    return Drawer(
      key: key?.buildKey(context, ref, zacContext),
      backgroundColor: backgroundColor?.build(context, ref, zacContext),
      child: child?.buildWidget(context, ref, zacContext),
      elevation: elevation?.getValue(zacRef),
      semanticLabel: semanticLabel?.getValue(zacRef),
      shape: shape?.build(context, ref, zacContext),
    );
  }
}
