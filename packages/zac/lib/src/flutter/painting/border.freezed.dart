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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ZacShapeBorderTearOff {
  const _$ZacShapeBorderTearOff();

  _ZacShapeBorderBoxBorder boxBorder(ZacBoxBorder subclass) {
    return _ZacShapeBorderBoxBorder(
      subclass,
    );
  }
}

/// @nodoc
const $ZacShapeBorder = _$ZacShapeBorderTearOff();

/// @nodoc
mixin _$ZacShapeBorder {
  ZacBoxBorder get subclass => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ZacBoxBorder subclass) boxBorder,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(ZacBoxBorder subclass)? boxBorder,
  }) =>
      throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ZacShapeBorderBoxBorder value) boxBorder,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ZacShapeBorderBoxBorder value)? boxBorder,
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ZacShapeBorderCopyWith<ZacShapeBorder> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ZacShapeBorderCopyWith<$Res> {
  factory $ZacShapeBorderCopyWith(
          ZacShapeBorder value, $Res Function(ZacShapeBorder) then) =
      _$ZacShapeBorderCopyWithImpl<$Res>;
  $Res call({ZacBoxBorder subclass});

  $ZacBoxBorderCopyWith<$Res> get subclass;
}

/// @nodoc
class _$ZacShapeBorderCopyWithImpl<$Res>
    implements $ZacShapeBorderCopyWith<$Res> {
  _$ZacShapeBorderCopyWithImpl(this._value, this._then);

  final ZacShapeBorder _value;
  // ignore: unused_field
  final $Res Function(ZacShapeBorder) _then;

  @override
  $Res call({
    Object? subclass = freezed,
  }) {
    return _then(_value.copyWith(
      subclass: subclass == freezed
          ? _value.subclass
          : subclass // ignore: cast_nullable_to_non_nullable
              as ZacBoxBorder,
    ));
  }

  @override
  $ZacBoxBorderCopyWith<$Res> get subclass {
    return $ZacBoxBorderCopyWith<$Res>(_value.subclass, (value) {
      return _then(_value.copyWith(subclass: value));
    });
  }
}

/// @nodoc
abstract class _$ZacShapeBorderBoxBorderCopyWith<$Res>
    implements $ZacShapeBorderCopyWith<$Res> {
  factory _$ZacShapeBorderBoxBorderCopyWith(_ZacShapeBorderBoxBorder value,
          $Res Function(_ZacShapeBorderBoxBorder) then) =
      __$ZacShapeBorderBoxBorderCopyWithImpl<$Res>;
  @override
  $Res call({ZacBoxBorder subclass});

  @override
  $ZacBoxBorderCopyWith<$Res> get subclass;
}

/// @nodoc
class __$ZacShapeBorderBoxBorderCopyWithImpl<$Res>
    extends _$ZacShapeBorderCopyWithImpl<$Res>
    implements _$ZacShapeBorderBoxBorderCopyWith<$Res> {
  __$ZacShapeBorderBoxBorderCopyWithImpl(_ZacShapeBorderBoxBorder _value,
      $Res Function(_ZacShapeBorderBoxBorder) _then)
      : super(_value, (v) => _then(v as _ZacShapeBorderBoxBorder));

  @override
  _ZacShapeBorderBoxBorder get _value =>
      super._value as _ZacShapeBorderBoxBorder;

  @override
  $Res call({
    Object? subclass = freezed,
  }) {
    return _then(_ZacShapeBorderBoxBorder(
      subclass == freezed
          ? _value.subclass
          : subclass // ignore: cast_nullable_to_non_nullable
              as ZacBoxBorder,
    ));
  }
}

/// @nodoc

@FreezedUnionValue('zac:painting:ShapeBorder>BoxBorder')
class _$_ZacShapeBorderBoxBorder extends _ZacShapeBorderBoxBorder {
  _$_ZacShapeBorderBoxBorder(this.subclass) : super._();

  @override
  final ZacBoxBorder subclass;

  @override
  String toString() {
    return 'ZacShapeBorder.boxBorder(subclass: $subclass)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ZacShapeBorderBoxBorder &&
            const DeepCollectionEquality().equals(other.subclass, subclass));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(subclass));

  @JsonKey(ignore: true)
  @override
  _$ZacShapeBorderBoxBorderCopyWith<_ZacShapeBorderBoxBorder> get copyWith =>
      __$ZacShapeBorderBoxBorderCopyWithImpl<_ZacShapeBorderBoxBorder>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ZacBoxBorder subclass) boxBorder,
  }) {
    return boxBorder(subclass);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(ZacBoxBorder subclass)? boxBorder,
  }) {
    return boxBorder?.call(subclass);
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ZacShapeBorderBoxBorder value) boxBorder,
  }) {
    return boxBorder(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ZacShapeBorderBoxBorder value)? boxBorder,
  }) {
    return boxBorder?.call(this);
  }
}

abstract class _ZacShapeBorderBoxBorder extends ZacShapeBorder {
  factory _ZacShapeBorderBoxBorder(ZacBoxBorder subclass) =
      _$_ZacShapeBorderBoxBorder;
  _ZacShapeBorderBoxBorder._() : super._();

  @override
  ZacBoxBorder get subclass;
  @override
  @JsonKey(ignore: true)
  _$ZacShapeBorderBoxBorderCopyWith<_ZacShapeBorderBoxBorder> get copyWith =>
      throw _privateConstructorUsedError;
}

ZacBoxBorder _$ZacBoxBorderFromJson(Map<String, dynamic> json) {
  return _ZacBoxBorderBorder.fromJson(json);
}

