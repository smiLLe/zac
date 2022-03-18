// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'painting.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ZacEdgeInsetsGeometry _$ZacEdgeInsetsGeometryFromJson(
    Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'zac:painting:EdgeInsets.all':
      return _ZacEdgeInsetsGeometryEdgeInsetsAll.fromJson(json);
    case 'zac:painting:EdgeInsets.symmetric':
      return _ZacEdgeInsetsGeometryEdgeInsetsSymmetric.fromJson(json);
    case 'zac:painting:EdgeInsets.only':
      return _ZacEdgeInsetsGeometryEdgeInsetsOnly.fromJson(json);
    case 'zac:painting:EdgeInsetsDirectional.all':
      return _ZacEdgeInsetsGeometryEdgeInsetsDirectionalAll.fromJson(json);
    case 'zac:painting:EdgeInsetsDirectional.only':
      return _ZacEdgeInsetsGeometryEdgeInsetsDirectionalOnly.fromJson(json);

    default:
      throw CheckedFromJsonException(
          json,
          'runtimeType',
          'ZacEdgeInsetsGeometry',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
class _$ZacEdgeInsetsGeometryTearOff {
  const _$ZacEdgeInsetsGeometryTearOff();

  _ZacEdgeInsetsGeometryEdgeInsetsAll edgeInsetsAll(double value) {
    return _ZacEdgeInsetsGeometryEdgeInsetsAll(
      value,
    );
  }

  _ZacEdgeInsetsGeometryEdgeInsetsSymmetric edgeInsetsSymmetric(
      {double? vertical, double? horizontal}) {
    return _ZacEdgeInsetsGeometryEdgeInsetsSymmetric(
      vertical: vertical,
      horizontal: horizontal,
    );
  }

  _ZacEdgeInsetsGeometryEdgeInsetsOnly edgeInsetsOnly(
      {double? left, double? top, double? right, double? bottom}) {
    return _ZacEdgeInsetsGeometryEdgeInsetsOnly(
      left: left,
      top: top,
      right: right,
      bottom: bottom,
    );
  }

  _ZacEdgeInsetsGeometryEdgeInsetsDirectionalAll edgeInsetsDirectionalAll(
      double value) {
    return _ZacEdgeInsetsGeometryEdgeInsetsDirectionalAll(
      value,
    );
  }

  _ZacEdgeInsetsGeometryEdgeInsetsDirectionalOnly edgeInsetsDirectionalOnly(
      {double? start, double? top, double? end, double? bottom}) {
    return _ZacEdgeInsetsGeometryEdgeInsetsDirectionalOnly(
      start: start,
      top: top,
      end: end,
      bottom: bottom,
    );
  }

  ZacEdgeInsetsGeometry fromJson(Map<String, Object?> json) {
    return ZacEdgeInsetsGeometry.fromJson(json);
  }
}

/// @nodoc
const $ZacEdgeInsetsGeometry = _$ZacEdgeInsetsGeometryTearOff();

/// @nodoc
mixin _$ZacEdgeInsetsGeometry {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(double value) edgeInsetsAll,
    required TResult Function(double? vertical, double? horizontal)
        edgeInsetsSymmetric,
    required TResult Function(
            double? left, double? top, double? right, double? bottom)
        edgeInsetsOnly,
    required TResult Function(double value) edgeInsetsDirectionalAll,
    required TResult Function(
            double? start, double? top, double? end, double? bottom)
        edgeInsetsDirectionalOnly,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(double value)? edgeInsetsAll,
    TResult Function(double? vertical, double? horizontal)? edgeInsetsSymmetric,
    TResult Function(double? left, double? top, double? right, double? bottom)?
        edgeInsetsOnly,
    TResult Function(double value)? edgeInsetsDirectionalAll,
    TResult Function(double? start, double? top, double? end, double? bottom)?
        edgeInsetsDirectionalOnly,
  }) =>
      throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ZacEdgeInsetsGeometryEdgeInsetsAll value)
        edgeInsetsAll,
    required TResult Function(_ZacEdgeInsetsGeometryEdgeInsetsSymmetric value)
        edgeInsetsSymmetric,
    required TResult Function(_ZacEdgeInsetsGeometryEdgeInsetsOnly value)
        edgeInsetsOnly,
    required TResult Function(
            _ZacEdgeInsetsGeometryEdgeInsetsDirectionalAll value)
        edgeInsetsDirectionalAll,
    required TResult Function(
            _ZacEdgeInsetsGeometryEdgeInsetsDirectionalOnly value)
        edgeInsetsDirectionalOnly,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ZacEdgeInsetsGeometryEdgeInsetsAll value)? edgeInsetsAll,
    TResult Function(_ZacEdgeInsetsGeometryEdgeInsetsSymmetric value)?
        edgeInsetsSymmetric,
    TResult Function(_ZacEdgeInsetsGeometryEdgeInsetsOnly value)?
        edgeInsetsOnly,
    TResult Function(_ZacEdgeInsetsGeometryEdgeInsetsDirectionalAll value)?
        edgeInsetsDirectionalAll,
    TResult Function(_ZacEdgeInsetsGeometryEdgeInsetsDirectionalOnly value)?
        edgeInsetsDirectionalOnly,
  }) =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ZacEdgeInsetsGeometryCopyWith<$Res> {
  factory $ZacEdgeInsetsGeometryCopyWith(ZacEdgeInsetsGeometry value,
          $Res Function(ZacEdgeInsetsGeometry) then) =
      _$ZacEdgeInsetsGeometryCopyWithImpl<$Res>;
}

/// @nodoc
class _$ZacEdgeInsetsGeometryCopyWithImpl<$Res>
    implements $ZacEdgeInsetsGeometryCopyWith<$Res> {
  _$ZacEdgeInsetsGeometryCopyWithImpl(this._value, this._then);

  final ZacEdgeInsetsGeometry _value;
  // ignore: unused_field
  final $Res Function(ZacEdgeInsetsGeometry) _then;
}

/// @nodoc
abstract class _$ZacEdgeInsetsGeometryEdgeInsetsAllCopyWith<$Res> {
  factory _$ZacEdgeInsetsGeometryEdgeInsetsAllCopyWith(
          _ZacEdgeInsetsGeometryEdgeInsetsAll value,
          $Res Function(_ZacEdgeInsetsGeometryEdgeInsetsAll) then) =
      __$ZacEdgeInsetsGeometryEdgeInsetsAllCopyWithImpl<$Res>;
  $Res call({double value});
}

/// @nodoc
class __$ZacEdgeInsetsGeometryEdgeInsetsAllCopyWithImpl<$Res>
    extends _$ZacEdgeInsetsGeometryCopyWithImpl<$Res>
    implements _$ZacEdgeInsetsGeometryEdgeInsetsAllCopyWith<$Res> {
  __$ZacEdgeInsetsGeometryEdgeInsetsAllCopyWithImpl(
      _ZacEdgeInsetsGeometryEdgeInsetsAll _value,
      $Res Function(_ZacEdgeInsetsGeometryEdgeInsetsAll) _then)
      : super(_value, (v) => _then(v as _ZacEdgeInsetsGeometryEdgeInsetsAll));

  @override
  _ZacEdgeInsetsGeometryEdgeInsetsAll get _value =>
      super._value as _ZacEdgeInsetsGeometryEdgeInsetsAll;

  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(_ZacEdgeInsetsGeometryEdgeInsetsAll(
      value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
@FreezedUnionValue('zac:painting:EdgeInsets.all')
class _$_ZacEdgeInsetsGeometryEdgeInsetsAll
    extends _ZacEdgeInsetsGeometryEdgeInsetsAll {
  _$_ZacEdgeInsetsGeometryEdgeInsetsAll(this.value, {String? $type})
      : $type = $type ?? 'zac:painting:EdgeInsets.all',
        super._();

  factory _$_ZacEdgeInsetsGeometryEdgeInsetsAll.fromJson(
          Map<String, dynamic> json) =>
      _$$_ZacEdgeInsetsGeometryEdgeInsetsAllFromJson(json);

  @override
  final double value;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'ZacEdgeInsetsGeometry.edgeInsetsAll(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ZacEdgeInsetsGeometryEdgeInsetsAll &&
            const DeepCollectionEquality().equals(other.value, value));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(value));

  @JsonKey(ignore: true)
  @override
  _$ZacEdgeInsetsGeometryEdgeInsetsAllCopyWith<
          _ZacEdgeInsetsGeometryEdgeInsetsAll>
      get copyWith => __$ZacEdgeInsetsGeometryEdgeInsetsAllCopyWithImpl<
          _ZacEdgeInsetsGeometryEdgeInsetsAll>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(double value) edgeInsetsAll,
    required TResult Function(double? vertical, double? horizontal)
        edgeInsetsSymmetric,
    required TResult Function(
            double? left, double? top, double? right, double? bottom)
        edgeInsetsOnly,
    required TResult Function(double value) edgeInsetsDirectionalAll,
    required TResult Function(
            double? start, double? top, double? end, double? bottom)
        edgeInsetsDirectionalOnly,
  }) {
    return edgeInsetsAll(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(double value)? edgeInsetsAll,
    TResult Function(double? vertical, double? horizontal)? edgeInsetsSymmetric,
    TResult Function(double? left, double? top, double? right, double? bottom)?
        edgeInsetsOnly,
    TResult Function(double value)? edgeInsetsDirectionalAll,
    TResult Function(double? start, double? top, double? end, double? bottom)?
        edgeInsetsDirectionalOnly,
  }) {
    return edgeInsetsAll?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ZacEdgeInsetsGeometryEdgeInsetsAll value)
        edgeInsetsAll,
    required TResult Function(_ZacEdgeInsetsGeometryEdgeInsetsSymmetric value)
        edgeInsetsSymmetric,
    required TResult Function(_ZacEdgeInsetsGeometryEdgeInsetsOnly value)
        edgeInsetsOnly,
    required TResult Function(
            _ZacEdgeInsetsGeometryEdgeInsetsDirectionalAll value)
        edgeInsetsDirectionalAll,
    required TResult Function(
            _ZacEdgeInsetsGeometryEdgeInsetsDirectionalOnly value)
        edgeInsetsDirectionalOnly,
  }) {
    return edgeInsetsAll(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ZacEdgeInsetsGeometryEdgeInsetsAll value)? edgeInsetsAll,
    TResult Function(_ZacEdgeInsetsGeometryEdgeInsetsSymmetric value)?
        edgeInsetsSymmetric,
    TResult Function(_ZacEdgeInsetsGeometryEdgeInsetsOnly value)?
        edgeInsetsOnly,
    TResult Function(_ZacEdgeInsetsGeometryEdgeInsetsDirectionalAll value)?
        edgeInsetsDirectionalAll,
    TResult Function(_ZacEdgeInsetsGeometryEdgeInsetsDirectionalOnly value)?
        edgeInsetsDirectionalOnly,
  }) {
    return edgeInsetsAll?.call(this);
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$_ZacEdgeInsetsGeometryEdgeInsetsAllToJson(this);
  }
}

