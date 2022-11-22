import 'package:zac/src/zac/context.dart';
import 'package:zac/src/zac/zac_value.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:zac/src/base.dart';
import 'package:zac/src/flutter/dart_ui.dart';
import 'package:zac/src/flutter/foundation.dart';

part 'divider.freezed.dart';
part 'divider.g.dart';

@freezedZacBuilder
@ZacGenerate(order: zacGenerateOrderFlutterWidget)
class FlutterDivider with _$FlutterDivider implements FlutterWidget {
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
  Divider buildWidget(ZacContext zacContext) {
    return Divider(
      key: key?.buildKey(zacContext),
      height: height?.getValueOrNull(zacContext),
      thickness: thickness?.getValueOrNull(zacContext),
      indent: indent?.getValueOrNull(zacContext),
      endIndent: endIndent?.getValueOrNull(zacContext),
      color: color?.build(zacContext),
    );
  }
}
