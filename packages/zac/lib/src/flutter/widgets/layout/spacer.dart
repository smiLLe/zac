import 'package:zac/src/zac/any_value.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zac/src/zac/update_context.dart';
import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:zac/src/base.dart';
import 'package:zac/src/flutter/foundation.dart';

part 'spacer.freezed.dart';
part 'spacer.g.dart';

@defaultConverterFreezed
class FlutterSpacer with _$FlutterSpacer implements ZacWidget {
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
      BuildContext context, WidgetRef ref, ZacBuildContext zacContext) {
    return Spacer(
      key: key?.buildKey(context, ref, zacContext),
      flex: flex?.getValue(zacContext) ?? 1,
    );
  }
}
