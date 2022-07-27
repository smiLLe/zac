import 'package:zac/src/zac/any_value/any_value.dart';

import 'package:zac/src/zac/context/widget_context.dart';
import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:zac/src/base.dart';
import 'package:zac/src/flutter/mixed/decoration/decoration.dart';
import 'package:zac/src/flutter/mixed/keys/keys.dart';
import 'package:zac/src/flutter/rendering/rendering.dart';

part 'decorated_box.freezed.dart';
part 'decorated_box.g.dart';

@defaultConverterFreezed
class FlutterDecoratedBox with _$FlutterDecoratedBox implements ZacWidget {
  const FlutterDecoratedBox._();

  static const String unionValue = 'f:1:DecoratedBox';

  factory FlutterDecoratedBox.fromJson(Map<String, dynamic> json) =>
      _$FlutterDecoratedBoxFromJson(json);

  @FreezedUnionValue(FlutterDecoratedBox.unionValue)
  factory FlutterDecoratedBox({
    FlutterKey? key,
    ZacWidget? child,
    required FlutterDecoration decoration,
    FlutterDecorationPosition? position,
  }) = _FlutterDecoratedBox;

  @override
  DecoratedBox buildWidget(ZacBuildContext context) {
    return DecoratedBox(
      key: key?.build(context),
      child: child?.buildWidget(context),
      decoration: decoration.build(context),
      position: position?.build(context) ?? DecorationPosition.background,
    );
  }
}
