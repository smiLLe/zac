import 'package:zac/src/zac/interactions.dart';
import 'package:zac/src/zac/any_value.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zac/src/zac/misc.dart';
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
    ZacInteractions? onPressed,
    ZacInteractions? onLongPress,
    ZacBool? autofocus,
    FlutterClip? clipBehavior,
  }) = _FlutterElevatedButton;

  @FreezedUnionValue(FlutterElevatedButton.unionValueIcon)
  factory FlutterElevatedButton.icon({
    FlutterKey? key,
    required FlutterWidget icon,
    required FlutterWidget label,
    ZacInteractions? onPressed,
    ZacInteractions? onLongPress,
    ZacBool? autofocus,
    FlutterClip? clipBehavior,
  }) = _FlutterElevatedButtonIcon;

  @override
  ElevatedButton buildWidget(
      BuildContext context, WidgetRef ref, ZacInteractionLifetime lifetime) {
    final zacRef = ZacRef.widget(ref);
    return map(
      (value) => ElevatedButton(
        key: value.key?.buildKey(context, ref, lifetime),
        onPressed: value.onPressed?.createCb(
          context: context,
          ref: ref,
          lifetime: lifetime,
        ),
        onLongPress: value.onLongPress?.createCb(
          context: context,
          ref: ref,
          lifetime: lifetime,
        ),
        child: value.child?.buildWidget(context, ref, lifetime),
        autofocus: value.autofocus?.getValue(zacRef) ?? false,
        clipBehavior:
            value.clipBehavior?.build(context, ref, lifetime) ?? Clip.none,
      ),
      icon: (value) => ElevatedButton.icon(
        key: value.key?.buildKey(context, ref, lifetime),
        onPressed: value.onPressed?.createCb(
          context: context,
          ref: ref,
          lifetime: lifetime,
        ),
        onLongPress: value.onLongPress?.createCb(
          context: context,
          ref: ref,
          lifetime: lifetime,
        ),
        icon: value.icon.buildWidget(context, ref, lifetime),
        label: value.label.buildWidget(context, ref, lifetime),
        autofocus: value.autofocus?.getValue(zacRef) ?? false,
        clipBehavior:
            value.clipBehavior?.build(context, ref, lifetime) ?? Clip.none,
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
    ZacInteractions? onPressed,
    ZacInteractions? onLongPress,
    ZacBool? autofocus,
    FlutterClip? clipBehavior,
  }) = _FlutterOutlinedButton;

  @FreezedUnionValue(FlutterOutlinedButton.unionValueIcon)
  factory FlutterOutlinedButton.icon({
    FlutterKey? key,
    required FlutterWidget icon,
    required FlutterWidget label,
    ZacInteractions? onPressed,
    ZacInteractions? onLongPress,
    ZacBool? autofocus,
    FlutterClip? clipBehavior,
  }) = _FlutterOutlinedButtonIcon;

  @override
  OutlinedButton buildWidget(
      BuildContext context, WidgetRef ref, ZacInteractionLifetime lifetime) {
    final zacRef = ZacRef.widget(ref);
    return map(
      (value) => OutlinedButton(
        key: value.key?.buildKey(context, ref, lifetime),
        onPressed: value.onPressed?.createCb(
          context: context,
          ref: ref,
          lifetime: lifetime,
        ),
        onLongPress: value.onLongPress?.createCb(
          context: context,
          ref: ref,
          lifetime: lifetime,
        ),
        child: value.child.buildWidget(context, ref, lifetime),
        autofocus: value.autofocus?.getValue(zacRef) ?? false,
        clipBehavior:
            value.clipBehavior?.build(context, ref, lifetime) ?? Clip.none,
      ),
      icon: (value) => OutlinedButton.icon(
        key: value.key?.buildKey(context, ref, lifetime),
        onPressed: value.onPressed?.createCb(
          context: context,
          ref: ref,
          lifetime: lifetime,
        ),
        onLongPress: value.onLongPress?.createCb(
          context: context,
          ref: ref,
          lifetime: lifetime,
        ),
        icon: value.icon.buildWidget(context, ref, lifetime),
        label: value.label.buildWidget(context, ref, lifetime),
        autofocus: value.autofocus?.getValue(zacRef) ?? false,
        clipBehavior:
            value.clipBehavior?.build(context, ref, lifetime) ?? Clip.none,
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
    ZacInteractions? onPressed,
    ZacInteractions? onLongPress,
    ZacBool? autofocus,
    FlutterClip? clipBehavior,
  }) = _FlutterTextButton;

  @FreezedUnionValue(FlutterTextButton.unionValueIcon)
  factory FlutterTextButton.icon({
    FlutterKey? key,
    required FlutterWidget icon,
    required FlutterWidget label,
    ZacInteractions? onPressed,
    ZacInteractions? onLongPress,
    ZacBool? autofocus,
    FlutterClip? clipBehavior,
  }) = _FlutterTextButtonIcon;

  @override
  TextButton buildWidget(
      BuildContext context, WidgetRef ref, ZacInteractionLifetime lifetime) {
    final zacRef = ZacRef.widget(ref);
    return map(
      (value) => TextButton(
        key: value.key?.buildKey(context, ref, lifetime),
        onPressed: value.onPressed?.createCb(
          context: context,
          ref: ref,
          lifetime: lifetime,
        ),
        onLongPress: value.onLongPress?.createCb(
          context: context,
          ref: ref,
          lifetime: lifetime,
        ),
        child: value.child.buildWidget(context, ref, lifetime),
        autofocus: value.autofocus?.getValue(zacRef) ?? false,
        clipBehavior:
            value.clipBehavior?.build(context, ref, lifetime) ?? Clip.none,
      ),
      icon: (value) => TextButton.icon(
        key: value.key?.buildKey(context, ref, lifetime),
        onPressed: value.onPressed?.createCb(
          context: context,
          ref: ref,
          lifetime: lifetime,
        ),
        onLongPress: value.onLongPress?.createCb(
          context: context,
          ref: ref,
          lifetime: lifetime,
        ),
        icon: value.icon.buildWidget(context, ref, lifetime),
        label: value.label.buildWidget(context, ref, lifetime),
        autofocus: value.autofocus?.getValue(zacRef) ?? false,
        clipBehavior:
            value.clipBehavior?.build(context, ref, lifetime) ?? Clip.none,
      ),
    );
  }
}
