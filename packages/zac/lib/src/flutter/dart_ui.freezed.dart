// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'dart_ui.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ZacColor _$ZacColorFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'zac:dartui:Color.fromARGB':
      return _ZacColorFromARGB.fromJson(json);
    case 'zac:dartui:Color.fromRGBO':
      return _ZacColorFromARGO.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'ZacColor',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
class _$ZacColorTearOff {
  const _$ZacColorTearOff();

  _ZacColorFromARGB fromARGB(
      {required int a, required int r, required int g, required int b}) {
    return _ZacColorFromARGB(
      a: a,
      r: r,
      g: g,
      b: b,
    );
  }

  _ZacColorFromARGO fromRGBO(
      {required int r,
      required int g,
      required int b,
      required double opacity}) {
    return _ZacColorFromARGO(
      r: r,
      g: g,
      b: b,
      opacity: opacity,
    );
  }

  ZacColor fromJson(Map<String, Object?> json) {
    return ZacColor.fromJson(json);
  }
}

/// @nodoc
const $ZacColor = _$ZacColorTearOff();

/// @nodoc
mixin _$ZacColor {
  int get r => throw _privateConstructorUsedError;
  int get g => throw _privateConstructorUsedError;
  int get b => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int a, int r, int g, int b) fromARGB,
    required TResult Function(int r, int g, int b, double opacity) fromRGBO,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int a, int r, int g, int b)? fromARGB,
    TResult Function(int r, int g, int b, double opacity)? fromRGBO,
  }) =>
      throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ZacColorFromARGB value) fromARGB,
    required TResult Function(_ZacColorFromARGO value) fromRGBO,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ZacColorFromARGB value)? fromARGB,
    TResult Function(_ZacColorFromARGO value)? fromRGBO,
  }) =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ZacColorCopyWith<ZacColor> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ZacColorCopyWith<$Res> {
  factory $ZacColorCopyWith(ZacColor value, $Res Function(ZacColor) then) =
      _$ZacColorCopyWithImpl<$Res>;
  $Res call({int r, int g, int b});
}

/// @nodoc
class _$ZacColorCopyWithImpl<$Res> implements $ZacColorCopyWith<$Res> {
  _$ZacColorCopyWithImpl(this._value, this._then);

  final ZacColor _value;
  // ignore: unused_field
  final $Res Function(ZacColor) _then;

  @override
  $Res call({
    Object? r = freezed,
    Object? g = freezed,
    Object? b = freezed,
  }) {
    return _then(_value.copyWith(
      r: r == freezed
          ? _value.r
          : r // ignore: cast_nullable_to_non_nullable
              as int,
      g: g == freezed
          ? _value.g
          : g // ignore: cast_nullable_to_non_nullable
              as int,
      b: b == freezed
          ? _value.b
          : b // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$ZacColorFromARGBCopyWith<$Res>
    implements $ZacColorCopyWith<$Res> {
  factory _$ZacColorFromARGBCopyWith(
          _ZacColorFromARGB value, $Res Function(_ZacColorFromARGB) then) =
      __$ZacColorFromARGBCopyWithImpl<$Res>;
  @override
  $Res call({int a, int r, int g, int b});
}

/// @nodoc
class __$ZacColorFromARGBCopyWithImpl<$Res> extends _$ZacColorCopyWithImpl<$Res>
    implements _$ZacColorFromARGBCopyWith<$Res> {
  __$ZacColorFromARGBCopyWithImpl(
      _ZacColorFromARGB _value, $Res Function(_ZacColorFromARGB) _then)
      : super(_value, (v) => _then(v as _ZacColorFromARGB));

  @override
  _ZacColorFromARGB get _value => super._value as _ZacColorFromARGB;

  @override
  $Res call({
    Object? a = freezed,
    Object? r = freezed,
    Object? g = freezed,
    Object? b = freezed,
  }) {
    return _then(_ZacColorFromARGB(
      a: a == freezed
          ? _value.a
          : a // ignore: cast_nullable_to_non_nullable
              as int,
      r: r == freezed
          ? _value.r
          : r // ignore: cast_nullable_to_non_nullable
              as int,
      g: g == freezed
          ? _value.g
          : g // ignore: cast_nullable_to_non_nullable
              as int,
      b: b == freezed
          ? _value.b
          : b // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
@FreezedUnionValue('zac:dartui:Color.fromARGB')
class _$_ZacColorFromARGB extends _ZacColorFromARGB {
  _$_ZacColorFromARGB(
      {required this.a,
      required this.r,
      required this.g,
      required this.b,
      String? $type})
      : $type = $type ?? 'zac:dartui:Color.fromARGB',
        super._();

  factory _$_ZacColorFromARGB.fromJson(Map<String, dynamic> json) =>
      _$$_ZacColorFromARGBFromJson(json);

  @override
  final int a;
  @override
  final int r;
  @override
  final int g;
  @override
  final int b;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'ZacColor.fromARGB(a: $a, r: $r, g: $g, b: $b)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ZacColorFromARGB &&
            const DeepCollectionEquality().equals(other.a, a) &&
            const DeepCollectionEquality().equals(other.r, r) &&
            const DeepCollectionEquality().equals(other.g, g) &&
            const DeepCollectionEquality().equals(other.b, b));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(a),
      const DeepCollectionEquality().hash(r),
      const DeepCollectionEquality().hash(g),
      const DeepCollectionEquality().hash(b));

  @JsonKey(ignore: true)
  @override
  _$ZacColorFromARGBCopyWith<_ZacColorFromARGB> get copyWith =>
      __$ZacColorFromARGBCopyWithImpl<_ZacColorFromARGB>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int a, int r, int g, int b) fromARGB,
    required TResult Function(int r, int g, int b, double opacity) fromRGBO,
  }) {
    return fromARGB(a, r, g, b);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int a, int r, int g, int b)? fromARGB,
    TResult Function(int r, int g, int b, double opacity)? fromRGBO,
  }) {
    return fromARGB?.call(a, r, g, b);
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ZacColorFromARGB value) fromARGB,
    required TResult Function(_ZacColorFromARGO value) fromRGBO,
  }) {
    return fromARGB(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ZacColorFromARGB value)? fromARGB,
    TResult Function(_ZacColorFromARGO value)? fromRGBO,
  }) {
    return fromARGB?.call(this);
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$_ZacColorFromARGBToJson(this);
  }
}

