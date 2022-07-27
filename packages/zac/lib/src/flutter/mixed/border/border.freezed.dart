// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'border.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FlutterBorderDirectional _$FlutterBorderDirectionalFromJson(
    Map<String, dynamic> json) {
  return _FlutterBorderDirectional.fromJson(json);
}

/// @nodoc
mixin _$FlutterBorderDirectional {
  FlutterBorderSide? get top => throw _privateConstructorUsedError;
  FlutterBorderSide? get start => throw _privateConstructorUsedError;
  FlutterBorderSide? get bottom => throw _privateConstructorUsedError;
  FlutterBorderSide? get end => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_FlutterBorderDirectional value) $default,
  ) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_FlutterBorderDirectional extends _FlutterBorderDirectional {
  _$_FlutterBorderDirectional({this.top, this.start, this.bottom, this.end})
      : super._();

  factory _$_FlutterBorderDirectional.fromJson(Map<String, dynamic> json) =>
      _$$_FlutterBorderDirectionalFromJson(json);

  @override
  final FlutterBorderSide? top;
  @override
  final FlutterBorderSide? start;
  @override
  final FlutterBorderSide? bottom;
  @override
  final FlutterBorderSide? end;

  @override
  String toString() {
    return 'FlutterBorderDirectional(top: $top, start: $start, bottom: $bottom, end: $end)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FlutterBorderDirectional &&
            const DeepCollectionEquality().equals(other.top, top) &&
            const DeepCollectionEquality().equals(other.start, start) &&
            const DeepCollectionEquality().equals(other.bottom, bottom) &&
            const DeepCollectionEquality().equals(other.end, end));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(top),
      const DeepCollectionEquality().hash(start),
      const DeepCollectionEquality().hash(bottom),
      const DeepCollectionEquality().hash(end));

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_FlutterBorderDirectional value) $default,
  ) {
    return $default(this);
  }
}

abstract class _FlutterBorderDirectional extends FlutterBorderDirectional {
  factory _FlutterBorderDirectional(
      {final FlutterBorderSide? top,
      final FlutterBorderSide? start,
      final FlutterBorderSide? bottom,
      final FlutterBorderSide? end}) = _$_FlutterBorderDirectional;
  _FlutterBorderDirectional._() : super._();

  factory _FlutterBorderDirectional.fromJson(Map<String, dynamic> json) =
      _$_FlutterBorderDirectional.fromJson;

  @override
  FlutterBorderSide? get top;
  @override
  FlutterBorderSide? get start;
  @override
  FlutterBorderSide? get bottom;
  @override
  FlutterBorderSide? get end;
}

FlutterBorder _$FlutterBorderFromJson(Map<String, dynamic> json) {
  switch (json['_converter']) {
    case 'f:1:Border':
      return _FlutterBorder.fromJson(json);
    case 'f:1:Border.all':
      return _FlutterBorderAll.fromJson(json);

    default:
      throw CheckedFromJsonException(json, '_converter', 'FlutterBorder',
          'Invalid union type "${json['_converter']}"!');
  }
}

/// @nodoc
mixin _$FlutterBorder {
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_FlutterBorder value) $default, {
    required TResult Function(_FlutterBorderAll value) all,
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_FlutterBorder extends _FlutterBorder {
  _$_FlutterBorder(
      {this.top, this.right, this.bottom, this.left, final String? $type})
      : $type = $type ?? 'f:1:Border',
        super._();

  factory _$_FlutterBorder.fromJson(Map<String, dynamic> json) =>
      _$$_FlutterBorderFromJson(json);

  @override
  final FlutterBorderSide? top;
  @override
  final FlutterBorderSide? right;
  @override
  final FlutterBorderSide? bottom;
  @override
  final FlutterBorderSide? left;

  @JsonKey(name: '_converter')
  final String $type;

  @override
  String toString() {
    return 'FlutterBorder(top: $top, right: $right, bottom: $bottom, left: $left)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FlutterBorder &&
            const DeepCollectionEquality().equals(other.top, top) &&
            const DeepCollectionEquality().equals(other.right, right) &&
            const DeepCollectionEquality().equals(other.bottom, bottom) &&
            const DeepCollectionEquality().equals(other.left, left));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(top),
      const DeepCollectionEquality().hash(right),
      const DeepCollectionEquality().hash(bottom),
      const DeepCollectionEquality().hash(left));

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_FlutterBorder value) $default, {
    required TResult Function(_FlutterBorderAll value) all,
  }) {
    return $default(this);
  }
}