abstract class _ZacEdgeInsetsGeometryEdgeInsetsAll
    extends ZacEdgeInsetsGeometry {
  factory _ZacEdgeInsetsGeometryEdgeInsetsAll(double value) =
      _$_ZacEdgeInsetsGeometryEdgeInsetsAll;
  _ZacEdgeInsetsGeometryEdgeInsetsAll._() : super._();

  factory _ZacEdgeInsetsGeometryEdgeInsetsAll.fromJson(
          Map<String, dynamic> json) =
      _$_ZacEdgeInsetsGeometryEdgeInsetsAll.fromJson;

  double get value;
  @JsonKey(ignore: true)
  _$ZacEdgeInsetsGeometryEdgeInsetsAllCopyWith<
          _ZacEdgeInsetsGeometryEdgeInsetsAll>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ZacEdgeInsetsGeometryEdgeInsetsSymmetricCopyWith<$Res> {
  factory _$ZacEdgeInsetsGeometryEdgeInsetsSymmetricCopyWith(
          _ZacEdgeInsetsGeometryEdgeInsetsSymmetric value,
          $Res Function(_ZacEdgeInsetsGeometryEdgeInsetsSymmetric) then) =
      __$ZacEdgeInsetsGeometryEdgeInsetsSymmetricCopyWithImpl<$Res>;
  $Res call({double? vertical, double? horizontal});
}

/// @nodoc
class __$ZacEdgeInsetsGeometryEdgeInsetsSymmetricCopyWithImpl<$Res>
    extends _$ZacEdgeInsetsGeometryCopyWithImpl<$Res>
    implements _$ZacEdgeInsetsGeometryEdgeInsetsSymmetricCopyWith<$Res> {
  __$ZacEdgeInsetsGeometryEdgeInsetsSymmetricCopyWithImpl(
      _ZacEdgeInsetsGeometryEdgeInsetsSymmetric _value,
      $Res Function(_ZacEdgeInsetsGeometryEdgeInsetsSymmetric) _then)
      : super(_value,
            (v) => _then(v as _ZacEdgeInsetsGeometryEdgeInsetsSymmetric));

  @override
  _ZacEdgeInsetsGeometryEdgeInsetsSymmetric get _value =>
      super._value as _ZacEdgeInsetsGeometryEdgeInsetsSymmetric;

  @override
  $Res call({
    Object? vertical = freezed,
    Object? horizontal = freezed,
  }) {
    return _then(_ZacEdgeInsetsGeometryEdgeInsetsSymmetric(
      vertical: vertical == freezed
          ? _value.vertical
          : vertical // ignore: cast_nullable_to_non_nullable
              as double?,
      horizontal: horizontal == freezed
          ? _value.horizontal
          : horizontal // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
@FreezedUnionValue('zac:painting:EdgeInsets.symmetric')
class _$_ZacEdgeInsetsGeometryEdgeInsetsSymmetric
    extends _ZacEdgeInsetsGeometryEdgeInsetsSymmetric {
  _$_ZacEdgeInsetsGeometryEdgeInsetsSymmetric(
      {this.vertical, this.horizontal, String? $type})
      : $type = $type ?? 'zac:painting:EdgeInsets.symmetric',
        super._();

  factory _$_ZacEdgeInsetsGeometryEdgeInsetsSymmetric.fromJson(
          Map<String, dynamic> json) =>
      _$$_ZacEdgeInsetsGeometryEdgeInsetsSymmetricFromJson(json);

  @override
  final double? vertical;
  @override
  final double? horizontal;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'ZacEdgeInsetsGeometry.edgeInsetsSymmetric(vertical: $vertical, horizontal: $horizontal)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ZacEdgeInsetsGeometryEdgeInsetsSymmetric &&
            const DeepCollectionEquality().equals(other.vertical, vertical) &&
            const DeepCollectionEquality()
                .equals(other.horizontal, horizontal));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(vertical),
      const DeepCollectionEquality().hash(horizontal));

  @JsonKey(ignore: true)
  @override
  _$ZacEdgeInsetsGeometryEdgeInsetsSymmetricCopyWith<
          _ZacEdgeInsetsGeometryEdgeInsetsSymmetric>
      get copyWith => __$ZacEdgeInsetsGeometryEdgeInsetsSymmetricCopyWithImpl<
          _ZacEdgeInsetsGeometryEdgeInsetsSymmetric>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(double value) edgeInsetsAll,
    required TResult Function(double? vertical, double? horizontal)
        edgeInsetsSymmetric,
    required TResult Function(
            double? left, double? top, double? right, double? bottom)
        edgeInsetsOnly,
    required TResult Function(double value) edgeInsetsDirectionalAll,
    required TResult Function(
            double? start, double? top, double? end, double? bottom)
        edgeInsetsDirectionalOnly,
  }) {
    return edgeInsetsSymmetric(vertical, horizontal);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(double value)? edgeInsetsAll,
    TResult Function(double? vertical, double? horizontal)? edgeInsetsSymmetric,
    TResult Function(double? left, double? top, double? right, double? bottom)?
        edgeInsetsOnly,
    TResult Function(double value)? edgeInsetsDirectionalAll,
    TResult Function(double? start, double? top, double? end, double? bottom)?
        edgeInsetsDirectionalOnly,
  }) {
    return edgeInsetsSymmetric?.call(vertical, horizontal);
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ZacEdgeInsetsGeometryEdgeInsetsAll value)
        edgeInsetsAll,
    required TResult Function(_ZacEdgeInsetsGeometryEdgeInsetsSymmetric value)
        edgeInsetsSymmetric,
    required TResult Function(_ZacEdgeInsetsGeometryEdgeInsetsOnly value)
        edgeInsetsOnly,
    required TResult Function(
            _ZacEdgeInsetsGeometryEdgeInsetsDirectionalAll value)
        edgeInsetsDirectionalAll,
    required TResult Function(
            _ZacEdgeInsetsGeometryEdgeInsetsDirectionalOnly value)
        edgeInsetsDirectionalOnly,
  }) {
    return edgeInsetsSymmetric(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ZacEdgeInsetsGeometryEdgeInsetsAll value)? edgeInsetsAll,
    TResult Function(_ZacEdgeInsetsGeometryEdgeInsetsSymmetric value)?
        edgeInsetsSymmetric,
    TResult Function(_ZacEdgeInsetsGeometryEdgeInsetsOnly value)?
        edgeInsetsOnly,
    TResult Function(_ZacEdgeInsetsGeometryEdgeInsetsDirectionalAll value)?
        edgeInsetsDirectionalAll,
    TResult Function(_ZacEdgeInsetsGeometryEdgeInsetsDirectionalOnly value)?
        edgeInsetsDirectionalOnly,
  }) {
    return edgeInsetsSymmetric?.call(this);
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$_ZacEdgeInsetsGeometryEdgeInsetsSymmetricToJson(this);
  }
}

