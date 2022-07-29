import 'package:zac/src/zac/any_value/any_value.dart';

import 'package:zac/src/zac/context/widget_context.dart';
import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:zac/src/base.dart';
import 'package:zac/src/flutter/foundation/foundation.dart';

part 'sliver_to_box_adapter.freezed.dart';
part 'sliver_to_box_adapter.g.dart';

@defaultConverterFreezed
class FlutterSliverToBoxAdapter
    with _$FlutterSliverToBoxAdapter
    implements ZacWidget {
  const FlutterSliverToBoxAdapter._();

  static const String unionValue = 'f:1:SliverToBoxAdapter';

  factory FlutterSliverToBoxAdapter.fromJson(Map<String, dynamic> json) =>
      _$FlutterSliverToBoxAdapterFromJson(json);

  @FreezedUnionValue(FlutterSliverToBoxAdapter.unionValue)
  factory FlutterSliverToBoxAdapter({
    FlutterKey? key,
    ZacWidget? child,
  }) = _FlutterSliverToBoxAdapter;

  @override
  SliverToBoxAdapter buildWidget(ZacBuildContext context) {
    return SliverToBoxAdapter(
      key: key?.buildKey(context),
      child: child?.buildWidget(context),
    );
  }
}
