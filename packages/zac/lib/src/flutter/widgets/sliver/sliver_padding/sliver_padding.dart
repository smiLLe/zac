import 'package:zac/src/zac/any_value/any_value.dart';

import 'package:zac/src/zac/context/any_widget_context.dart';
import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:zac/src/base.dart';
import 'package:zac/src/flutter/mixed/insets/edge_insets.dart';
import 'package:zac/src/flutter/mixed/keys/keys.dart';

part 'sliver_padding.freezed.dart';
part 'sliver_padding.g.dart';

@defaultConverterFreezed
class FlutterSliverPadding with _$FlutterSliverPadding implements ZacWidget {
  const FlutterSliverPadding._();

  static const String unionValue = 'f:1:SliverPadding';

  factory FlutterSliverPadding.fromJson(Map<String, dynamic> json) =>
      _$FlutterSliverPaddingFromJson(json);

  @FreezedUnionValue(FlutterSliverPadding.unionValue)
  factory FlutterSliverPadding({
    FlutterKey? key,
    ZacWidget? sliver,
    required FlutterEdgeInsetsGeometry padding,
  }) = _FlutterSliverPadding;

  @override
  SliverPadding buildWidget(ZacBuildContext context) {
    return SliverPadding(
      key: key?.build(context),
      sliver: sliver?.buildWidget(context),
      padding: padding.build(context),
    );
  }
}
