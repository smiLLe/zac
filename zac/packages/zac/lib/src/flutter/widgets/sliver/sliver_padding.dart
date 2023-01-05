import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:zac/src/base.dart';
import 'package:zac/src/zac/context.dart';
import 'package:zac/src/zac/zac_builder.dart';

part 'sliver_padding.freezed.dart';
part 'sliver_padding.g.dart';

@freezedZacBuilder
class FlutterSliverPadding
    with _$FlutterSliverPadding
    implements ZacBuilder<SliverPadding> {
  const FlutterSliverPadding._();

  static const String unionValue = 'f:1:SliverPadding';

  factory FlutterSliverPadding.fromJson(Map<String, dynamic> json) =>
      _$FlutterSliverPaddingFromJson(json);

  @FreezedUnionValue(FlutterSliverPadding.unionValue)
  factory FlutterSliverPadding({
    ZacBuilder<Key?>? key,
    ZacBuilder<Widget?>? sliver,
    required ZacBuilder<EdgeInsetsGeometry> padding,
  }) = _FlutterSliverPadding;

  SliverPadding _buildWidget(BuildContext context, ZacContext zacContext) {
    return SliverPadding(
      key: key?.build(context, zacContext),
      sliver: sliver?.build(context, zacContext),
      padding: padding.build(context, zacContext),
    );
  }

  @override
  SliverPadding build(BuildContext context, ZacContext zacContext) {
    return _buildWidget(context, zacContext);
  }
}
