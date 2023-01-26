import 'package:zac/src/zac/action.dart';
import 'package:zac/src/zac/context.dart';
import 'package:zac/src/zac/zac_builder.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:zac/src/base.dart';
part 'buttons.freezed.dart';
part 'buttons.g.dart';

@freezedZacBuilder
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
    ZacBuilder<Key?>? key,
    ZacBuilder<Widget?>? child,
    ZacBuilder<List<ZacAction>?>? onPressed,
    ZacBuilder<List<ZacAction>?>? onLongPress,
    ZacBuilder<bool?>? autofocus,
    ZacBuilder<Clip?>? clipBehavior,
  }) = _FlutterElevatedButton;

  @FreezedUnionValue(FlutterElevatedButton.unionValueIcon)
  factory FlutterElevatedButton.icon({
    ZacBuilder<Key?>? key,
    required ZacBuilder<Widget> icon,
    required ZacBuilder<Widget> label,
    ZacBuilder<List<ZacAction>?>? onPressed,
    ZacBuilder<List<ZacAction>?>? onLongPress,
    ZacBuilder<bool?>? autofocus,
    ZacBuilder<Clip?>? clipBehavior,
  }) = _FlutterElevatedButtonIcon;

  ElevatedButton _buildWidget(BuildContext context, ZacContext zacContext) {
    return map(
      (value) => ElevatedButton(
        key: value.key?.build(context, zacContext),
        onPressed: value.onPressed
            ?.build(context, zacContext)
            ?.createCb(context, zacContext),
        onLongPress: value.onLongPress
            ?.build(context, zacContext)
            ?.createCb(context, zacContext),
        autofocus: value.autofocus?.build(context, zacContext) ?? false,
        clipBehavior:
            value.clipBehavior?.build(context, zacContext) ?? Clip.none,
        child: value.child?.build(context, zacContext),
      ),
      icon: (value) => ElevatedButton.icon(
        key: value.key?.build(context, zacContext),
        onPressed: value.onPressed
            ?.build(context, zacContext)
            ?.createCb(context, zacContext),
        onLongPress: value.onLongPress
            ?.build(context, zacContext)
            ?.createCb(context, zacContext),
        icon: value.icon.build(context, zacContext),
        label: value.label.build(context, zacContext),
        autofocus: value.autofocus?.build(context, zacContext) ?? false,
        clipBehavior:
            value.clipBehavior?.build(context, zacContext) ?? Clip.none,
      ),
    );
  }

  @override
  ElevatedButton build(BuildContext context, ZacContext zacContext) {
    return _buildWidget(context, zacContext);
  }
}

@freezedZacBuilder
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
    ZacBuilder<Key?>? key,
    required ZacBuilder<Widget> child,
    ZacBuilder<List<ZacAction>?>? onPressed,
    ZacBuilder<List<ZacAction>?>? onLongPress,
    ZacBuilder<bool?>? autofocus,
    ZacBuilder<Clip?>? clipBehavior,
  }) = _FlutterOutlinedButton;

  @FreezedUnionValue(FlutterOutlinedButton.unionValueIcon)
  factory FlutterOutlinedButton.icon({
    ZacBuilder<Key?>? key,
    required ZacBuilder<Widget> icon,
    required ZacBuilder<Widget> label,
    ZacBuilder<List<ZacAction>?>? onPressed,
    ZacBuilder<List<ZacAction>?>? onLongPress,
    ZacBuilder<bool?>? autofocus,
    ZacBuilder<Clip?>? clipBehavior,
  }) = _FlutterOutlinedButtonIcon;

  OutlinedButton _buildWidget(BuildContext context, ZacContext zacContext) {
    return map(
      (value) => OutlinedButton(
        key: value.key?.build(context, zacContext),
        onPressed: value.onPressed
            ?.build(context, zacContext)
            ?.createCb(context, zacContext),
        onLongPress: value.onLongPress
            ?.build(context, zacContext)
            ?.createCb(context, zacContext),
        autofocus: value.autofocus?.build(context, zacContext) ?? false,
        clipBehavior:
            value.clipBehavior?.build(context, zacContext) ?? Clip.none,
        child: value.child.build(context, zacContext),
      ),
      icon: (value) => OutlinedButton.icon(
        key: value.key?.build(context, zacContext),
        onPressed: value.onPressed
            ?.build(context, zacContext)
            ?.createCb(context, zacContext),
        onLongPress: value.onLongPress
            ?.build(context, zacContext)
            ?.createCb(context, zacContext),
        icon: value.icon.build(context, zacContext),
        label: value.label.build(context, zacContext),
        autofocus: value.autofocus?.build(context, zacContext) ?? false,
        clipBehavior:
            value.clipBehavior?.build(context, zacContext) ?? Clip.none,
      ),
    );
  }

  @override
  OutlinedButton build(BuildContext context, ZacContext zacContext) {
    return _buildWidget(context, zacContext);
  }
}

@freezedZacBuilder
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
    ZacBuilder<Key?>? key,
    required ZacBuilder<Widget> child,
    ZacBuilder<List<ZacAction>?>? onPressed,
    ZacBuilder<List<ZacAction>?>? onLongPress,
    ZacBuilder<bool?>? autofocus,
    ZacBuilder<Clip?>? clipBehavior,
  }) = _FlutterTextButton;

  @FreezedUnionValue(FlutterTextButton.unionValueIcon)
  factory FlutterTextButton.icon({
    ZacBuilder<Key?>? key,
    required ZacBuilder<Widget> icon,
    required ZacBuilder<Widget> label,
    ZacBuilder<List<ZacAction>?>? onPressed,
    ZacBuilder<List<ZacAction>?>? onLongPress,
    ZacBuilder<bool?>? autofocus,
    ZacBuilder<Clip?>? clipBehavior,
  }) = _FlutterTextButtonIcon;

  TextButton _buildWidget(BuildContext context, ZacContext zacContext) {
    return map(
      (value) => TextButton(
        key: value.key?.build(context, zacContext),
        onPressed: value.onPressed
            ?.build(context, zacContext)
            ?.createCb(context, zacContext),
        onLongPress: value.onLongPress
            ?.build(context, zacContext)
            ?.createCb(context, zacContext),
        autofocus: value.autofocus?.build(context, zacContext) ?? false,
        clipBehavior:
            value.clipBehavior?.build(context, zacContext) ?? Clip.none,
        child: value.child.build(context, zacContext),
      ),
      icon: (value) => TextButton.icon(
        key: value.key?.build(context, zacContext),
        onPressed: value.onPressed
            ?.build(context, zacContext)
            ?.createCb(context, zacContext),
        onLongPress: value.onLongPress
            ?.build(context, zacContext)
            ?.createCb(context, zacContext),
        icon: value.icon.build(context, zacContext),
        label: value.label.build(context, zacContext),
        autofocus: value.autofocus?.build(context, zacContext) ?? false,
        clipBehavior:
            value.clipBehavior?.build(context, zacContext) ?? Clip.none,
      ),
    );
  }

  @override
  TextButton build(BuildContext context, ZacContext zacContext) {
    return _buildWidget(context, zacContext);
  }
}
