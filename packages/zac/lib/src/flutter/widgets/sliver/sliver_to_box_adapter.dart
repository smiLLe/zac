import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:zac/src/base.dart';
import 'package:zac/src/flutter/foundation.dart';
import 'package:zac/src/zac/origin.dart';

part 'sliver_to_box_adapter.freezed.dart';
part 'sliver_to_box_adapter.g.dart';

@defaultConverterFreezed
class FlutterSliverToBoxAdapter
    with _$FlutterSliverToBoxAdapter
    implements FlutterWidget {
  const FlutterSliverToBoxAdapter._();

  static const String unionValue = 'f:1:SliverToBoxAdapter';

  factory FlutterSliverToBoxAdapter.fromJson(Map<String, dynamic> json) =>
      _$FlutterSliverToBoxAdapterFromJson(json);

  @FreezedUnionValue(FlutterSliverToBoxAdapter.unionValue)
  factory FlutterSliverToBoxAdapter({
    FlutterKey? key,
    FlutterWidget? child,
  }) = _FlutterSliverToBoxAdapter;

  @override
  SliverToBoxAdapter buildWidget(ZacOriginWidgetTree origin) {
    return SliverToBoxAdapter(
      key: key?.buildKey(origin),
      child: child?.buildWidget(origin),
    );
  }
}