/// @nodoc
class _$ZacBoxBorderTearOff {
  const _$ZacBoxBorderTearOff();

  _ZacBoxBorderBorder border(ZacBorder subclass) {
    return _ZacBoxBorderBorder(
      subclass,
    );
  }

  ZacBoxBorder fromJson(Map<String, Object?> json) {
    return ZacBoxBorder.fromJson(json);
  }
}

/// @nodoc
const $ZacBoxBorder = _$ZacBoxBorderTearOff();

/// @nodoc
mixin _$ZacBoxBorder {
  ZacBorder get subclass => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ZacBorder subclass) border,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(ZacBorder subclass)? border,
  }) =>
      throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ZacBoxBorderBorder value) border,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ZacBoxBorderBorder value)? border,
  }) =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ZacBoxBorderCopyWith<ZacBoxBorder> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ZacBoxBorderCopyWith<$Res> {
  factory $ZacBoxBorderCopyWith(
          ZacBoxBorder value, $Res Function(ZacBoxBorder) then) =
      _$ZacBoxBorderCopyWithImpl<$Res>;
  $Res call({ZacBorder subclass});

  $ZacBorderCopyWith<$Res> get subclass;
}

/// @nodoc
class _$ZacBoxBorderCopyWithImpl<$Res> implements $ZacBoxBorderCopyWith<$Res> {
  _$ZacBoxBorderCopyWithImpl(this._value, this._then);

  final ZacBoxBorder _value;
  // ignore: unused_field
  final $Res Function(ZacBoxBorder) _then;

  @override
  $Res call({
    Object? subclass = freezed,
  }) {
    return _then(_value.copyWith(
      subclass: subclass == freezed
          ? _value.subclass
          : subclass // ignore: cast_nullable_to_non_nullable
              as ZacBorder,
    ));
  }

  @override
  $ZacBorderCopyWith<$Res> get subclass {
    return $ZacBorderCopyWith<$Res>(_value.subclass, (value) {
      return _then(_value.copyWith(subclass: value));
    });
  }
}

/// @nodoc
abstract class _$ZacBoxBorderBorderCopyWith<$Res>
    implements $ZacBoxBorderCopyWith<$Res> {
  factory _$ZacBoxBorderBorderCopyWith(
          _ZacBoxBorderBorder value, $Res Function(_ZacBoxBorderBorder) then) =
      __$ZacBoxBorderBorderCopyWithImpl<$Res>;
  @override
  $Res call({ZacBorder subclass});

  @override
  $ZacBorderCopyWith<$Res> get subclass;
}

/// @nodoc
class __$ZacBoxBorderBorderCopyWithImpl<$Res>
    extends _$ZacBoxBorderCopyWithImpl<$Res>
    implements _$ZacBoxBorderBorderCopyWith<$Res> {
  __$ZacBoxBorderBorderCopyWithImpl(
      _ZacBoxBorderBorder _value, $Res Function(_ZacBoxBorderBorder) _then)
      : super(_value, (v) => _then(v as _ZacBoxBorderBorder));

  @override
  _ZacBoxBorderBorder get _value => super._value as _ZacBoxBorderBorder;

  @override
  $Res call({
    Object? subclass = freezed,
  }) {
    return _then(_ZacBoxBorderBorder(
      subclass == freezed
          ? _value.subclass
          : subclass // ignore: cast_nullable_to_non_nullable
              as ZacBorder,
    ));
  }
}

/// @nodoc
@JsonSerializable()
@FreezedUnionValue('zac:painting:BoxBorder>Border')
class _$_ZacBoxBorderBorder extends _ZacBoxBorderBorder {
  _$_ZacBoxBorderBorder(this.subclass) : super._();

  factory _$_ZacBoxBorderBorder.fromJson(Map<String, dynamic> json) =>
      _$$_ZacBoxBorderBorderFromJson(json);

  @override
  final ZacBorder subclass;

  @override
  String toString() {
    return 'ZacBoxBorder.border(subclass: $subclass)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ZacBoxBorderBorder &&
            const DeepCollectionEquality().equals(other.subclass, subclass));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(subclass));

  @JsonKey(ignore: true)
  @override
  _$ZacBoxBorderBorderCopyWith<_ZacBoxBorderBorder> get copyWith =>
      __$ZacBoxBorderBorderCopyWithImpl<_ZacBoxBorderBorder>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ZacBorder subclass) border,
  }) {
    return border(subclass);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(ZacBorder subclass)? border,
  }) {
    return border?.call(subclass);
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ZacBoxBorderBorder value) border,
  }) {
    return border(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ZacBoxBorderBorder value)? border,
  }) {
    return border?.call(this);
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$_ZacBoxBorderBorderToJson(this);
  }
}

abstract class _ZacBoxBorderBorder extends ZacBoxBorder {
  factory _ZacBoxBorderBorder(ZacBorder subclass) = _$_ZacBoxBorderBorder;
  _ZacBoxBorderBorder._() : super._();

  factory _ZacBoxBorderBorder.fromJson(Map<String, dynamic> json) =
      _$_ZacBoxBorderBorder.fromJson;

  @override
  ZacBorder get subclass;
  @override
  @JsonKey(ignore: true)
  _$ZacBoxBorderBorderCopyWith<_ZacBoxBorderBorder> get copyWith =>
      throw _privateConstructorUsedError;
}

ZacBorder _$ZacBorderFromJson(Map<String, dynamic> json) {
  return _ZacBorderAll.fromJson(json);
}

/// @nodoc
class _$ZacBorderTearOff {
  const _$ZacBorderTearOff();

