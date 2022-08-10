import 'package:zac/src/zac/any_value.dart';

import 'package:zac/src/zac/update_context.dart';
import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:zac/src/base.dart';
import 'package:zac/src/flutter/foundation.dart';

part 'intrinsic_width.freezed.dart';
part 'intrinsic_width.g.dart';

@defaultConverterFreezed
class FlutterIntrinsicWidth with _$FlutterIntrinsicWidth implements ZacWidget {
  const FlutterIntrinsicWidth._();

  static const String unionValue = 'f:1:IntrinsicWidth';

  factory FlutterIntrinsicWidth.fromJson(Map<String, dynamic> json) =>
      _$FlutterIntrinsicWidthFromJson(json);

  @FreezedUnionValue(FlutterIntrinsicWidth.unionValue)
  factory FlutterIntrinsicWidth({
    FlutterKey? key,
    ZacWidget? child,
  }) = _FlutterIntrinsicWidth;

  @override
  IntrinsicWidth buildWidget(ZacBuildContext context) {
    return IntrinsicWidth(
      key: key?.buildKey(context),
      child: child?.buildWidget(context),
    );
  }
}
