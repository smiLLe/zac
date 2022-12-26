import 'package:zac/src/zac/context.dart';
import 'package:zac/src/zac/zac_builder.dart';
import 'package:zac/src/zac/zac_value.dart';
import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:zac/src/base.dart';

part 'spacer.freezed.dart';
part 'spacer.g.dart';

@freezedZacBuilder
@ZacGenerate(order: zacGenerateOrderFlutterWidget)
class FlutterSpacer with _$FlutterSpacer implements ZacBuild<Spacer> {
  const FlutterSpacer._();

  static const String unionValue = 'f:1:Spacer';

  factory FlutterSpacer.fromJson(Map<String, dynamic> json) =>
      _$FlutterSpacerFromJson(json);

  @FreezedUnionValue(FlutterSpacer.unionValue)
  factory FlutterSpacer({
    ZacValue<Key?>? key,
    ZacValue<int?>? flex,
  }) = _FlutterSpacer;

  Spacer _buildWidget(ZacContext zacContext) {
    return Spacer(
      key: key?.build(zacContext),
      flex: flex?.build(zacContext) ?? 1,
    );
  }

  @override
  Spacer build(ZacContext zacContext) {
    return _buildWidget(zacContext);
  }
}
