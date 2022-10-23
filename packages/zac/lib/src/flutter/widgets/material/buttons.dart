import 'package:zac/src/zac/action.dart';
import 'package:zac/src/zac/context.dart';
import 'package:zac/src/zac/zac_values.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:zac/src/base.dart';
import 'package:zac/src/flutter/dart_ui.dart';
import 'package:zac/src/flutter/foundation.dart';

part 'buttons.freezed.dart';
part 'buttons.g.dart';

@defaultConverterFreezed
class FlutterElevatedButton
    with _$FlutterElevatedButton
    implements FlutterWidget {
  const FlutterElevatedButton._();

  static const String unionValue = 'f:1:ElevatedButton';
  static const String unionValueIcon = 'f:1:ElevatedButton.icon';

  factory FlutterElevatedButton.fromJson(Map<String, dynamic> json) =>
      _$FlutterElevatedButtonFromJson(json);

  @FreezedUnionValue(FlutterElevatedButton.unionValue)
  factory FlutterElevatedButton({
    FlutterKey? key,
    required FlutterWidget? child,
    ZacActions? onPressed,
    ZacActions? onLongPress,
    ZacValue<bool>? autofocus,
    FlutterClip? clipBehavior,
  }) = _FlutterElevatedButton;

  @FreezedUnionValue(FlutterElevatedButton.unionValueIcon)
  factory FlutterElevatedButton.icon({
    FlutterKey? key,
    required FlutterWidget icon,
    required FlutterWidget label,
    ZacActions? onPressed,
    ZacActions? onLongPress,
    ZacValue<bool>? autofocus,
    FlutterClip? clipBehavior,
  }) = _FlutterElevatedButtonIcon;

  @override
  ElevatedButton buildWidget(ZacContext zacContext) {
    return map(
      (value) => ElevatedButton(
        key: value.key?.buildKey(zacContext),
        onPressed: value.onPressed?.createCb(zacContext),
        onLongPress: value.onLongPress?.createCb(zacContext),
        child: value.child?.buildWidget(zacContext),
        autofocus: value.autofocus?.getValue(zacContext) ?? false,
        clipBehavior: value.clipBehavior?.build(zacContext) ?? Clip.none,
      ),
      icon: (value) => ElevatedButton.icon(
        key: value.key?.buildKey(zacContext),
        onPressed: value.onPressed?.createCb(zacContext),
        onLongPress: value.onLongPress?.createCb(zacContext),
        icon: value.icon.buildWidget(zacContext),
        label: value.label.buildWidget(zacContext),
        autofocus: value.autofocus?.getValue(zacContext) ?? false,
        clipBehavior: value.clipBehavior?.build(zacContext) ?? Clip.none,
      ),
    );
  }
}

@defaultConverterFreezed
class FlutterOutlinedButton
    with _$FlutterOutlinedButton
    implements FlutterWidget {
  const FlutterOutlinedButton._();

  static const String unionValue = 'f:1:OutlinedButton';
  static const String unionValueIcon = 'f:1:OutlinedButton.icon';

  factory FlutterOutlinedButton.fromJson(Map<String, dynamic> json) =>
      _$FlutterOutlinedButtonFromJson(json);

  @FreezedUnionValue(FlutterOutlinedButton.unionValue)
  factory FlutterOutlinedButton({
    FlutterKey? key,
    required FlutterWidget child,
    ZacActions? onPressed,
    ZacActions? onLongPress,
    ZacValue<bool>? autofocus,
    FlutterClip? clipBehavior,
  }) = _FlutterOutlinedButton;

  @FreezedUnionValue(FlutterOutlinedButton.unionValueIcon)
  factory FlutterOutlinedButton.icon({
    FlutterKey? key,
    required FlutterWidget icon,
    required FlutterWidget label,
    ZacActions? onPressed,
    ZacActions? onLongPress,
    ZacValue<bool>? autofocus,
    FlutterClip? clipBehavior,
  }) = _FlutterOutlinedButtonIcon;

  @override
  OutlinedButton buildWidget(ZacContext zacContext) {
    return map(
      (value) => OutlinedButton(
        key: value.key?.buildKey(zacContext),
        onPressed: value.onPressed?.createCb(zacContext),
        onLongPress: value.onLongPress?.createCb(zacContext),
        child: value.child.buildWidget(zacContext),
        autofocus: value.autofocus?.getValue(zacContext) ?? false,
        clipBehavior: value.clipBehavior?.build(zacContext) ?? Clip.none,
      ),
      icon: (value) => OutlinedButton.icon(
        key: value.key?.buildKey(zacContext),
        onPressed: value.onPressed?.createCb(zacContext),
        onLongPress: value.onLongPress?.createCb(zacContext),
        icon: value.icon.buildWidget(zacContext),
        label: value.label.buildWidget(zacContext),
        autofocus: value.autofocus?.getValue(zacContext) ?? false,
        clipBehavior: value.clipBehavior?.build(zacContext) ?? Clip.none,
      ),
    );
  }
}

@defaultConverterFreezed
class FlutterTextButton with _$FlutterTextButton implements FlutterWidget {
  const FlutterTextButton._();

  static const String unionValue = 'f:1:TextButton';
  static const String unionValueIcon = 'f:1:TextButton.icon';

  factory FlutterTextButton.fromJson(Map<String, dynamic> json) =>
      _$FlutterTextButtonFromJson(json);

  @FreezedUnionValue(FlutterTextButton.unionValue)
  factory FlutterTextButton({
    FlutterKey? key,
    required FlutterWidget child,
    ZacActions? onPressed,
    ZacActions? onLongPress,
    ZacValue<bool>? autofocus,
    FlutterClip? clipBehavior,
  }) = _FlutterTextButton;

  @FreezedUnionValue(FlutterTextButton.unionValueIcon)
  factory FlutterTextButton.icon({
    FlutterKey? key,
    required FlutterWidget icon,
    required FlutterWidget label,
    ZacActions? onPressed,
    ZacActions? onLongPress,
    ZacValue<bool>? autofocus,
    FlutterClip? clipBehavior,
  }) = _FlutterTextButtonIcon;

  @override
  TextButton buildWidget(ZacContext zacContext) {
    return map(
      (value) => TextButton(
        key: value.key?.buildKey(zacContext),
        onPressed: value.onPressed?.createCb(zacContext),
        onLongPress: value.onLongPress?.createCb(zacContext),
        child: value.child.buildWidget(zacContext),
        autofocus: value.autofocus?.getValue(zacContext) ?? false,
        clipBehavior: value.clipBehavior?.build(zacContext) ?? Clip.none,
      ),
      icon: (value) => TextButton.icon(
        key: value.key?.buildKey(zacContext),
        onPressed: value.onPressed?.createCb(zacContext),
        onLongPress: value.onLongPress?.createCb(zacContext),
        icon: value.icon.buildWidget(zacContext),
        label: value.label.buildWidget(zacContext),
        autofocus: value.autofocus?.getValue(zacContext) ?? false,
        clipBehavior: value.clipBehavior?.build(zacContext) ?? Clip.none,
      ),
    );
  }
}