  _ZacBorderAll all({ZacColor? color, double? width, ZacBorderStyle? style}) {
    return _ZacBorderAll(
      color: color,
      width: width,
      style: style,
    );
  }

  ZacBorder fromJson(Map<String, Object?> json) {
    return ZacBorder.fromJson(json);
  }
}

/// @nodoc
const $ZacBorder = _$ZacBorderTearOff();

/// @nodoc
mixin _$ZacBorder {
  ZacColor? get color => throw _privateConstructorUsedError;
  double? get width => throw _privateConstructorUsedError;
  ZacBorderStyle? get style => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            ZacColor? color, double? width, ZacBorderStyle? style)
        all,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(ZacColor? color, double? width, ZacBorderStyle? style)?
        all,
  }) =>
      throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ZacBorderAll value) all,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ZacBorderAll value)? all,
  }) =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ZacBorderCopyWith<ZacBorder> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ZacBorderCopyWith<$Res> {
  factory $ZacBorderCopyWith(ZacBorder value, $Res Function(ZacBorder) then) =
      _$ZacBorderCopyWithImpl<$Res>;
  $Res call({ZacColor? color, double? width, ZacBorderStyle? style});

  $ZacColorCopyWith<$Res>? get color;
  $ZacBorderStyleCopyWith<$Res>? get style;
}

/// @nodoc
class _$ZacBorderCopyWithImpl<$Res> implements $ZacBorderCopyWith<$Res> {
  _$ZacBorderCopyWithImpl(this._value, this._then);

  final ZacBorder _value;
  // ignore: unused_field
  final $Res Function(ZacBorder) _then;

  @override
  $Res call({
    Object? color = freezed,
    Object? width = freezed,
    Object? style = freezed,
  }) {
    return _then(_value.copyWith(
      color: color == freezed
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as ZacColor?,
      width: width == freezed
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as double?,
      style: style == freezed
          ? _value.style
          : style // ignore: cast_nullable_to_non_nullable
              as ZacBorderStyle?,
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
  $ZacBorderStyleCopyWith<$Res>? get style {
    if (_value.style == null) {
      return null;
    }

    return $ZacBorderStyleCopyWith<$Res>(_value.style!, (value) {
      return _then(_value.copyWith(style: value));
    });
  }
}

/// @nodoc
abstract class _$ZacBorderAllCopyWith<$Res>
    implements $ZacBorderCopyWith<$Res> {
  factory _$ZacBorderAllCopyWith(
          _ZacBorderAll value, $Res Function(_ZacBorderAll) then) =
      __$ZacBorderAllCopyWithImpl<$Res>;
  @override
  $Res call({ZacColor? color, double? width, ZacBorderStyle? style});

  @override
  $ZacColorCopyWith<$Res>? get color;
  @override
  $ZacBorderStyleCopyWith<$Res>? get style;
}

/// @nodoc
class __$ZacBorderAllCopyWithImpl<$Res> extends _$ZacBorderCopyWithImpl<$Res>
    implements _$ZacBorderAllCopyWith<$Res> {
  __$ZacBorderAllCopyWithImpl(
      _ZacBorderAll _value, $Res Function(_ZacBorderAll) _then)
      : super(_value, (v) => _then(v as _ZacBorderAll));

  @override
  _ZacBorderAll get _value => super._value as _ZacBorderAll;

  @override
  $Res call({
    Object? color = freezed,
    Object? width = freezed,
    Object? style = freezed,
  }) {
    return _then(_ZacBorderAll(
      color: color == freezed
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as ZacColor?,
      width: width == freezed
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as double?,
      style: style == freezed
          ? _value.style
          : style // ignore: cast_nullable_to_non_nullable
              as ZacBorderStyle?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
@FreezedUnionValue('zac:painting:Border.all')
class _$_ZacBorderAll extends _ZacBorderAll {
  _$_ZacBorderAll({this.color, this.width, this.style}) : super._();

  factory _$_ZacBorderAll.fromJson(Map<String, dynamic> json) =>
      _$$_ZacBorderAllFromJson(json);

  @override
  final ZacColor? color;
  @override
  final double? width;
  @override
  final ZacBorderStyle? style;

  @override
  String toString() {
    return 'ZacBorder.all(color: $color, width: $width, style: $style)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ZacBorderAll &&
            const DeepCollectionEquality().equals(other.color, color) &&
            const DeepCollectionEquality().equals(other.width, width) &&
            const DeepCollectionEquality().equals(other.style, style));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(color),
      const DeepCollectionEquality().hash(width),
      const DeepCollectionEquality().hash(style));

  @JsonKey(ignore: true)
  @override
  _$ZacBorderAllCopyWith<_ZacBorderAll> get copyWith =>
      __$ZacBorderAllCopyWithImpl<_ZacBorderAll>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            ZacColor? color, double? width, ZacBorderStyle? style)
        all,
  }) {
    return all(color, width, style);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(ZacColor? color, double? width, ZacBorderStyle? style)?
        all,
  }) {
    return all?.call(color, width, style);
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ZacBorderAll value) all,
  }) {
    return all(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ZacBorderAll value)? all,
  }) {
    return all?.call(this);
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$_ZacBorderAllToJson(this);
  }
}

abstract class _ZacBorderAll extends ZacBorder {
  factory _ZacBorderAll(
      {ZacColor? color,
      double? width,
      ZacBorderStyle? style}) = _$_ZacBorderAll;
  _ZacBorderAll._() : super._();

  factory _ZacBorderAll.fromJson(Map<String, dynamic> json) =
      _$_ZacBorderAll.fromJson;

