import 'package:zac/src/zac/any_value/any_value.dart';

import 'package:zac/src/zac/context/widget_context.dart';
import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:zac/src/base.dart';
import 'package:zac/src/flutter/mixed/keys/keys.dart';

part 'ignore_pointer.freezed.dart';
part 'ignore_pointer.g.dart';

@defaultConverterFreezed
class FlutterIgnorePointer with _$FlutterIgnorePointer implements ZacWidget {
  const FlutterIgnorePointer._();

  static const String unionValue = 'f:1:IgnorePointer';

  factory FlutterIgnorePointer.fromJson(Map<String, dynamic> json) =>
      _$FlutterIgnorePointerFromJson(json);

  @FreezedUnionValue(FlutterIgnorePointer.unionValue)
  factory FlutterIgnorePointer({
    FlutterKey? key,
    ZacBool? ignoring,
    ZacBool? ignoringSemantics,
    ZacWidget? child,
  }) = _FlutterIgnorePointer;

  @override
  IgnorePointer buildWidget(ZacBuildContext context) {
    return IgnorePointer(
      key: key?.build(context),
      ignoring: ignoring?.getValue(context) ?? true,
      ignoringSemantics: ignoringSemantics?.getValue(context),
      child: child?.buildWidget(context),
    );
  }
}
