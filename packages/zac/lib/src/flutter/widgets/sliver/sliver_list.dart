import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:zac/src/base.dart';
import 'package:zac/src/flutter/foundation.dart';
import 'package:zac/src/flutter/widgets/sliver/sliver_delegate/sliver_child_delegate.dart';
import 'package:zac/src/zac/origin.dart';

part 'sliver_list.freezed.dart';
part 'sliver_list.g.dart';

@defaultConverterFreezed
class FlutterSliverList with _$FlutterSliverList implements FlutterWidget {
  const FlutterSliverList._();

  static const String unionValue = 'f:1:SliverList';

  factory FlutterSliverList.fromJson(Map<String, dynamic> json) =>
      _$FlutterSliverListFromJson(json);

  @FreezedUnionValue(FlutterSliverList.unionValue)
  factory FlutterSliverList({
    FlutterKey? key,
    required FlutterSliverChildDelegate delegate,
  }) = _FlutterSliverList;

  @override
  SliverList buildWidget(ZacOriginWidgetTree origin) {
    return SliverList(
      key: key?.buildKey(origin),
      delegate: delegate.build(origin),
    );
  }
}
