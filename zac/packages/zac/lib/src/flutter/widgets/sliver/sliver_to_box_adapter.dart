import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:zac/src/base.dart';
import 'package:zac/src/flutter/foundation.dart';
import 'package:zac/src/zac/context.dart';
import 'package:zac/src/zac/zac_build.dart';
import 'package:zac/src/zac/zac_value.dart';

part 'sliver_to_box_adapter.freezed.dart';
part 'sliver_to_box_adapter.g.dart';

@freezedZacBuilder
class FlutterSliverToBoxAdapter
    with _$FlutterSliverToBoxAdapter
    implements ZacBuilder<SliverToBoxAdapter> {
  const FlutterSliverToBoxAdapter._();

  static const String unionValue = 'f:1:SliverToBoxAdapter';

  factory FlutterSliverToBoxAdapter.fromJson(Map<String, dynamic> json) =>
      _$FlutterSliverToBoxAdapterFromJson(json);

  @FreezedUnionValue(FlutterSliverToBoxAdapter.unionValue)
  factory FlutterSliverToBoxAdapter({
    ZacBuilder<Key?>? key,
    ZacBuilder<Widget?>? child,
  }) = _FlutterSliverToBoxAdapter;

  SliverToBoxAdapter _buildWidget(ZacContext zacContext) {
    return SliverToBoxAdapter(
      key: key?.build(zacContext),
      child: child?.build(zacContext),
    );
  }

  @override
  SliverToBoxAdapter build(ZacContext zacContext) {
    return _buildWidget(zacContext);
  }
}
