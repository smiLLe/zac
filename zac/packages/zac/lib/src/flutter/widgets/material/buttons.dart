import 'package:zac/src/zac/action.dart';
import 'package:zac/src/zac/context.dart';
import 'package:zac/src/zac/zac_build.dart';
import 'package:zac/src/zac/zac_value.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:zac/src/base.dart';
import 'package:zac/src/flutter/dart_ui.dart';

part 'buttons.freezed.dart';
part 'buttons.g.dart';

@freezedZacBuilder
class FlutterElevatedButton
    with _$FlutterElevatedButton
    implements ZacBuild<ElevatedButton> {
  const FlutterElevatedButton._();

  static const String unionValue = 'f:1:ElevatedButton';
  static const String unionValueIcon = 'f:1:ElevatedButton.icon';

  factory FlutterElevatedButton.fromJson(Map<String, dynamic> json) =>
      _$FlutterElevatedButtonFromJson(json);

  @FreezedUnionValue(FlutterElevatedButton.unionValue)
  factory FlutterElevatedButton({
    ZacValue<Key?>? key,
    required ZacValue<Widget?>? child,
    ZacActions? onPressed,
    ZacActions? onLongPress,
    ZacValue<bool?>? autofocus,
    ZacValue<Clip?>? clipBehavior,
  }) = _FlutterElevatedButton;

  @FreezedUnionValue(FlutterElevatedButton.unionValueIcon)
  factory FlutterElevatedButton.icon({
    ZacValue<Key?>? key,
    required ZacValue<Widget> icon,
    required ZacValue<Widget> label,
    ZacActions? onPressed,
    ZacActions? onLongPress,
    ZacValue<bool?>? autofocus,
    ZacValue<Clip?>? clipBehavior,
  }) = _FlutterElevatedButtonIcon;

  ElevatedButton _buildWidget(ZacContext zacContext) {
    return map(
      (value) => ElevatedButton(
        key: value.key?.getValue(zacContext),
        onPressed: value.onPressed?.createCb(zacContext),
        onLongPress: value.onLongPress?.createCb(zacContext),
        autofocus: value.autofocus?.getValue(zacContext) ?? false,
        clipBehavior: value.clipBehavior?.getValue(zacContext) ?? Clip.none,
        child: value.child?.getValue(zacContext),
      ),
      icon: (value) => ElevatedButton.icon(
        key: value.key?.getValue(zacContext),
        onPressed: value.onPressed?.createCb(zacContext),
        onLongPress: value.onLongPress?.createCb(zacContext),
        icon: value.icon.getValue(zacContext),
        label: value.label.getValue(zacContext),
        autofocus: value.autofocus?.getValue(zacContext) ?? false,
        clipBehavior: value.clipBehavior?.getValue(zacContext) ?? Clip.none,
      ),
    );
  }

  @override
  ElevatedButton build(ZacContext zacContext) {
    return _buildWidget(zacContext);
  }
}

@freezedZacBuilder
class FlutterOutlinedButton
    with _$FlutterOutlinedButton
    implements ZacBuild<OutlinedButton> {
  const FlutterOutlinedButton._();

  static const String unionValue = 'f:1:OutlinedButton';
  static const String unionValueIcon = 'f:1:OutlinedButton.icon';

  factory FlutterOutlinedButton.fromJson(Map<String, dynamic> json) =>
      _$FlutterOutlinedButtonFromJson(json);

  @FreezedUnionValue(FlutterOutlinedButton.unionValue)
  factory FlutterOutlinedButton({
    ZacValue<Key?>? key,
    required ZacValue<Widget> child,
    ZacActions? onPressed,
    ZacActions? onLongPress,
    ZacValue<bool?>? autofocus,
    ZacValue<Clip?>? clipBehavior,
  }) = _FlutterOutlinedButton;

  @FreezedUnionValue(FlutterOutlinedButton.unionValueIcon)
  factory FlutterOutlinedButton.icon({
    ZacValue<Key?>? key,
    required ZacValue<Widget> icon,
    required ZacValue<Widget> label,
    ZacActions? onPressed,
    ZacActions? onLongPress,
    ZacValue<bool?>? autofocus,
    ZacValue<Clip?>? clipBehavior,
  }) = _FlutterOutlinedButtonIcon;

  OutlinedButton _buildWidget(ZacContext zacContext) {
    return map(
      (value) => OutlinedButton(
        key: value.key?.getValue(zacContext),
        onPressed: value.onPressed?.createCb(zacContext),
        onLongPress: value.onLongPress?.createCb(zacContext),
        autofocus: value.autofocus?.getValue(zacContext) ?? false,
        clipBehavior: value.clipBehavior?.getValue(zacContext) ?? Clip.none,
        child: value.child.getValue(zacContext),
      ),
      icon: (value) => OutlinedButton.icon(
        key: value.key?.getValue(zacContext),
        onPressed: value.onPressed?.createCb(zacContext),
        onLongPress: value.onLongPress?.createCb(zacContext),
        icon: value.icon.getValue(zacContext),
        label: value.label.getValue(zacContext),
        autofocus: value.autofocus?.getValue(zacContext) ?? false,
        clipBehavior: value.clipBehavior?.getValue(zacContext) ?? Clip.none,
      ),
    );
  }

  @override
  OutlinedButton build(ZacContext zacContext) {
    return _buildWidget(zacContext);
  }
}

@freezedZacBuilder
class FlutterTextButton
    with _$FlutterTextButton
    implements ZacBuild<TextButton> {
  const FlutterTextButton._();

  static const String unionValue = 'f:1:TextButton';
  static const String unionValueIcon = 'f:1:TextButton.icon';

  factory FlutterTextButton.fromJson(Map<String, dynamic> json) =>
      _$FlutterTextButtonFromJson(json);

  @FreezedUnionValue(FlutterTextButton.unionValue)
  factory FlutterTextButton({
    ZacValue<Key?>? key,
    required ZacValue<Widget> child,
    ZacActions? onPressed,
    ZacActions? onLongPress,
    ZacValue<bool?>? autofocus,
    ZacValue<Clip?>? clipBehavior,
  }) = _FlutterTextButton;

  @FreezedUnionValue(FlutterTextButton.unionValueIcon)
  factory FlutterTextButton.icon({
    ZacValue<Key?>? key,
    required ZacValue<Widget> icon,
    required ZacValue<Widget> label,
    ZacActions? onPressed,
    ZacActions? onLongPress,
    ZacValue<bool?>? autofocus,
    ZacValue<Clip?>? clipBehavior,
  }) = _FlutterTextButtonIcon;

  TextButton _buildWidget(ZacContext zacContext) {
    return map(
      (value) => TextButton(
        key: value.key?.getValue(zacContext),
        onPressed: value.onPressed?.createCb(zacContext),
        onLongPress: value.onLongPress?.createCb(zacContext),
        autofocus: value.autofocus?.getValue(zacContext) ?? false,
        clipBehavior: value.clipBehavior?.getValue(zacContext) ?? Clip.none,
        child: value.child.getValue(zacContext),
      ),
      icon: (value) => TextButton.icon(
        key: value.key?.getValue(zacContext),
        onPressed: value.onPressed?.createCb(zacContext),
        onLongPress: value.onLongPress?.createCb(zacContext),
        icon: value.icon.getValue(zacContext),
        label: value.label.getValue(zacContext),
        autofocus: value.autofocus?.getValue(zacContext) ?? false,
        clipBehavior: value.clipBehavior?.getValue(zacContext) ?? Clip.none,
      ),
    );
  }

  @override
  TextButton build(ZacContext zacContext) {
    return _buildWidget(zacContext);
  }
}
