import 'package:zac/src/zac/any_value/any_value.dart';
import 'package:zac/src/zac/context/widget_context.dart';
import 'package:zac/src/converter.dart';
import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:zac/src/base.dart';

part 'edge_insets.freezed.dart';
part 'edge_insets.g.dart';

abstract class FlutterEdgeInsetsGeometry {
  factory FlutterEdgeInsetsGeometry.fromJson(Object data) {
    return ConverterHelper.convertToType<FlutterEdgeInsetsGeometry>(data);
  }

  EdgeInsetsGeometry build(ZacBuildContext context);
}

@defaultConverterFreezed
class FlutterEdgeInsets
    with _$FlutterEdgeInsets
    implements FlutterEdgeInsetsGeometry {
  const FlutterEdgeInsets._();

  static const unionValueAll = 'f:1:EdgeInsets.all';
  static const unionValueSymmetric = 'f:1:EdgeInsets.symmetric';
  static const unionValueOnly = 'f:1:EdgeInsets.only';

  factory FlutterEdgeInsets.fromJson(Map<String, dynamic> json) =>
      _$FlutterEdgeInsetsFromJson(json);

  @FreezedUnionValue(FlutterEdgeInsets.unionValueAll)
  factory FlutterEdgeInsets.all(ZacDouble value) = _FlutterEdgeInsetsAll;

  @FreezedUnionValue(FlutterEdgeInsets.unionValueSymmetric)
  factory FlutterEdgeInsets.symmetric({
    ZacDouble? vertical,
    ZacDouble? horizontal,
  }) = _FlutterEdgeInsetsSymmetric;

  @FreezedUnionValue(FlutterEdgeInsets.unionValueOnly)
  factory FlutterEdgeInsets.only({
    ZacDouble? left,
    ZacDouble? top,
    ZacDouble? right,
    ZacDouble? bottom,
  }) = _FlutterEdgeInsetsOnly;

  @override
  EdgeInsets build(ZacBuildContext context) {
    return map(
      all: (value) => EdgeInsets.all(value.value.getValue(context)),
      symmetric: (value) => EdgeInsets.symmetric(
        vertical: value.vertical?.getValue(context) ?? 0.0,
        horizontal: value.horizontal?.getValue(context) ?? 0.0,
      ),
      only: (value) => EdgeInsets.only(
        left: value.left?.getValue(context) ?? 0.0,
        top: value.top?.getValue(context) ?? 0.0,
        right: value.right?.getValue(context) ?? 0.0,
        bottom: value.bottom?.getValue(context) ?? 0.0,
      ),
    );
  }
}

@defaultConverterFreezed
class FlutterEdgeInsetsDirectional
    with _$FlutterEdgeInsetsDirectional
    implements FlutterEdgeInsetsGeometry {
  const FlutterEdgeInsetsDirectional._();

  static const String unionValueAll = 'f:1:EdgeInsetsDirectional.all';

  static const String unionValueOnly = 'f:1:EdgeInsetsDirectional.only';

  factory FlutterEdgeInsetsDirectional.fromJson(Map<String, dynamic> json) =>
      _$FlutterEdgeInsetsDirectionalFromJson(json);

  @FreezedUnionValue(FlutterEdgeInsetsDirectional.unionValueAll)
  factory FlutterEdgeInsetsDirectional.all(ZacDouble value) =
      _FlutterEdgeInsetsDirectionalAll;

  @FreezedUnionValue(FlutterEdgeInsetsDirectional.unionValueOnly)
  factory FlutterEdgeInsetsDirectional.only({
    ZacDouble? start,
    ZacDouble? top,
    ZacDouble? end,
    ZacDouble? bottom,
  }) = _FlutterEdgeInsetsDirectionalOnly;

  @override
  EdgeInsetsDirectional build(ZacBuildContext context) {
    return map(
      all: (value) => EdgeInsetsDirectional.all(value.value.getValue(context)),
      only: (value) => EdgeInsetsDirectional.only(
        start: value.start?.getValue(context) ?? 0.0,
        top: value.top?.getValue(context) ?? 0.0,
        end: value.end?.getValue(context) ?? 0.0,
        bottom: value.bottom?.getValue(context) ?? 0.0,
      ),
    );
  }
}
