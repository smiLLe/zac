import 'package:zac/src/zac/any_value.dart';
import 'package:zac/src/zac/update_context.dart';
import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:zac/src/base.dart';
import 'package:zac/src/flutter/foundation.dart';
import 'package:zac/src/flutter/widgets/sliver/sliver_delegate/sliver_child_delegate.dart';
import 'package:zac/src/flutter/widgets/sliver/sliver_delegate/sliver_grid_delegate.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

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
  SliverGrid buildWidget(
      BuildContext context, WidgetRef ref, ZacBuildContext zacContext) {
    return SliverGrid(
      key: key?.buildKey(context, ref, zacContext),
      delegate: delegate.build(context, ref, zacContext),
      gridDelegate: gridDelegate.build(context, ref, zacContext),
    );
  }
}
