import 'package:zac/src/zac/action.dart';
import 'package:zac/src/zac/any_value.dart';
import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:zac/src/base.dart';
import 'package:zac/src/flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

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
  SliverToBoxAdapter buildWidget(
      BuildContext context, WidgetRef ref, ZacActionHelper helper) {
    return SliverToBoxAdapter(
      key: key?.buildKey(context, ref, helper),
      child: child?.buildWidget(context, ref, helper),
    );
  }
}
