import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:zac/src/base.dart';
import 'package:zac/src/flutter/foundation.dart';
import 'package:zac/src/flutter/widgets/sliver/sliver_delegate/sliver_child_delegate.dart';
import 'package:zac/src/flutter/widgets/sliver/sliver_delegate/sliver_grid_delegate.dart';
import 'package:zac/src/zac/context.dart';
import 'package:zac/src/zac/zac_builder.dart';

part 'sliver_grid.freezed.dart';
part 'sliver_grid.g.dart';

@freezedZacBuilder
@ZacGenerate(order: zacGenerateOrderFlutterWidget)
class FlutterSliverGrid with _$FlutterSliverGrid implements FlutterWidget {
  const FlutterSliverGrid._();

  static const String unionValue = 'f:1:SliverGrid';

  factory FlutterSliverGrid.fromJson(Map<String, dynamic> json) =>
      _$FlutterSliverGridFromJson(json);

  @FreezedUnionValue(FlutterSliverGrid.unionValue)
  factory FlutterSliverGrid({
    FlutterKey? key,
    required FlutterSliverChildDelegate delegate,
    required FlutterSliverGridDelegate gridDelegate,
  }) = _FlutterSliverGrid;

  SliverGrid _buildWidget(ZacContext zacContext) {
    return SliverGrid(
      key: key?.build(zacContext),
      delegate: delegate.build(zacContext),
      gridDelegate: gridDelegate.build(zacContext),
    );
  }

  @override
  SliverGrid build(ZacContext zacContext,
      {ZacBuilderConsume onConsume = const ZacBuilderConsume()}) {
    return _buildWidget(zacContext);
  }

  @override
  SliverGrid? buildOrNull(ZacContext zacContext,
      {ZacBuilderConsume onConsume = const ZacBuilderConsume()}) {
    return _buildWidget(zacContext);
  }
}
