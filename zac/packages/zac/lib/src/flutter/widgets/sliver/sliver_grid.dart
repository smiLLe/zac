import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:zac/src/base.dart';
import 'package:zac/src/flutter/widgets/sliver/sliver_delegate/sliver_child_delegate.dart';
import 'package:zac/src/flutter/widgets/sliver/sliver_delegate/sliver_grid_delegate.dart';
import 'package:zac/src/zac/context.dart';
import 'package:zac/src/zac/zac_builder.dart';

part 'sliver_grid.freezed.dart';
part 'sliver_grid.g.dart';

@freezedZacBuilder
class FlutterSliverGrid
    with _$FlutterSliverGrid
    implements ZacBuilder<SliverGrid> {
  const FlutterSliverGrid._();

  static const String unionValue = 'f:1:SliverGrid';

  factory FlutterSliverGrid.fromJson(Map<String, dynamic> json) =>
      _$FlutterSliverGridFromJson(json);

  @FreezedUnionValue(FlutterSliverGrid.unionValue)
  factory FlutterSliverGrid({
    ZacBuilder<Key?>? key,
    required FlutterSliverChildDelegate delegate,
    required FlutterSliverGridDelegate gridDelegate,
  }) = _FlutterSliverGrid;

  SliverGrid _buildWidget(BuildContext context, ZacContext zacContext) {
    return SliverGrid(
      key: key?.build(context, zacContext),
      delegate: delegate.build(context, zacContext),
      gridDelegate: gridDelegate.build(context, zacContext),
    );
  }

  @override
  SliverGrid build(BuildContext context, ZacContext zacContext) {
    return _buildWidget(context, zacContext);
  }
}