abstract class _ZacEdgeInsetsGeometryEdgeInsetsSymmetric
    extends ZacEdgeInsetsGeometry {
  factory _ZacEdgeInsetsGeometryEdgeInsetsSymmetric(
      {double? vertical,
      double? horizontal}) = _$_ZacEdgeInsetsGeometryEdgeInsetsSymmetric;
  _ZacEdgeInsetsGeometryEdgeInsetsSymmetric._() : super._();

  factory _ZacEdgeInsetsGeometryEdgeInsetsSymmetric.fromJson(
          Map<String, dynamic> json) =
      _$_ZacEdgeInsetsGeometryEdgeInsetsSymmetric.fromJson;

  double? get vertical;
  double? get horizontal;
  @JsonKey(ignore: true)
  _$ZacEdgeInsetsGeometryEdgeInsetsSymmetricCopyWith<
          _ZacEdgeInsetsGeometryEdgeInsetsSymmetric>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ZacEdgeInsetsGeometryEdgeInsetsOnlyCopyWith<$Res> {
  factory _$ZacEdgeInsetsGeometryEdgeInsetsOnlyCopyWith(
          _ZacEdgeInsetsGeometryEdgeInsetsOnly value,
          $Res Function(_ZacEdgeInsetsGeometryEdgeInsetsOnly) then) =
      __$ZacEdgeInsetsGeometryEdgeInsetsOnlyCopyWithImpl<$Res>;
  $Res call({double? left, double? top, double? right, double? bottom});
}

/// @nodoc
class __$ZacEdgeInsetsGeometryEdgeInsetsOnlyCopyWithImpl<$Res>
    extends _$ZacEdgeInsetsGeometryCopyWithImpl<$Res>
    implements _$ZacEdgeInsetsGeometryEdgeInsetsOnlyCopyWith<$Res> {
  __$ZacEdgeInsetsGeometryEdgeInsetsOnlyCopyWithImpl(
      _ZacEdgeInsetsGeometryEdgeInsetsOnly _value,
      $Res Function(_ZacEdgeInsetsGeometryEdgeInsetsOnly) _then)
      : super(_value, (v) => _then(v as _ZacEdgeInsetsGeometryEdgeInsetsOnly));

  @override
  _ZacEdgeInsetsGeometryEdgeInsetsOnly get _value =>
      super._value as _ZacEdgeInsetsGeometryEdgeInsetsOnly;

  @override
  $Res call({
    Object? left = freezed,
    Object? top = freezed,
    Object? right = freezed,
    Object? bottom = freezed,
  }) {
    return _then(_ZacEdgeInsetsGeometryEdgeInsetsOnly(
      left: left == freezed
          ? _value.left
          : left // ignore: cast_nullable_to_non_nullable
              as double?,
      top: top == freezed
          ? _value.top
          : top // ignore: cast_nullable_to_non_nullable
              as double?,
      right: right == freezed
          ? _value.right
          : right // ignore: cast_nullable_to_non_nullable
              as double?,
      bottom: bottom == freezed
          ? _value.bottom
          : bottom // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
@FreezedUnionValue('zac:painting:EdgeInsets.only')
class _$_ZacEdgeInsetsGeometryEdgeInsetsOnly
    extends _ZacEdgeInsetsGeometryEdgeInsetsOnly {
  _$_ZacEdgeInsetsGeometryEdgeInsetsOnly(
      {this.left, this.top, this.right, this.bottom, String? $type})
      : $type = $type ?? 'zac:painting:EdgeInsets.only',
        super._();

  factory _$_ZacEdgeInsetsGeometryEdgeInsetsOnly.fromJson(
          Map<String, dynamic> json) =>
      _$$_ZacEdgeInsetsGeometryEdgeInsetsOnlyFromJson(json);

  @override
  final double? left;
  @override
  final double? top;
  @override
  final double? right;
  @override
  final double? bottom;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'ZacEdgeInsetsGeometry.edgeInsetsOnly(left: $left, top: $top, right: $right, bottom: $bottom)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ZacEdgeInsetsGeometryEdgeInsetsOnly &&
            const DeepCollectionEquality().equals(other.left, left) &&
            const DeepCollectionEquality().equals(other.top, top) &&
            const DeepCollectionEquality().equals(other.right, right) &&
            const DeepCollectionEquality().equals(other.bottom, bottom));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(left),
      const DeepCollectionEquality().hash(top),
      const DeepCollectionEquality().hash(right),
      const DeepCollectionEquality().hash(bottom));

  @JsonKey(ignore: true)
  @override
  _$ZacEdgeInsetsGeometryEdgeInsetsOnlyCopyWith<
          _ZacEdgeInsetsGeometryEdgeInsetsOnly>
      get copyWith => __$ZacEdgeInsetsGeometryEdgeInsetsOnlyCopyWithImpl<
          _ZacEdgeInsetsGeometryEdgeInsetsOnly>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(double value) edgeInsetsAll,
    required TResult Function(double? vertical, double? horizontal)
        edgeInsetsSymmetric,
    required TResult Function(
            double? left, double? top, double? right, double? bottom)
        edgeInsetsOnly,
    required TResult Function(double value) edgeInsetsDirectionalAll,
    required TResult Function(
            double? start, double? top, double? end, double? bottom)
        edgeInsetsDirectionalOnly,
  }) {
    return edgeInsetsOnly(left, top, right, bottom);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(double value)? edgeInsetsAll,
    TResult Function(double? vertical, double? horizontal)? edgeInsetsSymmetric,
    TResult Function(double? left, double? top, double? right, double? bottom)?
        edgeInsetsOnly,
    TResult Function(double value)? edgeInsetsDirectionalAll,
    TResult Function(double? start, double? top, double? end, double? bottom)?
        edgeInsetsDirectionalOnly,
  }) {
    return edgeInsetsOnly?.call(left, top, right, bottom);
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ZacEdgeInsetsGeometryEdgeInsetsAll value)
        edgeInsetsAll,
    required TResult Function(_ZacEdgeInsetsGeometryEdgeInsetsSymmetric value)
        edgeInsetsSymmetric,
    required TResult Function(_ZacEdgeInsetsGeometryEdgeInsetsOnly value)
        edgeInsetsOnly,
    required TResult Function(
            _ZacEdgeInsetsGeometryEdgeInsetsDirectionalAll value)
        edgeInsetsDirectionalAll,
    required TResult Function(
            _ZacEdgeInsetsGeometryEdgeInsetsDirectionalOnly value)
        edgeInsetsDirectionalOnly,
  }) {
    return edgeInsetsOnly(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ZacEdgeInsetsGeometryEdgeInsetsAll value)? edgeInsetsAll,
    TResult Function(_ZacEdgeInsetsGeometryEdgeInsetsSymmetric value)?
        edgeInsetsSymmetric,
    TResult Function(_ZacEdgeInsetsGeometryEdgeInsetsOnly value)?
        edgeInsetsOnly,
    TResult Function(_ZacEdgeInsetsGeometryEdgeInsetsDirectionalAll value)?
        edgeInsetsDirectionalAll,
    TResult Function(_ZacEdgeInsetsGeometryEdgeInsetsDirectionalOnly value)?
        edgeInsetsDirectionalOnly,
  }) {
    return edgeInsetsOnly?.call(this);
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$_ZacEdgeInsetsGeometryEdgeInsetsOnlyToJson(this);
  }
}

abstract class _ZacEdgeInsetsGeometryEdgeInsetsOnly
    extends ZacEdgeInsetsGeometry {
  factory _ZacEdgeInsetsGeometryEdgeInsetsOnly(
      {double? left,
      double? top,
      double? right,
      double? bottom}) = _$_ZacEdgeInsetsGeometryEdgeInsetsOnly;
  _ZacEdgeInsetsGeometryEdgeInsetsOnly._() : super._();

  factory _ZacEdgeInsetsGeometryEdgeInsetsOnly.fromJson(
          Map<String, dynamic> json) =
      _$_ZacEdgeInsetsGeometryEdgeInsetsOnly.fromJson;

  double? get left;
  double? get top;
  double? get right;
  double? get bottom;
  @JsonKey(ignore: true)
  _$ZacEdgeInsetsGeometryEdgeInsetsOnlyCopyWith<
          _ZacEdgeInsetsGeometryEdgeInsetsOnly>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ZacEdgeInsetsGeometryEdgeInsetsDirectionalAllCopyWith<$Res> {
  factory _$ZacEdgeInsetsGeometryEdgeInsetsDirectionalAllCopyWith(
          _ZacEdgeInsetsGeometryEdgeInsetsDirectionalAll value,
          $Res Function(_ZacEdgeInsetsGeometryEdgeInsetsDirectionalAll) then) =
      __$ZacEdgeInsetsGeometryEdgeInsetsDirectionalAllCopyWithImpl<$Res>;
  $Res call({double value});
}

/// @nodoc
class __$ZacEdgeInsetsGeometryEdgeInsetsDirectionalAllCopyWithImpl<$Res>
    extends _$ZacEdgeInsetsGeometryCopyWithImpl<$Res>
    implements _$ZacEdgeInsetsGeometryEdgeInsetsDirectionalAllCopyWith<$Res> {
  __$ZacEdgeInsetsGeometryEdgeInsetsDirectionalAllCopyWithImpl(
      _ZacEdgeInsetsGeometryEdgeInsetsDirectionalAll _value,
      $Res Function(_ZacEdgeInsetsGeometryEdgeInsetsDirectionalAll) _then)
      : super(_value,
            (v) => _then(v as _ZacEdgeInsetsGeometryEdgeInsetsDirectionalAll));

  @override
  _ZacEdgeInsetsGeometryEdgeInsetsDirectionalAll get _value =>
      super._value as _ZacEdgeInsetsGeometryEdgeInsetsDirectionalAll;

  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(_ZacEdgeInsetsGeometryEdgeInsetsDirectionalAll(
      value == freezed
          ? _value.value
          : value // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
@FreezedUnionValue('zac:painting:EdgeInsetsDirectional.all')
class _$_ZacEdgeInsetsGeometryEdgeInsetsDirectionalAll
    extends _ZacEdgeInsetsGeometryEdgeInsetsDirectionalAll {
  _$_ZacEdgeInsetsGeometryEdgeInsetsDirectionalAll(this.value, {String? $type})
      : $type = $type ?? 'zac:painting:EdgeInsetsDirectional.all',
        super._();

  factory _$_ZacEdgeInsetsGeometryEdgeInsetsDirectionalAll.fromJson(
          Map<String, dynamic> json) =>
      _$$_ZacEdgeInsetsGeometryEdgeInsetsDirectionalAllFromJson(json);

  @override
  final double value;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'ZacEdgeInsetsGeometry.edgeInsetsDirectionalAll(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ZacEdgeInsetsGeometryEdgeInsetsDirectionalAll &&
            const DeepCollectionEquality().equals(other.value, value));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(value));

  @JsonKey(ignore: true)
  @override
  _$ZacEdgeInsetsGeometryEdgeInsetsDirectionalAllCopyWith<
          _ZacEdgeInsetsGeometryEdgeInsetsDirectionalAll>
      get copyWith =>
          __$ZacEdgeInsetsGeometryEdgeInsetsDirectionalAllCopyWithImpl<
              _ZacEdgeInsetsGeometryEdgeInsetsDirectionalAll>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(double value) edgeInsetsAll,
    required TResult Function(double? vertical, double? horizontal)
        edgeInsetsSymmetric,
    required TResult Function(
            double? left, double? top, double? right, double? bottom)
        edgeInsetsOnly,
    required TResult Function(double value) edgeInsetsDirectionalAll,
    required TResult Function(
            double? start, double? top, double? end, double? bottom)
        edgeInsetsDirectionalOnly,
  }) {
    return edgeInsetsDirectionalAll(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(double value)? edgeInsetsAll,
    TResult Function(double? vertical, double? horizontal)? edgeInsetsSymmetric,
    TResult Function(double? left, double? top, double? right, double? bottom)?
        edgeInsetsOnly,
    TResult Function(double value)? edgeInsetsDirectionalAll,
    TResult Function(double? start, double? top, double? end, double? bottom)?
        edgeInsetsDirectionalOnly,
  }) {
    return edgeInsetsDirectionalAll?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ZacEdgeInsetsGeometryEdgeInsetsAll value)
        edgeInsetsAll,
    required TResult Function(_ZacEdgeInsetsGeometryEdgeInsetsSymmetric value)
        edgeInsetsSymmetric,
    required TResult Function(_ZacEdgeInsetsGeometryEdgeInsetsOnly value)
        edgeInsetsOnly,
    required TResult Function(
            _ZacEdgeInsetsGeometryEdgeInsetsDirectionalAll value)
        edgeInsetsDirectionalAll,
    required TResult Function(
            _ZacEdgeInsetsGeometryEdgeInsetsDirectionalOnly value)
        edgeInsetsDirectionalOnly,
  }) {
    return edgeInsetsDirectionalAll(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ZacEdgeInsetsGeometryEdgeInsetsAll value)? edgeInsetsAll,
    TResult Function(_ZacEdgeInsetsGeometryEdgeInsetsSymmetric value)?
        edgeInsetsSymmetric,
    TResult Function(_ZacEdgeInsetsGeometryEdgeInsetsOnly value)?
        edgeInsetsOnly,
    TResult Function(_ZacEdgeInsetsGeometryEdgeInsetsDirectionalAll value)?
        edgeInsetsDirectionalAll,
    TResult Function(_ZacEdgeInsetsGeometryEdgeInsetsDirectionalOnly value)?
        edgeInsetsDirectionalOnly,
  }) {
    return edgeInsetsDirectionalAll?.call(this);
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$_ZacEdgeInsetsGeometryEdgeInsetsDirectionalAllToJson(this);
  }
}

