import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:zac/src/base.dart';
import 'package:zac/src/flutter/widgets/sliver/sliver_delegate/sliver_child_delegate.dart';
import 'package:zac/src/zac/context.dart';
import 'package:zac/src/zac/zac_builder.dart';

part 'sliver_list.freezed.dart';
part 'sliver_list.g.dart';

@freezedZacBuilder
class FlutterSliverList
    with _$FlutterSliverList
    implements ZacBuilder<SliverList> {
  const FlutterSliverList._();

  static const String unionValue = 'f:1:SliverList';

  factory FlutterSliverList.fromJson(Map<String, dynamic> json) =>
      _$FlutterSliverListFromJson(json);

  @FreezedUnionValue(FlutterSliverList.unionValue)
  factory FlutterSliverList({
    ZacBuilder<Key?>? key,
    required FlutterSliverChildDelegate delegate,
  }) = _FlutterSliverList;

  SliverList _buildWidget(BuildContext context, ZacContext zacContext) {
    return SliverList(
      key: key?.build(context, zacContext),
      delegate: delegate.build(context, zacContext),
    );
  }

  @override
  SliverList build(BuildContext context, ZacContext zacContext) {
    return _buildWidget(context, zacContext);
  }
}
