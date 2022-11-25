import 'package:zac/src/flutter/painting.dart';
import 'package:zac/src/zac/context.dart';
import 'package:zac/src/zac/zac_builder.dart';
import 'package:zac/src/zac/zac_value.dart';
import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:zac/src/base.dart';
import 'package:zac/src/flutter/dart_ui.dart';
import 'package:zac/src/flutter/foundation.dart';
import 'package:zac/src/flutter/rendering.dart';

part 'stack.freezed.dart';
part 'stack.g.dart';

@freezedZacBuilder
@ZacGenerate(order: zacGenerateOrderFlutterWidget)
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
    ZacListOfFlutterWidget? children,
  }) = _FlutterStack;

  Stack _buildWidget(ZacContext zacContext) {
    return Stack(
      key: key?.buildOrNull(zacContext),
      alignment:
          alignment?.buildOrNull(zacContext) ?? AlignmentDirectional.topStart,
      textDirection: textDirection?.buildOrNull(zacContext),
      fit: fit?.buildOrNull(zacContext) ?? StackFit.loose,
      clipBehavior: clipBehavior?.buildOrNull(zacContext) ?? Clip.hardEdge,
      children: children?.buildOrNull(zacContext) ?? const <Widget>[],
    );
  }

  @override
  Stack build(ZacContext zacContext,
      {ZacBuilderConsume onConsume = const ZacBuilderConsume()}) {
    return _buildWidget(zacContext);
  }

  @override
  Stack? buildOrNull(ZacContext zacContext,
      {ZacBuilderConsume onConsume = const ZacBuilderConsume()}) {
    return _buildWidget(zacContext);
  }
}