  @override
  ZacColor? get color;
  @override
  double? get width;
  @override
  ZacBorderStyle? get style;
  @override
  @JsonKey(ignore: true)
  _$ZacBorderAllCopyWith<_ZacBorderAll> get copyWith =>
      throw _privateConstructorUsedError;
}

ZacBorderStyle _$ZacBorderStyleFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'zac:painting:BorderStyle.none':
      return _ZacBorderStyleNone.fromJson(json);
    case 'zac:painting:BorderStyle.solid':
      return _ZacBorderStyleSolid.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'ZacBorderStyle',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
class _$ZacBorderStyleTearOff {
  const _$ZacBorderStyleTearOff();

  _ZacBorderStyleNone none() {
    return _ZacBorderStyleNone();
  }

  _ZacBorderStyleSolid solid() {
    return _ZacBorderStyleSolid();
  }

  ZacBorderStyle fromJson(Map<String, Object?> json) {
    return ZacBorderStyle.fromJson(json);
  }
}

/// @nodoc
const $ZacBorderStyle = _$ZacBorderStyleTearOff();

/// @nodoc
mixin _$ZacBorderStyle {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() none,
    required TResult Function() solid,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? none,
    TResult Function()? solid,
  }) =>
      throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ZacBorderStyleNone value) none,
    required TResult Function(_ZacBorderStyleSolid value) solid,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ZacBorderStyleNone value)? none,
    TResult Function(_ZacBorderStyleSolid value)? solid,
  }) =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ZacBorderStyleCopyWith<$Res> {
  factory $ZacBorderStyleCopyWith(
          ZacBorderStyle value, $Res Function(ZacBorderStyle) then) =
      _$ZacBorderStyleCopyWithImpl<$Res>;
}

/// @nodoc
class _$ZacBorderStyleCopyWithImpl<$Res>
    implements $ZacBorderStyleCopyWith<$Res> {
  _$ZacBorderStyleCopyWithImpl(this._value, this._then);

  final ZacBorderStyle _value;
  // ignore: unused_field
  final $Res Function(ZacBorderStyle) _then;
}

/// @nodoc
abstract class _$ZacBorderStyleNoneCopyWith<$Res> {
  factory _$ZacBorderStyleNoneCopyWith(
          _ZacBorderStyleNone value, $Res Function(_ZacBorderStyleNone) then) =
      __$ZacBorderStyleNoneCopyWithImpl<$Res>;
}

/// @nodoc
class __$ZacBorderStyleNoneCopyWithImpl<$Res>
    extends _$ZacBorderStyleCopyWithImpl<$Res>
    implements _$ZacBorderStyleNoneCopyWith<$Res> {
  __$ZacBorderStyleNoneCopyWithImpl(
      _ZacBorderStyleNone _value, $Res Function(_ZacBorderStyleNone) _then)
      : super(_value, (v) => _then(v as _ZacBorderStyleNone));

  @override
  _ZacBorderStyleNone get _value => super._value as _ZacBorderStyleNone;
}

/// @nodoc
@JsonSerializable()
@FreezedUnionValue('zac:painting:BorderStyle.none')
class _$_ZacBorderStyleNone extends _ZacBorderStyleNone {
  _$_ZacBorderStyleNone({String? $type})
      : $type = $type ?? 'zac:painting:BorderStyle.none',
        super._();

  factory _$_ZacBorderStyleNone.fromJson(Map<String, dynamic> json) =>
      _$$_ZacBorderStyleNoneFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'ZacBorderStyle.none()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _ZacBorderStyleNone);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() none,
    required TResult Function() solid,
  }) {
    return none();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? none,
    TResult Function()? solid,
  }) {
    return none?.call();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ZacBorderStyleNone value) none,
    required TResult Function(_ZacBorderStyleSolid value) solid,
  }) {
    return none(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ZacBorderStyleNone value)? none,
    TResult Function(_ZacBorderStyleSolid value)? solid,
  }) {
    return none?.call(this);
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$_ZacBorderStyleNoneToJson(this);
  }
}

abstract class _ZacBorderStyleNone extends ZacBorderStyle {
  factory _ZacBorderStyleNone() = _$_ZacBorderStyleNone;
  _ZacBorderStyleNone._() : super._();

  factory _ZacBorderStyleNone.fromJson(Map<String, dynamic> json) =
      _$_ZacBorderStyleNone.fromJson;
}

/// @nodoc
abstract class _$ZacBorderStyleSolidCopyWith<$Res> {
  factory _$ZacBorderStyleSolidCopyWith(_ZacBorderStyleSolid value,
          $Res Function(_ZacBorderStyleSolid) then) =
      __$ZacBorderStyleSolidCopyWithImpl<$Res>;
}

/// @nodoc
class __$ZacBorderStyleSolidCopyWithImpl<$Res>
    extends _$ZacBorderStyleCopyWithImpl<$Res>
    implements _$ZacBorderStyleSolidCopyWith<$Res> {
  __$ZacBorderStyleSolidCopyWithImpl(
      _ZacBorderStyleSolid _value, $Res Function(_ZacBorderStyleSolid) _then)
      : super(_value, (v) => _then(v as _ZacBorderStyleSolid));

  @override
  _ZacBorderStyleSolid get _value => super._value as _ZacBorderStyleSolid;
}

/// @nodoc
@JsonSerializable()
@FreezedUnionValue('zac:painting:BorderStyle.solid')
class _$_ZacBorderStyleSolid extends _ZacBorderStyleSolid {
  _$_ZacBorderStyleSolid({String? $type})
      : $type = $type ?? 'zac:painting:BorderStyle.solid',
        super._();

