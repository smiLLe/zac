// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'positioned.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FlutterPositioned _$FlutterPositionedFromJson(Map<String, dynamic> json) {
  switch (json['_converter']) {
    case 'f:1:Positioned':
      return _FlutterPositioneddirectional.fromJson(json);
    case 'f:1:Positioned.directional':
      return _FlutterPositioned.fromJson(json);
    case 'f:1:Positioned.fill':
      return _FlutterPositionedfill.fromJson(json);

    default:
      throw CheckedFromJsonException(json, '_converter', 'FlutterPositioned',
          'Invalid union type "${json['_converter']}"!');
  }
}

/// @nodoc
mixin _$FlutterPositioned {
  FlutterKey? get key => throw _privateConstructorUsedError;
  ZacDouble? get top => throw _privateConstructorUsedError;
  ZacDouble? get bottom => throw _privateConstructorUsedError;
  ZacWidget get child => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_FlutterPositioneddirectional value) $default, {
    required TResult Function(_FlutterPositioned value) directional,
    required TResult Function(_FlutterPositionedfill value) fill,
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_FlutterPositioneddirectional extends _FlutterPositioneddirectional {
  _$_FlutterPositioneddirectional(
      {this.key,
      this.left,
      this.top,
      this.right,
      this.bottom,
      this.width,
      this.height,
      required this.child,
      final String? $type})
      : $type = $type ?? 'f:1:Positioned',
        super._();

  factory _$_FlutterPositioneddirectional.fromJson(Map<String, dynamic> json) =>
      _$$_FlutterPositioneddirectionalFromJson(json);

  @override
  final FlutterKey? key;
  @override
  final ZacDouble? left;
  @override
  final ZacDouble? top;
  @override
  final ZacDouble? right;
  @override
  final ZacDouble? bottom;
  @override
  final ZacDouble? width;
  @override
  final ZacDouble? height;
  @override
  final ZacWidget child;

  @JsonKey(name: '_converter')
  final String $type;

  @override
  String toString() {
    return 'FlutterPositioned(key: $key, left: $left, top: $top, right: $right, bottom: $bottom, width: $width, height: $height, child: $child)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FlutterPositioneddirectional &&
            const DeepCollectionEquality().equals(other.key, key) &&
            const DeepCollectionEquality().equals(other.left, left) &&
            const DeepCollectionEquality().equals(other.top, top) &&
            const DeepCollectionEquality().equals(other.right, right) &&
            const DeepCollectionEquality().equals(other.bottom, bottom) &&
            const DeepCollectionEquality().equals(other.width, width) &&
            const DeepCollectionEquality().equals(other.height, height) &&
            const DeepCollectionEquality().equals(other.child, child));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(key),
      const DeepCollectionEquality().hash(left),
      const DeepCollectionEquality().hash(top),
      const DeepCollectionEquality().hash(right),
      const DeepCollectionEquality().hash(bottom),
      const DeepCollectionEquality().hash(width),
      const DeepCollectionEquality().hash(height),
      const DeepCollectionEquality().hash(child));

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_FlutterPositioneddirectional value) $default, {
    required TResult Function(_FlutterPositioned value) directional,
    required TResult Function(_FlutterPositionedfill value) fill,
  }) {
    return $default(this);
  }
}

abstract class _FlutterPositioneddirectional extends FlutterPositioned {
  factory _FlutterPositioneddirectional(
      {final FlutterKey? key,
      final ZacDouble? left,
      final ZacDouble? top,
      final ZacDouble? right,
      final ZacDouble? bottom,
      final ZacDouble? width,
      final ZacDouble? height,
      required final ZacWidget child}) = _$_FlutterPositioneddirectional;
  _FlutterPositioneddirectional._() : super._();

  factory _FlutterPositioneddirectional.fromJson(Map<String, dynamic> json) =
      _$_FlutterPositioneddirectional.fromJson;

