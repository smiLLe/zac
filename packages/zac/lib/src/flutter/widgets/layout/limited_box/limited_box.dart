import 'package:zac/src/zac/any_value/any_value.dart';

import 'package:zac/src/zac/context/any_widget_context.dart';
import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:zac/src/base.dart';
import 'package:zac/src/flutter/mixed/keys/keys.dart';

part 'limited_box.freezed.dart';
part 'limited_box.g.dart';

@defaultConverterFreezed
class FlutterLimitedBox with _$FlutterLimitedBox implements ZacWidget {
  const FlutterLimitedBox._();

  static const String unionValue = 'f:1:LimitedBox';

  factory FlutterLimitedBox.fromJson(Map<String, dynamic> json) =>
      _$FlutterLimitedBoxFromJson(json);

  @FreezedUnionValue(FlutterLimitedBox.unionValue)
  factory FlutterLimitedBox({
    FlutterKey? key,
    ZacDouble? maxWidth,
    ZacDouble? maxHeight,
    ZacWidget? child,
  }) = _FlutterLimitedBox;

  @override
  LimitedBox buildWidget(ZacBuildContext context) {
    return LimitedBox(
      key: key?.build(context),
      child: child?.buildWidget(context),
      maxHeight: maxHeight?.getValue(context) ?? double.infinity,
      maxWidth: maxWidth?.getValue(context) ?? double.infinity,
    );
  }
}