abstract class _ZacColorFromARGB extends ZacColor {
  factory _ZacColorFromARGB(
      {required int a,
      required int r,
      required int g,
      required int b}) = _$_ZacColorFromARGB;
  _ZacColorFromARGB._() : super._();

  factory _ZacColorFromARGB.fromJson(Map<String, dynamic> json) =
      _$_ZacColorFromARGB.fromJson;

  int get a;
  @override
  int get r;
  @override
  int get g;
  @override
  int get b;
  @override
  @JsonKey(ignore: true)
  _$ZacColorFromARGBCopyWith<_ZacColorFromARGB> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ZacColorFromARGOCopyWith<$Res>
    implements $ZacColorCopyWith<$Res> {
  factory _$ZacColorFromARGOCopyWith(
          _ZacColorFromARGO value, $Res Function(_ZacColorFromARGO) then) =
      __$ZacColorFromARGOCopyWithImpl<$Res>;
  @override
  $Res call({int r, int g, int b, double opacity});
}

/// @nodoc
class __$ZacColorFromARGOCopyWithImpl<$Res> extends _$ZacColorCopyWithImpl<$Res>
    implements _$ZacColorFromARGOCopyWith<$Res> {
  __$ZacColorFromARGOCopyWithImpl(
      _ZacColorFromARGO _value, $Res Function(_ZacColorFromARGO) _then)
      : super(_value, (v) => _then(v as _ZacColorFromARGO));

  @override
  _ZacColorFromARGO get _value => super._value as _ZacColorFromARGO;

  @override
  $Res call({
    Object? r = freezed,
    Object? g = freezed,
    Object? b = freezed,
    Object? opacity = freezed,
  }) {
    return _then(_ZacColorFromARGO(
      r: r == freezed
          ? _value.r
          : r // ignore: cast_nullable_to_non_nullable
              as int,
      g: g == freezed
          ? _value.g
          : g // ignore: cast_nullable_to_non_nullable
              as int,
      b: b == freezed
          ? _value.b
          : b // ignore: cast_nullable_to_non_nullable
              as int,
      opacity: opacity == freezed
          ? _value.opacity
          : opacity // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
@FreezedUnionValue('zac:dartui:Color.fromRGBO')
class _$_ZacColorFromARGO extends _ZacColorFromARGO {
  _$_ZacColorFromARGO(
      {required this.r,
      required this.g,
      required this.b,
      required this.opacity,
      String? $type})
      : $type = $type ?? 'zac:dartui:Color.fromRGBO',
        super._();

  factory _$_ZacColorFromARGO.fromJson(Map<String, dynamic> json) =>
      _$$_ZacColorFromARGOFromJson(json);

  @override
  final int r;
  @override
  final int g;
  @override
  final int b;
  @override
  final double opacity;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'ZacColor.fromRGBO(r: $r, g: $g, b: $b, opacity: $opacity)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ZacColorFromARGO &&
            const DeepCollectionEquality().equals(other.r, r) &&
            const DeepCollectionEquality().equals(other.g, g) &&
            const DeepCollectionEquality().equals(other.b, b) &&
            const DeepCollectionEquality().equals(other.opacity, opacity));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(r),
      const DeepCollectionEquality().hash(g),
      const DeepCollectionEquality().hash(b),
      const DeepCollectionEquality().hash(opacity));

  @JsonKey(ignore: true)
  @override
  _$ZacColorFromARGOCopyWith<_ZacColorFromARGO> get copyWith =>
      __$ZacColorFromARGOCopyWithImpl<_ZacColorFromARGO>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int a, int r, int g, int b) fromARGB,
    required TResult Function(int r, int g, int b, double opacity) fromRGBO,
  }) {
    return fromRGBO(r, g, b, opacity);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int a, int r, int g, int b)? fromARGB,
    TResult Function(int r, int g, int b, double opacity)? fromRGBO,
  }) {
    return fromRGBO?.call(r, g, b, opacity);
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ZacColorFromARGB value) fromARGB,
    required TResult Function(_ZacColorFromARGO value) fromRGBO,
  }) {
    return fromRGBO(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ZacColorFromARGB value)? fromARGB,
    TResult Function(_ZacColorFromARGO value)? fromRGBO,
  }) {
    return fromRGBO?.call(this);
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$_ZacColorFromARGOToJson(this);
  }
}