abstract class _FlutterBorder extends FlutterBorder {
  factory _FlutterBorder(
      {final FlutterBorderSide? top,
      final FlutterBorderSide? right,
      final FlutterBorderSide? bottom,
      final FlutterBorderSide? left}) = _$_FlutterBorder;
  _FlutterBorder._() : super._();

  factory _FlutterBorder.fromJson(Map<String, dynamic> json) =
      _$_FlutterBorder.fromJson;

  FlutterBorderSide? get top;
  FlutterBorderSide? get right;
  FlutterBorderSide? get bottom;
  FlutterBorderSide? get left;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_FlutterBorderAll extends _FlutterBorderAll {
  _$_FlutterBorderAll({this.color, this.width, this.style, final String? $type})
      : $type = $type ?? 'f:1:Border.all',
        super._();

  factory _$_FlutterBorderAll.fromJson(Map<String, dynamic> json) =>
      _$$_FlutterBorderAllFromJson(json);

  @override
  final FlutterColor? color;
  @override
  final ZacDouble? width;
  @override
  final FlutterBorderStyle? style;

  @JsonKey(name: '_converter')
  final String $type;

  @override
  String toString() {
    return 'FlutterBorder.all(color: $color, width: $width, style: $style)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FlutterBorderAll &&
            const DeepCollectionEquality().equals(other.color, color) &&
            const DeepCollectionEquality().equals(other.width, width) &&
            const DeepCollectionEquality().equals(other.style, style));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(color),
      const DeepCollectionEquality().hash(width),
      const DeepCollectionEquality().hash(style));

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_FlutterBorder value) $default, {
    required TResult Function(_FlutterBorderAll value) all,
  }) {
    return all(this);
  }
}

abstract class _FlutterBorderAll extends FlutterBorder {
  factory _FlutterBorderAll(
      {final FlutterColor? color,
      final ZacDouble? width,
      final FlutterBorderStyle? style}) = _$_FlutterBorderAll;
  _FlutterBorderAll._() : super._();

  factory _FlutterBorderAll.fromJson(Map<String, dynamic> json) =
      _$_FlutterBorderAll.fromJson;

  FlutterColor? get color;
  ZacDouble? get width;
  FlutterBorderStyle? get style;
}

FlutterBorderStyle _$FlutterBorderStyleFromJson(Map<String, dynamic> json) {
  switch (json['_converter']) {
    case 'f:1:BorderStyle.none':
      return _FlutterBorderStyleNone.fromJson(json);
    case 'f:1:BorderStyle.solid':
      return _FlutterBorderStyleSolid.fromJson(json);

    default:
      throw CheckedFromJsonException(json, '_converter', 'FlutterBorderStyle',
          'Invalid union type "${json['_converter']}"!');
  }
}

/// @nodoc
mixin _$FlutterBorderStyle {
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FlutterBorderStyleNone value) none,
    required TResult Function(_FlutterBorderStyleSolid value) solid,
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_FlutterBorderStyleNone extends _FlutterBorderStyleNone {
  _$_FlutterBorderStyleNone({final String? $type})
      : $type = $type ?? 'f:1:BorderStyle.none',
        super._();

  factory _$_FlutterBorderStyleNone.fromJson(Map<String, dynamic> json) =>
      _$$_FlutterBorderStyleNoneFromJson(json);

  @JsonKey(name: '_converter')
  final String $type;

  @override
  String toString() {
    return 'FlutterBorderStyle.none()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FlutterBorderStyleNone);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FlutterBorderStyleNone value) none,
    required TResult Function(_FlutterBorderStyleSolid value) solid,
  }) {
    return none(this);
  }
}

abstract class _FlutterBorderStyleNone extends FlutterBorderStyle {
  factory _FlutterBorderStyleNone() = _$_FlutterBorderStyleNone;
  _FlutterBorderStyleNone._() : super._();

