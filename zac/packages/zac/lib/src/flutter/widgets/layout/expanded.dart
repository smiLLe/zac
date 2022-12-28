import 'package:zac/src/zac/context.dart';
import 'package:zac/src/zac/zac_build.dart';
import 'package:zac/src/zac/zac_value.dart';
import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:zac/src/base.dart';

part 'expanded.freezed.dart';
part 'expanded.g.dart';

@freezedZacBuilder
class FlutterExpanded with _$FlutterExpanded implements ZacBuild<Expanded> {
  const FlutterExpanded._();

  static const String unionValue = 'f:1:Expanded';

  factory FlutterExpanded.fromJson(Map<String, dynamic> json) =>
      _$FlutterExpandedFromJson(json);

  @FreezedUnionValue(FlutterExpanded.unionValue)
  factory FlutterExpanded({
    ZacValue<Key?>? key,
    ZacValue<int?>? flex,
    required ZacValue<Widget> child,
  }) = _FlutterExpanded;

  Expanded _buildWidget(ZacContext zacContext) {
    return Expanded(
      key: key?.getValue(zacContext),
      flex: flex?.getValue(zacContext) ?? 1,
      child: child.getValue(zacContext),
    );
  }

  @override
  Expanded build(ZacContext zacContext) {
    return _buildWidget(zacContext);
  }
}