abstract class _ZacColorFromARGO extends ZacColor {
  factory _ZacColorFromARGO(
      {required int r,
      required int g,
      required int b,
      required double opacity}) = _$_ZacColorFromARGO;
  _ZacColorFromARGO._() : super._();

  factory _ZacColorFromARGO.fromJson(Map<String, dynamic> json) =
      _$_ZacColorFromARGO.fromJson;

  @override
  int get r;
  @override
  int get g;
  @override
  int get b;
  double get opacity;
  @override
  @JsonKey(ignore: true)
  _$ZacColorFromARGOCopyWith<_ZacColorFromARGO> get copyWith =>
      throw _privateConstructorUsedError;
}

ZacOffset _$ZacOffsetFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'zac:dartui:Offset':
      return _ZacOffset.fromJson(json);
    case 'zac:dartui:Offset.fromDirection':
      return _ZacOffsetFromDirection.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'ZacOffset',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
class _$ZacOffsetTearOff {
  const _$ZacOffsetTearOff();

  _ZacOffset call(double dx, double dy) {
    return _ZacOffset(
      dx,
      dy,
    );
  }

  _ZacOffsetFromDirection fromDirection(
      {required double direction, double? distance}) {
    return _ZacOffsetFromDirection(
      direction: direction,
      distance: distance,
    );
  }

  ZacOffset fromJson(Map<String, Object?> json) {
    return ZacOffset.fromJson(json);
  }
}

/// @nodoc
const $ZacOffset = _$ZacOffsetTearOff();

/// @nodoc
mixin _$ZacOffset {
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(double dx, double dy) $default, {
    required TResult Function(double direction, double? distance) fromDirection,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function(double dx, double dy)? $default, {
    TResult Function(double direction, double? distance)? fromDirection,
  }) =>
      throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_ZacOffset value) $default, {
    required TResult Function(_ZacOffsetFromDirection value) fromDirection,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(_ZacOffset value)? $default, {
    TResult Function(_ZacOffsetFromDirection value)? fromDirection,
  }) =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ZacOffsetCopyWith<$Res> {
  factory $ZacOffsetCopyWith(ZacOffset value, $Res Function(ZacOffset) then) =
      _$ZacOffsetCopyWithImpl<$Res>;
}

/// @nodoc
class _$ZacOffsetCopyWithImpl<$Res> implements $ZacOffsetCopyWith<$Res> {
  _$ZacOffsetCopyWithImpl(this._value, this._then);

  final ZacOffset _value;
  // ignore: unused_field
  final $Res Function(ZacOffset) _then;
}

/// @nodoc
abstract class _$ZacOffsetCopyWith<$Res> {
  factory _$ZacOffsetCopyWith(
          _ZacOffset value, $Res Function(_ZacOffset) then) =
      __$ZacOffsetCopyWithImpl<$Res>;
  $Res call({double dx, double dy});
}

