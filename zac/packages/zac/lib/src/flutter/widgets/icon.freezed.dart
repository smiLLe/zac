// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'icon.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FlutterIcon _$FlutterIconFromJson(Map<String, dynamic> json) {
  return _FlutterIcon.fromJson(json);
}

/// @nodoc
mixin _$FlutterIcon {
  FlutterIconData? get icon => throw _privateConstructorUsedError;
  ZacValue<Key?>? get key => throw _privateConstructorUsedError;
  ZacValue<double?>? get size => throw _privateConstructorUsedError;
  FlutterColor? get color => throw _privateConstructorUsedError;
  ZacValue<String?>? get semanticLabel => throw _privateConstructorUsedError;
  FlutterTextDirection? get textDirection => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_FlutterIcon value) $default,
  ) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_FlutterIcon extends _FlutterIcon {
  _$_FlutterIcon(this.icon,
      {this.key, this.size, this.color, this.semanticLabel, this.textDirection})
      : super._();

  factory _$_FlutterIcon.fromJson(Map<String, dynamic> json) =>
      _$$_FlutterIconFromJson(json);

  @override
  final FlutterIconData? icon;
  @override
  final ZacValue<Key?>? key;
  @override
  final ZacValue<double?>? size;
  @override
  final FlutterColor? color;
  @override
  final ZacValue<String?>? semanticLabel;
  @override
  final FlutterTextDirection? textDirection;

  @override
  String toString() {
    return 'FlutterIcon(icon: $icon, key: $key, size: $size, color: $color, semanticLabel: $semanticLabel, textDirection: $textDirection)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FlutterIcon &&
            (identical(other.icon, icon) || other.icon == icon) &&
            (identical(other.key, key) || other.key == key) &&
            (identical(other.size, size) || other.size == size) &&
            (identical(other.color, color) || other.color == color) &&
            (identical(other.semanticLabel, semanticLabel) ||
                other.semanticLabel == semanticLabel) &&
            (identical(other.textDirection, textDirection) ||
                other.textDirection == textDirection));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, icon, key, size, color, semanticLabel, textDirection);

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_FlutterIcon value) $default,
  ) {
    return $default(this);
  }
}

abstract class _FlutterIcon extends FlutterIcon {
  factory _FlutterIcon(final FlutterIconData? icon,
      {final ZacValue<Key?>? key,
      final ZacValue<double?>? size,
      final FlutterColor? color,
      final ZacValue<String?>? semanticLabel,
      final FlutterTextDirection? textDirection}) = _$_FlutterIcon;
  _FlutterIcon._() : super._();

  factory _FlutterIcon.fromJson(Map<String, dynamic> json) =
      _$_FlutterIcon.fromJson;

  @override
  FlutterIconData? get icon;
  @override
  ZacValue<Key?>? get key;
  @override
  ZacValue<double?>? get size;
  @override
  FlutterColor? get color;
  @override
  ZacValue<String?>? get semanticLabel;
  @override
  FlutterTextDirection? get textDirection;
}

FlutterIconData _$FlutterIconDataFromJson(Map<String, dynamic> json) {
  return _FlutterIconData.fromJson(json);
}

/// @nodoc
mixin _$FlutterIconData {
  ZacValue<int> get codePoint => throw _privateConstructorUsedError;
  ZacValue<String?>? get fontFamily => throw _privateConstructorUsedError;
  ZacValue<String?>? get fontPackage => throw _privateConstructorUsedError;
  ZacValue<bool?>? get matchTextDirection => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_FlutterIconData value) $default,
  ) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_FlutterIconData extends _FlutterIconData {
  _$_FlutterIconData(this.codePoint,
      {this.fontFamily, this.fontPackage, this.matchTextDirection})
      : super._();

  factory _$_FlutterIconData.fromJson(Map<String, dynamic> json) =>
      _$$_FlutterIconDataFromJson(json);

  @override
  final ZacValue<int> codePoint;
  @override
  final ZacValue<String?>? fontFamily;
  @override
  final ZacValue<String?>? fontPackage;
  @override
  final ZacValue<bool?>? matchTextDirection;

  @override
  String toString() {
    return 'FlutterIconData(codePoint: $codePoint, fontFamily: $fontFamily, fontPackage: $fontPackage, matchTextDirection: $matchTextDirection)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FlutterIconData &&
            (identical(other.codePoint, codePoint) ||
                other.codePoint == codePoint) &&
            (identical(other.fontFamily, fontFamily) ||
                other.fontFamily == fontFamily) &&
            (identical(other.fontPackage, fontPackage) ||
                other.fontPackage == fontPackage) &&
            (identical(other.matchTextDirection, matchTextDirection) ||
                other.matchTextDirection == matchTextDirection));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, codePoint, fontFamily, fontPackage, matchTextDirection);

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_FlutterIconData value) $default,
  ) {
    return $default(this);
  }
}

abstract class _FlutterIconData extends FlutterIconData {
  factory _FlutterIconData(final ZacValue<int> codePoint,
      {final ZacValue<String?>? fontFamily,
      final ZacValue<String?>? fontPackage,
      final ZacValue<bool?>? matchTextDirection}) = _$_FlutterIconData;
  _FlutterIconData._() : super._();

  factory _FlutterIconData.fromJson(Map<String, dynamic> json) =
      _$_FlutterIconData.fromJson;

  @override
  ZacValue<int> get codePoint;
  @override
  ZacValue<String?>? get fontFamily;
  @override
  ZacValue<String?>? get fontPackage;
  @override
  ZacValue<bool?>? get matchTextDirection;
}

FlutterIconThemeData _$FlutterIconThemeDataFromJson(Map<String, dynamic> json) {
  return _FlutterIconThemeData.fromJson(json);
}

/// @nodoc
mixin _$FlutterIconThemeData {
  FlutterColor? get color => throw _privateConstructorUsedError;
  ZacValue<double?>? get opacity => throw _privateConstructorUsedError;
  ZacValue<double?>? get size => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_FlutterIconThemeData value) $default,
  ) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_FlutterIconThemeData extends _FlutterIconThemeData {
  _$_FlutterIconThemeData({this.color, this.opacity, this.size}) : super._();

  factory _$_FlutterIconThemeData.fromJson(Map<String, dynamic> json) =>
      _$$_FlutterIconThemeDataFromJson(json);

  @override
  final FlutterColor? color;
  @override
  final ZacValue<double?>? opacity;
  @override
  final ZacValue<double?>? size;

  @override
  String toString() {
    return 'FlutterIconThemeData(color: $color, opacity: $opacity, size: $size)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FlutterIconThemeData &&
            (identical(other.color, color) || other.color == color) &&
            (identical(other.opacity, opacity) || other.opacity == opacity) &&
            (identical(other.size, size) || other.size == size));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, color, opacity, size);

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_FlutterIconThemeData value) $default,
  ) {
    return $default(this);
  }
}

abstract class _FlutterIconThemeData extends FlutterIconThemeData {
  factory _FlutterIconThemeData(
      {final FlutterColor? color,
      final ZacValue<double?>? opacity,
      final ZacValue<double?>? size}) = _$_FlutterIconThemeData;
  _FlutterIconThemeData._() : super._();

  factory _FlutterIconThemeData.fromJson(Map<String, dynamic> json) =
      _$_FlutterIconThemeData.fromJson;

  @override
  FlutterColor? get color;
  @override
  ZacValue<double?>? get opacity;
  @override
  ZacValue<double?>? get size;
}
