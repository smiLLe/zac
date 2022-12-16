import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:zac/src/base.dart';
import 'package:zac/src/flutter/foundation.dart';
import 'package:zac/src/flutter/widgets/sliver/sliver_delegate/sliver_child_delegate.dart';
import 'package:zac/src/zac/context.dart';
import 'package:zac/src/zac/zac_builder.dart';

part 'sliver_list.freezed.dart';
part 'sliver_list.g.dart';

@freezedZacBuilder
@ZacGenerate(order: zacGenerateOrderFlutterWidget)
class FlutterSliverList
    with _$FlutterSliverList
    implements ZacBuilder<SliverList> {
  const FlutterSliverList._();

  static const String unionValue = 'f:1:SliverList';

  factory FlutterSliverList.fromJson(Map<String, dynamic> json) =>
      _$FlutterSliverListFromJson(json);

  @FreezedUnionValue(FlutterSliverList.unionValue)
  factory FlutterSliverList({
    FlutterKey? key,
    required FlutterSliverChildDelegate delegate,
  }) = _FlutterSliverList;

  SliverList _buildWidget(ZacContext zacContext) {
    return SliverList(
      key: key?.build(zacContext),
      delegate: delegate.build(zacContext),
    );
  }

  @override
  SliverList build(ZacContext zacContext) {
    return _buildWidget(zacContext);
  }
}