/// @nodoc
class __$ZacOffsetCopyWithImpl<$Res> extends _$ZacOffsetCopyWithImpl<$Res>
    implements _$ZacOffsetCopyWith<$Res> {
  __$ZacOffsetCopyWithImpl(_ZacOffset _value, $Res Function(_ZacOffset) _then)
      : super(_value, (v) => _then(v as _ZacOffset));

  @override
  _ZacOffset get _value => super._value as _ZacOffset;

  @override
  $Res call({
    Object? dx = freezed,
    Object? dy = freezed,
  }) {
    return _then(_ZacOffset(
      dx == freezed
          ? _value.dx
          : dx // ignore: cast_nullable_to_non_nullable
              as double,
      dy == freezed
          ? _value.dy
          : dy // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
@FreezedUnionValue('zac:dartui:Offset')
class _$_ZacOffset extends _ZacOffset {
  _$_ZacOffset(this.dx, this.dy, {String? $type})
      : $type = $type ?? 'zac:dartui:Offset',
        super._();

  factory _$_ZacOffset.fromJson(Map<String, dynamic> json) =>
      _$$_ZacOffsetFromJson(json);

  @override
  final double dx;
  @override
  final double dy;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'ZacOffset(dx: $dx, dy: $dy)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ZacOffset &&
            const DeepCollectionEquality().equals(other.dx, dx) &&
            const DeepCollectionEquality().equals(other.dy, dy));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(dx),
      const DeepCollectionEquality().hash(dy));

  @JsonKey(ignore: true)
  @override
  _$ZacOffsetCopyWith<_ZacOffset> get copyWith =>
      __$ZacOffsetCopyWithImpl<_ZacOffset>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(double dx, double dy) $default, {
    required TResult Function(double direction, double? distance) fromDirection,
  }) {
    return $default(dx, dy);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function(double dx, double dy)? $default, {
    TResult Function(double direction, double? distance)? fromDirection,
  }) {
    return $default?.call(dx, dy);
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_ZacOffset value) $default, {
    required TResult Function(_ZacOffsetFromDirection value) fromDirection,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(_ZacOffset value)? $default, {
    TResult Function(_ZacOffsetFromDirection value)? fromDirection,
  }) {
    return $default?.call(this);
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$_ZacOffsetToJson(this);
  }
}

abstract class _ZacOffset extends ZacOffset {
  factory _ZacOffset(double dx, double dy) = _$_ZacOffset;
  _ZacOffset._() : super._();

  factory _ZacOffset.fromJson(Map<String, dynamic> json) =
      _$_ZacOffset.fromJson;

  double get dx;
  double get dy;
  @JsonKey(ignore: true)
  _$ZacOffsetCopyWith<_ZacOffset> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ZacOffsetFromDirectionCopyWith<$Res> {
  factory _$ZacOffsetFromDirectionCopyWith(_ZacOffsetFromDirection value,
          $Res Function(_ZacOffsetFromDirection) then) =
      __$ZacOffsetFromDirectionCopyWithImpl<$Res>;
  $Res call({double direction, double? distance});
}

/// @nodoc
class __$ZacOffsetFromDirectionCopyWithImpl<$Res>
    extends _$ZacOffsetCopyWithImpl<$Res>
    implements _$ZacOffsetFromDirectionCopyWith<$Res> {
  __$ZacOffsetFromDirectionCopyWithImpl(_ZacOffsetFromDirection _value,
      $Res Function(_ZacOffsetFromDirection) _then)
      : super(_value, (v) => _then(v as _ZacOffsetFromDirection));

  @override
  _ZacOffsetFromDirection get _value => super._value as _ZacOffsetFromDirection;

  @override
  $Res call({
    Object? direction = freezed,
    Object? distance = freezed,
  }) {
    return _then(_ZacOffsetFromDirection(
      direction: direction == freezed
          ? _value.direction
          : direction // ignore: cast_nullable_to_non_nullable
              as double,
      distance: distance == freezed
          ? _value.distance
          : distance // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
@FreezedUnionValue('zac:dartui:Offset.fromDirection')
class _$_ZacOffsetFromDirection extends _ZacOffsetFromDirection {
  _$_ZacOffsetFromDirection(
      {required this.direction, this.distance, String? $type})
      : $type = $type ?? 'zac:dartui:Offset.fromDirection',
        super._();

  factory _$_ZacOffsetFromDirection.fromJson(Map<String, dynamic> json) =>
      _$$_ZacOffsetFromDirectionFromJson(json);

  @override
  final double direction;
  @override
  final double? distance;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'ZacOffset.fromDirection(direction: $direction, distance: $distance)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ZacOffsetFromDirection &&
            const DeepCollectionEquality().equals(other.direction, direction) &&
            const DeepCollectionEquality().equals(other.distance, distance));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(direction),
      const DeepCollectionEquality().hash(distance));

  @JsonKey(ignore: true)
  @override
  _$ZacOffsetFromDirectionCopyWith<_ZacOffsetFromDirection> get copyWith =>
      __$ZacOffsetFromDirectionCopyWithImpl<_ZacOffsetFromDirection>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(double dx, double dy) $default, {
    required TResult Function(double direction, double? distance) fromDirection,
  }) {
    return fromDirection(direction, distance);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function(double dx, double dy)? $default, {
    TResult Function(double direction, double? distance)? fromDirection,
  }) {
    return fromDirection?.call(direction, distance);
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_ZacOffset value) $default, {
    required TResult Function(_ZacOffsetFromDirection value) fromDirection,
  }) {
    return fromDirection(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(_ZacOffset value)? $default, {
    TResult Function(_ZacOffsetFromDirection value)? fromDirection,
  }) {
    return fromDirection?.call(this);
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$_ZacOffsetFromDirectionToJson(this);
  }
}

abstract class _ZacOffsetFromDirection extends ZacOffset {
  factory _ZacOffsetFromDirection(
      {required double direction,
      double? distance}) = _$_ZacOffsetFromDirection;
  _ZacOffsetFromDirection._() : super._();

  factory _ZacOffsetFromDirection.fromJson(Map<String, dynamic> json) =
      _$_ZacOffsetFromDirection.fromJson;

  double get direction;
  double? get distance;
  @JsonKey(ignore: true)
  _$ZacOffsetFromDirectionCopyWith<_ZacOffsetFromDirection> get copyWith =>
      throw _privateConstructorUsedError;
}

ZacBlurStyle _$ZacBlurStyleFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'zac:dartui:BlurSyle.inner':
      return _ZacBlurStyleInner.fromJson(json);
    case 'zac:dartui:BlurSyle.normal':
      return _ZacBlurStyleNormal.fromJson(json);
    case 'zac:dartui:BlurSyle.outer':
      return _ZacBlurStyleOuter.fromJson(json);
    case 'zac:dartui:BlurSyle.solid':
      return _ZacBlurStyleSolid.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'ZacBlurStyle',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
class _$ZacBlurStyleTearOff {
  const _$ZacBlurStyleTearOff();

  _ZacBlurStyleInner inner() {
    return _ZacBlurStyleInner();
  }

  _ZacBlurStyleNormal normal() {
    return _ZacBlurStyleNormal();
  }

  _ZacBlurStyleOuter outer() {
    return _ZacBlurStyleOuter();
  }

  _ZacBlurStyleSolid solid() {
    return _ZacBlurStyleSolid();
  }

  ZacBlurStyle fromJson(Map<String, Object?> json) {
    return ZacBlurStyle.fromJson(json);
  }
}

/// @nodoc
const $ZacBlurStyle = _$ZacBlurStyleTearOff();

/// @nodoc
mixin _$ZacBlurStyle {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() inner,
    required TResult Function() normal,
    required TResult Function() outer,
    required TResult Function() solid,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? inner,
    TResult Function()? normal,
    TResult Function()? outer,
    TResult Function()? solid,
  }) =>
      throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ZacBlurStyleInner value) inner,
    required TResult Function(_ZacBlurStyleNormal value) normal,
    required TResult Function(_ZacBlurStyleOuter value) outer,
    required TResult Function(_ZacBlurStyleSolid value) solid,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ZacBlurStyleInner value)? inner,
    TResult Function(_ZacBlurStyleNormal value)? normal,
    TResult Function(_ZacBlurStyleOuter value)? outer,
    TResult Function(_ZacBlurStyleSolid value)? solid,
  }) =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ZacBlurStyleCopyWith<$Res> {
  factory $ZacBlurStyleCopyWith(
          ZacBlurStyle value, $Res Function(ZacBlurStyle) then) =
      _$ZacBlurStyleCopyWithImpl<$Res>;
}

