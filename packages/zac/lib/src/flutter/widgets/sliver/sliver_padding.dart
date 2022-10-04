import 'package:zac/src/flutter/painting.dart';
import 'package:zac/src/zac/interactions.dart';
import 'package:zac/src/zac/any_value.dart';
import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:zac/src/base.dart';
import 'package:zac/src/flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

part 'sliver_padding.freezed.dart';
part 'sliver_padding.g.dart';

@defaultConverterFreezed
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
  SliverPadding buildWidget(
      BuildContext context, WidgetRef ref, ZacInteractionLifetime lifetime) {
    return SliverPadding(
      key: key?.buildKey(context, ref, lifetime),
      sliver: sliver?.buildWidget(context, ref, lifetime),
      padding: padding.build(context, ref, lifetime),
    );
  }
}
