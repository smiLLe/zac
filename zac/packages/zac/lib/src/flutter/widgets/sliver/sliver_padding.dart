import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:zac/src/base.dart';
import 'package:zac/src/zac/context.dart';
import 'package:zac/src/zac/zac_build.dart';
import 'package:zac/src/zac/zac_value.dart';

part 'sliver_padding.freezed.dart';
part 'sliver_padding.g.dart';

@freezedZacBuilder
class FlutterSliverPadding
    with _$FlutterSliverPadding
    implements ZacBuild<SliverPadding> {
  const FlutterSliverPadding._();

  static const String unionValue = 'f:1:SliverPadding';

  factory FlutterSliverPadding.fromJson(Map<String, dynamic> json) =>
      _$FlutterSliverPaddingFromJson(json);

  @FreezedUnionValue(FlutterSliverPadding.unionValue)
  factory FlutterSliverPadding({
    ZacValue<Key?>? key,
    ZacValue<Widget?>? sliver,
    required ZacValue<EdgeInsetsGeometry> padding,
  }) = _FlutterSliverPadding;

  SliverPadding _buildWidget(ZacContext zacContext) {
    return SliverPadding(
      key: key?.getValue(zacContext),
      sliver: sliver?.getValue(zacContext),
      padding: padding.getValue(zacContext),
    );
  }

  @override
  SliverPadding build(ZacContext zacContext) {
    return _buildWidget(zacContext);
  }
}
