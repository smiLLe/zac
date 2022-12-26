// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'buttons.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FlutterElevatedButton _$FlutterElevatedButtonFromJson(
    Map<String, dynamic> json) {
  switch (json['builder']) {
    case 'f:1:ElevatedButton':
      return _FlutterElevatedButton.fromJson(json);
    case 'f:1:ElevatedButton.icon':
      return _FlutterElevatedButtonIcon.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'builder', 'FlutterElevatedButton',
          'Invalid union type "${json['builder']}"!');
  }
}

/// @nodoc
mixin _$FlutterElevatedButton {
  ZacValue<Key?>? get key => throw _privateConstructorUsedError;
  ZacActions? get onPressed => throw _privateConstructorUsedError;
  ZacActions? get onLongPress => throw _privateConstructorUsedError;
  ZacValue<bool?>? get autofocus => throw _privateConstructorUsedError;
  ZacValue<Clip?>? get clipBehavior => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_FlutterElevatedButton value) $default, {
    required TResult Function(_FlutterElevatedButtonIcon value) icon,
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_FlutterElevatedButton extends _FlutterElevatedButton {
  _$_FlutterElevatedButton(
      {this.key,
      required this.child,
      this.onPressed,
      this.onLongPress,
      this.autofocus,
      this.clipBehavior,
      final String? $type})
      : $type = $type ?? 'f:1:ElevatedButton',
        super._();

  factory _$_FlutterElevatedButton.fromJson(Map<String, dynamic> json) =>
      _$$_FlutterElevatedButtonFromJson(json);

  @override
  final ZacValue<Key?>? key;
  @override
  final ZacValue<Widget?>? child;
  @override
  final ZacActions? onPressed;
  @override
  final ZacActions? onLongPress;
  @override
  final ZacValue<bool?>? autofocus;
  @override
  final ZacValue<Clip?>? clipBehavior;

  @JsonKey(name: 'builder')
  final String $type;

  @override
  String toString() {
    return 'FlutterElevatedButton(key: $key, child: $child, onPressed: $onPressed, onLongPress: $onLongPress, autofocus: $autofocus, clipBehavior: $clipBehavior)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FlutterElevatedButton &&
            (identical(other.key, key) || other.key == key) &&
            (identical(other.child, child) || other.child == child) &&
            (identical(other.onPressed, onPressed) ||
                other.onPressed == onPressed) &&
            (identical(other.onLongPress, onLongPress) ||
                other.onLongPress == onLongPress) &&
            (identical(other.autofocus, autofocus) ||
                other.autofocus == autofocus) &&
            (identical(other.clipBehavior, clipBehavior) ||
                other.clipBehavior == clipBehavior));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, key, child, onPressed, onLongPress, autofocus, clipBehavior);

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_FlutterElevatedButton value) $default, {
    required TResult Function(_FlutterElevatedButtonIcon value) icon,
  }) {
    return $default(this);
  }
}

abstract class _FlutterElevatedButton extends FlutterElevatedButton {
  factory _FlutterElevatedButton(
      {final ZacValue<Key?>? key,
      required final ZacValue<Widget?>? child,
      final ZacActions? onPressed,
      final ZacActions? onLongPress,
      final ZacValue<bool?>? autofocus,
      final ZacValue<Clip?>? clipBehavior}) = _$_FlutterElevatedButton;
  _FlutterElevatedButton._() : super._();

  factory _FlutterElevatedButton.fromJson(Map<String, dynamic> json) =
      _$_FlutterElevatedButton.fromJson;

