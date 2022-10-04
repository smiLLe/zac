import 'package:zac/src/zac/interactions.dart';
import 'package:zac/src/zac/zac_values.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zac/src/zac/misc.dart';
import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:zac/src/base.dart';
import 'package:zac/src/flutter/foundation.dart';

part 'spacer.freezed.dart';
part 'spacer.g.dart';

@defaultConverterFreezed
class FlutterSpacer with _$FlutterSpacer implements FlutterWidget {
  const FlutterSpacer._();

  static const String unionValue = 'f:1:Spacer';

  factory FlutterSpacer.fromJson(Map<String, dynamic> json) =>
      _$FlutterSpacerFromJson(json);

  @FreezedUnionValue(FlutterSpacer.unionValue)
  factory FlutterSpacer({
    FlutterKey? key,
    ZacInt? flex,
  }) = _FlutterSpacer;

  @override
  Spacer buildWidget(
      BuildContext context, WidgetRef ref, ZacInteractionLifetime lifetime) {
    final zacRef = ZacRef.widget(ref);
    return Spacer(
      key: key?.buildKey(context, ref, lifetime),
      flex: flex?.getValue(zacRef) ?? 1,
    );
  }
}
