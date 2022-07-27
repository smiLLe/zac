import 'package:zac/src/zac/context/widget_context.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:zac/src/base.dart';

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

  ScrollViewKeyboardDismissBehavior build(ZacBuildContext context) {
    return map(
        manual: (_) => ScrollViewKeyboardDismissBehavior.manual,
        onDrag: (_) => ScrollViewKeyboardDismissBehavior.onDrag);
  }
}