  @override
  ZacValue<Key?>? get key;
  ZacValue<Widget?>? get child;
  @override
  ZacActions? get onPressed;
  @override
  ZacActions? get onLongPress;
  @override
  ZacValue<bool?>? get autofocus;
  @override
  ZacValue<Clip?>? get clipBehavior;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_FlutterElevatedButtonIcon extends _FlutterElevatedButtonIcon {
  _$_FlutterElevatedButtonIcon(
      {this.key,
      required this.icon,
      required this.label,
      this.onPressed,
      this.onLongPress,
      this.autofocus,
      this.clipBehavior,
      final String? $type})
      : $type = $type ?? 'f:1:ElevatedButton.icon',
        super._();

  factory _$_FlutterElevatedButtonIcon.fromJson(Map<String, dynamic> json) =>
      _$$_FlutterElevatedButtonIconFromJson(json);

  @override
  final ZacValue<Key?>? key;
  @override
  final ZacValue<Widget> icon;
  @override
  final ZacValue<Widget> label;
  @override
  final ZacActions? onPressed;
  @override
  final ZacActions? onLongPress;
  @override
  final ZacValue<bool?>? autofocus;
  @override
  final ZacValue<Clip?>? clipBehavior;

  @JsonKey(name: 'builder')
  final String $type;

  @override
  String toString() {
    return 'FlutterElevatedButton.icon(key: $key, icon: $icon, label: $label, onPressed: $onPressed, onLongPress: $onLongPress, autofocus: $autofocus, clipBehavior: $clipBehavior)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FlutterElevatedButtonIcon &&
            (identical(other.key, key) || other.key == key) &&
            (identical(other.icon, icon) || other.icon == icon) &&
            (identical(other.label, label) || other.label == label) &&
            (identical(other.onPressed, onPressed) ||
                other.onPressed == onPressed) &&
            (identical(other.onLongPress, onLongPress) ||
                other.onLongPress == onLongPress) &&
            (identical(other.autofocus, autofocus) ||
                other.autofocus == autofocus) &&
            (identical(other.clipBehavior, clipBehavior) ||
                other.clipBehavior == clipBehavior));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, key, icon, label, onPressed,
      onLongPress, autofocus, clipBehavior);

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_FlutterElevatedButton value) $default, {
    required TResult Function(_FlutterElevatedButtonIcon value) icon,
  }) {
    return icon(this);
  }
}

abstract class _FlutterElevatedButtonIcon extends FlutterElevatedButton {
  factory _FlutterElevatedButtonIcon(
      {final ZacValue<Key?>? key,
      required final ZacValue<Widget> icon,
      required final ZacValue<Widget> label,
      final ZacActions? onPressed,
      final ZacActions? onLongPress,
      final ZacValue<bool?>? autofocus,
      final ZacValue<Clip?>? clipBehavior}) = _$_FlutterElevatedButtonIcon;
  _FlutterElevatedButtonIcon._() : super._();

  factory _FlutterElevatedButtonIcon.fromJson(Map<String, dynamic> json) =
      _$_FlutterElevatedButtonIcon.fromJson;

  @override
  ZacValue<Key?>? get key;
  ZacValue<Widget> get icon;
  ZacValue<Widget> get label;
  @override
  ZacActions? get onPressed;
  @override
  ZacActions? get onLongPress;
  @override
  ZacValue<bool?>? get autofocus;
  @override
  ZacValue<Clip?>? get clipBehavior;
}

FlutterOutlinedButton _$FlutterOutlinedButtonFromJson(
    Map<String, dynamic> json) {
  switch (json['builder']) {
    case 'f:1:OutlinedButton':
      return _FlutterOutlinedButton.fromJson(json);
    case 'f:1:OutlinedButton.icon':
      return _FlutterOutlinedButtonIcon.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'builder', 'FlutterOutlinedButton',
          'Invalid union type "${json['builder']}"!');
  }
}