/// @nodoc
class _$ZacBlurStyleCopyWithImpl<$Res> implements $ZacBlurStyleCopyWith<$Res> {
  _$ZacBlurStyleCopyWithImpl(this._value, this._then);

  final ZacBlurStyle _value;
  // ignore: unused_field
  final $Res Function(ZacBlurStyle) _then;
}

/// @nodoc
abstract class _$ZacBlurStyleInnerCopyWith<$Res> {
  factory _$ZacBlurStyleInnerCopyWith(
          _ZacBlurStyleInner value, $Res Function(_ZacBlurStyleInner) then) =
      __$ZacBlurStyleInnerCopyWithImpl<$Res>;
}

/// @nodoc
class __$ZacBlurStyleInnerCopyWithImpl<$Res>
    extends _$ZacBlurStyleCopyWithImpl<$Res>
    implements _$ZacBlurStyleInnerCopyWith<$Res> {
  __$ZacBlurStyleInnerCopyWithImpl(
      _ZacBlurStyleInner _value, $Res Function(_ZacBlurStyleInner) _then)
      : super(_value, (v) => _then(v as _ZacBlurStyleInner));

  @override
  _ZacBlurStyleInner get _value => super._value as _ZacBlurStyleInner;
}

/// @nodoc
@JsonSerializable()
@FreezedUnionValue('zac:dartui:BlurSyle.inner')
class _$_ZacBlurStyleInner extends _ZacBlurStyleInner {
  _$_ZacBlurStyleInner({String? $type})
      : $type = $type ?? 'zac:dartui:BlurSyle.inner',
        super._();

  factory _$_ZacBlurStyleInner.fromJson(Map<String, dynamic> json) =>
      _$$_ZacBlurStyleInnerFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'ZacBlurStyle.inner()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _ZacBlurStyleInner);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() inner,
    required TResult Function() normal,
    required TResult Function() outer,
    required TResult Function() solid,
  }) {
    return inner();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? inner,
    TResult Function()? normal,
    TResult Function()? outer,
    TResult Function()? solid,
  }) {
    return inner?.call();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ZacBlurStyleInner value) inner,
    required TResult Function(_ZacBlurStyleNormal value) normal,
    required TResult Function(_ZacBlurStyleOuter value) outer,
    required TResult Function(_ZacBlurStyleSolid value) solid,
  }) {
    return inner(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ZacBlurStyleInner value)? inner,
    TResult Function(_ZacBlurStyleNormal value)? normal,
    TResult Function(_ZacBlurStyleOuter value)? outer,
    TResult Function(_ZacBlurStyleSolid value)? solid,
  }) {
    return inner?.call(this);
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$_ZacBlurStyleInnerToJson(this);
  }
}

abstract class _ZacBlurStyleInner extends ZacBlurStyle {
  factory _ZacBlurStyleInner() = _$_ZacBlurStyleInner;
  _ZacBlurStyleInner._() : super._();

  factory _ZacBlurStyleInner.fromJson(Map<String, dynamic> json) =
      _$_ZacBlurStyleInner.fromJson;
}

/// @nodoc
abstract class _$ZacBlurStyleNormalCopyWith<$Res> {
  factory _$ZacBlurStyleNormalCopyWith(
          _ZacBlurStyleNormal value, $Res Function(_ZacBlurStyleNormal) then) =
      __$ZacBlurStyleNormalCopyWithImpl<$Res>;
}

/// @nodoc
class __$ZacBlurStyleNormalCopyWithImpl<$Res>
    extends _$ZacBlurStyleCopyWithImpl<$Res>
    implements _$ZacBlurStyleNormalCopyWith<$Res> {
  __$ZacBlurStyleNormalCopyWithImpl(
      _ZacBlurStyleNormal _value, $Res Function(_ZacBlurStyleNormal) _then)
      : super(_value, (v) => _then(v as _ZacBlurStyleNormal));

  @override
  _ZacBlurStyleNormal get _value => super._value as _ZacBlurStyleNormal;
}

