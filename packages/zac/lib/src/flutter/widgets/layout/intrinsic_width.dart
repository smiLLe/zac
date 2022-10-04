import 'package:zac/src/zac/interactions.dart';
import 'package:zac/src/zac/any_value.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
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
  IntrinsicWidth buildWidget(
      BuildContext context, WidgetRef ref, ZacInteractionLifetime lifetime) {
    return IntrinsicWidth(
      key: key?.buildKey(context, ref, lifetime),
      child: child?.buildWidget(context, ref, lifetime),
    );
  }
}