/// @nodoc
mixin _$FlutterOutlinedButton {
  ZacValue<Key?>? get key => throw _privateConstructorUsedError;
  ZacActions? get onPressed => throw _privateConstructorUsedError;
  ZacActions? get onLongPress => throw _privateConstructorUsedError;
  ZacValue<bool?>? get autofocus => throw _privateConstructorUsedError;
  ZacValue<Clip?>? get clipBehavior => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_FlutterOutlinedButton value) $default, {
    required TResult Function(_FlutterOutlinedButtonIcon value) icon,
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_FlutterOutlinedButton extends _FlutterOutlinedButton {
  _$_FlutterOutlinedButton(
      {this.key,
      required this.child,
      this.onPressed,
      this.onLongPress,
      this.autofocus,
      this.clipBehavior,
      final String? $type})
      : $type = $type ?? 'f:1:OutlinedButton',
        super._();

  factory _$_FlutterOutlinedButton.fromJson(Map<String, dynamic> json) =>
      _$$_FlutterOutlinedButtonFromJson(json);

  @override
  final ZacValue<Key?>? key;
  @override
  final ZacValue<Widget> child;
  @override
  final ZacActions? onPressed;
  @override
  final ZacActions? onLongPress;
  @override
  final ZacValue<bool?>? autofocus;
  @override
  final ZacValue<Clip?>? clipBehavior;

  @JsonKey(name: 'builder')
  final String $type;

  @override
  String toString() {
    return 'FlutterOutlinedButton(key: $key, child: $child, onPressed: $onPressed, onLongPress: $onLongPress, autofocus: $autofocus, clipBehavior: $clipBehavior)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FlutterOutlinedButton &&
            (identical(other.key, key) || other.key == key) &&
            (identical(other.child, child) || other.child == child) &&
            (identical(other.onPressed, onPressed) ||
                other.onPressed == onPressed) &&
            (identical(other.onLongPress, onLongPress) ||
                other.onLongPress == onLongPress) &&
            (identical(other.autofocus, autofocus) ||
                other.autofocus == autofocus) &&
            (identical(other.clipBehavior, clipBehavior) ||
                other.clipBehavior == clipBehavior));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, key, child, onPressed, onLongPress, autofocus, clipBehavior);

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_FlutterOutlinedButton value) $default, {
    required TResult Function(_FlutterOutlinedButtonIcon value) icon,
  }) {
    return $default(this);
  }
}

abstract class _FlutterOutlinedButton extends FlutterOutlinedButton {
  factory _FlutterOutlinedButton(
      {final ZacValue<Key?>? key,
      required final ZacValue<Widget> child,
      final ZacActions? onPressed,
      final ZacActions? onLongPress,
      final ZacValue<bool?>? autofocus,
      final ZacValue<Clip?>? clipBehavior}) = _$_FlutterOutlinedButton;
  _FlutterOutlinedButton._() : super._();

  factory _FlutterOutlinedButton.fromJson(Map<String, dynamic> json) =
      _$_FlutterOutlinedButton.fromJson;

  @override
  ZacValue<Key?>? get key;
  ZacValue<Widget> get child;
  @override
  ZacActions? get onPressed;
  @override
  ZacActions? get onLongPress;
  @override
  ZacValue<bool?>? get autofocus;
  @override
  ZacValue<Clip?>? get clipBehavior;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_FlutterOutlinedButtonIcon extends _FlutterOutlinedButtonIcon {
  _$_FlutterOutlinedButtonIcon(
      {this.key,
      required this.icon,
      required this.label,
      this.onPressed,
      this.onLongPress,
      this.autofocus,
      this.clipBehavior,
      final String? $type})
      : $type = $type ?? 'f:1:OutlinedButton.icon',
        super._();

  factory _$_FlutterOutlinedButtonIcon.fromJson(Map<String, dynamic> json) =>
      _$$_FlutterOutlinedButtonIconFromJson(json);

  @override
  final ZacValue<Key?>? key;
  @override
  final ZacValue<Widget> icon;
  @override
  final ZacValue<Widget> label;
  @override
  final ZacActions? onPressed;
  @override
  final ZacActions? onLongPress;
  @override
  final ZacValue<bool?>? autofocus;
  @override
  final ZacValue<Clip?>? clipBehavior;

  @JsonKey(name: 'builder')
  final String $type;

  @override
  String toString() {
    return 'FlutterOutlinedButton.icon(key: $key, icon: $icon, label: $label, onPressed: $onPressed, onLongPress: $onLongPress, autofocus: $autofocus, clipBehavior: $clipBehavior)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FlutterOutlinedButtonIcon &&
            (identical(other.key, key) || other.key == key) &&
            (identical(other.icon, icon) || other.icon == icon) &&
            (identical(other.label, label) || other.label == label) &&
            (identical(other.onPressed, onPressed) ||
                other.onPressed == onPressed) &&
            (identical(other.onLongPress, onLongPress) ||
                other.onLongPress == onLongPress) &&
            (identical(other.autofocus, autofocus) ||
                other.autofocus == autofocus) &&
            (identical(other.clipBehavior, clipBehavior) ||
                other.clipBehavior == clipBehavior));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, key, icon, label, onPressed,
      onLongPress, autofocus, clipBehavior);

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_FlutterOutlinedButton value) $default, {
    required TResult Function(_FlutterOutlinedButtonIcon value) icon,
  }) {
    return icon(this);
  }
}