  @override
  FlutterKey? get key;
  ZacDouble? get left;
  @override
  ZacDouble? get top;
  ZacDouble? get right;
  @override
  ZacDouble? get bottom;
  ZacDouble? get width;
  ZacDouble? get height;
  @override
  ZacWidget get child;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_FlutterPositioned extends _FlutterPositioned {
  _$_FlutterPositioned(
      {this.key,
      required this.textDirection,
      this.start,
      this.top,
      this.end,
      this.bottom,
      this.width,
      this.height,
      required this.child,
      final String? $type})
      : $type = $type ?? 'f:1:Positioned.directional',
        super._();

  factory _$_FlutterPositioned.fromJson(Map<String, dynamic> json) =>
      _$$_FlutterPositionedFromJson(json);

  @override
  final FlutterKey? key;
  @override
  final FlutterTextDirection textDirection;
  @override
  final ZacDouble? start;
  @override
  final ZacDouble? top;
  @override
  final ZacDouble? end;
  @override
  final ZacDouble? bottom;
  @override
  final ZacDouble? width;
  @override
  final ZacDouble? height;
  @override
  final ZacWidget child;

  @JsonKey(name: '_converter')
  final String $type;

  @override
  String toString() {
    return 'FlutterPositioned.directional(key: $key, textDirection: $textDirection, start: $start, top: $top, end: $end, bottom: $bottom, width: $width, height: $height, child: $child)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FlutterPositioned &&
            const DeepCollectionEquality().equals(other.key, key) &&
            const DeepCollectionEquality()
                .equals(other.textDirection, textDirection) &&
            const DeepCollectionEquality().equals(other.start, start) &&
            const DeepCollectionEquality().equals(other.top, top) &&
            const DeepCollectionEquality().equals(other.end, end) &&
            const DeepCollectionEquality().equals(other.bottom, bottom) &&
            const DeepCollectionEquality().equals(other.width, width) &&
            const DeepCollectionEquality().equals(other.height, height) &&
            const DeepCollectionEquality().equals(other.child, child));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(key),
      const DeepCollectionEquality().hash(textDirection),
      const DeepCollectionEquality().hash(start),
      const DeepCollectionEquality().hash(top),
      const DeepCollectionEquality().hash(end),
      const DeepCollectionEquality().hash(bottom),
      const DeepCollectionEquality().hash(width),
      const DeepCollectionEquality().hash(height),
      const DeepCollectionEquality().hash(child));

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_FlutterPositioneddirectional value) $default, {
    required TResult Function(_FlutterPositioned value) directional,
    required TResult Function(_FlutterPositionedfill value) fill,
  }) {
    return directional(this);
  }
}

abstract class _FlutterPositioned extends FlutterPositioned {
  factory _FlutterPositioned(
      {final FlutterKey? key,
      required final FlutterTextDirection textDirection,
      final ZacDouble? start,
      final ZacDouble? top,
      final ZacDouble? end,
      final ZacDouble? bottom,
      final ZacDouble? width,
      final ZacDouble? height,
      required final ZacWidget child}) = _$_FlutterPositioned;
  _FlutterPositioned._() : super._();

  factory _FlutterPositioned.fromJson(Map<String, dynamic> json) =
      _$_FlutterPositioned.fromJson;

  @override
  FlutterKey? get key;
  FlutterTextDirection get textDirection;
  ZacDouble? get start;
  @override
  ZacDouble? get top;
  ZacDouble? get end;
  @override
  ZacDouble? get bottom;
  ZacDouble? get width;
  ZacDouble? get height;
  @override
  ZacWidget get child;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_FlutterPositionedfill extends _FlutterPositionedfill {
  _$_FlutterPositionedfill(
      {this.key,
      this.left,
      this.top,
      this.right,
      this.bottom,
      required this.child,
      final String? $type})
      : $type = $type ?? 'f:1:Positioned.fill',
        super._();

  factory _$_FlutterPositionedfill.fromJson(Map<String, dynamic> json) =>
      _$$_FlutterPositionedfillFromJson(json);

  @override
  final FlutterKey? key;
  @override
  final ZacDouble? left;
  @override
  final ZacDouble? top;
  @override
  final ZacDouble? right;
  @override
  final ZacDouble? bottom;
  @override
  final ZacWidget child;

  @JsonKey(name: '_converter')
  final String $type;

  @override
  String toString() {
    return 'FlutterPositioned.fill(key: $key, left: $left, top: $top, right: $right, bottom: $bottom, child: $child)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FlutterPositionedfill &&
            const DeepCollectionEquality().equals(other.key, key) &&
            const DeepCollectionEquality().equals(other.left, left) &&
            const DeepCollectionEquality().equals(other.top, top) &&
            const DeepCollectionEquality().equals(other.right, right) &&
            const DeepCollectionEquality().equals(other.bottom, bottom) &&
            const DeepCollectionEquality().equals(other.child, child));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(key),
      const DeepCollectionEquality().hash(left),
      const DeepCollectionEquality().hash(top),
      const DeepCollectionEquality().hash(right),
      const DeepCollectionEquality().hash(bottom),
      const DeepCollectionEquality().hash(child));

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_FlutterPositioneddirectional value) $default, {
    required TResult Function(_FlutterPositioned value) directional,
    required TResult Function(_FlutterPositionedfill value) fill,
  }) {
    return fill(this);
  }
}

abstract class _FlutterPositionedfill extends FlutterPositioned {
  factory _FlutterPositionedfill(
      {final FlutterKey? key,
      final ZacDouble? left,
      final ZacDouble? top,
      final ZacDouble? right,
      final ZacDouble? bottom,
      required final ZacWidget child}) = _$_FlutterPositionedfill;
  _FlutterPositionedfill._() : super._();

  factory _FlutterPositionedfill.fromJson(Map<String, dynamic> json) =
      _$_FlutterPositionedfill.fromJson;

  @override
  FlutterKey? get key;
  ZacDouble? get left;
  @override
  ZacDouble? get top;
  ZacDouble? get right;
  @override
  ZacDouble? get bottom;
  @override
  ZacWidget get child;
}
