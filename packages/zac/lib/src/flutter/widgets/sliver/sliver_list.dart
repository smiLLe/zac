import 'package:zac/src/zac/any_value.dart';
import 'package:zac/src/zac/update_context.dart';
import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:zac/src/base.dart';
import 'package:zac/src/flutter/foundation.dart';
import 'package:zac/src/flutter/widgets/sliver/sliver_delegate/sliver_child_delegate.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

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
  SliverList buildWidget(
      BuildContext context, WidgetRef ref, ZacBuildContext zacContext) {
    return SliverList(
      key: key?.buildKey(context, ref, zacContext),
      delegate: delegate.build(context, ref, zacContext),
    );
  }
}
