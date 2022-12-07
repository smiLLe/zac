import 'package:zac/src/zac/context.dart';
import 'package:zac/src/zac/zac_builder.dart';
import 'package:zac/src/zac/zac_value.dart';
import 'package:zac/src/base.dart';
import 'package:zac/src/flutter/foundation.dart';
import 'package:zac/src/flutter/painting.dart';
import 'package:zac/src/flutter/rendering.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'button_bar.freezed.dart';
part 'button_bar.g.dart';

@freezedZacBuilder
@ZacGenerate(order: zacGenerateOrderFlutterWidget)
class FlutterButtonBar with _$FlutterButtonBar implements FlutterWidget {
  const FlutterButtonBar._();

  static const String unionValue = 'f:1:ButtonBar';

  factory FlutterButtonBar.fromJson(Map<String, dynamic> json) =>
      _$FlutterButtonBarFromJson(json);

  @FreezedUnionValue(FlutterButtonBar.unionValue)
  factory FlutterButtonBar({
    FlutterKey? key,
    FlutterMainAxisAlignment? alignment,
    FlutterMainAxisSize? mainAxisSize,
// FlutterButtonTextTheme? buttonTextTheme,
    ZacValue<double>? buttonMinWidth,
    ZacValue<double>? buttonHeight,
    FlutterEdgeInsetsGeometry? buttonPadding,
    ZacValue<bool>? buttonAlignedDropdown,
// FlutterButtonBarLayoutBehavior? layoutBehavior,
    FlutterVerticalDirection? overflowDirection,
    ZacValue<double>? overflowButtonSpacing,
    ZacListOfFlutterWidget? children,
  }) = _FlutterButtonBar;

  ButtonBar _buildWidget(ZacContext zacContext) {
    return ButtonBar(
      key: key?.buildOrNull(zacContext),
      alignment: alignment?.buildOrNull(zacContext),
      mainAxisSize: mainAxisSize?.buildOrNull(zacContext),
// FlutterButtonTextTheme? buttonTextTheme,
      buttonMinWidth: buttonMinWidth?.buildOrNull(zacContext),
      buttonHeight: buttonHeight?.buildOrNull(zacContext),
      buttonPadding: buttonPadding?.buildOrNull(zacContext),
      buttonAlignedDropdown: buttonAlignedDropdown?.buildOrNull(zacContext),
// FlutterButtonBarLayoutBehavior? layoutBehavior,
      overflowDirection: overflowDirection?.buildOrNull(zacContext),
      overflowButtonSpacing: overflowButtonSpacing?.buildOrNull(zacContext),
      children: children?.buildOrNull(zacContext) ?? const <Widget>[],
    );
  }

  @override
  ButtonBar build(ZacContext zacContext,
      {ZacBuilderConsume onConsume = const ZacBuilderConsume()}) {
    return _buildWidget(zacContext);
  }

  @override
  ButtonBar? buildOrNull(ZacContext zacContext,
      {ZacBuilderConsume onConsume = const ZacBuilderConsume()}) {
    return _buildWidget(zacContext);
  }
}
