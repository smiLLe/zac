import 'package:flutter/material.dart';
import 'package:zac/src/converter.dart';
import 'package:zac/src/flutter/painting.dart';
import 'package:zac/src/flutter/widgets/navigator.dart';
import 'package:zac/src/zac/action.dart';
import 'package:zac/src/zac/context.dart';
import 'package:zac/src/zac/zac_builder.dart';
import 'package:zac/src/zac/zac_value.dart';
import 'package:zac/src/zac/update_widget.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:zac/src/base.dart';

part 'material.freezed.dart';
part 'material.g.dart';

@ZacGenerate(order: zacGenerateOrderFlutterAbstractsB)
abstract class FlutterInputBorder implements FlutterShapeBorder {
  factory FlutterInputBorder.fromJson(Object data) {
    return ConverterHelper.convertToType<FlutterInputBorder>(data);
  }

  @override
  InputBorder build(ZacContext zacContext,
      {ZacBuilderConsume onConsume = const ZacBuilderConsume()});

  @override
  InputBorder? buildOrNull(ZacContext zacContext,
      {ZacBuilderConsume onConsume = const ZacBuilderConsume()});
}

@freezedZacBuilder
@ZacGenerate()
class FlutterOutlineInputBorder
    with _$FlutterOutlineInputBorder
    implements FlutterInputBorder {
  const FlutterOutlineInputBorder._();

  static const String unionValue = 'f:1:OutlineInputBorder';

  factory FlutterOutlineInputBorder.fromJson(Map<String, dynamic> json) =>
      _$FlutterOutlineInputBorderFromJson(json);

  @FreezedUnionValue(FlutterOutlineInputBorder.unionValue)
  factory FlutterOutlineInputBorder({
    FlutterBorderSide? borderSide,
    FlutterBorderRadius? borderRadius,
    ZacValue<double?>? gapPadding,
  }) = _FlutterOutlineInputBorder;

  OutlineInputBorder _build(ZacContext zacContext) {
    return OutlineInputBorder(
      borderSide: borderSide?.build(zacContext) ?? const BorderSide(),
      borderRadius: borderRadius?.build(zacContext) ??
          const BorderRadius.all(Radius.circular(4.0)),
      gapPadding: gapPadding?.build(zacContext) ?? 4.0,
    );
  }

  @override
  OutlineInputBorder build(ZacContext zacContext,
      {ZacBuilderConsume onConsume = const ZacBuilderConsume()}) {
    return _build(zacContext);
  }

  @override
  OutlineInputBorder? buildOrNull(ZacContext zacContext,
      {ZacBuilderConsume onConsume = const ZacBuilderConsume()}) {
    return _build(zacContext);
  }
}

@freezedZacBuilder
@ZacGenerate()
class FlutterUnderlineInputBorder
    with _$FlutterUnderlineInputBorder
    implements FlutterInputBorder {
  const FlutterUnderlineInputBorder._();

  static const String unionValue = 'f:1:UnderlineInputBorder';

  factory FlutterUnderlineInputBorder.fromJson(Map<String, dynamic> json) =>
      _$FlutterUnderlineInputBorderFromJson(json);

  @FreezedUnionValue(FlutterUnderlineInputBorder.unionValue)
  factory FlutterUnderlineInputBorder({
    FlutterBorderSide? borderSide,
    FlutterBorderRadius? borderRadius,
  }) = _FlutterUnderlineInputBorder;

  UnderlineInputBorder _build(ZacContext zacContext) {
    return UnderlineInputBorder(
      borderSide: borderSide?.build(zacContext) ?? const BorderSide(),
      borderRadius: borderRadius?.build(zacContext) ??
          const BorderRadius.only(
            topLeft: Radius.circular(4.0),
            topRight: Radius.circular(4.0),
          ),
    );
  }

  @override
  UnderlineInputBorder build(ZacContext zacContext,
      {ZacBuilderConsume onConsume = const ZacBuilderConsume()}) {
    return _build(zacContext);
  }

  @override
  UnderlineInputBorder? buildOrNull(ZacContext zacContext,
      {ZacBuilderConsume onConsume = const ZacBuilderConsume()}) {
    return _build(zacContext);
  }
}