  factory _FlutterBorderStyleNone.fromJson(Map<String, dynamic> json) =
      _$_FlutterBorderStyleNone.fromJson;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_FlutterBorderStyleSolid extends _FlutterBorderStyleSolid {
  _$_FlutterBorderStyleSolid({final String? $type})
      : $type = $type ?? 'f:1:BorderStyle.solid',
        super._();

  factory _$_FlutterBorderStyleSolid.fromJson(Map<String, dynamic> json) =>
      _$$_FlutterBorderStyleSolidFromJson(json);

  @JsonKey(name: '_converter')
  final String $type;

  @override
  String toString() {
    return 'FlutterBorderStyle.solid()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FlutterBorderStyleSolid);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FlutterBorderStyleNone value) none,
    required TResult Function(_FlutterBorderStyleSolid value) solid,
  }) {
    return solid(this);
  }
}

abstract class _FlutterBorderStyleSolid extends FlutterBorderStyle {
  factory _FlutterBorderStyleSolid() = _$_FlutterBorderStyleSolid;
  _FlutterBorderStyleSolid._() : super._();

  factory _FlutterBorderStyleSolid.fromJson(Map<String, dynamic> json) =
      _$_FlutterBorderStyleSolid.fromJson;
}

FlutterBorderRadius _$FlutterBorderRadiusFromJson(Map<String, dynamic> json) {
  switch (json['_converter']) {
    case 'f:1:BorderRadius.all':
      return _FlutterBorderRadiusAll.fromJson(json);
    case 'f:1:BorderRadius.circular':
      return _FlutterBorderRadiusCircular.fromJson(json);
    case 'f:1:BorderRadius.horizontal':
      return _FlutterBorderRadiusHorizontal.fromJson(json);

    default:
      throw CheckedFromJsonException(json, '_converter', 'FlutterBorderRadius',
          'Invalid union type "${json['_converter']}"!');
  }
}

/// @nodoc
mixin _$FlutterBorderRadius {
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FlutterBorderRadiusAll value) all,
    required TResult Function(_FlutterBorderRadiusCircular value) circular,
    required TResult Function(_FlutterBorderRadiusHorizontal value) horizontal,
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_FlutterBorderRadiusAll extends _FlutterBorderRadiusAll {
  _$_FlutterBorderRadiusAll(this.radius, {final String? $type})
      : $type = $type ?? 'f:1:BorderRadius.all',
        super._();

  factory _$_FlutterBorderRadiusAll.fromJson(Map<String, dynamic> json) =>
      _$$_FlutterBorderRadiusAllFromJson(json);

  @override
  final FlutterRadius radius;

  @JsonKey(name: '_converter')
  final String $type;

  @override
  String toString() {
    return 'FlutterBorderRadius.all(radius: $radius)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FlutterBorderRadiusAll &&
            const DeepCollectionEquality().equals(other.radius, radius));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(radius));

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FlutterBorderRadiusAll value) all,
    required TResult Function(_FlutterBorderRadiusCircular value) circular,
    required TResult Function(_FlutterBorderRadiusHorizontal value) horizontal,
  }) {
    return all(this);
  }
}

abstract class _FlutterBorderRadiusAll extends FlutterBorderRadius {
  factory _FlutterBorderRadiusAll(final FlutterRadius radius) =
      _$_FlutterBorderRadiusAll;
  _FlutterBorderRadiusAll._() : super._();

  factory _FlutterBorderRadiusAll.fromJson(Map<String, dynamic> json) =
      _$_FlutterBorderRadiusAll.fromJson;

  FlutterRadius get radius;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_FlutterBorderRadiusCircular extends _FlutterBorderRadiusCircular {
  _$_FlutterBorderRadiusCircular(this.radius, {final String? $type})
      : $type = $type ?? 'f:1:BorderRadius.circular',
        super._();

  factory _$_FlutterBorderRadiusCircular.fromJson(Map<String, dynamic> json) =>
      _$$_FlutterBorderRadiusCircularFromJson(json);

  @override
  final ZacDouble radius;

  @JsonKey(name: '_converter')
  final String $type;

  @override
  String toString() {
    return 'FlutterBorderRadius.circular(radius: $radius)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FlutterBorderRadiusCircular &&
            const DeepCollectionEquality().equals(other.radius, radius));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(radius));

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FlutterBorderRadiusAll value) all,
    required TResult Function(_FlutterBorderRadiusCircular value) circular,
    required TResult Function(_FlutterBorderRadiusHorizontal value) horizontal,
  }) {
    return circular(this);
  }
}

