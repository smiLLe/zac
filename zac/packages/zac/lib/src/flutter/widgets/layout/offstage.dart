import 'package:zac/src/zac/context.dart';
import 'package:zac/src/zac/zac_builder.dart';
import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:zac/src/base.dart';

part 'offstage.freezed.dart';
part 'offstage.g.dart';

@freezedZacBuilder
class FlutterOffstage with _$FlutterOffstage implements ZacBuilder<Offstage> {
  const FlutterOffstage._();

  static const String unionValue = 'f:1:Offstage';

  factory FlutterOffstage.fromJson(Map<String, dynamic> json) =>
      _$FlutterOffstageFromJson(json);

  @FreezedUnionValue(FlutterOffstage.unionValue)
  factory FlutterOffstage({
    ZacBuilder<Key?>? key,
    ZacBuilder<bool?>? offstage,
    ZacBuilder<Widget?>? child,
  }) = _FlutterOffstage;

  Offstage _buildWidget(BuildContext context, ZacContext zacContext) {
    return Offstage(
      key: key?.build(context, zacContext),
      offstage: offstage?.build(context, zacContext) ?? true,
      child: child?.build(context, zacContext),
    );
  }

  @override
  Offstage build(BuildContext context, ZacContext zacContext) {
    return _buildWidget(context, zacContext);
  }
}