  factory _$_ZacBorderStyleSolid.fromJson(Map<String, dynamic> json) =>
      _$$_ZacBorderStyleSolidFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'ZacBorderStyle.solid()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _ZacBorderStyleSolid);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() none,
    required TResult Function() solid,
  }) {
    return solid();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? none,
    TResult Function()? solid,
  }) {
    return solid?.call();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ZacBorderStyleNone value) none,
    required TResult Function(_ZacBorderStyleSolid value) solid,
  }) {
    return solid(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ZacBorderStyleNone value)? none,
    TResult Function(_ZacBorderStyleSolid value)? solid,
  }) {
    return solid?.call(this);
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$_ZacBorderStyleSolidToJson(this);
  }
}

abstract class _ZacBorderStyleSolid extends ZacBorderStyle {
  factory _ZacBorderStyleSolid() = _$_ZacBorderStyleSolid;
  _ZacBorderStyleSolid._() : super._();

  factory _ZacBorderStyleSolid.fromJson(Map<String, dynamic> json) =
      _$_ZacBorderStyleSolid.fromJson;
}

ZacBorderRadiusGeometry _$ZacBorderRadiusGeometryFromJson(
    Map<String, dynamic> json) {
  return _ZacBorderRadiusGeometryRadius.fromJson(json);
}

/// @nodoc
class _$ZacBorderRadiusGeometryTearOff {
  const _$ZacBorderRadiusGeometryTearOff();

  _ZacBorderRadiusGeometryRadius radius(ZacBorderRadius subclass) {
    return _ZacBorderRadiusGeometryRadius(
      subclass,
    );
  }

  ZacBorderRadiusGeometry fromJson(Map<String, Object?> json) {
    return ZacBorderRadiusGeometry.fromJson(json);
  }
}

/// @nodoc
const $ZacBorderRadiusGeometry = _$ZacBorderRadiusGeometryTearOff();

/// @nodoc
mixin _$ZacBorderRadiusGeometry {
  ZacBorderRadius get subclass => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ZacBorderRadius subclass) radius,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(ZacBorderRadius subclass)? radius,
  }) =>
      throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ZacBorderRadiusGeometryRadius value) radius,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ZacBorderRadiusGeometryRadius value)? radius,
  }) =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ZacBorderRadiusGeometryCopyWith<ZacBorderRadiusGeometry> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ZacBorderRadiusGeometryCopyWith<$Res> {
  factory $ZacBorderRadiusGeometryCopyWith(ZacBorderRadiusGeometry value,
          $Res Function(ZacBorderRadiusGeometry) then) =
      _$ZacBorderRadiusGeometryCopyWithImpl<$Res>;
  $Res call({ZacBorderRadius subclass});

  $ZacBorderRadiusCopyWith<$Res> get subclass;
}

/// @nodoc
class _$ZacBorderRadiusGeometryCopyWithImpl<$Res>
    implements $ZacBorderRadiusGeometryCopyWith<$Res> {
  _$ZacBorderRadiusGeometryCopyWithImpl(this._value, this._then);

  final ZacBorderRadiusGeometry _value;
  // ignore: unused_field
  final $Res Function(ZacBorderRadiusGeometry) _then;

  @override
  $Res call({
    Object? subclass = freezed,
  }) {
    return _then(_value.copyWith(
      subclass: subclass == freezed
          ? _value.subclass
          : subclass // ignore: cast_nullable_to_non_nullable
              as ZacBorderRadius,
    ));
  }

  @override
  $ZacBorderRadiusCopyWith<$Res> get subclass {
    return $ZacBorderRadiusCopyWith<$Res>(_value.subclass, (value) {
      return _then(_value.copyWith(subclass: value));
    });
  }
}

/// @nodoc
abstract class _$ZacBorderRadiusGeometryRadiusCopyWith<$Res>
    implements $ZacBorderRadiusGeometryCopyWith<$Res> {
  factory _$ZacBorderRadiusGeometryRadiusCopyWith(
          _ZacBorderRadiusGeometryRadius value,
          $Res Function(_ZacBorderRadiusGeometryRadius) then) =
      __$ZacBorderRadiusGeometryRadiusCopyWithImpl<$Res>;
  @override
  $Res call({ZacBorderRadius subclass});

  @override
  $ZacBorderRadiusCopyWith<$Res> get subclass;
}

/// @nodoc
class __$ZacBorderRadiusGeometryRadiusCopyWithImpl<$Res>
    extends _$ZacBorderRadiusGeometryCopyWithImpl<$Res>
    implements _$ZacBorderRadiusGeometryRadiusCopyWith<$Res> {
  __$ZacBorderRadiusGeometryRadiusCopyWithImpl(
      _ZacBorderRadiusGeometryRadius _value,
      $Res Function(_ZacBorderRadiusGeometryRadius) _then)
      : super(_value, (v) => _then(v as _ZacBorderRadiusGeometryRadius));

  @override
  _ZacBorderRadiusGeometryRadius get _value =>
      super._value as _ZacBorderRadiusGeometryRadius;

  @override
  $Res call({
    Object? subclass = freezed,
  }) {
    return _then(_ZacBorderRadiusGeometryRadius(
      subclass == freezed
          ? _value.subclass
          : subclass // ignore: cast_nullable_to_non_nullable
              as ZacBorderRadius,
    ));
  }
}

/// @nodoc
@JsonSerializable()
@FreezedUnionValue('zac:painting:BorderRadiusGeometry>BorderRadius')
class _$_ZacBorderRadiusGeometryRadius extends _ZacBorderRadiusGeometryRadius {
  _$_ZacBorderRadiusGeometryRadius(this.subclass) : super._();

