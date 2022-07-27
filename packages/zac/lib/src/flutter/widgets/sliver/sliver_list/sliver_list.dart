import 'package:zac/src/zac/any_value/any_value.dart';
import 'package:zac/src/zac/context/widget_context.dart';
import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:zac/src/base.dart';
import 'package:zac/src/flutter/mixed/keys/keys.dart';
import 'package:zac/src/flutter/widgets/sliver/sliver_delegate/sliver_child_delegate/sliver_child_delegate.dart';

part 'sliver_list.freezed.dart';
part 'sliver_list.g.dart';

@defaultConverterFreezed
class FlutterSliverList with _$FlutterSliverList implements ZacWidget {
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
  SliverList buildWidget(ZacBuildContext context) {
    return SliverList(
      key: key?.build(context),
      delegate: delegate.build(context),
    );
  }
}
