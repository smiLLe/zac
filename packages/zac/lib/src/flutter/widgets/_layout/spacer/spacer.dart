import 'package:zac/src/zac/any_value/any_value.dart';

import 'package:zac/src/zac/context/widget_context.dart';
import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:zac/src/base.dart';
import 'package:zac/src/flutter/foundation/foundation.dart';

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
  Spacer buildWidget(ZacBuildContext context) {
    return Spacer(
      key: key?.buildKey(context),
      flex: flex?.getValue(context) ?? 1,
    );
  }
}