abstract class _ZacEdgeInsetsGeometryEdgeInsetsDirectionalAll
    extends ZacEdgeInsetsGeometry {
  factory _ZacEdgeInsetsGeometryEdgeInsetsDirectionalAll(double value) =
      _$_ZacEdgeInsetsGeometryEdgeInsetsDirectionalAll;
  _ZacEdgeInsetsGeometryEdgeInsetsDirectionalAll._() : super._();

  factory _ZacEdgeInsetsGeometryEdgeInsetsDirectionalAll.fromJson(
          Map<String, dynamic> json) =
      _$_ZacEdgeInsetsGeometryEdgeInsetsDirectionalAll.fromJson;

  double get value;
  @JsonKey(ignore: true)
  _$ZacEdgeInsetsGeometryEdgeInsetsDirectionalAllCopyWith<
          _ZacEdgeInsetsGeometryEdgeInsetsDirectionalAll>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ZacEdgeInsetsGeometryEdgeInsetsDirectionalOnlyCopyWith<$Res> {
  factory _$ZacEdgeInsetsGeometryEdgeInsetsDirectionalOnlyCopyWith(
          _ZacEdgeInsetsGeometryEdgeInsetsDirectionalOnly value,
          $Res Function(_ZacEdgeInsetsGeometryEdgeInsetsDirectionalOnly) then) =
      __$ZacEdgeInsetsGeometryEdgeInsetsDirectionalOnlyCopyWithImpl<$Res>;
  $Res call({double? start, double? top, double? end, double? bottom});
}

/// @nodoc
class __$ZacEdgeInsetsGeometryEdgeInsetsDirectionalOnlyCopyWithImpl<$Res>
    extends _$ZacEdgeInsetsGeometryCopyWithImpl<$Res>
    implements _$ZacEdgeInsetsGeometryEdgeInsetsDirectionalOnlyCopyWith<$Res> {
  __$ZacEdgeInsetsGeometryEdgeInsetsDirectionalOnlyCopyWithImpl(
      _ZacEdgeInsetsGeometryEdgeInsetsDirectionalOnly _value,
      $Res Function(_ZacEdgeInsetsGeometryEdgeInsetsDirectionalOnly) _then)
      : super(_value,
            (v) => _then(v as _ZacEdgeInsetsGeometryEdgeInsetsDirectionalOnly));

  @override
  _ZacEdgeInsetsGeometryEdgeInsetsDirectionalOnly get _value =>
      super._value as _ZacEdgeInsetsGeometryEdgeInsetsDirectionalOnly;

  @override
  $Res call({
    Object? start = freezed,
    Object? top = freezed,
    Object? end = freezed,
    Object? bottom = freezed,
  }) {
    return _then(_ZacEdgeInsetsGeometryEdgeInsetsDirectionalOnly(
      start: start == freezed
          ? _value.start
          : start // ignore: cast_nullable_to_non_nullable
              as double?,
      top: top == freezed
          ? _value.top
          : top // ignore: cast_nullable_to_non_nullable
              as double?,
      end: end == freezed
          ? _value.end
          : end // ignore: cast_nullable_to_non_nullable
              as double?,
      bottom: bottom == freezed
          ? _value.bottom
          : bottom // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
@FreezedUnionValue('zac:painting:EdgeInsetsDirectional.only')
class _$_ZacEdgeInsetsGeometryEdgeInsetsDirectionalOnly
    extends _ZacEdgeInsetsGeometryEdgeInsetsDirectionalOnly {
  _$_ZacEdgeInsetsGeometryEdgeInsetsDirectionalOnly(
      {this.start, this.top, this.end, this.bottom, String? $type})
      : $type = $type ?? 'zac:painting:EdgeInsetsDirectional.only',
        super._();

  factory _$_ZacEdgeInsetsGeometryEdgeInsetsDirectionalOnly.fromJson(
          Map<String, dynamic> json) =>
      _$$_ZacEdgeInsetsGeometryEdgeInsetsDirectionalOnlyFromJson(json);

  @override
  final double? start;
  @override
  final double? top;
  @override
  final double? end;
  @override
  final double? bottom;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'ZacEdgeInsetsGeometry.edgeInsetsDirectionalOnly(start: $start, top: $top, end: $end, bottom: $bottom)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ZacEdgeInsetsGeometryEdgeInsetsDirectionalOnly &&
            const DeepCollectionEquality().equals(other.start, start) &&
            const DeepCollectionEquality().equals(other.top, top) &&
            const DeepCollectionEquality().equals(other.end, end) &&
            const DeepCollectionEquality().equals(other.bottom, bottom));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(start),
      const DeepCollectionEquality().hash(top),
      const DeepCollectionEquality().hash(end),
      const DeepCollectionEquality().hash(bottom));

  @JsonKey(ignore: true)
  @override
  _$ZacEdgeInsetsGeometryEdgeInsetsDirectionalOnlyCopyWith<
          _ZacEdgeInsetsGeometryEdgeInsetsDirectionalOnly>
      get copyWith =>
          __$ZacEdgeInsetsGeometryEdgeInsetsDirectionalOnlyCopyWithImpl<
                  _ZacEdgeInsetsGeometryEdgeInsetsDirectionalOnly>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(double value) edgeInsetsAll,
    required TResult Function(double? vertical, double? horizontal)
        edgeInsetsSymmetric,
    required TResult Function(
            double? left, double? top, double? right, double? bottom)
        edgeInsetsOnly,
    required TResult Function(double value) edgeInsetsDirectionalAll,
    required TResult Function(
            double? start, double? top, double? end, double? bottom)
        edgeInsetsDirectionalOnly,
  }) {
    return edgeInsetsDirectionalOnly(start, top, end, bottom);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(double value)? edgeInsetsAll,
    TResult Function(double? vertical, double? horizontal)? edgeInsetsSymmetric,
    TResult Function(double? left, double? top, double? right, double? bottom)?
        edgeInsetsOnly,
    TResult Function(double value)? edgeInsetsDirectionalAll,
    TResult Function(double? start, double? top, double? end, double? bottom)?
        edgeInsetsDirectionalOnly,
  }) {
    return edgeInsetsDirectionalOnly?.call(start, top, end, bottom);
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ZacEdgeInsetsGeometryEdgeInsetsAll value)
        edgeInsetsAll,
    required TResult Function(_ZacEdgeInsetsGeometryEdgeInsetsSymmetric value)
        edgeInsetsSymmetric,
    required TResult Function(_ZacEdgeInsetsGeometryEdgeInsetsOnly value)
        edgeInsetsOnly,
    required TResult Function(
            _ZacEdgeInsetsGeometryEdgeInsetsDirectionalAll value)
        edgeInsetsDirectionalAll,
    required TResult Function(
            _ZacEdgeInsetsGeometryEdgeInsetsDirectionalOnly value)
        edgeInsetsDirectionalOnly,
  }) {
    return edgeInsetsDirectionalOnly(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ZacEdgeInsetsGeometryEdgeInsetsAll value)? edgeInsetsAll,
    TResult Function(_ZacEdgeInsetsGeometryEdgeInsetsSymmetric value)?
        edgeInsetsSymmetric,
    TResult Function(_ZacEdgeInsetsGeometryEdgeInsetsOnly value)?
        edgeInsetsOnly,
    TResult Function(_ZacEdgeInsetsGeometryEdgeInsetsDirectionalAll value)?
        edgeInsetsDirectionalAll,
    TResult Function(_ZacEdgeInsetsGeometryEdgeInsetsDirectionalOnly value)?
        edgeInsetsDirectionalOnly,
  }) {
    return edgeInsetsDirectionalOnly?.call(this);
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$_ZacEdgeInsetsGeometryEdgeInsetsDirectionalOnlyToJson(this);
  }
}