/// @nodoc
@JsonSerializable()
@FreezedUnionValue('zac:dartui:BlurSyle.normal')
class _$_ZacBlurStyleNormal extends _ZacBlurStyleNormal {
  _$_ZacBlurStyleNormal({String? $type})
      : $type = $type ?? 'zac:dartui:BlurSyle.normal',
        super._();

  factory _$_ZacBlurStyleNormal.fromJson(Map<String, dynamic> json) =>
      _$$_ZacBlurStyleNormalFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'ZacBlurStyle.normal()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _ZacBlurStyleNormal);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() inner,
    required TResult Function() normal,
    required TResult Function() outer,
    required TResult Function() solid,
  }) {
    return normal();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? inner,
    TResult Function()? normal,
    TResult Function()? outer,
    TResult Function()? solid,
  }) {
    return normal?.call();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ZacBlurStyleInner value) inner,
    required TResult Function(_ZacBlurStyleNormal value) normal,
    required TResult Function(_ZacBlurStyleOuter value) outer,
    required TResult Function(_ZacBlurStyleSolid value) solid,
  }) {
    return normal(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ZacBlurStyleInner value)? inner,
    TResult Function(_ZacBlurStyleNormal value)? normal,
    TResult Function(_ZacBlurStyleOuter value)? outer,
    TResult Function(_ZacBlurStyleSolid value)? solid,
  }) {
    return normal?.call(this);
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$_ZacBlurStyleNormalToJson(this);
  }
}

abstract class _ZacBlurStyleNormal extends ZacBlurStyle {
  factory _ZacBlurStyleNormal() = _$_ZacBlurStyleNormal;
  _ZacBlurStyleNormal._() : super._();

  factory _ZacBlurStyleNormal.fromJson(Map<String, dynamic> json) =
      _$_ZacBlurStyleNormal.fromJson;
}

/// @nodoc
abstract class _$ZacBlurStyleOuterCopyWith<$Res> {
  factory _$ZacBlurStyleOuterCopyWith(
          _ZacBlurStyleOuter value, $Res Function(_ZacBlurStyleOuter) then) =
      __$ZacBlurStyleOuterCopyWithImpl<$Res>;
}

/// @nodoc
class __$ZacBlurStyleOuterCopyWithImpl<$Res>
    extends _$ZacBlurStyleCopyWithImpl<$Res>
    implements _$ZacBlurStyleOuterCopyWith<$Res> {
  __$ZacBlurStyleOuterCopyWithImpl(
      _ZacBlurStyleOuter _value, $Res Function(_ZacBlurStyleOuter) _then)
      : super(_value, (v) => _then(v as _ZacBlurStyleOuter));

  @override
  _ZacBlurStyleOuter get _value => super._value as _ZacBlurStyleOuter;
}

/// @nodoc
@JsonSerializable()
@FreezedUnionValue('zac:dartui:BlurSyle.outer')
class _$_ZacBlurStyleOuter extends _ZacBlurStyleOuter {
  _$_ZacBlurStyleOuter({String? $type})
      : $type = $type ?? 'zac:dartui:BlurSyle.outer',
        super._();

  factory _$_ZacBlurStyleOuter.fromJson(Map<String, dynamic> json) =>
      _$$_ZacBlurStyleOuterFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'ZacBlurStyle.outer()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _ZacBlurStyleOuter);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() inner,
    required TResult Function() normal,
    required TResult Function() outer,
    required TResult Function() solid,
  }) {
    return outer();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? inner,
    TResult Function()? normal,
    TResult Function()? outer,
    TResult Function()? solid,
  }) {
    return outer?.call();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ZacBlurStyleInner value) inner,
    required TResult Function(_ZacBlurStyleNormal value) normal,
    required TResult Function(_ZacBlurStyleOuter value) outer,
    required TResult Function(_ZacBlurStyleSolid value) solid,
  }) {
    return outer(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ZacBlurStyleInner value)? inner,
    TResult Function(_ZacBlurStyleNormal value)? normal,
    TResult Function(_ZacBlurStyleOuter value)? outer,
    TResult Function(_ZacBlurStyleSolid value)? solid,
  }) {
    return outer?.call(this);
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$_ZacBlurStyleOuterToJson(this);
  }
}

abstract class _ZacBlurStyleOuter extends ZacBlurStyle {
  factory _ZacBlurStyleOuter() = _$_ZacBlurStyleOuter;
  _ZacBlurStyleOuter._() : super._();

  factory _ZacBlurStyleOuter.fromJson(Map<String, dynamic> json) =
      _$_ZacBlurStyleOuter.fromJson;
}

/// @nodoc
abstract class _$ZacBlurStyleSolidCopyWith<$Res> {
  factory _$ZacBlurStyleSolidCopyWith(
          _ZacBlurStyleSolid value, $Res Function(_ZacBlurStyleSolid) then) =
      __$ZacBlurStyleSolidCopyWithImpl<$Res>;
}

