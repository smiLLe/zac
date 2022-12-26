// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'positioned.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FlutterPositioned _$FlutterPositionedFromJson(Map<String, dynamic> json) {
  switch (json['builder']) {
    case 'f:1:Positioned':
      return _FlutterPositioneddirectional.fromJson(json);
    case 'f:1:Positioned.directional':
      return _FlutterPositioned.fromJson(json);
    case 'f:1:Positioned.fill':
      return _FlutterPositionedfill.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'builder', 'FlutterPositioned',
          'Invalid union type "${json['builder']}"!');
  }
}

/// @nodoc
mixin _$FlutterPositioned {
  ZacValue<Key?>? get key => throw _privateConstructorUsedError;
  ZacValue<double?>? get top => throw _privateConstructorUsedError;
  ZacValue<double?>? get bottom => throw _privateConstructorUsedError;
  ZacValue<Widget> get child => throw _privateConstructorUsedError;

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
  final ZacValue<Key?>? key;
  @override
  final ZacValue<double?>? left;
  @override
  final ZacValue<double?>? top;
  @override
  final ZacValue<double?>? right;
  @override
  final ZacValue<double?>? bottom;
  @override
  final ZacValue<double?>? width;
  @override
  final ZacValue<double?>? height;
  @override
  final ZacValue<Widget> child;

  @JsonKey(name: 'builder')
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
            (identical(other.key, key) || other.key == key) &&
            (identical(other.left, left) || other.left == left) &&
            (identical(other.top, top) || other.top == top) &&
            (identical(other.right, right) || other.right == right) &&
            (identical(other.bottom, bottom) || other.bottom == bottom) &&
            (identical(other.width, width) || other.width == width) &&
            (identical(other.height, height) || other.height == height) &&
            (identical(other.child, child) || other.child == child));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, key, left, top, right, bottom, width, height, child);

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
      {final ZacValue<Key?>? key,
      final ZacValue<double?>? left,
      final ZacValue<double?>? top,
      final ZacValue<double?>? right,
      final ZacValue<double?>? bottom,
      final ZacValue<double?>? width,
      final ZacValue<double?>? height,
      required final ZacValue<Widget> child}) = _$_FlutterPositioneddirectional;
  _FlutterPositioneddirectional._() : super._();

  factory _FlutterPositioneddirectional.fromJson(Map<String, dynamic> json) =
      _$_FlutterPositioneddirectional.fromJson;

  @override
  ZacValue<Key?>? get key;
  ZacValue<double?>? get left;
  @override
  ZacValue<double?>? get top;
  ZacValue<double?>? get right;
  @override
  ZacValue<double?>? get bottom;
  ZacValue<double?>? get width;
  ZacValue<double?>? get height;
  @override
  ZacValue<Widget> get child;
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
  final ZacValue<Key?>? key;
  @override
  final ZacValue<TextDirection> textDirection;
  @override
  final ZacValue<double?>? start;
  @override
  final ZacValue<double?>? top;
  @override
  final ZacValue<double?>? end;
  @override
  final ZacValue<double?>? bottom;
  @override
  final ZacValue<double?>? width;
  @override
  final ZacValue<double?>? height;
  @override
  final ZacValue<Widget> child;

  @JsonKey(name: 'builder')
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
            (identical(other.key, key) || other.key == key) &&
            (identical(other.textDirection, textDirection) ||
                other.textDirection == textDirection) &&
            (identical(other.start, start) || other.start == start) &&
            (identical(other.top, top) || other.top == top) &&
            (identical(other.end, end) || other.end == end) &&
            (identical(other.bottom, bottom) || other.bottom == bottom) &&
            (identical(other.width, width) || other.width == width) &&
            (identical(other.height, height) || other.height == height) &&
            (identical(other.child, child) || other.child == child));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, key, textDirection, start, top,
      end, bottom, width, height, child);

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
      {final ZacValue<Key?>? key,
      required final ZacValue<TextDirection> textDirection,
      final ZacValue<double?>? start,
      final ZacValue<double?>? top,
      final ZacValue<double?>? end,
      final ZacValue<double?>? bottom,
      final ZacValue<double?>? width,
      final ZacValue<double?>? height,
      required final ZacValue<Widget> child}) = _$_FlutterPositioned;
  _FlutterPositioned._() : super._();

  factory _FlutterPositioned.fromJson(Map<String, dynamic> json) =
      _$_FlutterPositioned.fromJson;

  @override
  ZacValue<Key?>? get key;
  ZacValue<TextDirection> get textDirection;
  ZacValue<double?>? get start;
  @override
  ZacValue<double?>? get top;
  ZacValue<double?>? get end;
  @override
  ZacValue<double?>? get bottom;
  ZacValue<double?>? get width;
  ZacValue<double?>? get height;
  @override
  ZacValue<Widget> get child;
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
  final ZacValue<Key?>? key;
  @override
  final ZacValue<double?>? left;
  @override
  final ZacValue<double?>? top;
  @override
  final ZacValue<double?>? right;
  @override
  final ZacValue<double?>? bottom;
  @override
  final ZacValue<Widget> child;

  @JsonKey(name: 'builder')
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
            (identical(other.key, key) || other.key == key) &&
            (identical(other.left, left) || other.left == left) &&
            (identical(other.top, top) || other.top == top) &&
            (identical(other.right, right) || other.right == right) &&
            (identical(other.bottom, bottom) || other.bottom == bottom) &&
            (identical(other.child, child) || other.child == child));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, key, left, top, right, bottom, child);

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
      {final ZacValue<Key?>? key,
      final ZacValue<double?>? left,
      final ZacValue<double?>? top,
      final ZacValue<double?>? right,
      final ZacValue<double?>? bottom,
      required final ZacValue<Widget> child}) = _$_FlutterPositionedfill;
  _FlutterPositionedfill._() : super._();

  factory _FlutterPositionedfill.fromJson(Map<String, dynamic> json) =
      _$_FlutterPositionedfill.fromJson;

  @override
  ZacValue<Key?>? get key;
  ZacValue<double?>? get left;
  @override
  ZacValue<double?>? get top;
  ZacValue<double?>? get right;
  @override
  ZacValue<double?>? get bottom;
  @override
  ZacValue<Widget> get child;
}
