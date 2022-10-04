import 'package:zac/src/flutter/painting.dart';
import 'package:zac/src/zac/interactions.dart';
import 'package:zac/src/zac/zac_values.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:zac/src/base.dart';
import 'package:zac/src/flutter/dart_ui.dart';
import 'package:zac/src/flutter/foundation.dart';
import 'package:zac/src/flutter/rendering.dart';

part 'stack.freezed.dart';
part 'stack.g.dart';

@defaultConverterFreezed
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
    ListOfZacWidget? children,
  }) = _FlutterStack;

  @override
  Stack buildWidget(
      BuildContext context, WidgetRef ref, ZacInteractionLifetime lifetime) {
    return Stack(
      key: key?.buildKey(context, ref, lifetime),
      alignment: alignment?.build(context, ref, lifetime) ??
          AlignmentDirectional.topStart,
      textDirection: textDirection?.build(context, ref, lifetime),
      fit: fit?.build(context, ref, lifetime) ?? StackFit.loose,
      clipBehavior:
          clipBehavior?.build(context, ref, lifetime) ?? Clip.hardEdge,
      children: children?.getValue(context, ref, lifetime) ?? const <Widget>[],
    );
  }
}