abstract class _ZacEdgeInsetsGeometryEdgeInsetsDirectionalOnly
    extends ZacEdgeInsetsGeometry {
  factory _ZacEdgeInsetsGeometryEdgeInsetsDirectionalOnly(
      {double? start,
      double? top,
      double? end,
      double? bottom}) = _$_ZacEdgeInsetsGeometryEdgeInsetsDirectionalOnly;
  _ZacEdgeInsetsGeometryEdgeInsetsDirectionalOnly._() : super._();

  factory _ZacEdgeInsetsGeometryEdgeInsetsDirectionalOnly.fromJson(
          Map<String, dynamic> json) =
      _$_ZacEdgeInsetsGeometryEdgeInsetsDirectionalOnly.fromJson;

  double? get start;
  double? get top;
  double? get end;
  double? get bottom;
  @JsonKey(ignore: true)
  _$ZacEdgeInsetsGeometryEdgeInsetsDirectionalOnlyCopyWith<
          _ZacEdgeInsetsGeometryEdgeInsetsDirectionalOnly>
      get copyWith => throw _privateConstructorUsedError;
}

ZacAlignment _$ZacAlignmentFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'zac:painting:Alignment':
      return _ZacAlignment.fromJson(json);
    case 'zac:painting:AlignmentDirectional':
      return _ZacAlignmentDirectional.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'ZacAlignment',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
class _$ZacAlignmentTearOff {
  const _$ZacAlignmentTearOff();

  _ZacAlignment call(double x, double y) {
    return _ZacAlignment(
      x,
      y,
    );
  }

  _ZacAlignmentDirectional directional(double start, double y) {
    return _ZacAlignmentDirectional(
      start,
      y,
    );
  }

  ZacAlignment fromJson(Map<String, Object?> json) {
    return ZacAlignment.fromJson(json);
  }
}

/// @nodoc
const $ZacAlignment = _$ZacAlignmentTearOff();

/// @nodoc
mixin _$ZacAlignment {
  double get y => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(double x, double y) $default, {
    required TResult Function(double start, double y) directional,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function(double x, double y)? $default, {
    TResult Function(double start, double y)? directional,
  }) =>
      throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_ZacAlignment value) $default, {
    required TResult Function(_ZacAlignmentDirectional value) directional,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(_ZacAlignment value)? $default, {
    TResult Function(_ZacAlignmentDirectional value)? directional,
  }) =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ZacAlignmentCopyWith<ZacAlignment> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ZacAlignmentCopyWith<$Res> {
  factory $ZacAlignmentCopyWith(
          ZacAlignment value, $Res Function(ZacAlignment) then) =
      _$ZacAlignmentCopyWithImpl<$Res>;
  $Res call({double y});
}

/// @nodoc
class _$ZacAlignmentCopyWithImpl<$Res> implements $ZacAlignmentCopyWith<$Res> {
  _$ZacAlignmentCopyWithImpl(this._value, this._then);

  final ZacAlignment _value;
  // ignore: unused_field
  final $Res Function(ZacAlignment) _then;

  @override
  $Res call({
    Object? y = freezed,
  }) {
    return _then(_value.copyWith(
      y: y == freezed
          ? _value.y
          : y // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
abstract class _$ZacAlignmentCopyWith<$Res>
    implements $ZacAlignmentCopyWith<$Res> {
  factory _$ZacAlignmentCopyWith(
          _ZacAlignment value, $Res Function(_ZacAlignment) then) =
      __$ZacAlignmentCopyWithImpl<$Res>;
  @override
  $Res call({double x, double y});
}

/// @nodoc
class __$ZacAlignmentCopyWithImpl<$Res> extends _$ZacAlignmentCopyWithImpl<$Res>
    implements _$ZacAlignmentCopyWith<$Res> {
  __$ZacAlignmentCopyWithImpl(
      _ZacAlignment _value, $Res Function(_ZacAlignment) _then)
      : super(_value, (v) => _then(v as _ZacAlignment));

  @override
  _ZacAlignment get _value => super._value as _ZacAlignment;

  @override
  $Res call({
    Object? x = freezed,
    Object? y = freezed,
  }) {
    return _then(_ZacAlignment(
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
@FreezedUnionValue('zac:painting:Alignment')
class _$_ZacAlignment extends _ZacAlignment {
  _$_ZacAlignment(this.x, this.y, {String? $type})
      : $type = $type ?? 'zac:painting:Alignment',
        super._();

  factory _$_ZacAlignment.fromJson(Map<String, dynamic> json) =>
      _$$_ZacAlignmentFromJson(json);

  @override
  final double x;
  @override
  final double y;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'ZacAlignment(x: $x, y: $y)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ZacAlignment &&
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
  _$ZacAlignmentCopyWith<_ZacAlignment> get copyWith =>
      __$ZacAlignmentCopyWithImpl<_ZacAlignment>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(double x, double y) $default, {
    required TResult Function(double start, double y) directional,
  }) {
    return $default(x, y);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function(double x, double y)? $default, {
    TResult Function(double start, double y)? directional,
  }) {
    return $default?.call(x, y);
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_ZacAlignment value) $default, {
    required TResult Function(_ZacAlignmentDirectional value) directional,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(_ZacAlignment value)? $default, {
    TResult Function(_ZacAlignmentDirectional value)? directional,
  }) {
    return $default?.call(this);
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$_ZacAlignmentToJson(this);
  }
}

abstract class _ZacAlignment extends ZacAlignment {
  factory _ZacAlignment(double x, double y) = _$_ZacAlignment;
  _ZacAlignment._() : super._();

  factory _ZacAlignment.fromJson(Map<String, dynamic> json) =
      _$_ZacAlignment.fromJson;

  double get x;
  @override
  double get y;
  @override
  @JsonKey(ignore: true)
  _$ZacAlignmentCopyWith<_ZacAlignment> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ZacAlignmentDirectionalCopyWith<$Res>
    implements $ZacAlignmentCopyWith<$Res> {
  factory _$ZacAlignmentDirectionalCopyWith(_ZacAlignmentDirectional value,
          $Res Function(_ZacAlignmentDirectional) then) =
      __$ZacAlignmentDirectionalCopyWithImpl<$Res>;
  @override
  $Res call({double start, double y});
}

/// @nodoc
class __$ZacAlignmentDirectionalCopyWithImpl<$Res>
    extends _$ZacAlignmentCopyWithImpl<$Res>
    implements _$ZacAlignmentDirectionalCopyWith<$Res> {
  __$ZacAlignmentDirectionalCopyWithImpl(_ZacAlignmentDirectional _value,
      $Res Function(_ZacAlignmentDirectional) _then)
      : super(_value, (v) => _then(v as _ZacAlignmentDirectional));

  @override
  _ZacAlignmentDirectional get _value =>
      super._value as _ZacAlignmentDirectional;

  @override
  $Res call({
    Object? start = freezed,
    Object? y = freezed,
  }) {
    return _then(_ZacAlignmentDirectional(
      start == freezed
          ? _value.start
          : start // ignore: cast_nullable_to_non_nullable
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
@FreezedUnionValue('zac:painting:AlignmentDirectional')
class _$_ZacAlignmentDirectional extends _ZacAlignmentDirectional {
  _$_ZacAlignmentDirectional(this.start, this.y, {String? $type})
      : $type = $type ?? 'zac:painting:AlignmentDirectional',
        super._();

  factory _$_ZacAlignmentDirectional.fromJson(Map<String, dynamic> json) =>
      _$$_ZacAlignmentDirectionalFromJson(json);

  @override
  final double start;
  @override
  final double y;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'ZacAlignment.directional(start: $start, y: $y)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ZacAlignmentDirectional &&
            const DeepCollectionEquality().equals(other.start, start) &&
            const DeepCollectionEquality().equals(other.y, y));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(start),
      const DeepCollectionEquality().hash(y));

  @JsonKey(ignore: true)
  @override
  _$ZacAlignmentDirectionalCopyWith<_ZacAlignmentDirectional> get copyWith =>
      __$ZacAlignmentDirectionalCopyWithImpl<_ZacAlignmentDirectional>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(double x, double y) $default, {
    required TResult Function(double start, double y) directional,
  }) {
    return directional(start, y);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function(double x, double y)? $default, {
    TResult Function(double start, double y)? directional,
  }) {
    return directional?.call(start, y);
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_ZacAlignment value) $default, {
    required TResult Function(_ZacAlignmentDirectional value) directional,
  }) {
    return directional(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(_ZacAlignment value)? $default, {
    TResult Function(_ZacAlignmentDirectional value)? directional,
  }) {
    return directional?.call(this);
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$_ZacAlignmentDirectionalToJson(this);
  }
}

abstract class _ZacAlignmentDirectional extends ZacAlignment {
  factory _ZacAlignmentDirectional(double start, double y) =
      _$_ZacAlignmentDirectional;
  _ZacAlignmentDirectional._() : super._();

  factory _ZacAlignmentDirectional.fromJson(Map<String, dynamic> json) =
      _$_ZacAlignmentDirectional.fromJson;

  double get start;
  @override
  double get y;
  @override
  @JsonKey(ignore: true)
  _$ZacAlignmentDirectionalCopyWith<_ZacAlignmentDirectional> get copyWith =>
      throw _privateConstructorUsedError;
}

ZacDecoration _$ZacDecorationFromJson(Map<String, dynamic> json) {
  return _ZacDecorationBoxDecoration.fromJson(json);
}

/// @nodoc
class _$ZacDecorationTearOff {
  const _$ZacDecorationTearOff();

  _ZacDecorationBoxDecoration boxDecoration(ZacBoxDecoration subclass) {
    return _ZacDecorationBoxDecoration(
      subclass,
    );
  }

  ZacDecoration fromJson(Map<String, Object?> json) {
    return ZacDecoration.fromJson(json);
  }
}

/// @nodoc
const $ZacDecoration = _$ZacDecorationTearOff();

/// @nodoc
mixin _$ZacDecoration {
  ZacBoxDecoration get subclass => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ZacBoxDecoration subclass) boxDecoration,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(ZacBoxDecoration subclass)? boxDecoration,
  }) =>
      throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ZacDecorationBoxDecoration value) boxDecoration,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ZacDecorationBoxDecoration value)? boxDecoration,
  }) =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ZacDecorationCopyWith<ZacDecoration> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ZacDecorationCopyWith<$Res> {
  factory $ZacDecorationCopyWith(
          ZacDecoration value, $Res Function(ZacDecoration) then) =
      _$ZacDecorationCopyWithImpl<$Res>;
  $Res call({ZacBoxDecoration subclass});

  $ZacBoxDecorationCopyWith<$Res> get subclass;
}

/// @nodoc
class _$ZacDecorationCopyWithImpl<$Res>
    implements $ZacDecorationCopyWith<$Res> {
  _$ZacDecorationCopyWithImpl(this._value, this._then);

  final ZacDecoration _value;
  // ignore: unused_field
  final $Res Function(ZacDecoration) _then;

  @override
  $Res call({
    Object? subclass = freezed,
  }) {
    return _then(_value.copyWith(
      subclass: subclass == freezed
          ? _value.subclass
          : subclass // ignore: cast_nullable_to_non_nullable
              as ZacBoxDecoration,
    ));
  }

  @override
  $ZacBoxDecorationCopyWith<$Res> get subclass {
    return $ZacBoxDecorationCopyWith<$Res>(_value.subclass, (value) {
      return _then(_value.copyWith(subclass: value));
    });
  }
}

/// @nodoc
abstract class _$ZacDecorationBoxDecorationCopyWith<$Res>
    implements $ZacDecorationCopyWith<$Res> {
  factory _$ZacDecorationBoxDecorationCopyWith(
          _ZacDecorationBoxDecoration value,
          $Res Function(_ZacDecorationBoxDecoration) then) =
      __$ZacDecorationBoxDecorationCopyWithImpl<$Res>;
  @override
  $Res call({ZacBoxDecoration subclass});

  @override
  $ZacBoxDecorationCopyWith<$Res> get subclass;
}

/// @nodoc
class __$ZacDecorationBoxDecorationCopyWithImpl<$Res>
    extends _$ZacDecorationCopyWithImpl<$Res>
    implements _$ZacDecorationBoxDecorationCopyWith<$Res> {
  __$ZacDecorationBoxDecorationCopyWithImpl(_ZacDecorationBoxDecoration _value,
      $Res Function(_ZacDecorationBoxDecoration) _then)
      : super(_value, (v) => _then(v as _ZacDecorationBoxDecoration));

  @override
  _ZacDecorationBoxDecoration get _value =>
      super._value as _ZacDecorationBoxDecoration;

  @override
  $Res call({
    Object? subclass = freezed,
  }) {
    return _then(_ZacDecorationBoxDecoration(
      subclass == freezed
          ? _value.subclass
          : subclass // ignore: cast_nullable_to_non_nullable
              as ZacBoxDecoration,
    ));
  }
}

/// @nodoc
@JsonSerializable()
@FreezedUnionValue('zac:painting:Decoration>BoxDecoration')
class _$_ZacDecorationBoxDecoration extends _ZacDecorationBoxDecoration {
  _$_ZacDecorationBoxDecoration(this.subclass) : super._();

  factory _$_ZacDecorationBoxDecoration.fromJson(Map<String, dynamic> json) =>
      _$$_ZacDecorationBoxDecorationFromJson(json);

  @override
  final ZacBoxDecoration subclass;

  @override
  String toString() {
    return 'ZacDecoration.boxDecoration(subclass: $subclass)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ZacDecorationBoxDecoration &&
            const DeepCollectionEquality().equals(other.subclass, subclass));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(subclass));

  @JsonKey(ignore: true)
  @override
  _$ZacDecorationBoxDecorationCopyWith<_ZacDecorationBoxDecoration>
      get copyWith => __$ZacDecorationBoxDecorationCopyWithImpl<
          _ZacDecorationBoxDecoration>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ZacBoxDecoration subclass) boxDecoration,
  }) {
    return boxDecoration(subclass);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(ZacBoxDecoration subclass)? boxDecoration,
  }) {
    return boxDecoration?.call(subclass);
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ZacDecorationBoxDecoration value) boxDecoration,
  }) {
    return boxDecoration(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ZacDecorationBoxDecoration value)? boxDecoration,
  }) {
    return boxDecoration?.call(this);
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$_ZacDecorationBoxDecorationToJson(this);
  }
}

