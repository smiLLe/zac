import 'package:zac/src/zac/any_value/any_value.dart';
import 'package:zac/src/zac/context/widget_context.dart';
import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:zac/src/base.dart';
import 'package:zac/src/flutter/mixed/keys/keys.dart';
import 'package:zac/src/flutter/widgets/sliver/sliver_delegate/sliver_child_delegate/sliver_child_delegate.dart';
import 'package:zac/src/flutter/widgets/sliver/sliver_delegate/sliver_grid_delegate/sliver_grid_delegate.dart';

part 'sliver_grid.freezed.dart';
part 'sliver_grid.g.dart';

@defaultConverterFreezed
class FlutterSliverGrid with _$FlutterSliverGrid implements ZacWidget {
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

  @override
  SliverGrid buildWidget(ZacBuildContext context) {
    return SliverGrid(
      key: key?.build(context),
      delegate: delegate.build(context),
      gridDelegate: gridDelegate.build(context),
    );
  }
}
