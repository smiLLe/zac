import 'package:zac/src/zac/actions/action.dart';
import 'package:zac/src/zac/any_value/any_value.dart';

import 'package:zac/src/zac/context/widget_context.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:zac/src/base.dart';
import 'package:zac/src/flutter/dart_ui/dart_ui.dart';
import 'package:zac/src/flutter/mixed/keys/keys.dart';

part 'buttons.freezed.dart';
part 'buttons.g.dart';

@defaultConverterFreezed
class FlutterElevatedButton with _$FlutterElevatedButton implements ZacWidget {
  const FlutterElevatedButton._();

  static const String unionValue = 'f:1:ElevatedButton';
  static const String unionValueIcon = 'f:1:ElevatedButton.icon';

  factory FlutterElevatedButton.fromJson(Map<String, dynamic> json) =>
      _$FlutterElevatedButtonFromJson(json);

  @FreezedUnionValue(FlutterElevatedButton.unionValue)
  factory FlutterElevatedButton({
    FlutterKey? key,
    required ZacWidget? child,
    ZacActions? onPressed,
    ZacActions? onLongPress,
    ZacBool? autofocus,
    FlutterClip? clipBehavior,
  }) = _FlutterElevatedButton;

  @FreezedUnionValue(FlutterElevatedButton.unionValueIcon)
  factory FlutterElevatedButton.icon({
    FlutterKey? key,
    required ZacWidget icon,
    required ZacWidget label,
    ZacActions? onPressed,
    ZacActions? onLongPress,
    ZacBool? autofocus,
    FlutterClip? clipBehavior,
  }) = _FlutterElevatedButtonIcon;

  @override
  ElevatedButton buildWidget(ZacBuildContext context) {
    return map(
      (value) => ElevatedButton(
        key: value.key?.build(context),
        onPressed: actionsCallback(value.onPressed, context),
        onLongPress: actionsCallback(value.onLongPress, context),
        child: value.child?.buildWidget(context),
        autofocus: value.autofocus?.getValue(context) ?? false,
        clipBehavior: value.clipBehavior?.build(context) ?? Clip.none,
      ),
      icon: (value) => ElevatedButton.icon(
        key: value.key?.build(context),
        onPressed: actionsCallback(value.onPressed, context),
        onLongPress: actionsCallback(value.onLongPress, context),
        icon: value.icon.buildWidget(context),
        label: value.label.buildWidget(context),
        autofocus: value.autofocus?.getValue(context) ?? false,
        clipBehavior: value.clipBehavior?.build(context) ?? Clip.none,
      ),
    );
  }
}

@defaultConverterFreezed
class FlutterOutlinedButton with _$FlutterOutlinedButton implements ZacWidget {
  const FlutterOutlinedButton._();

  static const String unionValue = 'f:1:OutlinedButton';
  static const String unionValueIcon = 'f:1:OutlinedButton.icon';

  factory FlutterOutlinedButton.fromJson(Map<String, dynamic> json) =>
      _$FlutterOutlinedButtonFromJson(json);

  @FreezedUnionValue(FlutterOutlinedButton.unionValue)
  factory FlutterOutlinedButton({
    FlutterKey? key,
    required ZacWidget child,
    ZacActions? onPressed,
    ZacActions? onLongPress,
    ZacBool? autofocus,
    FlutterClip? clipBehavior,
  }) = _FlutterOutlinedButton;

  @FreezedUnionValue(FlutterOutlinedButton.unionValueIcon)
  factory FlutterOutlinedButton.icon({
    FlutterKey? key,
    required ZacWidget icon,
    required ZacWidget label,
    ZacActions? onPressed,
    ZacActions? onLongPress,
    ZacBool? autofocus,
    FlutterClip? clipBehavior,
  }) = _FlutterOutlinedButtonIcon;

  @override
  OutlinedButton buildWidget(ZacBuildContext context) {
    return map(
      (value) => OutlinedButton(
        key: value.key?.build(context),
        onPressed: actionsCallback(value.onPressed, context),
        onLongPress: actionsCallback(value.onLongPress, context),
        child: value.child.buildWidget(context),
        autofocus: value.autofocus?.getValue(context) ?? false,
        clipBehavior: value.clipBehavior?.build(context) ?? Clip.none,
      ),
      icon: (value) => OutlinedButton.icon(
        key: value.key?.build(context),
        onPressed: actionsCallback(value.onPressed, context),
        onLongPress: actionsCallback(value.onLongPress, context),
        icon: value.icon.buildWidget(context),
        label: value.label.buildWidget(context),
        autofocus: value.autofocus?.getValue(context) ?? false,
        clipBehavior: value.clipBehavior?.build(context) ?? Clip.none,
      ),
    );
  }
}

@defaultConverterFreezed
class FlutterTextButton with _$FlutterTextButton implements ZacWidget {
  const FlutterTextButton._();

  static const String unionValue = 'f:1:TextButton';
  static const String unionValueIcon = 'f:1:TextButton.icon';

  factory FlutterTextButton.fromJson(Map<String, dynamic> json) =>
      _$FlutterTextButtonFromJson(json);

  @FreezedUnionValue(FlutterTextButton.unionValue)
  factory FlutterTextButton({
    FlutterKey? key,
    required ZacWidget child,
    ZacActions? onPressed,
    ZacActions? onLongPress,
    ZacBool? autofocus,
    FlutterClip? clipBehavior,
  }) = _FlutterTextButton;

  @FreezedUnionValue(FlutterTextButton.unionValueIcon)
  factory FlutterTextButton.icon({
    FlutterKey? key,
    required ZacWidget icon,
    required ZacWidget label,
    ZacActions? onPressed,
    ZacActions? onLongPress,
    ZacBool? autofocus,
    FlutterClip? clipBehavior,
  }) = _FlutterTextButtonIcon;

  @override
  TextButton buildWidget(ZacBuildContext context) {
    return map(
      (value) => TextButton(
        key: value.key?.build(context),
        onPressed: actionsCallback(value.onPressed, context),
        onLongPress: actionsCallback(value.onLongPress, context),
        child: value.child.buildWidget(context),
        autofocus: value.autofocus?.getValue(context) ?? false,
        clipBehavior: value.clipBehavior?.build(context) ?? Clip.none,
      ),
      icon: (value) => TextButton.icon(
        key: value.key?.build(context),
        onPressed: actionsCallback(value.onPressed, context),
        onLongPress: actionsCallback(value.onLongPress, context),
        icon: value.icon.buildWidget(context),
        label: value.label.buildWidget(context),
        autofocus: value.autofocus?.getValue(context) ?? false,
        clipBehavior: value.clipBehavior?.build(context) ?? Clip.none,
      ),
    );
  }
}