abstract class _FlutterBorderRadiusCircular extends FlutterBorderRadius {
  factory _FlutterBorderRadiusCircular(final ZacDouble radius) =
      _$_FlutterBorderRadiusCircular;
  _FlutterBorderRadiusCircular._() : super._();

  factory _FlutterBorderRadiusCircular.fromJson(Map<String, dynamic> json) =
      _$_FlutterBorderRadiusCircular.fromJson;

  ZacDouble get radius;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_FlutterBorderRadiusHorizontal extends _FlutterBorderRadiusHorizontal {
  _$_FlutterBorderRadiusHorizontal({this.left, this.right, final String? $type})
      : $type = $type ?? 'f:1:BorderRadius.horizontal',
        super._();

  factory _$_FlutterBorderRadiusHorizontal.fromJson(
          Map<String, dynamic> json) =>
      _$$_FlutterBorderRadiusHorizontalFromJson(json);

  @override
  final FlutterRadius? left;
  @override
  final FlutterRadius? right;

  @JsonKey(name: '_converter')
  final String $type;

  @override
  String toString() {
    return 'FlutterBorderRadius.horizontal(left: $left, right: $right)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FlutterBorderRadiusHorizontal &&
            const DeepCollectionEquality().equals(other.left, left) &&
            const DeepCollectionEquality().equals(other.right, right));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(left),
      const DeepCollectionEquality().hash(right));

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FlutterBorderRadiusAll value) all,
    required TResult Function(_FlutterBorderRadiusCircular value) circular,
    required TResult Function(_FlutterBorderRadiusHorizontal value) horizontal,
  }) {
    return horizontal(this);
  }
}

abstract class _FlutterBorderRadiusHorizontal extends FlutterBorderRadius {
  factory _FlutterBorderRadiusHorizontal(
      {final FlutterRadius? left,
      final FlutterRadius? right}) = _$_FlutterBorderRadiusHorizontal;
  _FlutterBorderRadiusHorizontal._() : super._();

  factory _FlutterBorderRadiusHorizontal.fromJson(Map<String, dynamic> json) =
      _$_FlutterBorderRadiusHorizontal.fromJson;

  FlutterRadius? get left;
  FlutterRadius? get right;
}

FlutterBorderSide _$FlutterBorderSideFromJson(Map<String, dynamic> json) {
  return _FlutterBorderSide.fromJson(json);
}

/// @nodoc
mixin _$FlutterBorderSide {
  FlutterColor? get color => throw _privateConstructorUsedError;
  ZacDouble? get width => throw _privateConstructorUsedError;
  FlutterBorderStyle? get style => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_FlutterBorderSide value) $default,
  ) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_FlutterBorderSide extends _FlutterBorderSide {
  _$_FlutterBorderSide({this.color, this.width, this.style}) : super._();

  factory _$_FlutterBorderSide.fromJson(Map<String, dynamic> json) =>
      _$$_FlutterBorderSideFromJson(json);

  @override
  final FlutterColor? color;
  @override
  final ZacDouble? width;
  @override
  final FlutterBorderStyle? style;

  @override
  String toString() {
    return 'FlutterBorderSide(color: $color, width: $width, style: $style)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FlutterBorderSide &&
            const DeepCollectionEquality().equals(other.color, color) &&
            const DeepCollectionEquality().equals(other.width, width) &&
            const DeepCollectionEquality().equals(other.style, style));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(color),
      const DeepCollectionEquality().hash(width),
      const DeepCollectionEquality().hash(style));

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_FlutterBorderSide value) $default,
  ) {
    return $default(this);
  }
}

abstract class _FlutterBorderSide extends FlutterBorderSide {
  factory _FlutterBorderSide(
      {final FlutterColor? color,
      final ZacDouble? width,
      final FlutterBorderStyle? style}) = _$_FlutterBorderSide;
  _FlutterBorderSide._() : super._();

