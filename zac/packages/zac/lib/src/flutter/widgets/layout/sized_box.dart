import 'package:zac/src/zac/context.dart';
import 'package:zac/src/zac/zac_builder.dart';
import 'package:zac/src/zac/zac_value.dart';
import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:zac/src/base.dart';
import 'package:zac/src/flutter/dart_ui.dart';
import 'package:zac/src/flutter/foundation.dart';

part 'sized_box.freezed.dart';
part 'sized_box.g.dart';

@freezedZacBuilder
@ZacGenerate(order: zacGenerateOrderFlutterWidget)
class FlutterSizedBox with _$FlutterSizedBox implements FlutterWidget {
  const FlutterSizedBox._();

  static const String unionValue = 'f:1:SizedBox';
  static const String unionValueExpand = 'f:1:SizedBox.expand';
  static const String unionValueFromSize = 'f:1:SizedBox.fromSize';
  static const String unionValueShrink = 'f:1:SizedBox.shrink';
  static const String unionValueSquare = 'f:1:SizedBox.square';

  factory FlutterSizedBox.fromJson(Map<String, dynamic> json) =>
      _$FlutterSizedBoxFromJson(json);

  @FreezedUnionValue(FlutterSizedBox.unionValue)
  factory FlutterSizedBox({
    FlutterKey? key,
    ZacDouble? width,
    ZacDouble? height,
    FlutterWidget? child,
  }) = _FlutterWidgetSizedBox;

  @FreezedUnionValue(FlutterSizedBox.unionValueExpand)
  factory FlutterSizedBox.expand({
    FlutterKey? key,
    FlutterWidget? child,
  }) = _FlutterWidgetSizedBoxExpand;

  @FreezedUnionValue(FlutterSizedBox.unionValueFromSize)
  factory FlutterSizedBox.fromSize({
    FlutterKey? key,
    FlutterWidget? child,
    FlutterSize? size,
  }) = _FlutterWidgetSizedBoxFromSize;

  @FreezedUnionValue(FlutterSizedBox.unionValueShrink)
  const factory FlutterSizedBox.shrink({
    FlutterKey? key,
    FlutterWidget? child,
  }) = _FlutterWidgetSizedBoxShrink;

  @FreezedUnionValue(FlutterSizedBox.unionValueSquare)
  factory FlutterSizedBox.square({
    FlutterKey? key,
    FlutterWidget? child,
    ZacDouble? dimension,
  }) = _FlutterWidgetSizedBoxSquare;

  SizedBox _buildWidget(ZacContext zacContext) {
    return map(
      (value) => SizedBox(
        key: value.key?.buildOrNull(zacContext),
        width: value.width?.buildOrNull(zacContext),
        height: value.height?.buildOrNull(zacContext),
        child: value.child?.buildOrNull(zacContext),
      ),
      expand: (value) => SizedBox.expand(
        key: value.key?.buildOrNull(zacContext),
        child: value.child?.buildOrNull(zacContext),
      ),
      fromSize: (value) => SizedBox.fromSize(
        key: value.key?.buildOrNull(zacContext),
        size: value.size?.build(zacContext),
        child: value.child?.buildOrNull(zacContext),
      ),
      shrink: (value) => SizedBox.shrink(
        key: value.key?.buildOrNull(zacContext),
        child: value.child?.buildOrNull(zacContext),
      ),
      square: (value) => SizedBox.square(
        key: value.key?.buildOrNull(zacContext),
        dimension: value.dimension?.buildOrNull(zacContext),
        child: value.child?.buildOrNull(zacContext),
      ),
    );
  }

  @override
  SizedBox build(ZacContext zacContext,
      {ZacBuilderConsume onConsume = const ZacBuilderConsume()}) {
    return _buildWidget(zacContext);
  }

  @override
  SizedBox? buildOrNull(ZacContext zacContext,
      {ZacBuilderConsume onConsume = const ZacBuilderConsume()}) {
    return _buildWidget(zacContext);
  }
}
