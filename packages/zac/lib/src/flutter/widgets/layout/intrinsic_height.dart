import 'package:zac/src/zac/interactions.dart';
import 'package:zac/src/zac/any_value.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:zac/src/base.dart';
import 'package:zac/src/flutter/foundation.dart';

part 'intrinsic_height.freezed.dart';
part 'intrinsic_height.g.dart';

@defaultConverterFreezed
class FlutterIntrinsicHeight
    with _$FlutterIntrinsicHeight
    implements ZacWidget {
  const FlutterIntrinsicHeight._();

  static const String unionValue = 'f:1:IntrinsicHeight';

  factory FlutterIntrinsicHeight.fromJson(Map<String, dynamic> json) =>
      _$FlutterIntrinsicHeightFromJson(json);

  @FreezedUnionValue(FlutterIntrinsicHeight.unionValue)
  factory FlutterIntrinsicHeight({
    FlutterKey? key,
    ZacWidget? child,
  }) = _FlutterIntrinsicHeight;

  @override
  IntrinsicHeight buildWidget(
      BuildContext context, WidgetRef ref, ZacInteractionLifetime lifetime) {
    return IntrinsicHeight(
      key: key?.buildKey(context, ref, lifetime),
      child: child?.buildWidget(context, ref, lifetime),
    );
  }
}
