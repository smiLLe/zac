import 'package:zac/src/zac/any_value/any_value.dart';

import 'package:zac/src/zac/context/any_widget_context.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:zac/src/base.dart';
import 'package:zac/src/flutter/dart_ui/dart_ui.dart';
import 'package:zac/src/flutter/mixed/keys/keys.dart';

part 'divider.freezed.dart';
part 'divider.g.dart';

@defaultConverterFreezed
class FlutterDivider with _$FlutterDivider implements ZacWidget {
  const FlutterDivider._();

  static const String unionValue = 'f:1:Divider';

  factory FlutterDivider.fromJson(Map<String, dynamic> json) =>
      _$FlutterDividerFromJson(json);

  @FreezedUnionValue(FlutterDivider.unionValue)
  factory FlutterDivider({
    FlutterKey? key,
    ZacDouble? height,
    ZacDouble? thickness,
    ZacDouble? indent,
    ZacDouble? endIndent,
    FlutterColor? color,
  }) = _FlutterDivider;

  @override
  Divider buildWidget(ZacBuildContext context) {
    return Divider(
      key: key?.build(context),
      height: height?.getValue(context),
      thickness: thickness?.getValue(context),
      indent: indent?.getValue(context),
      endIndent: endIndent?.getValue(context),
      color: color?.build(context),
    );
  }
}