  factory _$_ZacBorderRadiusGeometryRadius.fromJson(
          Map<String, dynamic> json) =>
      _$$_ZacBorderRadiusGeometryRadiusFromJson(json);

  @override
  final ZacBorderRadius subclass;

  @override
  String toString() {
    return 'ZacBorderRadiusGeometry.radius(subclass: $subclass)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ZacBorderRadiusGeometryRadius &&
            const DeepCollectionEquality().equals(other.subclass, subclass));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(subclass));

  @JsonKey(ignore: true)
  @override
  _$ZacBorderRadiusGeometryRadiusCopyWith<_ZacBorderRadiusGeometryRadius>
      get copyWith => __$ZacBorderRadiusGeometryRadiusCopyWithImpl<
          _ZacBorderRadiusGeometryRadius>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ZacBorderRadius subclass) radius,
  }) {
    return radius(subclass);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(ZacBorderRadius subclass)? radius,
  }) {
    return radius?.call(subclass);
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ZacBorderRadiusGeometryRadius value) radius,
  }) {
    return radius(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ZacBorderRadiusGeometryRadius value)? radius,
  }) {
    return radius?.call(this);
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$_ZacBorderRadiusGeometryRadiusToJson(this);
  }
}

abstract class _ZacBorderRadiusGeometryRadius extends ZacBorderRadiusGeometry {
  factory _ZacBorderRadiusGeometryRadius(ZacBorderRadius subclass) =
      _$_ZacBorderRadiusGeometryRadius;
  _ZacBorderRadiusGeometryRadius._() : super._();

  factory _ZacBorderRadiusGeometryRadius.fromJson(Map<String, dynamic> json) =
      _$_ZacBorderRadiusGeometryRadius.fromJson;

  @override
  ZacBorderRadius get subclass;
  @override
  @JsonKey(ignore: true)
  _$ZacBorderRadiusGeometryRadiusCopyWith<_ZacBorderRadiusGeometryRadius>
      get copyWith => throw _privateConstructorUsedError;
}

ZacBorderRadius _$ZacBorderRadiusFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'zac:painting:BorderRadius.all':
      return _ZacBorderRadiusAll.fromJson(json);
    case 'zac:painting:BorderRadius.circular':
      return _ZacBorderRadiusCircular.fromJson(json);
    case 'zac:painting:BorderRadius.horizontal':
      return _ZacBorderRadiusHorizontal.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'ZacBorderRadius',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
class _$ZacBorderRadiusTearOff {
  const _$ZacBorderRadiusTearOff();

  _ZacBorderRadiusAll all(ZacRadius radius) {
    return _ZacBorderRadiusAll(
      radius,
    );
  }

  _ZacBorderRadiusCircular circular(double radius) {
    return _ZacBorderRadiusCircular(
      radius,
    );
  }

  _ZacBorderRadiusHorizontal horizontal({ZacRadius? left, ZacRadius? right}) {
    return _ZacBorderRadiusHorizontal(
      left: left,
      right: right,
    );
  }

  ZacBorderRadius fromJson(Map<String, Object?> json) {
    return ZacBorderRadius.fromJson(json);
  }
}

/// @nodoc
const $ZacBorderRadius = _$ZacBorderRadiusTearOff();

/// @nodoc
mixin _$ZacBorderRadius {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ZacRadius radius) all,
    required TResult Function(double radius) circular,
    required TResult Function(ZacRadius? left, ZacRadius? right) horizontal,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(ZacRadius radius)? all,
    TResult Function(double radius)? circular,
    TResult Function(ZacRadius? left, ZacRadius? right)? horizontal,
  }) =>
      throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ZacBorderRadiusAll value) all,
    required TResult Function(_ZacBorderRadiusCircular value) circular,
    required TResult Function(_ZacBorderRadiusHorizontal value) horizontal,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ZacBorderRadiusAll value)? all,
    TResult Function(_ZacBorderRadiusCircular value)? circular,
    TResult Function(_ZacBorderRadiusHorizontal value)? horizontal,
  }) =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ZacBorderRadiusCopyWith<$Res> {
  factory $ZacBorderRadiusCopyWith(
          ZacBorderRadius value, $Res Function(ZacBorderRadius) then) =
      _$ZacBorderRadiusCopyWithImpl<$Res>;
}

/// @nodoc
class _$ZacBorderRadiusCopyWithImpl<$Res>
    implements $ZacBorderRadiusCopyWith<$Res> {
  _$ZacBorderRadiusCopyWithImpl(this._value, this._then);

  final ZacBorderRadius _value;
  // ignore: unused_field
  final $Res Function(ZacBorderRadius) _then;
}

/// @nodoc
abstract class _$ZacBorderRadiusAllCopyWith<$Res> {
  factory _$ZacBorderRadiusAllCopyWith(
          _ZacBorderRadiusAll value, $Res Function(_ZacBorderRadiusAll) then) =
      __$ZacBorderRadiusAllCopyWithImpl<$Res>;
  $Res call({ZacRadius radius});

  $ZacRadiusCopyWith<$Res> get radius;
}