abstract class _FlutterOutlinedButtonIcon extends FlutterOutlinedButton {
  factory _FlutterOutlinedButtonIcon(
      {final ZacValue<Key?>? key,
      required final ZacValue<Widget> icon,
      required final ZacValue<Widget> label,
      final ZacActions? onPressed,
      final ZacActions? onLongPress,
      final ZacValue<bool?>? autofocus,
      final ZacValue<Clip?>? clipBehavior}) = _$_FlutterOutlinedButtonIcon;
  _FlutterOutlinedButtonIcon._() : super._();

  factory _FlutterOutlinedButtonIcon.fromJson(Map<String, dynamic> json) =
      _$_FlutterOutlinedButtonIcon.fromJson;

  @override
  ZacValue<Key?>? get key;
  ZacValue<Widget> get icon;
  ZacValue<Widget> get label;
  @override
  ZacActions? get onPressed;
  @override
  ZacActions? get onLongPress;
  @override
  ZacValue<bool?>? get autofocus;
  @override
  ZacValue<Clip?>? get clipBehavior;
}

FlutterTextButton _$FlutterTextButtonFromJson(Map<String, dynamic> json) {
  switch (json['builder']) {
    case 'f:1:TextButton':
      return _FlutterTextButton.fromJson(json);
    case 'f:1:TextButton.icon':
      return _FlutterTextButtonIcon.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'builder', 'FlutterTextButton',
          'Invalid union type "${json['builder']}"!');
  }
}

/// @nodoc
mixin _$FlutterTextButton {
  ZacValue<Key?>? get key => throw _privateConstructorUsedError;
  ZacActions? get onPressed => throw _privateConstructorUsedError;
  ZacActions? get onLongPress => throw _privateConstructorUsedError;
  ZacValue<bool?>? get autofocus => throw _privateConstructorUsedError;
  ZacValue<Clip?>? get clipBehavior => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_FlutterTextButton value) $default, {
    required TResult Function(_FlutterTextButtonIcon value) icon,
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_FlutterTextButton extends _FlutterTextButton {
  _$_FlutterTextButton(
      {this.key,
      required this.child,
      this.onPressed,
      this.onLongPress,
      this.autofocus,
      this.clipBehavior,
      final String? $type})
      : $type = $type ?? 'f:1:TextButton',
        super._();

  factory _$_FlutterTextButton.fromJson(Map<String, dynamic> json) =>
      _$$_FlutterTextButtonFromJson(json);

  @override
  final ZacValue<Key?>? key;
  @override
  final ZacValue<Widget> child;
  @override
  final ZacActions? onPressed;
  @override
  final ZacActions? onLongPress;
  @override
  final ZacValue<bool?>? autofocus;
  @override
  final ZacValue<Clip?>? clipBehavior;

  @JsonKey(name: 'builder')
  final String $type;

  @override
  String toString() {
    return 'FlutterTextButton(key: $key, child: $child, onPressed: $onPressed, onLongPress: $onLongPress, autofocus: $autofocus, clipBehavior: $clipBehavior)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FlutterTextButton &&
            (identical(other.key, key) || other.key == key) &&
            (identical(other.child, child) || other.child == child) &&
            (identical(other.onPressed, onPressed) ||
                other.onPressed == onPressed) &&
            (identical(other.onLongPress, onLongPress) ||
                other.onLongPress == onLongPress) &&
            (identical(other.autofocus, autofocus) ||
                other.autofocus == autofocus) &&
            (identical(other.clipBehavior, clipBehavior) ||
                other.clipBehavior == clipBehavior));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, key, child, onPressed, onLongPress, autofocus, clipBehavior);

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_FlutterTextButton value) $default, {
    required TResult Function(_FlutterTextButtonIcon value) icon,
  }) {
    return $default(this);
  }
}

