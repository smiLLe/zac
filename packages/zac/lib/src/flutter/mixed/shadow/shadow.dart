import 'package:zac/src/zac/any_value/any_value.dart';
import 'package:zac/src/zac/context/widget_context.dart';
import 'package:zac/src/converter.dart';
import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:zac/src/flutter/dart_ui/dart_ui.dart';
import 'package:zac/src/base.dart';

part 'shadow.freezed.dart';
part 'shadow.g.dart';

abstract class FlutterShadow {
  factory FlutterShadow.fromJson(Object data) {
    return ConverterHelper.convertToType<FlutterShadow>(data);
  }

  Shadow build(ZacBuildContext context);
}

@defaultConverterFreezed
class FlutterUiShadow with _$FlutterUiShadow implements FlutterShadow {
  const FlutterUiShadow._();

  static const String unionValue = 'f:1:Shadow';

  factory FlutterUiShadow.fromJson(Map<String, dynamic> json) =>
      _$FlutterUiShadowFromJson(json);

  @FreezedUnionValue(FlutterUiShadow.unionValue)
  factory FlutterUiShadow({
    FlutterColor? color,
    FlutterOffset? offset,
    ZacDouble? blurRadius,
  }) = _FlutterUiShadow;

  @override
  Shadow build(ZacBuildContext context) {
    return Shadow(
      color: color?.build(context) ?? const Color(0xFF000000),
      offset: offset?.build(context) ?? Offset.zero,
      blurRadius: blurRadius?.getValue(context) ?? 0.0,
    );
  }
}

@defaultConverterFreezed
class FlutterBoxShadow with _$FlutterBoxShadow implements FlutterShadow {
  const FlutterBoxShadow._();

  static const String unionValue = 'f:1:BoxShadow';

  factory FlutterBoxShadow.fromJson(Map<String, dynamic> json) =>
      _$FlutterBoxShadowFromJson(json);

  @FreezedUnionValue(FlutterBoxShadow.unionValue)
  factory FlutterBoxShadow({
    FlutterColor? color,
    FlutterOffset? offset,
    ZacDouble? blurRadius,
    ZacDouble? spreadRadius,
    FlutterBlurStyle? blurStyle,
  }) = _FlutterBoxShadow;

  @override
  BoxShadow build(ZacBuildContext context) {
    return BoxShadow(
      color: color?.build(context) ?? const Color(0xFF000000),
      offset: offset?.build(context) ?? Offset.zero,
      blurRadius: blurRadius?.getValue(context) ?? 0.0,
      spreadRadius: spreadRadius?.getValue(context) ?? 0.0,
      blurStyle: blurStyle?.build(context) ?? BlurStyle.normal,
    );
  }
}
