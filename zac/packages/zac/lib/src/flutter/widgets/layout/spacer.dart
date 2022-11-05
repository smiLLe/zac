import 'package:zac/src/zac/context.dart';
import 'package:zac/src/zac/zac_value.dart';
import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:zac/src/base.dart';
import 'package:zac/src/flutter/foundation.dart';

part 'spacer.freezed.dart';
part 'spacer.g.dart';

@defaultConverterFreezed
@TsClass(order: tsOrderFlutterWidget)
class FlutterSpacer with _$FlutterSpacer implements FlutterWidget {
  const FlutterSpacer._();

  static const String unionValue = 'f:1:Spacer';

  factory FlutterSpacer.fromJson(Map<String, dynamic> json) =>
      _$FlutterSpacerFromJson(json);

  @FreezedUnionValue(FlutterSpacer.unionValue)
  factory FlutterSpacer({
    FlutterKey? key,
    ZacValue<int>? flex,
  }) = _FlutterSpacer;

  @override
  Spacer buildWidget(ZacContext zacContext) {
    return Spacer(
      key: key?.buildKey(zacContext),
      flex: flex?.getValue(zacContext) ?? 1,
    );
  }
}
