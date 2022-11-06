import 'package:zac/src/flutter/painting.dart';
import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:zac/src/base.dart';
import 'package:zac/src/flutter/foundation.dart';
import 'package:zac/src/zac/context.dart';

part 'sliver_padding.freezed.dart';
part 'sliver_padding.g.dart';

@defaultConverterFreezed
@ZacGenerate(order: zacGenerateOrderFlutterWidget)
class FlutterSliverPadding
    with _$FlutterSliverPadding
    implements FlutterWidget {
  const FlutterSliverPadding._();

  static const String unionValue = 'f:1:SliverPadding';

  factory FlutterSliverPadding.fromJson(Map<String, dynamic> json) =>
      _$FlutterSliverPaddingFromJson(json);

  @FreezedUnionValue(FlutterSliverPadding.unionValue)
  factory FlutterSliverPadding({
    FlutterKey? key,
    FlutterWidget? sliver,
    required FlutterEdgeInsetsGeometry padding,
  }) = _FlutterSliverPadding;

  @override
  SliverPadding buildWidget(ZacContext zacContext) {
    return SliverPadding(
      key: key?.buildKey(zacContext),
      sliver: sliver?.buildWidget(zacContext),
      padding: padding.build(zacContext),
    );
  }
}
