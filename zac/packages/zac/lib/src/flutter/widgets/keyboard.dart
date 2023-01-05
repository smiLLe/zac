import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:zac/src/base.dart';
import 'package:zac/src/zac/context.dart';
import 'package:zac/src/zac/zac_builder.dart';

part 'keyboard.freezed.dart';
part 'keyboard.g.dart';

@freezedZacBuilder
class FlutterScrollViewKeyboardDismissBehavior
    with
        _$FlutterScrollViewKeyboardDismissBehavior,
        ZacBuilder<ScrollViewKeyboardDismissBehavior> {
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

  ScrollViewKeyboardDismissBehavior _build(
      BuildContext context, ZacContext zacContext) {
    return map(
        manual: (_) => ScrollViewKeyboardDismissBehavior.manual,
        onDrag: (_) => ScrollViewKeyboardDismissBehavior.onDrag);
  }

  @override
  ScrollViewKeyboardDismissBehavior build(
      BuildContext context, ZacContext zacContext) {
    return _build(context, zacContext);
  }
}
