import 'package:zac/src/zac/any_value.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zac/src/zac/update_context.dart';
import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:zac/src/base.dart';
import 'package:zac/src/flutter/foundation.dart';

part 'offstage.freezed.dart';
part 'offstage.g.dart';

@defaultConverterFreezed
class FlutterOffstage with _$FlutterOffstage implements ZacWidget {
  const FlutterOffstage._();

  static const String unionValue = 'f:1:Offstage';

  factory FlutterOffstage.fromJson(Map<String, dynamic> json) =>
      _$FlutterOffstageFromJson(json);

  @FreezedUnionValue(FlutterOffstage.unionValue)
  factory FlutterOffstage({
    FlutterKey? key,
    ZacBool? offstage,
    ZacWidget? child,
  }) = _FlutterOffstage;

  @override
  Offstage buildWidget(
      BuildContext context, WidgetRef ref, ZacBuildContext zacContext) {
    return Offstage(
      key: key?.buildKey(context, ref, zacContext),
      offstage: offstage?.getValue(zacContext) ?? true,
      child: child?.buildWidget(context, ref, zacContext),
    );
  }
}
