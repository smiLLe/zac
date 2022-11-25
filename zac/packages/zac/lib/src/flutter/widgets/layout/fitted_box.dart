import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:zac/src/base.dart';
import 'package:zac/src/flutter/dart_ui.dart';
import 'package:zac/src/flutter/foundation.dart';
import 'package:zac/src/flutter/painting.dart';
import 'package:zac/src/zac/context.dart';
import 'package:zac/src/zac/zac_builder.dart';

part 'fitted_box.freezed.dart';
part 'fitted_box.g.dart';

@freezedZacBuilder
@ZacGenerate(order: zacGenerateOrderFlutterWidget)
class FlutterFittedBox with _$FlutterFittedBox implements FlutterWidget {
  const FlutterFittedBox._();

  static const String unionValue = 'f:1:FittedBox';

  factory FlutterFittedBox.fromJson(Map<String, dynamic> json) =>
      _$FlutterFittedBoxFromJson(json);

  @FreezedUnionValue(FlutterFittedBox.unionValue)
  factory FlutterFittedBox({
    FlutterKey? key,
    FlutterBoxFit? fit,
    FlutterAlignmentGeometry? alignment,
    FlutterClip? clipBehavior,
    FlutterWidget? child,
  }) = _FlutterFittedBox;

  FittedBox _buildWidget(ZacContext zacContext) {
    return FittedBox(
      key: key?.buildOrNull(zacContext),
      fit: fit?.buildOrNull(zacContext) ?? BoxFit.contain,
      alignment: alignment?.buildOrNull(zacContext) ?? Alignment.center,
      clipBehavior: clipBehavior?.buildOrNull(zacContext) ?? Clip.none,
      child: child?.buildOrNull(zacContext),
    );
  }

  @override
  FittedBox build(ZacContext zacContext,
      {ZacBuilderConsume onConsume = const ZacBuilderConsume()}) {
    return _buildWidget(zacContext);
  }

  @override
  FittedBox? buildOrNull(ZacContext zacContext,
      {ZacBuilderConsume onConsume = const ZacBuilderConsume()}) {
    return _buildWidget(zacContext);
  }
}
