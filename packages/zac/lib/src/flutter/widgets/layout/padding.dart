import 'package:zac/src/flutter/painting.dart';
import 'package:zac/src/zac/any_value.dart';

import 'package:zac/src/zac/widget_context.dart';
import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:zac/src/base.dart';
import 'package:zac/src/flutter/foundation.dart';

part 'padding.freezed.dart';
part 'padding.g.dart';

@defaultConverterFreezed
class FlutterPadding with _$FlutterPadding implements ZacWidget {
  const FlutterPadding._();

  static const String unionValue = 'f:1:Padding';

  factory FlutterPadding.fromJson(Map<String, dynamic> json) =>
      _$FlutterPaddingFromJson(json);

  @FreezedUnionValue(FlutterPadding.unionValue)
  factory FlutterPadding({
    FlutterKey? key,
    required FlutterEdgeInsetsGeometry padding,
    ZacWidget? child,
  }) = _FlutterPadding;

  @override
  Padding buildWidget(ZacBuildContext context) {
    return Padding(
      key: key?.buildKey(context),
      padding: padding.build(context),
      child: child?.buildWidget(context),
    );
  }
}
