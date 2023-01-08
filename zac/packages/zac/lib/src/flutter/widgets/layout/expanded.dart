import 'package:zac/src/zac/context.dart';
import 'package:zac/src/zac/zac_builder.dart';
import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:zac/src/base.dart';

part 'expanded.freezed.dart';
part 'expanded.g.dart';

@freezedZacBuilder
class FlutterExpanded with _$FlutterExpanded implements ZacBuilder<Expanded> {
  const FlutterExpanded._();

  static const String unionValue = 'f:1:Expanded';

  factory FlutterExpanded.fromJson(Map<String, dynamic> json) =>
      _$FlutterExpandedFromJson(json);

  @FreezedUnionValue(FlutterExpanded.unionValue)
  factory FlutterExpanded({
    ZacBuilder<Key?>? key,
    ZacBuilder<int?>? flex,
    required ZacBuilder<Widget> child,
  }) = _FlutterExpanded;

  Expanded _buildWidget(BuildContext context, ZacContext zacContext) {
    return Expanded(
      key: key?.build(context, zacContext),
      flex: flex?.build(context, zacContext) ?? 1,
      child: child.build(context, zacContext),
    );
  }

  @override
  Expanded build(BuildContext context, ZacContext zacContext) {
    return _buildWidget(context, zacContext);
  }
}
