import 'package:zac/src/zac/context.dart';
import 'package:zac/src/zac/zac_build.dart';
import 'package:zac/src/zac/zac_value.dart';
import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:zac/src/base.dart';

part 'offstage.freezed.dart';
part 'offstage.g.dart';

@freezedZacBuilder
class FlutterOffstage with _$FlutterOffstage implements ZacBuild<Offstage> {
  const FlutterOffstage._();

  static const String unionValue = 'f:1:Offstage';

  factory FlutterOffstage.fromJson(Map<String, dynamic> json) =>
      _$FlutterOffstageFromJson(json);

  @FreezedUnionValue(FlutterOffstage.unionValue)
  factory FlutterOffstage({
    ZacValue<Key?>? key,
    ZacValue<bool?>? offstage,
    ZacValue<Widget?>? child,
  }) = _FlutterOffstage;

  Offstage _buildWidget(ZacContext zacContext) {
    return Offstage(
      key: key?.build(zacContext),
      offstage: offstage?.build(zacContext) ?? true,
      child: child?.build(zacContext),
    );
  }

  @override
  Offstage build(ZacContext zacContext) {
    return _buildWidget(zacContext);
  }
}