abstract class _ZacDecorationBoxDecoration extends ZacDecoration {
  factory _ZacDecorationBoxDecoration(ZacBoxDecoration subclass) =
      _$_ZacDecorationBoxDecoration;
  _ZacDecorationBoxDecoration._() : super._();

  factory _ZacDecorationBoxDecoration.fromJson(Map<String, dynamic> json) =
      _$_ZacDecorationBoxDecoration.fromJson;

  @override
  ZacBoxDecoration get subclass;
  @override
  @JsonKey(ignore: true)
  _$ZacDecorationBoxDecorationCopyWith<_ZacDecorationBoxDecoration>
      get copyWith => throw _privateConstructorUsedError;
}

ZacBoxDecoration _$ZacBoxDecorationFromJson(Map<String, dynamic> json) {
  return _ZacBoxDecoration.fromJson(json);
}

/// @nodoc
class _$ZacBoxDecorationTearOff {
  const _$ZacBoxDecorationTearOff();

  _ZacBoxDecoration call(
      {ZacColor? color,
      ZacBoxBorder? border,
      ZacBorderRadiusGeometry? borderRadius,
      List<ZacBoxShadow>? boxShadow,
      ZacBoxShape? shape}) {
    return _ZacBoxDecoration(
      color: color,
      border: border,
      borderRadius: borderRadius,
      boxShadow: boxShadow,
      shape: shape,
    );
  }

  ZacBoxDecoration fromJson(Map<String, Object?> json) {
    return ZacBoxDecoration.fromJson(json);
  }
}

/// @nodoc
const $ZacBoxDecoration = _$ZacBoxDecorationTearOff();

