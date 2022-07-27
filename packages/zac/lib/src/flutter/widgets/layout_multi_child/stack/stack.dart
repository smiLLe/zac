import 'package:zac/src/zac/any_value/any_value.dart';

import 'package:zac/src/zac/context/any_widget_context.dart';
import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:zac/src/base.dart';
import 'package:zac/src/flutter/dart_ui/dart_ui.dart';
import 'package:zac/src/flutter/mixed/alignment/alignment.dart';
import 'package:zac/src/flutter/mixed/keys/keys.dart';
import 'package:zac/src/flutter/rendering/rendering.dart';

part 'stack.freezed.dart';
part 'stack.g.dart';

@defaultConverterFreezed
class FlutterStack with _$FlutterStack implements ZacWidget {
  const FlutterStack._();

  static const String unionValue = 'f:1:Stack';

  factory FlutterStack.fromJson(Map<String, dynamic> json) =>
      _$FlutterStackFromJson(json);

  @FreezedUnionValue(FlutterStack.unionValue)
  factory FlutterStack({
    FlutterKey? key,
    FlutterAlignmentGeometry? alignment,
    FlutterTextDirection? textDirection,
    FlutterStackFit? fit,
    FlutterClip? clipBehavior,
    ListOfZacWidget? children,
  }) = _FlutterStack;

  @override
  Stack buildWidget(ZacBuildContext context) {
    return Stack(
      key: key?.build(context),
      alignment: alignment?.build(context) ?? AlignmentDirectional.topStart,
      textDirection: textDirection?.build(context),
      fit: fit?.build(context) ?? StackFit.loose,
      clipBehavior: clipBehavior?.build(context) ?? Clip.hardEdge,
      children: children?.getValue(context) ?? const <Widget>[],
    );
  }
}
