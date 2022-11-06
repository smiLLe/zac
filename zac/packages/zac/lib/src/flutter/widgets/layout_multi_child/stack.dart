import 'package:zac/src/flutter/painting.dart';
import 'package:zac/src/zac/context.dart';
import 'package:zac/src/zac/zac_value.dart';
import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:zac/src/base.dart';
import 'package:zac/src/flutter/dart_ui.dart';
import 'package:zac/src/flutter/foundation.dart';
import 'package:zac/src/flutter/rendering.dart';

part 'stack.freezed.dart';
part 'stack.g.dart';

@defaultConverterFreezed
@TsClass(order: tsOrderFlutterWidget)
class FlutterStack with _$FlutterStack implements FlutterWidget {
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
    ZacValueList<FlutterWidget>? children,
  }) = _FlutterStack;

  @override
  Stack buildWidget(ZacContext zacContext) {
    return Stack(
      key: key?.buildKey(zacContext),
      alignment: alignment?.build(zacContext) ?? AlignmentDirectional.topStart,
      textDirection: textDirection?.build(zacContext),
      fit: fit?.build(zacContext) ?? StackFit.loose,
      clipBehavior: clipBehavior?.build(zacContext) ?? Clip.hardEdge,
      children: children?.getWidgets(zacContext) ?? const <Widget>[],
    );
  }
}