/// @nodoc
mixin _$ZacBoxDecoration {
  ZacColor? get color => throw _privateConstructorUsedError;
  ZacBoxBorder? get border => throw _privateConstructorUsedError;
  ZacBorderRadiusGeometry? get borderRadius =>
      throw _privateConstructorUsedError;
  List<ZacBoxShadow>? get boxShadow => throw _privateConstructorUsedError;
  ZacBoxShape? get shape => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ZacBoxDecorationCopyWith<ZacBoxDecoration> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ZacBoxDecorationCopyWith<$Res> {
  factory $ZacBoxDecorationCopyWith(
          ZacBoxDecoration value, $Res Function(ZacBoxDecoration) then) =
      _$ZacBoxDecorationCopyWithImpl<$Res>;
  $Res call(
      {ZacColor? color,
      ZacBoxBorder? border,
      ZacBorderRadiusGeometry? borderRadius,
      List<ZacBoxShadow>? boxShadow,
      ZacBoxShape? shape});

  $ZacColorCopyWith<$Res>? get color;
  $ZacBoxBorderCopyWith<$Res>? get border;
  $ZacBorderRadiusGeometryCopyWith<$Res>? get borderRadius;
  $ZacBoxShapeCopyWith<$Res>? get shape;
}

/// @nodoc
class _$ZacBoxDecorationCopyWithImpl<$Res>
    implements $ZacBoxDecorationCopyWith<$Res> {
  _$ZacBoxDecorationCopyWithImpl(this._value, this._then);

  final ZacBoxDecoration _value;
  // ignore: unused_field
  final $Res Function(ZacBoxDecoration) _then;

  @override
  $Res call({
    Object? color = freezed,
    Object? border = freezed,
    Object? borderRadius = freezed,
    Object? boxShadow = freezed,
    Object? shape = freezed,
  }) {
    return _then(_value.copyWith(
      color: color == freezed
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as ZacColor?,
      border: border == freezed
          ? _value.border
          : border // ignore: cast_nullable_to_non_nullable
              as ZacBoxBorder?,
      borderRadius: borderRadius == freezed
          ? _value.borderRadius
          : borderRadius // ignore: cast_nullable_to_non_nullable
              as ZacBorderRadiusGeometry?,
      boxShadow: boxShadow == freezed
          ? _value.boxShadow
          : boxShadow // ignore: cast_nullable_to_non_nullable
              as List<ZacBoxShadow>?,
      shape: shape == freezed
          ? _value.shape
          : shape // ignore: cast_nullable_to_non_nullable
              as ZacBoxShape?,
    ));
  }

  @override
  $ZacColorCopyWith<$Res>? get color {
    if (_value.color == null) {
      return null;
    }

    return $ZacColorCopyWith<$Res>(_value.color!, (value) {
      return _then(_value.copyWith(color: value));
    });
  }

  @override
  $ZacBoxBorderCopyWith<$Res>? get border {
    if (_value.border == null) {
      return null;
    }

    return $ZacBoxBorderCopyWith<$Res>(_value.border!, (value) {
      return _then(_value.copyWith(border: value));
    });
  }

  @override
  $ZacBorderRadiusGeometryCopyWith<$Res>? get borderRadius {
    if (_value.borderRadius == null) {
      return null;
    }

    return $ZacBorderRadiusGeometryCopyWith<$Res>(_value.borderRadius!,
        (value) {
      return _then(_value.copyWith(borderRadius: value));
    });
  }

  @override
  $ZacBoxShapeCopyWith<$Res>? get shape {
    if (_value.shape == null) {
      return null;
    }

    return $ZacBoxShapeCopyWith<$Res>(_value.shape!, (value) {
      return _then(_value.copyWith(shape: value));
    });
  }
}

/// @nodoc
abstract class _$ZacBoxDecorationCopyWith<$Res>
    implements $ZacBoxDecorationCopyWith<$Res> {
  factory _$ZacBoxDecorationCopyWith(
          _ZacBoxDecoration value, $Res Function(_ZacBoxDecoration) then) =
      __$ZacBoxDecorationCopyWithImpl<$Res>;
  @override
  $Res call(
      {ZacColor? color,
      ZacBoxBorder? border,
      ZacBorderRadiusGeometry? borderRadius,
      List<ZacBoxShadow>? boxShadow,
      ZacBoxShape? shape});

  @override
  $ZacColorCopyWith<$Res>? get color;
  @override
  $ZacBoxBorderCopyWith<$Res>? get border;
  @override
  $ZacBorderRadiusGeometryCopyWith<$Res>? get borderRadius;
  @override
  $ZacBoxShapeCopyWith<$Res>? get shape;
}

/// @nodoc
class __$ZacBoxDecorationCopyWithImpl<$Res>
    extends _$ZacBoxDecorationCopyWithImpl<$Res>
    implements _$ZacBoxDecorationCopyWith<$Res> {
  __$ZacBoxDecorationCopyWithImpl(
      _ZacBoxDecoration _value, $Res Function(_ZacBoxDecoration) _then)
      : super(_value, (v) => _then(v as _ZacBoxDecoration));

  @override
  _ZacBoxDecoration get _value => super._value as _ZacBoxDecoration;

  @override
  $Res call({
    Object? color = freezed,
    Object? border = freezed,
    Object? borderRadius = freezed,
    Object? boxShadow = freezed,
    Object? shape = freezed,
  }) {
    return _then(_ZacBoxDecoration(
      color: color == freezed
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as ZacColor?,
      border: border == freezed
          ? _value.border
          : border // ignore: cast_nullable_to_non_nullable
              as ZacBoxBorder?,
      borderRadius: borderRadius == freezed
          ? _value.borderRadius
          : borderRadius // ignore: cast_nullable_to_non_nullable
              as ZacBorderRadiusGeometry?,
      boxShadow: boxShadow == freezed
          ? _value.boxShadow
          : boxShadow // ignore: cast_nullable_to_non_nullable
              as List<ZacBoxShadow>?,
      shape: shape == freezed
          ? _value.shape
          : shape // ignore: cast_nullable_to_non_nullable
              as ZacBoxShape?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ZacBoxDecoration extends _ZacBoxDecoration {
  _$_ZacBoxDecoration(
      {this.color, this.border, this.borderRadius, this.boxShadow, this.shape})
      : super._();

  factory _$_ZacBoxDecoration.fromJson(Map<String, dynamic> json) =>
      _$$_ZacBoxDecorationFromJson(json);

  @override
  final ZacColor? color;
  @override
  final ZacBoxBorder? border;
  @override
  final ZacBorderRadiusGeometry? borderRadius;
  @override
  final List<ZacBoxShadow>? boxShadow;
  @override
  final ZacBoxShape? shape;

  @override
  String toString() {
    return 'ZacBoxDecoration(color: $color, border: $border, borderRadius: $borderRadius, boxShadow: $boxShadow, shape: $shape)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ZacBoxDecoration &&
            const DeepCollectionEquality().equals(other.color, color) &&
            const DeepCollectionEquality().equals(other.border, border) &&
            const DeepCollectionEquality()
                .equals(other.borderRadius, borderRadius) &&
            const DeepCollectionEquality().equals(other.boxShadow, boxShadow) &&
            const DeepCollectionEquality().equals(other.shape, shape));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(color),
      const DeepCollectionEquality().hash(border),
      const DeepCollectionEquality().hash(borderRadius),
      const DeepCollectionEquality().hash(boxShadow),
      const DeepCollectionEquality().hash(shape));

  @JsonKey(ignore: true)
  @override
  _$ZacBoxDecorationCopyWith<_ZacBoxDecoration> get copyWith =>
      __$ZacBoxDecorationCopyWithImpl<_ZacBoxDecoration>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ZacBoxDecorationToJson(this);
  }
}

abstract class _ZacBoxDecoration extends ZacBoxDecoration {
  factory _ZacBoxDecoration(
      {ZacColor? color,
      ZacBoxBorder? border,
      ZacBorderRadiusGeometry? borderRadius,
      List<ZacBoxShadow>? boxShadow,
      ZacBoxShape? shape}) = _$_ZacBoxDecoration;
  _ZacBoxDecoration._() : super._();

  factory _ZacBoxDecoration.fromJson(Map<String, dynamic> json) =
      _$_ZacBoxDecoration.fromJson;

  @override
  ZacColor? get color;
  @override
  ZacBoxBorder? get border;
  @override
  ZacBorderRadiusGeometry? get borderRadius;
  @override
  List<ZacBoxShadow>? get boxShadow;
  @override
  ZacBoxShape? get shape;
  @override
  @JsonKey(ignore: true)
  _$ZacBoxDecorationCopyWith<_ZacBoxDecoration> get copyWith =>
      throw _privateConstructorUsedError;
}

ZacBoxShadow _$ZacBoxShadowFromJson(Map<String, dynamic> json) {
  return _ZacBoxShadow.fromJson(json);
}

/// @nodoc
class _$ZacBoxShadowTearOff {
  const _$ZacBoxShadowTearOff();

  _ZacBoxShadow call(
      {ZacColor? color,
      ZacOffset? offset,
      double? blurRadius,
      double? spreadRadius,
      ZacBlurStyle? blurStyle}) {
    return _ZacBoxShadow(
      color: color,
      offset: offset,
      blurRadius: blurRadius,
      spreadRadius: spreadRadius,
      blurStyle: blurStyle,
    );
  }

  ZacBoxShadow fromJson(Map<String, Object?> json) {
    return ZacBoxShadow.fromJson(json);
  }
}

/// @nodoc
const $ZacBoxShadow = _$ZacBoxShadowTearOff();

/// @nodoc
mixin _$ZacBoxShadow {
  ZacColor? get color => throw _privateConstructorUsedError;
  ZacOffset? get offset => throw _privateConstructorUsedError;
  double? get blurRadius => throw _privateConstructorUsedError;
  double? get spreadRadius => throw _privateConstructorUsedError;
  ZacBlurStyle? get blurStyle => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ZacBoxShadowCopyWith<ZacBoxShadow> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ZacBoxShadowCopyWith<$Res> {
  factory $ZacBoxShadowCopyWith(
          ZacBoxShadow value, $Res Function(ZacBoxShadow) then) =
      _$ZacBoxShadowCopyWithImpl<$Res>;
  $Res call(
      {ZacColor? color,
      ZacOffset? offset,
      double? blurRadius,
      double? spreadRadius,
      ZacBlurStyle? blurStyle});

  $ZacColorCopyWith<$Res>? get color;
  $ZacOffsetCopyWith<$Res>? get offset;
  $ZacBlurStyleCopyWith<$Res>? get blurStyle;
}

/// @nodoc
class _$ZacBoxShadowCopyWithImpl<$Res> implements $ZacBoxShadowCopyWith<$Res> {
  _$ZacBoxShadowCopyWithImpl(this._value, this._then);

  final ZacBoxShadow _value;
  // ignore: unused_field
  final $Res Function(ZacBoxShadow) _then;

  @override
  $Res call({
    Object? color = freezed,
    Object? offset = freezed,
    Object? blurRadius = freezed,
    Object? spreadRadius = freezed,
    Object? blurStyle = freezed,
  }) {
    return _then(_value.copyWith(
      color: color == freezed
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as ZacColor?,
      offset: offset == freezed
          ? _value.offset
          : offset // ignore: cast_nullable_to_non_nullable
              as ZacOffset?,
      blurRadius: blurRadius == freezed
          ? _value.blurRadius
          : blurRadius // ignore: cast_nullable_to_non_nullable
              as double?,
      spreadRadius: spreadRadius == freezed
          ? _value.spreadRadius
          : spreadRadius // ignore: cast_nullable_to_non_nullable
              as double?,
      blurStyle: blurStyle == freezed
          ? _value.blurStyle
          : blurStyle // ignore: cast_nullable_to_non_nullable
              as ZacBlurStyle?,
    ));
  }

  @override
  $ZacColorCopyWith<$Res>? get color {
    if (_value.color == null) {
      return null;
    }

    return $ZacColorCopyWith<$Res>(_value.color!, (value) {
      return _then(_value.copyWith(color: value));
    });
  }

  @override
  $ZacOffsetCopyWith<$Res>? get offset {
    if (_value.offset == null) {
      return null;
    }

    return $ZacOffsetCopyWith<$Res>(_value.offset!, (value) {
      return _then(_value.copyWith(offset: value));
    });
  }

  @override
  $ZacBlurStyleCopyWith<$Res>? get blurStyle {
    if (_value.blurStyle == null) {
      return null;
    }

    return $ZacBlurStyleCopyWith<$Res>(_value.blurStyle!, (value) {
      return _then(_value.copyWith(blurStyle: value));
    });
  }
}

/// @nodoc
abstract class _$ZacBoxShadowCopyWith<$Res>
    implements $ZacBoxShadowCopyWith<$Res> {
  factory _$ZacBoxShadowCopyWith(
          _ZacBoxShadow value, $Res Function(_ZacBoxShadow) then) =
      __$ZacBoxShadowCopyWithImpl<$Res>;
  @override
  $Res call(
      {ZacColor? color,
      ZacOffset? offset,
      double? blurRadius,
      double? spreadRadius,
      ZacBlurStyle? blurStyle});

  @override
  $ZacColorCopyWith<$Res>? get color;
  @override
  $ZacOffsetCopyWith<$Res>? get offset;
  @override
  $ZacBlurStyleCopyWith<$Res>? get blurStyle;
}

/// @nodoc
class __$ZacBoxShadowCopyWithImpl<$Res> extends _$ZacBoxShadowCopyWithImpl<$Res>
    implements _$ZacBoxShadowCopyWith<$Res> {
  __$ZacBoxShadowCopyWithImpl(
      _ZacBoxShadow _value, $Res Function(_ZacBoxShadow) _then)
      : super(_value, (v) => _then(v as _ZacBoxShadow));

  @override
  _ZacBoxShadow get _value => super._value as _ZacBoxShadow;

  @override
  $Res call({
    Object? color = freezed,
    Object? offset = freezed,
    Object? blurRadius = freezed,
    Object? spreadRadius = freezed,
    Object? blurStyle = freezed,
  }) {
    return _then(_ZacBoxShadow(
      color: color == freezed
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as ZacColor?,
      offset: offset == freezed
          ? _value.offset
          : offset // ignore: cast_nullable_to_non_nullable
              as ZacOffset?,
      blurRadius: blurRadius == freezed
          ? _value.blurRadius
          : blurRadius // ignore: cast_nullable_to_non_nullable
              as double?,
      spreadRadius: spreadRadius == freezed
          ? _value.spreadRadius
          : spreadRadius // ignore: cast_nullable_to_non_nullable
              as double?,
      blurStyle: blurStyle == freezed
          ? _value.blurStyle
          : blurStyle // ignore: cast_nullable_to_non_nullable
              as ZacBlurStyle?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ZacBoxShadow extends _ZacBoxShadow {
  _$_ZacBoxShadow(
      {this.color,
      this.offset,
      this.blurRadius,
      this.spreadRadius,
      this.blurStyle})
      : super._();

  factory _$_ZacBoxShadow.fromJson(Map<String, dynamic> json) =>
      _$$_ZacBoxShadowFromJson(json);

  @override
  final ZacColor? color;
  @override
  final ZacOffset? offset;
  @override
  final double? blurRadius;
  @override
  final double? spreadRadius;
  @override
  final ZacBlurStyle? blurStyle;

  @override
  String toString() {
    return 'ZacBoxShadow(color: $color, offset: $offset, blurRadius: $blurRadius, spreadRadius: $spreadRadius, blurStyle: $blurStyle)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ZacBoxShadow &&
            const DeepCollectionEquality().equals(other.color, color) &&
            const DeepCollectionEquality().equals(other.offset, offset) &&
            const DeepCollectionEquality()
                .equals(other.blurRadius, blurRadius) &&
            const DeepCollectionEquality()
                .equals(other.spreadRadius, spreadRadius) &&
            const DeepCollectionEquality().equals(other.blurStyle, blurStyle));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(color),
      const DeepCollectionEquality().hash(offset),
      const DeepCollectionEquality().hash(blurRadius),
      const DeepCollectionEquality().hash(spreadRadius),
      const DeepCollectionEquality().hash(blurStyle));

  @JsonKey(ignore: true)
  @override
  _$ZacBoxShadowCopyWith<_ZacBoxShadow> get copyWith =>
      __$ZacBoxShadowCopyWithImpl<_ZacBoxShadow>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ZacBoxShadowToJson(this);
  }
}

abstract class _ZacBoxShadow extends ZacBoxShadow {
  factory _ZacBoxShadow(
      {ZacColor? color,
      ZacOffset? offset,
      double? blurRadius,
      double? spreadRadius,
      ZacBlurStyle? blurStyle}) = _$_ZacBoxShadow;
  _ZacBoxShadow._() : super._();

  factory _ZacBoxShadow.fromJson(Map<String, dynamic> json) =
      _$_ZacBoxShadow.fromJson;

  @override
  ZacColor? get color;
  @override
  ZacOffset? get offset;
  @override
  double? get blurRadius;
  @override
  double? get spreadRadius;
  @override
  ZacBlurStyle? get blurStyle;
  @override
  @JsonKey(ignore: true)
  _$ZacBoxShadowCopyWith<_ZacBoxShadow> get copyWith =>
      throw _privateConstructorUsedError;
}

ZacBoxShape _$ZacBoxShapeFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'circle':
      return _ZacBoxShapeCircle.fromJson(json);
    case 'rectangle':
      return _ZacBoxShapeRectangle.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'ZacBoxShape',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
class _$ZacBoxShapeTearOff {
  const _$ZacBoxShapeTearOff();

  _ZacBoxShapeCircle circle() {
    return _ZacBoxShapeCircle();
  }

  _ZacBoxShapeRectangle rectangle() {
    return _ZacBoxShapeRectangle();
  }

  ZacBoxShape fromJson(Map<String, Object?> json) {
    return ZacBoxShape.fromJson(json);
  }
}

/// @nodoc
const $ZacBoxShape = _$ZacBoxShapeTearOff();

/// @nodoc
mixin _$ZacBoxShape {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() circle,
    required TResult Function() rectangle,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? circle,
    TResult Function()? rectangle,
  }) =>
      throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ZacBoxShapeCircle value) circle,
    required TResult Function(_ZacBoxShapeRectangle value) rectangle,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ZacBoxShapeCircle value)? circle,
    TResult Function(_ZacBoxShapeRectangle value)? rectangle,
  }) =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ZacBoxShapeCopyWith<$Res> {
  factory $ZacBoxShapeCopyWith(
          ZacBoxShape value, $Res Function(ZacBoxShape) then) =
      _$ZacBoxShapeCopyWithImpl<$Res>;
}

/// @nodoc
class _$ZacBoxShapeCopyWithImpl<$Res> implements $ZacBoxShapeCopyWith<$Res> {
  _$ZacBoxShapeCopyWithImpl(this._value, this._then);

  final ZacBoxShape _value;
  // ignore: unused_field
  final $Res Function(ZacBoxShape) _then;
}

/// @nodoc
abstract class _$ZacBoxShapeCircleCopyWith<$Res> {
  factory _$ZacBoxShapeCircleCopyWith(
          _ZacBoxShapeCircle value, $Res Function(_ZacBoxShapeCircle) then) =
      __$ZacBoxShapeCircleCopyWithImpl<$Res>;
}

/// @nodoc
class __$ZacBoxShapeCircleCopyWithImpl<$Res>
    extends _$ZacBoxShapeCopyWithImpl<$Res>
    implements _$ZacBoxShapeCircleCopyWith<$Res> {
  __$ZacBoxShapeCircleCopyWithImpl(
      _ZacBoxShapeCircle _value, $Res Function(_ZacBoxShapeCircle) _then)
      : super(_value, (v) => _then(v as _ZacBoxShapeCircle));

  @override
  _ZacBoxShapeCircle get _value => super._value as _ZacBoxShapeCircle;
}

/// @nodoc
@JsonSerializable()
class _$_ZacBoxShapeCircle extends _ZacBoxShapeCircle {
  _$_ZacBoxShapeCircle({String? $type})
      : $type = $type ?? 'circle',
        super._();

  factory _$_ZacBoxShapeCircle.fromJson(Map<String, dynamic> json) =>
      _$$_ZacBoxShapeCircleFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'ZacBoxShape.circle()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _ZacBoxShapeCircle);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() circle,
    required TResult Function() rectangle,
  }) {
    return circle();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? circle,
    TResult Function()? rectangle,
  }) {
    return circle?.call();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ZacBoxShapeCircle value) circle,
    required TResult Function(_ZacBoxShapeRectangle value) rectangle,
  }) {
    return circle(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ZacBoxShapeCircle value)? circle,
    TResult Function(_ZacBoxShapeRectangle value)? rectangle,
  }) {
    return circle?.call(this);
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$_ZacBoxShapeCircleToJson(this);
  }
}