/// @nodoc
class __$ZacBorderRadiusAllCopyWithImpl<$Res>
    extends _$ZacBorderRadiusCopyWithImpl<$Res>
    implements _$ZacBorderRadiusAllCopyWith<$Res> {
  __$ZacBorderRadiusAllCopyWithImpl(
      _ZacBorderRadiusAll _value, $Res Function(_ZacBorderRadiusAll) _then)
      : super(_value, (v) => _then(v as _ZacBorderRadiusAll));

  @override
  _ZacBorderRadiusAll get _value => super._value as _ZacBorderRadiusAll;

  @override
  $Res call({
    Object? radius = freezed,
  }) {
    return _then(_ZacBorderRadiusAll(
      radius == freezed
          ? _value.radius
          : radius // ignore: cast_nullable_to_non_nullable
              as ZacRadius,
    ));
  }

  @override
  $ZacRadiusCopyWith<$Res> get radius {
    return $ZacRadiusCopyWith<$Res>(_value.radius, (value) {
      return _then(_value.copyWith(radius: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
@FreezedUnionValue('zac:painting:BorderRadius.all')
class _$_ZacBorderRadiusAll extends _ZacBorderRadiusAll {
  _$_ZacBorderRadiusAll(this.radius, {String? $type})
      : $type = $type ?? 'zac:painting:BorderRadius.all',
        super._();

  factory _$_ZacBorderRadiusAll.fromJson(Map<String, dynamic> json) =>
      _$$_ZacBorderRadiusAllFromJson(json);

  @override
  final ZacRadius radius;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'ZacBorderRadius.all(radius: $radius)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ZacBorderRadiusAll &&
            const DeepCollectionEquality().equals(other.radius, radius));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(radius));

  @JsonKey(ignore: true)
  @override
  _$ZacBorderRadiusAllCopyWith<_ZacBorderRadiusAll> get copyWith =>
      __$ZacBorderRadiusAllCopyWithImpl<_ZacBorderRadiusAll>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ZacRadius radius) all,
    required TResult Function(double radius) circular,
    required TResult Function(ZacRadius? left, ZacRadius? right) horizontal,
  }) {
    return all(radius);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(ZacRadius radius)? all,
    TResult Function(double radius)? circular,
    TResult Function(ZacRadius? left, ZacRadius? right)? horizontal,
  }) {
    return all?.call(radius);
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ZacBorderRadiusAll value) all,
    required TResult Function(_ZacBorderRadiusCircular value) circular,
    required TResult Function(_ZacBorderRadiusHorizontal value) horizontal,
  }) {
    return all(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ZacBorderRadiusAll value)? all,
    TResult Function(_ZacBorderRadiusCircular value)? circular,
    TResult Function(_ZacBorderRadiusHorizontal value)? horizontal,
  }) {
    return all?.call(this);
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$_ZacBorderRadiusAllToJson(this);
  }
}

abstract class _ZacBorderRadiusAll extends ZacBorderRadius {
  factory _ZacBorderRadiusAll(ZacRadius radius) = _$_ZacBorderRadiusAll;
  _ZacBorderRadiusAll._() : super._();

  factory _ZacBorderRadiusAll.fromJson(Map<String, dynamic> json) =
      _$_ZacBorderRadiusAll.fromJson;

  ZacRadius get radius;
  @JsonKey(ignore: true)
  _$ZacBorderRadiusAllCopyWith<_ZacBorderRadiusAll> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ZacBorderRadiusCircularCopyWith<$Res> {
  factory _$ZacBorderRadiusCircularCopyWith(_ZacBorderRadiusCircular value,
          $Res Function(_ZacBorderRadiusCircular) then) =
      __$ZacBorderRadiusCircularCopyWithImpl<$Res>;
  $Res call({double radius});
}

/// @nodoc
class __$ZacBorderRadiusCircularCopyWithImpl<$Res>
    extends _$ZacBorderRadiusCopyWithImpl<$Res>
    implements _$ZacBorderRadiusCircularCopyWith<$Res> {
  __$ZacBorderRadiusCircularCopyWithImpl(_ZacBorderRadiusCircular _value,
      $Res Function(_ZacBorderRadiusCircular) _then)
      : super(_value, (v) => _then(v as _ZacBorderRadiusCircular));

  @override
  _ZacBorderRadiusCircular get _value =>
      super._value as _ZacBorderRadiusCircular;

  @override
  $Res call({
    Object? radius = freezed,
  }) {
    return _then(_ZacBorderRadiusCircular(
      radius == freezed
          ? _value.radius
          : radius // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
@FreezedUnionValue('zac:painting:BorderRadius.circular')
class _$_ZacBorderRadiusCircular extends _ZacBorderRadiusCircular {
  _$_ZacBorderRadiusCircular(this.radius, {String? $type})
      : $type = $type ?? 'zac:painting:BorderRadius.circular',
        super._();

  factory _$_ZacBorderRadiusCircular.fromJson(Map<String, dynamic> json) =>
      _$$_ZacBorderRadiusCircularFromJson(json);

  @override
  final double radius;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'ZacBorderRadius.circular(radius: $radius)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ZacBorderRadiusCircular &&
            const DeepCollectionEquality().equals(other.radius, radius));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(radius));

  @JsonKey(ignore: true)
  @override
  _$ZacBorderRadiusCircularCopyWith<_ZacBorderRadiusCircular> get copyWith =>
      __$ZacBorderRadiusCircularCopyWithImpl<_ZacBorderRadiusCircular>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ZacRadius radius) all,
    required TResult Function(double radius) circular,
    required TResult Function(ZacRadius? left, ZacRadius? right) horizontal,
  }) {
    return circular(radius);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(ZacRadius radius)? all,
    TResult Function(double radius)? circular,
    TResult Function(ZacRadius? left, ZacRadius? right)? horizontal,
  }) {
    return circular?.call(radius);
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ZacBorderRadiusAll value) all,
    required TResult Function(_ZacBorderRadiusCircular value) circular,
    required TResult Function(_ZacBorderRadiusHorizontal value) horizontal,
  }) {
    return circular(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ZacBorderRadiusAll value)? all,
    TResult Function(_ZacBorderRadiusCircular value)? circular,
    TResult Function(_ZacBorderRadiusHorizontal value)? horizontal,
  }) {
    return circular?.call(this);
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$_ZacBorderRadiusCircularToJson(this);
  }
}

