import 'package:zac/src/zac/action.dart';
import 'package:zac/src/zac/context.dart';
import 'package:zac/src/zac/zac_builder.dart';
import 'package:zac/src/zac/zac_value.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:zac/src/base.dart';
import 'package:zac/src/flutter/dart_ui.dart';
import 'package:zac/src/flutter/foundation.dart';

part 'buttons.freezed.dart';
part 'buttons.g.dart';

@freezedZacBuilder
@ZacGenerate(order: zacGenerateOrderFlutterWidget)
class FlutterElevatedButton
    with _$FlutterElevatedButton
    implements ZacBuilder<ElevatedButton> {
  const FlutterElevatedButton._();

  static const String unionValue = 'f:1:ElevatedButton';
  static const String unionValueIcon = 'f:1:ElevatedButton.icon';

  factory FlutterElevatedButton.fromJson(Map<String, dynamic> json) =>
      _$FlutterElevatedButtonFromJson(json);

  @FreezedUnionValue(FlutterElevatedButton.unionValue)
  factory FlutterElevatedButton({
    FlutterKey? key,
    required ZacValue<Widget?>? child,
    ZacActions? onPressed,
    ZacActions? onLongPress,
    ZacValue<bool?>? autofocus,
    FlutterClip? clipBehavior,
  }) = _FlutterElevatedButton;

  @FreezedUnionValue(FlutterElevatedButton.unionValueIcon)
  factory FlutterElevatedButton.icon({
    FlutterKey? key,
    required ZacValue<Widget> icon,
    required ZacValue<Widget> label,
    ZacActions? onPressed,
    ZacActions? onLongPress,
    ZacValue<bool?>? autofocus,
    FlutterClip? clipBehavior,
  }) = _FlutterElevatedButtonIcon;

  ElevatedButton _buildWidget(ZacContext zacContext) {
    return map(
      (value) => ElevatedButton(
        key: value.key?.build(zacContext),
        onPressed: value.onPressed?.createCb(zacContext),
        onLongPress: value.onLongPress?.createCb(zacContext),
        autofocus: value.autofocus?.build(zacContext) ?? false,
        clipBehavior: value.clipBehavior?.build(zacContext) ?? Clip.none,
        child: value.child?.build(zacContext),
      ),
      icon: (value) => ElevatedButton.icon(
        key: value.key?.build(zacContext),
        onPressed: value.onPressed?.createCb(zacContext),
        onLongPress: value.onLongPress?.createCb(zacContext),
        icon: value.icon.build(zacContext),
        label: value.label.build(zacContext),
        autofocus: value.autofocus?.build(zacContext) ?? false,
        clipBehavior: value.clipBehavior?.build(zacContext) ?? Clip.none,
      ),
    );
  }

  @override
  ElevatedButton build(ZacContext zacContext) {
    return _buildWidget(zacContext);
  }
}

@freezedZacBuilder
@ZacGenerate(order: zacGenerateOrderFlutterWidget)
class FlutterOutlinedButton
    with _$FlutterOutlinedButton
    implements ZacBuilder<OutlinedButton> {
  const FlutterOutlinedButton._();

  static const String unionValue = 'f:1:OutlinedButton';
  static const String unionValueIcon = 'f:1:OutlinedButton.icon';

  factory FlutterOutlinedButton.fromJson(Map<String, dynamic> json) =>
      _$FlutterOutlinedButtonFromJson(json);

  @FreezedUnionValue(FlutterOutlinedButton.unionValue)
  factory FlutterOutlinedButton({
    FlutterKey? key,
    required ZacValue<Widget> child,
    ZacActions? onPressed,
    ZacActions? onLongPress,
    ZacValue<bool?>? autofocus,
    FlutterClip? clipBehavior,
  }) = _FlutterOutlinedButton;

  @FreezedUnionValue(FlutterOutlinedButton.unionValueIcon)
  factory FlutterOutlinedButton.icon({
    FlutterKey? key,
    required ZacValue<Widget> icon,
    required ZacValue<Widget> label,
    ZacActions? onPressed,
    ZacActions? onLongPress,
    ZacValue<bool?>? autofocus,
    FlutterClip? clipBehavior,
  }) = _FlutterOutlinedButtonIcon;

  OutlinedButton _buildWidget(ZacContext zacContext) {
    return map(
      (value) => OutlinedButton(
        key: value.key?.build(zacContext),
        onPressed: value.onPressed?.createCb(zacContext),
        onLongPress: value.onLongPress?.createCb(zacContext),
        autofocus: value.autofocus?.build(zacContext) ?? false,
        clipBehavior: value.clipBehavior?.build(zacContext) ?? Clip.none,
        child: value.child.build(zacContext),
      ),
      icon: (value) => OutlinedButton.icon(
        key: value.key?.build(zacContext),
        onPressed: value.onPressed?.createCb(zacContext),
        onLongPress: value.onLongPress?.createCb(zacContext),
        icon: value.icon.build(zacContext),
        label: value.label.build(zacContext),
        autofocus: value.autofocus?.build(zacContext) ?? false,
        clipBehavior: value.clipBehavior?.build(zacContext) ?? Clip.none,
      ),
    );
  }

  @override
  OutlinedButton build(ZacContext zacContext) {
    return _buildWidget(zacContext);
  }
}

@freezedZacBuilder
@ZacGenerate(order: zacGenerateOrderFlutterWidget)
class FlutterTextButton
    with _$FlutterTextButton
    implements ZacBuilder<TextButton> {
  const FlutterTextButton._();

  static const String unionValue = 'f:1:TextButton';
  static const String unionValueIcon = 'f:1:TextButton.icon';

  factory FlutterTextButton.fromJson(Map<String, dynamic> json) =>
      _$FlutterTextButtonFromJson(json);

  @FreezedUnionValue(FlutterTextButton.unionValue)
  factory FlutterTextButton({
    FlutterKey? key,
    required ZacValue<Widget> child,
    ZacActions? onPressed,
    ZacActions? onLongPress,
    ZacValue<bool?>? autofocus,
    FlutterClip? clipBehavior,
  }) = _FlutterTextButton;

  @FreezedUnionValue(FlutterTextButton.unionValueIcon)
  factory FlutterTextButton.icon({
    FlutterKey? key,
    required ZacValue<Widget> icon,
    required ZacValue<Widget> label,
    ZacActions? onPressed,
    ZacActions? onLongPress,
    ZacValue<bool?>? autofocus,
    FlutterClip? clipBehavior,
  }) = _FlutterTextButtonIcon;

  TextButton _buildWidget(ZacContext zacContext) {
    return map(
      (value) => TextButton(
        key: value.key?.build(zacContext),
        onPressed: value.onPressed?.createCb(zacContext),
        onLongPress: value.onLongPress?.createCb(zacContext),
        autofocus: value.autofocus?.build(zacContext) ?? false,
        clipBehavior: value.clipBehavior?.build(zacContext) ?? Clip.none,
        child: value.child.build(zacContext),
      ),
      icon: (value) => TextButton.icon(
        key: value.key?.build(zacContext),
        onPressed: value.onPressed?.createCb(zacContext),
        onLongPress: value.onLongPress?.createCb(zacContext),
        icon: value.icon.build(zacContext),
        label: value.label.build(zacContext),
        autofocus: value.autofocus?.build(zacContext) ?? false,
        clipBehavior: value.clipBehavior?.build(zacContext) ?? Clip.none,
      ),
    );
  }

  @override
  TextButton build(ZacContext zacContext) {
    return _buildWidget(zacContext);
  }
}