abstract class _ZacBoxShapeCircle extends ZacBoxShape {
  factory _ZacBoxShapeCircle() = _$_ZacBoxShapeCircle;
  _ZacBoxShapeCircle._() : super._();

  factory _ZacBoxShapeCircle.fromJson(Map<String, dynamic> json) =
      _$_ZacBoxShapeCircle.fromJson;
}

/// @nodoc
abstract class _$ZacBoxShapeRectangleCopyWith<$Res> {
  factory _$ZacBoxShapeRectangleCopyWith(_ZacBoxShapeRectangle value,
          $Res Function(_ZacBoxShapeRectangle) then) =
      __$ZacBoxShapeRectangleCopyWithImpl<$Res>;
}

/// @nodoc
class __$ZacBoxShapeRectangleCopyWithImpl<$Res>
    extends _$ZacBoxShapeCopyWithImpl<$Res>
    implements _$ZacBoxShapeRectangleCopyWith<$Res> {
  __$ZacBoxShapeRectangleCopyWithImpl(
      _ZacBoxShapeRectangle _value, $Res Function(_ZacBoxShapeRectangle) _then)
      : super(_value, (v) => _then(v as _ZacBoxShapeRectangle));

  @override
  _ZacBoxShapeRectangle get _value => super._value as _ZacBoxShapeRectangle;
}

/// @nodoc
@JsonSerializable()
class _$_ZacBoxShapeRectangle extends _ZacBoxShapeRectangle {
  _$_ZacBoxShapeRectangle({String? $type})
      : $type = $type ?? 'rectangle',
        super._();

  factory _$_ZacBoxShapeRectangle.fromJson(Map<String, dynamic> json) =>
      _$$_ZacBoxShapeRectangleFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'ZacBoxShape.rectangle()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _ZacBoxShapeRectangle);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() circle,
    required TResult Function() rectangle,
  }) {
    return rectangle();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? circle,
    TResult Function()? rectangle,
  }) {
    return rectangle?.call();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ZacBoxShapeCircle value) circle,
    required TResult Function(_ZacBoxShapeRectangle value) rectangle,
  }) {
    return rectangle(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ZacBoxShapeCircle value)? circle,
    TResult Function(_ZacBoxShapeRectangle value)? rectangle,
  }) {
    return rectangle?.call(this);
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$_ZacBoxShapeRectangleToJson(this);
  }
}

abstract class _ZacBoxShapeRectangle extends ZacBoxShape {
  factory _ZacBoxShapeRectangle() = _$_ZacBoxShapeRectangle;
  _ZacBoxShapeRectangle._() : super._();

  factory _ZacBoxShapeRectangle.fromJson(Map<String, dynamic> json) =
      _$_ZacBoxShapeRectangle.fromJson;
}
