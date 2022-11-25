import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:zac/src/base.dart';
import 'package:zac/src/flutter/foundation.dart';
import 'package:zac/src/zac/context.dart';
import 'package:zac/src/zac/zac_builder.dart';

part 'sliver_to_box_adapter.freezed.dart';
part 'sliver_to_box_adapter.g.dart';

@freezedZacBuilder
@ZacGenerate(order: zacGenerateOrderFlutterWidget)
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

  SliverToBoxAdapter _buildWidget(ZacContext zacContext) {
    return SliverToBoxAdapter(
      key: key?.buildOrNull(zacContext),
      child: child?.buildOrNull(zacContext),
    );
  }

  @override
  SliverToBoxAdapter build(ZacContext zacContext,
      {ZacBuilderConsume onConsume = const ZacBuilderConsume()}) {
    return _buildWidget(zacContext);
  }

  @override
  SliverToBoxAdapter? buildOrNull(ZacContext zacContext,
      {ZacBuilderConsume onConsume = const ZacBuilderConsume()}) {
    return _buildWidget(zacContext);
  }
}