abstract class _ZacBorderRadiusCircular extends ZacBorderRadius {
  factory _ZacBorderRadiusCircular(double radius) = _$_ZacBorderRadiusCircular;
  _ZacBorderRadiusCircular._() : super._();

  factory _ZacBorderRadiusCircular.fromJson(Map<String, dynamic> json) =
      _$_ZacBorderRadiusCircular.fromJson;

  double get radius;
  @JsonKey(ignore: true)
  _$ZacBorderRadiusCircularCopyWith<_ZacBorderRadiusCircular> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ZacBorderRadiusHorizontalCopyWith<$Res> {
  factory _$ZacBorderRadiusHorizontalCopyWith(_ZacBorderRadiusHorizontal value,
          $Res Function(_ZacBorderRadiusHorizontal) then) =
      __$ZacBorderRadiusHorizontalCopyWithImpl<$Res>;
  $Res call({ZacRadius? left, ZacRadius? right});

  $ZacRadiusCopyWith<$Res>? get left;
  $ZacRadiusCopyWith<$Res>? get right;
}

/// @nodoc
class __$ZacBorderRadiusHorizontalCopyWithImpl<$Res>
    extends _$ZacBorderRadiusCopyWithImpl<$Res>
    implements _$ZacBorderRadiusHorizontalCopyWith<$Res> {
  __$ZacBorderRadiusHorizontalCopyWithImpl(_ZacBorderRadiusHorizontal _value,
      $Res Function(_ZacBorderRadiusHorizontal) _then)
      : super(_value, (v) => _then(v as _ZacBorderRadiusHorizontal));

  @override
  _ZacBorderRadiusHorizontal get _value =>
      super._value as _ZacBorderRadiusHorizontal;

  @override
  $Res call({
    Object? left = freezed,
    Object? right = freezed,
  }) {
    return _then(_ZacBorderRadiusHorizontal(
      left: left == freezed
          ? _value.left
          : left // ignore: cast_nullable_to_non_nullable
              as ZacRadius?,
      right: right == freezed
          ? _value.right
          : right // ignore: cast_nullable_to_non_nullable
              as ZacRadius?,
    ));
  }

  @override
  $ZacRadiusCopyWith<$Res>? get left {
    if (_value.left == null) {
      return null;
    }

    return $ZacRadiusCopyWith<$Res>(_value.left!, (value) {
      return _then(_value.copyWith(left: value));
    });
  }

  @override
  $ZacRadiusCopyWith<$Res>? get right {
    if (_value.right == null) {
      return null;
    }

    return $ZacRadiusCopyWith<$Res>(_value.right!, (value) {
      return _then(_value.copyWith(right: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
@FreezedUnionValue('zac:painting:BorderRadius.horizontal')
class _$_ZacBorderRadiusHorizontal extends _ZacBorderRadiusHorizontal {
  _$_ZacBorderRadiusHorizontal({this.left, this.right, String? $type})
      : $type = $type ?? 'zac:painting:BorderRadius.horizontal',
        super._();

  factory _$_ZacBorderRadiusHorizontal.fromJson(Map<String, dynamic> json) =>
      _$$_ZacBorderRadiusHorizontalFromJson(json);

  @override
  final ZacRadius? left;
  @override
  final ZacRadius? right;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'ZacBorderRadius.horizontal(left: $left, right: $right)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ZacBorderRadiusHorizontal &&
            const DeepCollectionEquality().equals(other.left, left) &&
            const DeepCollectionEquality().equals(other.right, right));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(left),
      const DeepCollectionEquality().hash(right));

  @JsonKey(ignore: true)
  @override
  _$ZacBorderRadiusHorizontalCopyWith<_ZacBorderRadiusHorizontal>
      get copyWith =>
          __$ZacBorderRadiusHorizontalCopyWithImpl<_ZacBorderRadiusHorizontal>(
              this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(ZacRadius radius) all,
    required TResult Function(double radius) circular,
    required TResult Function(ZacRadius? left, ZacRadius? right) horizontal,
  }) {
    return horizontal(left, right);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(ZacRadius radius)? all,
    TResult Function(double radius)? circular,
    TResult Function(ZacRadius? left, ZacRadius? right)? horizontal,
  }) {
    return horizontal?.call(left, right);
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ZacBorderRadiusAll value) all,
    required TResult Function(_ZacBorderRadiusCircular value) circular,
    required TResult Function(_ZacBorderRadiusHorizontal value) horizontal,
  }) {
    return horizontal(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ZacBorderRadiusAll value)? all,
    TResult Function(_ZacBorderRadiusCircular value)? circular,
    TResult Function(_ZacBorderRadiusHorizontal value)? horizontal,
  }) {
    return horizontal?.call(this);
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$_ZacBorderRadiusHorizontalToJson(this);
  }
}

abstract class _ZacBorderRadiusHorizontal extends ZacBorderRadius {
  factory _ZacBorderRadiusHorizontal({ZacRadius? left, ZacRadius? right}) =
      _$_ZacBorderRadiusHorizontal;
  _ZacBorderRadiusHorizontal._() : super._();

  factory _ZacBorderRadiusHorizontal.fromJson(Map<String, dynamic> json) =
      _$_ZacBorderRadiusHorizontal.fromJson;

  ZacRadius? get left;
  ZacRadius? get right;
  @JsonKey(ignore: true)
  _$ZacBorderRadiusHorizontalCopyWith<_ZacBorderRadiusHorizontal>
      get copyWith => throw _privateConstructorUsedError;
}