  factory _FlutterBorderSide.fromJson(Map<String, dynamic> json) =
      _$_FlutterBorderSide.fromJson;

  @override
  FlutterColor? get color;
  @override
  ZacDouble? get width;
  @override
  FlutterBorderStyle? get style;
}

FlutterOutlineInputBorder _$FlutterOutlineInputBorderFromJson(
    Map<String, dynamic> json) {
  return _FlutterOutlineInputBorder.fromJson(json);
}

/// @nodoc
mixin _$FlutterOutlineInputBorder {
  FlutterBorderSide? get borderSide => throw _privateConstructorUsedError;
  FlutterBorderRadius? get borderRadius => throw _privateConstructorUsedError;
  ZacDouble? get gapPadding => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_FlutterOutlineInputBorder value) $default,
  ) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_FlutterOutlineInputBorder extends _FlutterOutlineInputBorder {
  _$_FlutterOutlineInputBorder(
      {this.borderSide, this.borderRadius, this.gapPadding})
      : super._();

  factory _$_FlutterOutlineInputBorder.fromJson(Map<String, dynamic> json) =>
      _$$_FlutterOutlineInputBorderFromJson(json);

  @override
  final FlutterBorderSide? borderSide;
  @override
  final FlutterBorderRadius? borderRadius;
  @override
  final ZacDouble? gapPadding;

  @override
  String toString() {
    return 'FlutterOutlineInputBorder(borderSide: $borderSide, borderRadius: $borderRadius, gapPadding: $gapPadding)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FlutterOutlineInputBorder &&
            const DeepCollectionEquality()
                .equals(other.borderSide, borderSide) &&
            const DeepCollectionEquality()
                .equals(other.borderRadius, borderRadius) &&
            const DeepCollectionEquality()
                .equals(other.gapPadding, gapPadding));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(borderSide),
      const DeepCollectionEquality().hash(borderRadius),
      const DeepCollectionEquality().hash(gapPadding));

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_FlutterOutlineInputBorder value) $default,
  ) {
    return $default(this);
  }
}

abstract class _FlutterOutlineInputBorder extends FlutterOutlineInputBorder {
  factory _FlutterOutlineInputBorder(
      {final FlutterBorderSide? borderSide,
      final FlutterBorderRadius? borderRadius,
      final ZacDouble? gapPadding}) = _$_FlutterOutlineInputBorder;
  _FlutterOutlineInputBorder._() : super._();

  factory _FlutterOutlineInputBorder.fromJson(Map<String, dynamic> json) =
      _$_FlutterOutlineInputBorder.fromJson;

  @override
  FlutterBorderSide? get borderSide;
  @override
  FlutterBorderRadius? get borderRadius;
  @override
  ZacDouble? get gapPadding;
}

FlutterUnderlineInputBorder _$FlutterUnderlineInputBorderFromJson(
    Map<String, dynamic> json) {
  return _FlutterUnderlineInputBorder.fromJson(json);
}

/// @nodoc
mixin _$FlutterUnderlineInputBorder {
  FlutterBorderSide? get borderSide => throw _privateConstructorUsedError;
  FlutterBorderRadius? get borderRadius => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_FlutterUnderlineInputBorder value) $default,
  ) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_FlutterUnderlineInputBorder extends _FlutterUnderlineInputBorder {
  _$_FlutterUnderlineInputBorder({this.borderSide, this.borderRadius})
      : super._();

  factory _$_FlutterUnderlineInputBorder.fromJson(Map<String, dynamic> json) =>
      _$$_FlutterUnderlineInputBorderFromJson(json);

  @override
  final FlutterBorderSide? borderSide;
  @override
  final FlutterBorderRadius? borderRadius;

  @override
  String toString() {
    return 'FlutterUnderlineInputBorder(borderSide: $borderSide, borderRadius: $borderRadius)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FlutterUnderlineInputBorder &&
            const DeepCollectionEquality()
                .equals(other.borderSide, borderSide) &&
            const DeepCollectionEquality()
                .equals(other.borderRadius, borderRadius));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(borderSide),
      const DeepCollectionEquality().hash(borderRadius));

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_FlutterUnderlineInputBorder value) $default,
  ) {
    return $default(this);
  }
}

