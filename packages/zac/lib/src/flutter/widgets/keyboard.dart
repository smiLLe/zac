import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:zac/src/base.dart';
import 'package:zac/src/zac/origin.dart';

part 'keyboard.freezed.dart';
part 'keyboard.g.dart';

@defaultConverterFreezed
class FlutterScrollViewKeyboardDismissBehavior
    with _$FlutterScrollViewKeyboardDismissBehavior {
  const FlutterScrollViewKeyboardDismissBehavior._();

  factory FlutterScrollViewKeyboardDismissBehavior.fromJson(
          Map<String, dynamic> json) =>
      _$FlutterScrollViewKeyboardDismissBehaviorFromJson(json);

  @FreezedUnionValue('f:1:ScrollViewKeyboardDismissBehavior.manual')
  factory FlutterScrollViewKeyboardDismissBehavior.manual() =
      _FlutterScrollViewKeyboardDismissBehaviorManual;

  @FreezedUnionValue('f:1:ScrollViewKeyboardDismissBehavior.onDrag')
  factory FlutterScrollViewKeyboardDismissBehavior.onDrag() =
      _FlutterScrollViewKeyboardDismissBehaviorOnDrag;

  ScrollViewKeyboardDismissBehavior build(ZacOriginWidgetTree origin) {
    return map(
        manual: (_) => ScrollViewKeyboardDismissBehavior.manual,
        onDrag: (_) => ScrollViewKeyboardDismissBehavior.onDrag);
  }
}