/// @nodoc
class __$ZacBlurStyleSolidCopyWithImpl<$Res>
    extends _$ZacBlurStyleCopyWithImpl<$Res>
    implements _$ZacBlurStyleSolidCopyWith<$Res> {
  __$ZacBlurStyleSolidCopyWithImpl(
      _ZacBlurStyleSolid _value, $Res Function(_ZacBlurStyleSolid) _then)
      : super(_value, (v) => _then(v as _ZacBlurStyleSolid));

  @override
  _ZacBlurStyleSolid get _value => super._value as _ZacBlurStyleSolid;
}

/// @nodoc
@JsonSerializable()
@FreezedUnionValue('zac:dartui:BlurSyle.solid')
class _$_ZacBlurStyleSolid extends _ZacBlurStyleSolid {
  _$_ZacBlurStyleSolid({String? $type})
      : $type = $type ?? 'zac:dartui:BlurSyle.solid',
        super._();

  factory _$_ZacBlurStyleSolid.fromJson(Map<String, dynamic> json) =>
      _$$_ZacBlurStyleSolidFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'ZacBlurStyle.solid()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _ZacBlurStyleSolid);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() inner,
    required TResult Function() normal,
    required TResult Function() outer,
    required TResult Function() solid,
  }) {
    return solid();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? inner,
    TResult Function()? normal,
    TResult Function()? outer,
    TResult Function()? solid,
  }) {
    return solid?.call();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ZacBlurStyleInner value) inner,
    required TResult Function(_ZacBlurStyleNormal value) normal,
    required TResult Function(_ZacBlurStyleOuter value) outer,
    required TResult Function(_ZacBlurStyleSolid value) solid,
  }) {
    return solid(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ZacBlurStyleInner value)? inner,
    TResult Function(_ZacBlurStyleNormal value)? normal,
    TResult Function(_ZacBlurStyleOuter value)? outer,
    TResult Function(_ZacBlurStyleSolid value)? solid,
  }) {
    return solid?.call(this);
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$_ZacBlurStyleSolidToJson(this);
  }
}

abstract class _ZacBlurStyleSolid extends ZacBlurStyle {
  factory _ZacBlurStyleSolid() = _$_ZacBlurStyleSolid;
  _ZacBlurStyleSolid._() : super._();

  factory _ZacBlurStyleSolid.fromJson(Map<String, dynamic> json) =
      _$_ZacBlurStyleSolid.fromJson;
}

ZacRadius _$ZacRadiusFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'zac:dartui:Radius.circular':
      return _ZacRadiusCircular.fromJson(json);
    case 'zac:dartui:Radius.elliptical':
      return _ZacRadiusElliptical.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'ZacRadius',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
class _$ZacRadiusTearOff {
  const _$ZacRadiusTearOff();

  _ZacRadiusCircular circular(double radius) {
    return _ZacRadiusCircular(
      radius,
    );
  }

  _ZacRadiusElliptical elliptical(double x, double y) {
    return _ZacRadiusElliptical(
      x,
      y,
    );
  }

  ZacRadius fromJson(Map<String, Object?> json) {
    return ZacRadius.fromJson(json);
  }
}

/// @nodoc
const $ZacRadius = _$ZacRadiusTearOff();

/// @nodoc
mixin _$ZacRadius {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(double radius) circular,
    required TResult Function(double x, double y) elliptical,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(double radius)? circular,
    TResult Function(double x, double y)? elliptical,
  }) =>
      throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ZacRadiusCircular value) circular,
    required TResult Function(_ZacRadiusElliptical value) elliptical,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ZacRadiusCircular value)? circular,
    TResult Function(_ZacRadiusElliptical value)? elliptical,
  }) =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ZacRadiusCopyWith<$Res> {
  factory $ZacRadiusCopyWith(ZacRadius value, $Res Function(ZacRadius) then) =
      _$ZacRadiusCopyWithImpl<$Res>;
}

/// @nodoc
class _$ZacRadiusCopyWithImpl<$Res> implements $ZacRadiusCopyWith<$Res> {
  _$ZacRadiusCopyWithImpl(this._value, this._then);

  final ZacRadius _value;
  // ignore: unused_field
  final $Res Function(ZacRadius) _then;
}

/// @nodoc
abstract class _$ZacRadiusCircularCopyWith<$Res> {
  factory _$ZacRadiusCircularCopyWith(
          _ZacRadiusCircular value, $Res Function(_ZacRadiusCircular) then) =
      __$ZacRadiusCircularCopyWithImpl<$Res>;
  $Res call({double radius});
}