abstract class _FlutterUnderlineInputBorder
    extends FlutterUnderlineInputBorder {
  factory _FlutterUnderlineInputBorder(
          {final FlutterBorderSide? borderSide,
          final FlutterBorderRadius? borderRadius}) =
      _$_FlutterUnderlineInputBorder;
  _FlutterUnderlineInputBorder._() : super._();

  factory _FlutterUnderlineInputBorder.fromJson(Map<String, dynamic> json) =
      _$_FlutterUnderlineInputBorder.fromJson;

  @override
  FlutterBorderSide? get borderSide;
  @override
  FlutterBorderRadius? get borderRadius;
}

FlutterCircleBorder _$FlutterCircleBorderFromJson(Map<String, dynamic> json) {
  return _FlutterCircleBorder.fromJson(json);
}

/// @nodoc
mixin _$FlutterCircleBorder {
  FlutterBorderSide? get side => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_FlutterCircleBorder value) $default,
  ) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_FlutterCircleBorder extends _FlutterCircleBorder {
  _$_FlutterCircleBorder({this.side}) : super._();

  factory _$_FlutterCircleBorder.fromJson(Map<String, dynamic> json) =>
      _$$_FlutterCircleBorderFromJson(json);

  @override
  final FlutterBorderSide? side;

  @override
  String toString() {
    return 'FlutterCircleBorder(side: $side)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FlutterCircleBorder &&
            const DeepCollectionEquality().equals(other.side, side));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(side));

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_FlutterCircleBorder value) $default,
  ) {
    return $default(this);
  }
}

abstract class _FlutterCircleBorder extends FlutterCircleBorder {
  factory _FlutterCircleBorder({final FlutterBorderSide? side}) =
      _$_FlutterCircleBorder;
  _FlutterCircleBorder._() : super._();

  factory _FlutterCircleBorder.fromJson(Map<String, dynamic> json) =
      _$_FlutterCircleBorder.fromJson;

  @override
  FlutterBorderSide? get side;
}

FlutterRoundedRectangleBorder _$FlutterRoundedRectangleBorderFromJson(
    Map<String, dynamic> json) {
  return _FlutterRoundedRectangleBorder.fromJson(json);
}

/// @nodoc
mixin _$FlutterRoundedRectangleBorder {
  FlutterBorderSide? get side => throw _privateConstructorUsedError;
  FlutterBorderRadiusGeometry? get borderRadius =>
      throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_FlutterRoundedRectangleBorder value) $default,
  ) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_FlutterRoundedRectangleBorder extends _FlutterRoundedRectangleBorder {
  _$_FlutterRoundedRectangleBorder({this.side, this.borderRadius}) : super._();

  factory _$_FlutterRoundedRectangleBorder.fromJson(
          Map<String, dynamic> json) =>
      _$$_FlutterRoundedRectangleBorderFromJson(json);

  @override
  final FlutterBorderSide? side;
  @override
  final FlutterBorderRadiusGeometry? borderRadius;

  @override
  String toString() {
    return 'FlutterRoundedRectangleBorder(side: $side, borderRadius: $borderRadius)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FlutterRoundedRectangleBorder &&
            const DeepCollectionEquality().equals(other.side, side) &&
            const DeepCollectionEquality()
                .equals(other.borderRadius, borderRadius));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(side),
      const DeepCollectionEquality().hash(borderRadius));

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_FlutterRoundedRectangleBorder value) $default,
  ) {
    return $default(this);
  }
}

abstract class _FlutterRoundedRectangleBorder
    extends FlutterRoundedRectangleBorder {
  factory _FlutterRoundedRectangleBorder(
          {final FlutterBorderSide? side,
          final FlutterBorderRadiusGeometry? borderRadius}) =
      _$_FlutterRoundedRectangleBorder;
  _FlutterRoundedRectangleBorder._() : super._();

  factory _FlutterRoundedRectangleBorder.fromJson(Map<String, dynamic> json) =
      _$_FlutterRoundedRectangleBorder.fromJson;

  @override
  FlutterBorderSide? get side;
  @override
  FlutterBorderRadiusGeometry? get borderRadius;
}
