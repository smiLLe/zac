import 'package:zac/src/zac/interactions.dart';
import 'package:zac/src/zac/any_value.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zac/src/zac/misc.dart';
import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:zac/src/base.dart';
import 'package:zac/src/flutter/foundation.dart';

part 'offstage.freezed.dart';
part 'offstage.g.dart';

@defaultConverterFreezed
class FlutterOffstage with _$FlutterOffstage implements FlutterWidget {
  const FlutterOffstage._();

  static const String unionValue = 'f:1:Offstage';

  factory FlutterOffstage.fromJson(Map<String, dynamic> json) =>
      _$FlutterOffstageFromJson(json);

  @FreezedUnionValue(FlutterOffstage.unionValue)
  factory FlutterOffstage({
    FlutterKey? key,
    ZacBool? offstage,
    FlutterWidget? child,
  }) = _FlutterOffstage;

  @override
  Offstage buildWidget(
      BuildContext context, WidgetRef ref, ZacInteractionLifetime lifetime) {
    final zacRef = ZacRef.widget(ref);
    return Offstage(
      key: key?.buildKey(context, ref, lifetime),
      offstage: offstage?.getValue(zacRef) ?? true,
      child: child?.buildWidget(context, ref, lifetime),
    );
  }
}