/// @nodoc
class __$ZacRadiusCircularCopyWithImpl<$Res>
    extends _$ZacRadiusCopyWithImpl<$Res>
    implements _$ZacRadiusCircularCopyWith<$Res> {
  __$ZacRadiusCircularCopyWithImpl(
      _ZacRadiusCircular _value, $Res Function(_ZacRadiusCircular) _then)
      : super(_value, (v) => _then(v as _ZacRadiusCircular));

  @override
  _ZacRadiusCircular get _value => super._value as _ZacRadiusCircular;

  @override
  $Res call({
    Object? radius = freezed,
  }) {
    return _then(_ZacRadiusCircular(
      radius == freezed
          ? _value.radius
          : radius // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
@FreezedUnionValue('zac:dartui:Radius.circular')
class _$_ZacRadiusCircular extends _ZacRadiusCircular {
  _$_ZacRadiusCircular(this.radius, {String? $type})
      : $type = $type ?? 'zac:dartui:Radius.circular',
        super._();

  factory _$_ZacRadiusCircular.fromJson(Map<String, dynamic> json) =>
      _$$_ZacRadiusCircularFromJson(json);

  @override
  final double radius;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'ZacRadius.circular(radius: $radius)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ZacRadiusCircular &&
            const DeepCollectionEquality().equals(other.radius, radius));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(radius));

  @JsonKey(ignore: true)
  @override
  _$ZacRadiusCircularCopyWith<_ZacRadiusCircular> get copyWith =>
      __$ZacRadiusCircularCopyWithImpl<_ZacRadiusCircular>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(double radius) circular,
    required TResult Function(double x, double y) elliptical,
  }) {
    return circular(radius);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(double radius)? circular,
    TResult Function(double x, double y)? elliptical,
  }) {
    return circular?.call(radius);
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ZacRadiusCircular value) circular,
    required TResult Function(_ZacRadiusElliptical value) elliptical,
  }) {
    return circular(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ZacRadiusCircular value)? circular,
    TResult Function(_ZacRadiusElliptical value)? elliptical,
  }) {
    return circular?.call(this);
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$_ZacRadiusCircularToJson(this);
  }
}

abstract class _ZacRadiusCircular extends ZacRadius {
  factory _ZacRadiusCircular(double radius) = _$_ZacRadiusCircular;
  _ZacRadiusCircular._() : super._();

  factory _ZacRadiusCircular.fromJson(Map<String, dynamic> json) =
      _$_ZacRadiusCircular.fromJson;

  double get radius;
  @JsonKey(ignore: true)
  _$ZacRadiusCircularCopyWith<_ZacRadiusCircular> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ZacRadiusEllipticalCopyWith<$Res> {
  factory _$ZacRadiusEllipticalCopyWith(_ZacRadiusElliptical value,
          $Res Function(_ZacRadiusElliptical) then) =
      __$ZacRadiusEllipticalCopyWithImpl<$Res>;
  $Res call({double x, double y});
}

/// @nodoc
class __$ZacRadiusEllipticalCopyWithImpl<$Res>
    extends _$ZacRadiusCopyWithImpl<$Res>
    implements _$ZacRadiusEllipticalCopyWith<$Res> {
  __$ZacRadiusEllipticalCopyWithImpl(
      _ZacRadiusElliptical _value, $Res Function(_ZacRadiusElliptical) _then)
      : super(_value, (v) => _then(v as _ZacRadiusElliptical));

  @override
  _ZacRadiusElliptical get _value => super._value as _ZacRadiusElliptical;

  @override
  $Res call({
    Object? x = freezed,
    Object? y = freezed,
  }) {
    return _then(_ZacRadiusElliptical(
      x == freezed
          ? _value.x
          : x // ignore: cast_nullable_to_non_nullable
              as double,
      y == freezed
          ? _value.y
          : y // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
@FreezedUnionValue('zac:dartui:Radius.elliptical')
class _$_ZacRadiusElliptical extends _ZacRadiusElliptical {
  _$_ZacRadiusElliptical(this.x, this.y, {String? $type})
      : $type = $type ?? 'zac:dartui:Radius.elliptical',
        super._();

  factory _$_ZacRadiusElliptical.fromJson(Map<String, dynamic> json) =>
      _$$_ZacRadiusEllipticalFromJson(json);

  @override
  final double x;
  @override
  final double y;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'ZacRadius.elliptical(x: $x, y: $y)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ZacRadiusElliptical &&
            const DeepCollectionEquality().equals(other.x, x) &&
            const DeepCollectionEquality().equals(other.y, y));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(x),
      const DeepCollectionEquality().hash(y));

  @JsonKey(ignore: true)
  @override
  _$ZacRadiusEllipticalCopyWith<_ZacRadiusElliptical> get copyWith =>
      __$ZacRadiusEllipticalCopyWithImpl<_ZacRadiusElliptical>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(double radius) circular,
    required TResult Function(double x, double y) elliptical,
  }) {
    return elliptical(x, y);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(double radius)? circular,
    TResult Function(double x, double y)? elliptical,
  }) {
    return elliptical?.call(x, y);
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ZacRadiusCircular value) circular,
    required TResult Function(_ZacRadiusElliptical value) elliptical,
  }) {
    return elliptical(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ZacRadiusCircular value)? circular,
    TResult Function(_ZacRadiusElliptical value)? elliptical,
  }) {
    return elliptical?.call(this);
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$_ZacRadiusEllipticalToJson(this);
  }
}

abstract class _ZacRadiusElliptical extends ZacRadius {
  factory _ZacRadiusElliptical(double x, double y) = _$_ZacRadiusElliptical;
  _ZacRadiusElliptical._() : super._();

  factory _ZacRadiusElliptical.fromJson(Map<String, dynamic> json) =
      _$_ZacRadiusElliptical.fromJson;

  double get x;
  double get y;
  @JsonKey(ignore: true)
  _$ZacRadiusEllipticalCopyWith<_ZacRadiusElliptical> get copyWith =>
      throw _privateConstructorUsedError;
}