abstract class _FlutterTextButton extends FlutterTextButton {
  factory _FlutterTextButton(
      {final ZacValue<Key?>? key,
      required final ZacValue<Widget> child,
      final ZacActions? onPressed,
      final ZacActions? onLongPress,
      final ZacValue<bool?>? autofocus,
      final ZacValue<Clip?>? clipBehavior}) = _$_FlutterTextButton;
  _FlutterTextButton._() : super._();

  factory _FlutterTextButton.fromJson(Map<String, dynamic> json) =
      _$_FlutterTextButton.fromJson;

  @override
  ZacValue<Key?>? get key;
  ZacValue<Widget> get child;
  @override
  ZacActions? get onPressed;
  @override
  ZacActions? get onLongPress;
  @override
  ZacValue<bool?>? get autofocus;
  @override
  ZacValue<Clip?>? get clipBehavior;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_FlutterTextButtonIcon extends _FlutterTextButtonIcon {
  _$_FlutterTextButtonIcon(
      {this.key,
      required this.icon,
      required this.label,
      this.onPressed,
      this.onLongPress,
      this.autofocus,
      this.clipBehavior,
      final String? $type})
      : $type = $type ?? 'f:1:TextButton.icon',
        super._();

  factory _$_FlutterTextButtonIcon.fromJson(Map<String, dynamic> json) =>
      _$$_FlutterTextButtonIconFromJson(json);

  @override
  final ZacValue<Key?>? key;
  @override
  final ZacValue<Widget> icon;
  @override
  final ZacValue<Widget> label;
  @override
  final ZacActions? onPressed;
  @override
  final ZacActions? onLongPress;
  @override
  final ZacValue<bool?>? autofocus;
  @override
  final ZacValue<Clip?>? clipBehavior;

  @JsonKey(name: 'builder')
  final String $type;

  @override
  String toString() {
    return 'FlutterTextButton.icon(key: $key, icon: $icon, label: $label, onPressed: $onPressed, onLongPress: $onLongPress, autofocus: $autofocus, clipBehavior: $clipBehavior)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FlutterTextButtonIcon &&
            (identical(other.key, key) || other.key == key) &&
            (identical(other.icon, icon) || other.icon == icon) &&
            (identical(other.label, label) || other.label == label) &&
            (identical(other.onPressed, onPressed) ||
                other.onPressed == onPressed) &&
            (identical(other.onLongPress, onLongPress) ||
                other.onLongPress == onLongPress) &&
            (identical(other.autofocus, autofocus) ||
                other.autofocus == autofocus) &&
            (identical(other.clipBehavior, clipBehavior) ||
                other.clipBehavior == clipBehavior));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, key, icon, label, onPressed,
      onLongPress, autofocus, clipBehavior);

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_FlutterTextButton value) $default, {
    required TResult Function(_FlutterTextButtonIcon value) icon,
  }) {
    return icon(this);
  }
}

abstract class _FlutterTextButtonIcon extends FlutterTextButton {
  factory _FlutterTextButtonIcon(
      {final ZacValue<Key?>? key,
      required final ZacValue<Widget> icon,
      required final ZacValue<Widget> label,
      final ZacActions? onPressed,
      final ZacActions? onLongPress,
      final ZacValue<bool?>? autofocus,
      final ZacValue<Clip?>? clipBehavior}) = _$_FlutterTextButtonIcon;
  _FlutterTextButtonIcon._() : super._();

  factory _FlutterTextButtonIcon.fromJson(Map<String, dynamic> json) =
      _$_FlutterTextButtonIcon.fromJson;

  @override
  ZacValue<Key?>? get key;
  ZacValue<Widget> get icon;
  ZacValue<Widget> get label;
  @override
  ZacActions? get onPressed;
  @override
  ZacActions? get onLongPress;
  @override
  ZacValue<bool?>? get autofocus;
  @override
  ZacValue<Clip?>? get clipBehavior;
}
