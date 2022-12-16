import 'package:zac/src/flutter/painting.dart';
import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:zac/src/base.dart';
import 'package:zac/src/flutter/foundation.dart';
import 'package:zac/src/zac/context.dart';
import 'package:zac/src/zac/zac_builder.dart';
import 'package:zac/src/zac/zac_value.dart';

part 'sliver_padding.freezed.dart';
part 'sliver_padding.g.dart';

@freezedZacBuilder
@ZacGenerate(order: zacGenerateOrderFlutterWidget)
class FlutterSliverPadding
    with _$FlutterSliverPadding
    implements ZacBuilder<SliverPadding> {
  const FlutterSliverPadding._();

  static const String unionValue = 'f:1:SliverPadding';

  factory FlutterSliverPadding.fromJson(Map<String, dynamic> json) =>
      _$FlutterSliverPaddingFromJson(json);

  @FreezedUnionValue(FlutterSliverPadding.unionValue)
  factory FlutterSliverPadding({
    FlutterKey? key,
    ZacValue<Widget?>? sliver,
    required FlutterEdgeInsetsGeometry padding,
  }) = _FlutterSliverPadding;

  SliverPadding _buildWidget(ZacContext zacContext) {
    return SliverPadding(
      key: key?.build(zacContext),
      sliver: sliver?.build(zacContext),
      padding: padding.build(zacContext),
    );
  }

  @override
  SliverPadding build(ZacContext zacContext) {
    return _buildWidget(zacContext);
  }
}
