import 'package:zac/src/zac/any_value/any_value.dart';

import 'package:zac/src/zac/context/any_widget_context.dart';
import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:zac/src/base.dart';
import 'package:zac/src/flutter/mixed/keys/keys.dart';

part 'expanded.freezed.dart';
part 'expanded.g.dart';

@defaultConverterFreezed
class FlutterExpanded with _$FlutterExpanded implements ZacWidget {
  const FlutterExpanded._();

  static const String unionValue = 'f:1:Expanded';

  factory FlutterExpanded.fromJson(Map<String, dynamic> json) =>
      _$FlutterExpandedFromJson(json);

  @FreezedUnionValue(FlutterExpanded.unionValue)
  factory FlutterExpanded({
    FlutterKey? key,
    ZacInt? flex,
    required ZacWidget child,
  }) = _FlutterExpanded;

  @override
  Expanded buildWidget(ZacBuildContext context) {
    return Expanded(
      key: key?.build(context),
      child: child.buildWidget(context),
      flex: flex?.getValue(context) ?? 1,
    );
  }
}
