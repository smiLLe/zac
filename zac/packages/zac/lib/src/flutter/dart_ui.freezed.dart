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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FlutterColor _$FlutterColorFromJson(Map<String, dynamic> json) {
  switch (json['converter']) {
    case 'f:1:Color.fromARGB':
      return _FlutterColorFromARGB.fromJson(json);
    case 'f:1:Color.fromRGBO':
      return _FlutterColorFromRBGO.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'converter', 'FlutterColor',
          'Invalid union type "${json['converter']}"!');
  }
}

/// @nodoc
mixin _$FlutterColor {
  int get r => throw _privateConstructorUsedError;
  int get g => throw _privateConstructorUsedError;
  int get b => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FlutterColorFromARGB value) fromARGB,
    required TResult Function(_FlutterColorFromRBGO value) fromRGBO,
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_FlutterColorFromARGB extends _FlutterColorFromARGB {
  _$_FlutterColorFromARGB(
      {required this.a,
      required this.r,
      required this.g,
      required this.b,
      final String? $type})
      : $type = $type ?? 'f:1:Color.fromARGB',
        super._();

  factory _$_FlutterColorFromARGB.fromJson(Map<String, dynamic> json) =>
      _$$_FlutterColorFromARGBFromJson(json);

  @override
  final int a;
  @override
  final int r;
  @override
  final int g;
  @override
  final int b;

  @JsonKey(name: 'converter')
  final String $type;

  @override
  String toString() {
    return 'FlutterColor.fromARGB(a: $a, r: $r, g: $g, b: $b)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FlutterColorFromARGB &&
            (identical(other.a, a) || other.a == a) &&
            (identical(other.r, r) || other.r == r) &&
            (identical(other.g, g) || other.g == g) &&
            (identical(other.b, b) || other.b == b));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, a, r, g, b);

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FlutterColorFromARGB value) fromARGB,
    required TResult Function(_FlutterColorFromRBGO value) fromRGBO,
  }) {
    return fromARGB(this);
  }
}

abstract class _FlutterColorFromARGB extends FlutterColor {
  factory _FlutterColorFromARGB(
      {required final int a,
      required final int r,
      required final int g,
      required final int b}) = _$_FlutterColorFromARGB;
  _FlutterColorFromARGB._() : super._();

  factory _FlutterColorFromARGB.fromJson(Map<String, dynamic> json) =
      _$_FlutterColorFromARGB.fromJson;

  int get a;
  @override
  int get r;
  @override
  int get g;
  @override
  int get b;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_FlutterColorFromRBGO extends _FlutterColorFromRBGO {
  _$_FlutterColorFromRBGO(
      {required this.r,
      required this.g,
      required this.b,
      required this.opacity,
      final String? $type})
      : $type = $type ?? 'f:1:Color.fromRGBO',
        super._();

  factory _$_FlutterColorFromRBGO.fromJson(Map<String, dynamic> json) =>
      _$$_FlutterColorFromRBGOFromJson(json);

  @override
  final int r;
  @override
  final int g;
  @override
  final int b;
  @override
  final ZacValue<double> opacity;

  @JsonKey(name: 'converter')
  final String $type;

  @override
  String toString() {
    return 'FlutterColor.fromRGBO(r: $r, g: $g, b: $b, opacity: $opacity)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FlutterColorFromRBGO &&
            (identical(other.r, r) || other.r == r) &&
            (identical(other.g, g) || other.g == g) &&
            (identical(other.b, b) || other.b == b) &&
            (identical(other.opacity, opacity) || other.opacity == opacity));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, r, g, b, opacity);

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FlutterColorFromARGB value) fromARGB,
    required TResult Function(_FlutterColorFromRBGO value) fromRGBO,
  }) {
    return fromRGBO(this);
  }
}

abstract class _FlutterColorFromRBGO extends FlutterColor {
  factory _FlutterColorFromRBGO(
      {required final int r,
      required final int g,
      required final int b,
      required final ZacValue<double> opacity}) = _$_FlutterColorFromRBGO;
  _FlutterColorFromRBGO._() : super._();

  factory _FlutterColorFromRBGO.fromJson(Map<String, dynamic> json) =
      _$_FlutterColorFromRBGO.fromJson;

  @override
  int get r;
  @override
  int get g;
  @override
  int get b;
  ZacValue<double> get opacity;
}

FlutterOffset _$FlutterOffsetFromJson(Map<String, dynamic> json) {
  switch (json['converter']) {
    case 'f:1:Offset':
      return _FlutterOffset.fromJson(json);
    case 'f:1:Offset.fromDirection':
      return _FlutterOffsetFromDirection.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'converter', 'FlutterOffset',
          'Invalid union type "${json['converter']}"!');
  }
}

/// @nodoc
mixin _$FlutterOffset {
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_FlutterOffset value) $default, {
    required TResult Function(_FlutterOffsetFromDirection value) fromDirection,
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_FlutterOffset extends _FlutterOffset {
  _$_FlutterOffset(this.dx, this.dy, {final String? $type})
      : $type = $type ?? 'f:1:Offset',
        super._();

  factory _$_FlutterOffset.fromJson(Map<String, dynamic> json) =>
      _$$_FlutterOffsetFromJson(json);

  @override
  final ZacValue<double> dx;
  @override
  final ZacValue<double> dy;

  @JsonKey(name: 'converter')
  final String $type;

  @override
  String toString() {
    return 'FlutterOffset(dx: $dx, dy: $dy)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FlutterOffset &&
            (identical(other.dx, dx) || other.dx == dx) &&
            (identical(other.dy, dy) || other.dy == dy));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, dx, dy);

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_FlutterOffset value) $default, {
    required TResult Function(_FlutterOffsetFromDirection value) fromDirection,
  }) {
    return $default(this);
  }
}

abstract class _FlutterOffset extends FlutterOffset {
  factory _FlutterOffset(final ZacValue<double> dx, final ZacValue<double> dy) =
      _$_FlutterOffset;
  _FlutterOffset._() : super._();

  factory _FlutterOffset.fromJson(Map<String, dynamic> json) =
      _$_FlutterOffset.fromJson;

  ZacValue<double> get dx;
  ZacValue<double> get dy;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_FlutterOffsetFromDirection extends _FlutterOffsetFromDirection {
  _$_FlutterOffsetFromDirection(
      {required this.direction, this.distance, final String? $type})
      : $type = $type ?? 'f:1:Offset.fromDirection',
        super._();

  factory _$_FlutterOffsetFromDirection.fromJson(Map<String, dynamic> json) =>
      _$$_FlutterOffsetFromDirectionFromJson(json);

  @override
  final ZacValue<double> direction;
  @override
  final ZacValue<double>? distance;

  @JsonKey(name: 'converter')
  final String $type;

  @override
  String toString() {
    return 'FlutterOffset.fromDirection(direction: $direction, distance: $distance)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FlutterOffsetFromDirection &&
            (identical(other.direction, direction) ||
                other.direction == direction) &&
            (identical(other.distance, distance) ||
                other.distance == distance));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, direction, distance);

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_FlutterOffset value) $default, {
    required TResult Function(_FlutterOffsetFromDirection value) fromDirection,
  }) {
    return fromDirection(this);
  }
}

abstract class _FlutterOffsetFromDirection extends FlutterOffset {
  factory _FlutterOffsetFromDirection(
      {required final ZacValue<double> direction,
      final ZacValue<double>? distance}) = _$_FlutterOffsetFromDirection;
  _FlutterOffsetFromDirection._() : super._();

  factory _FlutterOffsetFromDirection.fromJson(Map<String, dynamic> json) =
      _$_FlutterOffsetFromDirection.fromJson;

  ZacValue<double> get direction;
  ZacValue<double>? get distance;
}

FlutterBlurStyle _$FlutterBlurStyleFromJson(Map<String, dynamic> json) {
  switch (json['converter']) {
    case 'f:1:BlurSyle.inner':
      return _FlutterBlurStyleInner.fromJson(json);
    case 'f:1:BlurSyle.normal':
      return _FlutterBlurStyleNormal.fromJson(json);
    case 'f:1:BlurSyle.outer':
      return _FlutterBlurStyleOuter.fromJson(json);
    case 'f:1:BlurSyle.solid':
      return _FlutterBlurStyleSolid.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'converter', 'FlutterBlurStyle',
          'Invalid union type "${json['converter']}"!');
  }
}

/// @nodoc
mixin _$FlutterBlurStyle {
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FlutterBlurStyleInner value) inner,
    required TResult Function(_FlutterBlurStyleNormal value) normal,
    required TResult Function(_FlutterBlurStyleOuter value) outer,
    required TResult Function(_FlutterBlurStyleSolid value) solid,
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_FlutterBlurStyleInner extends _FlutterBlurStyleInner {
  _$_FlutterBlurStyleInner({final String? $type})
      : $type = $type ?? 'f:1:BlurSyle.inner',
        super._();

  factory _$_FlutterBlurStyleInner.fromJson(Map<String, dynamic> json) =>
      _$$_FlutterBlurStyleInnerFromJson(json);

  @JsonKey(name: 'converter')
  final String $type;

  @override
  String toString() {
    return 'FlutterBlurStyle.inner()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_FlutterBlurStyleInner);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FlutterBlurStyleInner value) inner,
    required TResult Function(_FlutterBlurStyleNormal value) normal,
    required TResult Function(_FlutterBlurStyleOuter value) outer,
    required TResult Function(_FlutterBlurStyleSolid value) solid,
  }) {
    return inner(this);
  }
}

abstract class _FlutterBlurStyleInner extends FlutterBlurStyle {
  factory _FlutterBlurStyleInner() = _$_FlutterBlurStyleInner;
  _FlutterBlurStyleInner._() : super._();

  factory _FlutterBlurStyleInner.fromJson(Map<String, dynamic> json) =
      _$_FlutterBlurStyleInner.fromJson;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_FlutterBlurStyleNormal extends _FlutterBlurStyleNormal {
  _$_FlutterBlurStyleNormal({final String? $type})
      : $type = $type ?? 'f:1:BlurSyle.normal',
        super._();

  factory _$_FlutterBlurStyleNormal.fromJson(Map<String, dynamic> json) =>
      _$$_FlutterBlurStyleNormalFromJson(json);

  @JsonKey(name: 'converter')
  final String $type;

  @override
  String toString() {
    return 'FlutterBlurStyle.normal()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FlutterBlurStyleNormal);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FlutterBlurStyleInner value) inner,
    required TResult Function(_FlutterBlurStyleNormal value) normal,
    required TResult Function(_FlutterBlurStyleOuter value) outer,
    required TResult Function(_FlutterBlurStyleSolid value) solid,
  }) {
    return normal(this);
  }
}

abstract class _FlutterBlurStyleNormal extends FlutterBlurStyle {
  factory _FlutterBlurStyleNormal() = _$_FlutterBlurStyleNormal;
  _FlutterBlurStyleNormal._() : super._();

  factory _FlutterBlurStyleNormal.fromJson(Map<String, dynamic> json) =
      _$_FlutterBlurStyleNormal.fromJson;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_FlutterBlurStyleOuter extends _FlutterBlurStyleOuter {
  _$_FlutterBlurStyleOuter({final String? $type})
      : $type = $type ?? 'f:1:BlurSyle.outer',
        super._();

  factory _$_FlutterBlurStyleOuter.fromJson(Map<String, dynamic> json) =>
      _$$_FlutterBlurStyleOuterFromJson(json);

  @JsonKey(name: 'converter')
  final String $type;

  @override
  String toString() {
    return 'FlutterBlurStyle.outer()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_FlutterBlurStyleOuter);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FlutterBlurStyleInner value) inner,
    required TResult Function(_FlutterBlurStyleNormal value) normal,
    required TResult Function(_FlutterBlurStyleOuter value) outer,
    required TResult Function(_FlutterBlurStyleSolid value) solid,
  }) {
    return outer(this);
  }
}

abstract class _FlutterBlurStyleOuter extends FlutterBlurStyle {
  factory _FlutterBlurStyleOuter() = _$_FlutterBlurStyleOuter;
  _FlutterBlurStyleOuter._() : super._();

  factory _FlutterBlurStyleOuter.fromJson(Map<String, dynamic> json) =
      _$_FlutterBlurStyleOuter.fromJson;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_FlutterBlurStyleSolid extends _FlutterBlurStyleSolid {
  _$_FlutterBlurStyleSolid({final String? $type})
      : $type = $type ?? 'f:1:BlurSyle.solid',
        super._();

  factory _$_FlutterBlurStyleSolid.fromJson(Map<String, dynamic> json) =>
      _$$_FlutterBlurStyleSolidFromJson(json);

  @JsonKey(name: 'converter')
  final String $type;

  @override
  String toString() {
    return 'FlutterBlurStyle.solid()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_FlutterBlurStyleSolid);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FlutterBlurStyleInner value) inner,
    required TResult Function(_FlutterBlurStyleNormal value) normal,
    required TResult Function(_FlutterBlurStyleOuter value) outer,
    required TResult Function(_FlutterBlurStyleSolid value) solid,
  }) {
    return solid(this);
  }
}

abstract class _FlutterBlurStyleSolid extends FlutterBlurStyle {
  factory _FlutterBlurStyleSolid() = _$_FlutterBlurStyleSolid;
  _FlutterBlurStyleSolid._() : super._();

  factory _FlutterBlurStyleSolid.fromJson(Map<String, dynamic> json) =
      _$_FlutterBlurStyleSolid.fromJson;
}

FlutterRadius _$FlutterRadiusFromJson(Map<String, dynamic> json) {
  switch (json['converter']) {
    case 'f:1:Radius.circular':
      return _FlutterRadiusCircular.fromJson(json);
    case 'f:1:Radius.elliptical':
      return _FlutterRadiusElliptical.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'converter', 'FlutterRadius',
          'Invalid union type "${json['converter']}"!');
  }
}

/// @nodoc
mixin _$FlutterRadius {
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FlutterRadiusCircular value) circular,
    required TResult Function(_FlutterRadiusElliptical value) elliptical,
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_FlutterRadiusCircular extends _FlutterRadiusCircular {
  _$_FlutterRadiusCircular(this.radius, {final String? $type})
      : $type = $type ?? 'f:1:Radius.circular',
        super._();

  factory _$_FlutterRadiusCircular.fromJson(Map<String, dynamic> json) =>
      _$$_FlutterRadiusCircularFromJson(json);

  @override
  final ZacValue<double> radius;

  @JsonKey(name: 'converter')
  final String $type;

  @override
  String toString() {
    return 'FlutterRadius.circular(radius: $radius)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FlutterRadiusCircular &&
            (identical(other.radius, radius) || other.radius == radius));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, radius);

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FlutterRadiusCircular value) circular,
    required TResult Function(_FlutterRadiusElliptical value) elliptical,
  }) {
    return circular(this);
  }
}

abstract class _FlutterRadiusCircular extends FlutterRadius {
  factory _FlutterRadiusCircular(final ZacValue<double> radius) =
      _$_FlutterRadiusCircular;
  _FlutterRadiusCircular._() : super._();

  factory _FlutterRadiusCircular.fromJson(Map<String, dynamic> json) =
      _$_FlutterRadiusCircular.fromJson;

  ZacValue<double> get radius;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_FlutterRadiusElliptical extends _FlutterRadiusElliptical {
  _$_FlutterRadiusElliptical(this.x, this.y, {final String? $type})
      : $type = $type ?? 'f:1:Radius.elliptical',
        super._();

  factory _$_FlutterRadiusElliptical.fromJson(Map<String, dynamic> json) =>
      _$$_FlutterRadiusEllipticalFromJson(json);

  @override
  final ZacValue<double> x;
  @override
  final ZacValue<double> y;

  @JsonKey(name: 'converter')
  final String $type;

  @override
  String toString() {
    return 'FlutterRadius.elliptical(x: $x, y: $y)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FlutterRadiusElliptical &&
            (identical(other.x, x) || other.x == x) &&
            (identical(other.y, y) || other.y == y));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, x, y);

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FlutterRadiusCircular value) circular,
    required TResult Function(_FlutterRadiusElliptical value) elliptical,
  }) {
    return elliptical(this);
  }
}

abstract class _FlutterRadiusElliptical extends FlutterRadius {
  factory _FlutterRadiusElliptical(
          final ZacValue<double> x, final ZacValue<double> y) =
      _$_FlutterRadiusElliptical;
  _FlutterRadiusElliptical._() : super._();

  factory _FlutterRadiusElliptical.fromJson(Map<String, dynamic> json) =
      _$_FlutterRadiusElliptical.fromJson;

  ZacValue<double> get x;
  ZacValue<double> get y;
}

FlutterTextDirection _$FlutterTextDirectionFromJson(Map<String, dynamic> json) {
  switch (json['converter']) {
    case 'f:1:TextDirection.rtl':
      return _FlutterTextDirectionRtl.fromJson(json);
    case 'f:1:TextDirection.ltr':
      return _FlutterTextDirectionLtr.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'converter', 'FlutterTextDirection',
          'Invalid union type "${json['converter']}"!');
  }
}

/// @nodoc
mixin _$FlutterTextDirection {
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FlutterTextDirectionRtl value) rtl,
    required TResult Function(_FlutterTextDirectionLtr value) ltr,
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_FlutterTextDirectionRtl extends _FlutterTextDirectionRtl {
  _$_FlutterTextDirectionRtl({final String? $type})
      : $type = $type ?? 'f:1:TextDirection.rtl',
        super._();

  factory _$_FlutterTextDirectionRtl.fromJson(Map<String, dynamic> json) =>
      _$$_FlutterTextDirectionRtlFromJson(json);

  @JsonKey(name: 'converter')
  final String $type;

  @override
  String toString() {
    return 'FlutterTextDirection.rtl()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FlutterTextDirectionRtl);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FlutterTextDirectionRtl value) rtl,
    required TResult Function(_FlutterTextDirectionLtr value) ltr,
  }) {
    return rtl(this);
  }
}

abstract class _FlutterTextDirectionRtl extends FlutterTextDirection {
  factory _FlutterTextDirectionRtl() = _$_FlutterTextDirectionRtl;
  _FlutterTextDirectionRtl._() : super._();

  factory _FlutterTextDirectionRtl.fromJson(Map<String, dynamic> json) =
      _$_FlutterTextDirectionRtl.fromJson;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_FlutterTextDirectionLtr extends _FlutterTextDirectionLtr {
  _$_FlutterTextDirectionLtr({final String? $type})
      : $type = $type ?? 'f:1:TextDirection.ltr',
        super._();

  factory _$_FlutterTextDirectionLtr.fromJson(Map<String, dynamic> json) =>
      _$$_FlutterTextDirectionLtrFromJson(json);

  @JsonKey(name: 'converter')
  final String $type;

  @override
  String toString() {
    return 'FlutterTextDirection.ltr()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FlutterTextDirectionLtr);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FlutterTextDirectionRtl value) rtl,
    required TResult Function(_FlutterTextDirectionLtr value) ltr,
  }) {
    return ltr(this);
  }
}

abstract class _FlutterTextDirectionLtr extends FlutterTextDirection {
  factory _FlutterTextDirectionLtr() = _$_FlutterTextDirectionLtr;
  _FlutterTextDirectionLtr._() : super._();

  factory _FlutterTextDirectionLtr.fromJson(Map<String, dynamic> json) =
      _$_FlutterTextDirectionLtr.fromJson;
}

FlutterClip _$FlutterClipFromJson(Map<String, dynamic> json) {
  switch (json['converter']) {
    case 'f:1:Clip.none':
      return _FlutterClipNone.fromJson(json);
    case 'f:1:Clip.antiAlias':
      return _FlutterClipAntiAlias.fromJson(json);
    case 'f:1:Clip.hardEdge':
      return _FlutterClipHardEdge.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'converter', 'FlutterClip',
          'Invalid union type "${json['converter']}"!');
  }
}

/// @nodoc
mixin _$FlutterClip {
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FlutterClipNone value) none,
    required TResult Function(_FlutterClipAntiAlias value) antiAlias,
    required TResult Function(_FlutterClipHardEdge value) hardEdge,
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_FlutterClipNone extends _FlutterClipNone {
  _$_FlutterClipNone({final String? $type})
      : $type = $type ?? 'f:1:Clip.none',
        super._();

  factory _$_FlutterClipNone.fromJson(Map<String, dynamic> json) =>
      _$$_FlutterClipNoneFromJson(json);

  @JsonKey(name: 'converter')
  final String $type;

  @override
  String toString() {
    return 'FlutterClip.none()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_FlutterClipNone);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FlutterClipNone value) none,
    required TResult Function(_FlutterClipAntiAlias value) antiAlias,
    required TResult Function(_FlutterClipHardEdge value) hardEdge,
  }) {
    return none(this);
  }
}

abstract class _FlutterClipNone extends FlutterClip {
  factory _FlutterClipNone() = _$_FlutterClipNone;
  _FlutterClipNone._() : super._();

  factory _FlutterClipNone.fromJson(Map<String, dynamic> json) =
      _$_FlutterClipNone.fromJson;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_FlutterClipAntiAlias extends _FlutterClipAntiAlias {
  _$_FlutterClipAntiAlias({final String? $type})
      : $type = $type ?? 'f:1:Clip.antiAlias',
        super._();

  factory _$_FlutterClipAntiAlias.fromJson(Map<String, dynamic> json) =>
      _$$_FlutterClipAntiAliasFromJson(json);

  @JsonKey(name: 'converter')
  final String $type;

  @override
  String toString() {
    return 'FlutterClip.antiAlias()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_FlutterClipAntiAlias);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FlutterClipNone value) none,
    required TResult Function(_FlutterClipAntiAlias value) antiAlias,
    required TResult Function(_FlutterClipHardEdge value) hardEdge,
  }) {
    return antiAlias(this);
  }
}

abstract class _FlutterClipAntiAlias extends FlutterClip {
  factory _FlutterClipAntiAlias() = _$_FlutterClipAntiAlias;
  _FlutterClipAntiAlias._() : super._();

  factory _FlutterClipAntiAlias.fromJson(Map<String, dynamic> json) =
      _$_FlutterClipAntiAlias.fromJson;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_FlutterClipHardEdge extends _FlutterClipHardEdge {
  _$_FlutterClipHardEdge({final String? $type})
      : $type = $type ?? 'f:1:Clip.hardEdge',
        super._();

  factory _$_FlutterClipHardEdge.fromJson(Map<String, dynamic> json) =>
      _$$_FlutterClipHardEdgeFromJson(json);

  @JsonKey(name: 'converter')
  final String $type;

  @override
  String toString() {
    return 'FlutterClip.hardEdge()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_FlutterClipHardEdge);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FlutterClipNone value) none,
    required TResult Function(_FlutterClipAntiAlias value) antiAlias,
    required TResult Function(_FlutterClipHardEdge value) hardEdge,
  }) {
    return hardEdge(this);
  }
}

abstract class _FlutterClipHardEdge extends FlutterClip {
  factory _FlutterClipHardEdge() = _$_FlutterClipHardEdge;
  _FlutterClipHardEdge._() : super._();

  factory _FlutterClipHardEdge.fromJson(Map<String, dynamic> json) =
      _$_FlutterClipHardEdge.fromJson;
}

FlutterTextBaseline _$FlutterTextBaselineFromJson(Map<String, dynamic> json) {
  switch (json['converter']) {
    case 'f:1:TextBaseline.alphabetic':
      return _FlutterTextBaselineAlphabetic.fromJson(json);
    case 'f:1:TextBaseline.ideographic':
      return _FlutterTextBaselineIdeographic.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'converter', 'FlutterTextBaseline',
          'Invalid union type "${json['converter']}"!');
  }
}

/// @nodoc
mixin _$FlutterTextBaseline {
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FlutterTextBaselineAlphabetic value) alphabetic,
    required TResult Function(_FlutterTextBaselineIdeographic value)
        ideographic,
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_FlutterTextBaselineAlphabetic extends _FlutterTextBaselineAlphabetic {
  _$_FlutterTextBaselineAlphabetic({final String? $type})
      : $type = $type ?? 'f:1:TextBaseline.alphabetic',
        super._();

  factory _$_FlutterTextBaselineAlphabetic.fromJson(
          Map<String, dynamic> json) =>
      _$$_FlutterTextBaselineAlphabeticFromJson(json);

  @JsonKey(name: 'converter')
  final String $type;

  @override
  String toString() {
    return 'FlutterTextBaseline.alphabetic()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FlutterTextBaselineAlphabetic);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FlutterTextBaselineAlphabetic value) alphabetic,
    required TResult Function(_FlutterTextBaselineIdeographic value)
        ideographic,
  }) {
    return alphabetic(this);
  }
}

abstract class _FlutterTextBaselineAlphabetic extends FlutterTextBaseline {
  factory _FlutterTextBaselineAlphabetic() = _$_FlutterTextBaselineAlphabetic;
  _FlutterTextBaselineAlphabetic._() : super._();

  factory _FlutterTextBaselineAlphabetic.fromJson(Map<String, dynamic> json) =
      _$_FlutterTextBaselineAlphabetic.fromJson;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_FlutterTextBaselineIdeographic
    extends _FlutterTextBaselineIdeographic {
  _$_FlutterTextBaselineIdeographic({final String? $type})
      : $type = $type ?? 'f:1:TextBaseline.ideographic',
        super._();

  factory _$_FlutterTextBaselineIdeographic.fromJson(
          Map<String, dynamic> json) =>
      _$$_FlutterTextBaselineIdeographicFromJson(json);

  @JsonKey(name: 'converter')
  final String $type;

  @override
  String toString() {
    return 'FlutterTextBaseline.ideographic()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FlutterTextBaselineIdeographic);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FlutterTextBaselineAlphabetic value) alphabetic,
    required TResult Function(_FlutterTextBaselineIdeographic value)
        ideographic,
  }) {
    return ideographic(this);
  }
}

abstract class _FlutterTextBaselineIdeographic extends FlutterTextBaseline {
  factory _FlutterTextBaselineIdeographic() = _$_FlutterTextBaselineIdeographic;
  _FlutterTextBaselineIdeographic._() : super._();

  factory _FlutterTextBaselineIdeographic.fromJson(Map<String, dynamic> json) =
      _$_FlutterTextBaselineIdeographic.fromJson;
}

FlutterFontWeight _$FlutterFontWeightFromJson(Map<String, dynamic> json) {
  switch (json['converter']) {
    case 'f:1:FontWeight.bold':
      return _FlutterFontWeightBold.fromJson(json);
    case 'f:1:FontWeight.normal':
      return _FlutterFontWeightNormal.fromJson(json);
    case 'f:1:FontWeight.w100':
      return _FlutterFontWeightW100.fromJson(json);
    case 'f:1:FontWeight.w200':
      return _FlutterFontWeightW200.fromJson(json);
    case 'f:1:FontWeight.w300':
      return _FlutterFontWeightW300.fromJson(json);
    case 'f:1:FontWeight.w400':
      return _FlutterFontWeightW400.fromJson(json);
    case 'f:1:FontWeight.w500':
      return _FlutterFontWeightW500.fromJson(json);
    case 'f:1:FontWeight.w600':
      return _FlutterFontWeightW600.fromJson(json);
    case 'f:1:FontWeight.w700':
      return _FlutterFontWeightW700.fromJson(json);
    case 'f:1:FontWeight.w800':
      return _FlutterFontWeightW800.fromJson(json);
    case 'f:1:FontWeight.w900':
      return _FlutterFontWeightW900.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'converter', 'FlutterFontWeight',
          'Invalid union type "${json['converter']}"!');
  }
}

/// @nodoc
mixin _$FlutterFontWeight {
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FlutterFontWeightBold value) bold,
    required TResult Function(_FlutterFontWeightNormal value) normal,
    required TResult Function(_FlutterFontWeightW100 value) w100,
    required TResult Function(_FlutterFontWeightW200 value) w200,
    required TResult Function(_FlutterFontWeightW300 value) w300,
    required TResult Function(_FlutterFontWeightW400 value) w400,
    required TResult Function(_FlutterFontWeightW500 value) w500,
    required TResult Function(_FlutterFontWeightW600 value) w600,
    required TResult Function(_FlutterFontWeightW700 value) w700,
    required TResult Function(_FlutterFontWeightW800 value) w800,
    required TResult Function(_FlutterFontWeightW900 value) w900,
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_FlutterFontWeightBold extends _FlutterFontWeightBold {
  _$_FlutterFontWeightBold({final String? $type})
      : $type = $type ?? 'f:1:FontWeight.bold',
        super._();

  factory _$_FlutterFontWeightBold.fromJson(Map<String, dynamic> json) =>
      _$$_FlutterFontWeightBoldFromJson(json);

  @JsonKey(name: 'converter')
  final String $type;

  @override
  String toString() {
    return 'FlutterFontWeight.bold()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_FlutterFontWeightBold);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FlutterFontWeightBold value) bold,
    required TResult Function(_FlutterFontWeightNormal value) normal,
    required TResult Function(_FlutterFontWeightW100 value) w100,
    required TResult Function(_FlutterFontWeightW200 value) w200,
    required TResult Function(_FlutterFontWeightW300 value) w300,
    required TResult Function(_FlutterFontWeightW400 value) w400,
    required TResult Function(_FlutterFontWeightW500 value) w500,
    required TResult Function(_FlutterFontWeightW600 value) w600,
    required TResult Function(_FlutterFontWeightW700 value) w700,
    required TResult Function(_FlutterFontWeightW800 value) w800,
    required TResult Function(_FlutterFontWeightW900 value) w900,
  }) {
    return bold(this);
  }
}

abstract class _FlutterFontWeightBold extends FlutterFontWeight {
  factory _FlutterFontWeightBold() = _$_FlutterFontWeightBold;
  _FlutterFontWeightBold._() : super._();

  factory _FlutterFontWeightBold.fromJson(Map<String, dynamic> json) =
      _$_FlutterFontWeightBold.fromJson;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_FlutterFontWeightNormal extends _FlutterFontWeightNormal {
  _$_FlutterFontWeightNormal({final String? $type})
      : $type = $type ?? 'f:1:FontWeight.normal',
        super._();

  factory _$_FlutterFontWeightNormal.fromJson(Map<String, dynamic> json) =>
      _$$_FlutterFontWeightNormalFromJson(json);

  @JsonKey(name: 'converter')
  final String $type;

  @override
  String toString() {
    return 'FlutterFontWeight.normal()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FlutterFontWeightNormal);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FlutterFontWeightBold value) bold,
    required TResult Function(_FlutterFontWeightNormal value) normal,
    required TResult Function(_FlutterFontWeightW100 value) w100,
    required TResult Function(_FlutterFontWeightW200 value) w200,
    required TResult Function(_FlutterFontWeightW300 value) w300,
    required TResult Function(_FlutterFontWeightW400 value) w400,
    required TResult Function(_FlutterFontWeightW500 value) w500,
    required TResult Function(_FlutterFontWeightW600 value) w600,
    required TResult Function(_FlutterFontWeightW700 value) w700,
    required TResult Function(_FlutterFontWeightW800 value) w800,
    required TResult Function(_FlutterFontWeightW900 value) w900,
  }) {
    return normal(this);
  }
}

abstract class _FlutterFontWeightNormal extends FlutterFontWeight {
  factory _FlutterFontWeightNormal() = _$_FlutterFontWeightNormal;
  _FlutterFontWeightNormal._() : super._();

  factory _FlutterFontWeightNormal.fromJson(Map<String, dynamic> json) =
      _$_FlutterFontWeightNormal.fromJson;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_FlutterFontWeightW100 extends _FlutterFontWeightW100 {
  _$_FlutterFontWeightW100({final String? $type})
      : $type = $type ?? 'f:1:FontWeight.w100',
        super._();

  factory _$_FlutterFontWeightW100.fromJson(Map<String, dynamic> json) =>
      _$$_FlutterFontWeightW100FromJson(json);

  @JsonKey(name: 'converter')
  final String $type;

  @override
  String toString() {
    return 'FlutterFontWeight.w100()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_FlutterFontWeightW100);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FlutterFontWeightBold value) bold,
    required TResult Function(_FlutterFontWeightNormal value) normal,
    required TResult Function(_FlutterFontWeightW100 value) w100,
    required TResult Function(_FlutterFontWeightW200 value) w200,
    required TResult Function(_FlutterFontWeightW300 value) w300,
    required TResult Function(_FlutterFontWeightW400 value) w400,
    required TResult Function(_FlutterFontWeightW500 value) w500,
    required TResult Function(_FlutterFontWeightW600 value) w600,
    required TResult Function(_FlutterFontWeightW700 value) w700,
    required TResult Function(_FlutterFontWeightW800 value) w800,
    required TResult Function(_FlutterFontWeightW900 value) w900,
  }) {
    return w100(this);
  }
}

abstract class _FlutterFontWeightW100 extends FlutterFontWeight {
  factory _FlutterFontWeightW100() = _$_FlutterFontWeightW100;
  _FlutterFontWeightW100._() : super._();

  factory _FlutterFontWeightW100.fromJson(Map<String, dynamic> json) =
      _$_FlutterFontWeightW100.fromJson;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_FlutterFontWeightW200 extends _FlutterFontWeightW200 {
  _$_FlutterFontWeightW200({final String? $type})
      : $type = $type ?? 'f:1:FontWeight.w200',
        super._();

  factory _$_FlutterFontWeightW200.fromJson(Map<String, dynamic> json) =>
      _$$_FlutterFontWeightW200FromJson(json);

  @JsonKey(name: 'converter')
  final String $type;

  @override
  String toString() {
    return 'FlutterFontWeight.w200()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_FlutterFontWeightW200);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FlutterFontWeightBold value) bold,
    required TResult Function(_FlutterFontWeightNormal value) normal,
    required TResult Function(_FlutterFontWeightW100 value) w100,
    required TResult Function(_FlutterFontWeightW200 value) w200,
    required TResult Function(_FlutterFontWeightW300 value) w300,
    required TResult Function(_FlutterFontWeightW400 value) w400,
    required TResult Function(_FlutterFontWeightW500 value) w500,
    required TResult Function(_FlutterFontWeightW600 value) w600,
    required TResult Function(_FlutterFontWeightW700 value) w700,
    required TResult Function(_FlutterFontWeightW800 value) w800,
    required TResult Function(_FlutterFontWeightW900 value) w900,
  }) {
    return w200(this);
  }
}

abstract class _FlutterFontWeightW200 extends FlutterFontWeight {
  factory _FlutterFontWeightW200() = _$_FlutterFontWeightW200;
  _FlutterFontWeightW200._() : super._();

  factory _FlutterFontWeightW200.fromJson(Map<String, dynamic> json) =
      _$_FlutterFontWeightW200.fromJson;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_FlutterFontWeightW300 extends _FlutterFontWeightW300 {
  _$_FlutterFontWeightW300({final String? $type})
      : $type = $type ?? 'f:1:FontWeight.w300',
        super._();

  factory _$_FlutterFontWeightW300.fromJson(Map<String, dynamic> json) =>
      _$$_FlutterFontWeightW300FromJson(json);

  @JsonKey(name: 'converter')
  final String $type;

  @override
  String toString() {
    return 'FlutterFontWeight.w300()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_FlutterFontWeightW300);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FlutterFontWeightBold value) bold,
    required TResult Function(_FlutterFontWeightNormal value) normal,
    required TResult Function(_FlutterFontWeightW100 value) w100,
    required TResult Function(_FlutterFontWeightW200 value) w200,
    required TResult Function(_FlutterFontWeightW300 value) w300,
    required TResult Function(_FlutterFontWeightW400 value) w400,
    required TResult Function(_FlutterFontWeightW500 value) w500,
    required TResult Function(_FlutterFontWeightW600 value) w600,
    required TResult Function(_FlutterFontWeightW700 value) w700,
    required TResult Function(_FlutterFontWeightW800 value) w800,
    required TResult Function(_FlutterFontWeightW900 value) w900,
  }) {
    return w300(this);
  }
}

abstract class _FlutterFontWeightW300 extends FlutterFontWeight {
  factory _FlutterFontWeightW300() = _$_FlutterFontWeightW300;
  _FlutterFontWeightW300._() : super._();

  factory _FlutterFontWeightW300.fromJson(Map<String, dynamic> json) =
      _$_FlutterFontWeightW300.fromJson;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_FlutterFontWeightW400 extends _FlutterFontWeightW400 {
  _$_FlutterFontWeightW400({final String? $type})
      : $type = $type ?? 'f:1:FontWeight.w400',
        super._();

  factory _$_FlutterFontWeightW400.fromJson(Map<String, dynamic> json) =>
      _$$_FlutterFontWeightW400FromJson(json);

  @JsonKey(name: 'converter')
  final String $type;

  @override
  String toString() {
    return 'FlutterFontWeight.w400()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_FlutterFontWeightW400);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FlutterFontWeightBold value) bold,
    required TResult Function(_FlutterFontWeightNormal value) normal,
    required TResult Function(_FlutterFontWeightW100 value) w100,
    required TResult Function(_FlutterFontWeightW200 value) w200,
    required TResult Function(_FlutterFontWeightW300 value) w300,
    required TResult Function(_FlutterFontWeightW400 value) w400,
    required TResult Function(_FlutterFontWeightW500 value) w500,
    required TResult Function(_FlutterFontWeightW600 value) w600,
    required TResult Function(_FlutterFontWeightW700 value) w700,
    required TResult Function(_FlutterFontWeightW800 value) w800,
    required TResult Function(_FlutterFontWeightW900 value) w900,
  }) {
    return w400(this);
  }
}

abstract class _FlutterFontWeightW400 extends FlutterFontWeight {
  factory _FlutterFontWeightW400() = _$_FlutterFontWeightW400;
  _FlutterFontWeightW400._() : super._();

  factory _FlutterFontWeightW400.fromJson(Map<String, dynamic> json) =
      _$_FlutterFontWeightW400.fromJson;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_FlutterFontWeightW500 extends _FlutterFontWeightW500 {
  _$_FlutterFontWeightW500({final String? $type})
      : $type = $type ?? 'f:1:FontWeight.w500',
        super._();

  factory _$_FlutterFontWeightW500.fromJson(Map<String, dynamic> json) =>
      _$$_FlutterFontWeightW500FromJson(json);

  @JsonKey(name: 'converter')
  final String $type;

  @override
  String toString() {
    return 'FlutterFontWeight.w500()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_FlutterFontWeightW500);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FlutterFontWeightBold value) bold,
    required TResult Function(_FlutterFontWeightNormal value) normal,
    required TResult Function(_FlutterFontWeightW100 value) w100,
    required TResult Function(_FlutterFontWeightW200 value) w200,
    required TResult Function(_FlutterFontWeightW300 value) w300,
    required TResult Function(_FlutterFontWeightW400 value) w400,
    required TResult Function(_FlutterFontWeightW500 value) w500,
    required TResult Function(_FlutterFontWeightW600 value) w600,
    required TResult Function(_FlutterFontWeightW700 value) w700,
    required TResult Function(_FlutterFontWeightW800 value) w800,
    required TResult Function(_FlutterFontWeightW900 value) w900,
  }) {
    return w500(this);
  }
}

abstract class _FlutterFontWeightW500 extends FlutterFontWeight {
  factory _FlutterFontWeightW500() = _$_FlutterFontWeightW500;
  _FlutterFontWeightW500._() : super._();

  factory _FlutterFontWeightW500.fromJson(Map<String, dynamic> json) =
      _$_FlutterFontWeightW500.fromJson;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_FlutterFontWeightW600 extends _FlutterFontWeightW600 {
  _$_FlutterFontWeightW600({final String? $type})
      : $type = $type ?? 'f:1:FontWeight.w600',
        super._();

  factory _$_FlutterFontWeightW600.fromJson(Map<String, dynamic> json) =>
      _$$_FlutterFontWeightW600FromJson(json);

  @JsonKey(name: 'converter')
  final String $type;

  @override
  String toString() {
    return 'FlutterFontWeight.w600()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_FlutterFontWeightW600);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FlutterFontWeightBold value) bold,
    required TResult Function(_FlutterFontWeightNormal value) normal,
    required TResult Function(_FlutterFontWeightW100 value) w100,
    required TResult Function(_FlutterFontWeightW200 value) w200,
    required TResult Function(_FlutterFontWeightW300 value) w300,
    required TResult Function(_FlutterFontWeightW400 value) w400,
    required TResult Function(_FlutterFontWeightW500 value) w500,
    required TResult Function(_FlutterFontWeightW600 value) w600,
    required TResult Function(_FlutterFontWeightW700 value) w700,
    required TResult Function(_FlutterFontWeightW800 value) w800,
    required TResult Function(_FlutterFontWeightW900 value) w900,
  }) {
    return w600(this);
  }
}

abstract class _FlutterFontWeightW600 extends FlutterFontWeight {
  factory _FlutterFontWeightW600() = _$_FlutterFontWeightW600;
  _FlutterFontWeightW600._() : super._();

  factory _FlutterFontWeightW600.fromJson(Map<String, dynamic> json) =
      _$_FlutterFontWeightW600.fromJson;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_FlutterFontWeightW700 extends _FlutterFontWeightW700 {
  _$_FlutterFontWeightW700({final String? $type})
      : $type = $type ?? 'f:1:FontWeight.w700',
        super._();

  factory _$_FlutterFontWeightW700.fromJson(Map<String, dynamic> json) =>
      _$$_FlutterFontWeightW700FromJson(json);

  @JsonKey(name: 'converter')
  final String $type;

  @override
  String toString() {
    return 'FlutterFontWeight.w700()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_FlutterFontWeightW700);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FlutterFontWeightBold value) bold,
    required TResult Function(_FlutterFontWeightNormal value) normal,
    required TResult Function(_FlutterFontWeightW100 value) w100,
    required TResult Function(_FlutterFontWeightW200 value) w200,
    required TResult Function(_FlutterFontWeightW300 value) w300,
    required TResult Function(_FlutterFontWeightW400 value) w400,
    required TResult Function(_FlutterFontWeightW500 value) w500,
    required TResult Function(_FlutterFontWeightW600 value) w600,
    required TResult Function(_FlutterFontWeightW700 value) w700,
    required TResult Function(_FlutterFontWeightW800 value) w800,
    required TResult Function(_FlutterFontWeightW900 value) w900,
  }) {
    return w700(this);
  }
}

abstract class _FlutterFontWeightW700 extends FlutterFontWeight {
  factory _FlutterFontWeightW700() = _$_FlutterFontWeightW700;
  _FlutterFontWeightW700._() : super._();

  factory _FlutterFontWeightW700.fromJson(Map<String, dynamic> json) =
      _$_FlutterFontWeightW700.fromJson;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_FlutterFontWeightW800 extends _FlutterFontWeightW800 {
  _$_FlutterFontWeightW800({final String? $type})
      : $type = $type ?? 'f:1:FontWeight.w800',
        super._();

  factory _$_FlutterFontWeightW800.fromJson(Map<String, dynamic> json) =>
      _$$_FlutterFontWeightW800FromJson(json);

  @JsonKey(name: 'converter')
  final String $type;

  @override
  String toString() {
    return 'FlutterFontWeight.w800()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_FlutterFontWeightW800);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FlutterFontWeightBold value) bold,
    required TResult Function(_FlutterFontWeightNormal value) normal,
    required TResult Function(_FlutterFontWeightW100 value) w100,
    required TResult Function(_FlutterFontWeightW200 value) w200,
    required TResult Function(_FlutterFontWeightW300 value) w300,
    required TResult Function(_FlutterFontWeightW400 value) w400,
    required TResult Function(_FlutterFontWeightW500 value) w500,
    required TResult Function(_FlutterFontWeightW600 value) w600,
    required TResult Function(_FlutterFontWeightW700 value) w700,
    required TResult Function(_FlutterFontWeightW800 value) w800,
    required TResult Function(_FlutterFontWeightW900 value) w900,
  }) {
    return w800(this);
  }
}

abstract class _FlutterFontWeightW800 extends FlutterFontWeight {
  factory _FlutterFontWeightW800() = _$_FlutterFontWeightW800;
  _FlutterFontWeightW800._() : super._();

  factory _FlutterFontWeightW800.fromJson(Map<String, dynamic> json) =
      _$_FlutterFontWeightW800.fromJson;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_FlutterFontWeightW900 extends _FlutterFontWeightW900 {
  _$_FlutterFontWeightW900({final String? $type})
      : $type = $type ?? 'f:1:FontWeight.w900',
        super._();

  factory _$_FlutterFontWeightW900.fromJson(Map<String, dynamic> json) =>
      _$$_FlutterFontWeightW900FromJson(json);

  @JsonKey(name: 'converter')
  final String $type;

  @override
  String toString() {
    return 'FlutterFontWeight.w900()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_FlutterFontWeightW900);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FlutterFontWeightBold value) bold,
    required TResult Function(_FlutterFontWeightNormal value) normal,
    required TResult Function(_FlutterFontWeightW100 value) w100,
    required TResult Function(_FlutterFontWeightW200 value) w200,
    required TResult Function(_FlutterFontWeightW300 value) w300,
    required TResult Function(_FlutterFontWeightW400 value) w400,
    required TResult Function(_FlutterFontWeightW500 value) w500,
    required TResult Function(_FlutterFontWeightW600 value) w600,
    required TResult Function(_FlutterFontWeightW700 value) w700,
    required TResult Function(_FlutterFontWeightW800 value) w800,
    required TResult Function(_FlutterFontWeightW900 value) w900,
  }) {
    return w900(this);
  }
}

abstract class _FlutterFontWeightW900 extends FlutterFontWeight {
  factory _FlutterFontWeightW900() = _$_FlutterFontWeightW900;
  _FlutterFontWeightW900._() : super._();

  factory _FlutterFontWeightW900.fromJson(Map<String, dynamic> json) =
      _$_FlutterFontWeightW900.fromJson;
}

FlutterFontStyle _$FlutterFontStyleFromJson(Map<String, dynamic> json) {
  switch (json['converter']) {
    case 'f:1:FontStyle.italic':
      return _FlutterFontStyleItalic.fromJson(json);
    case 'f:1:FontStyle.normal':
      return _FlutterFontStyleNormal.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'converter', 'FlutterFontStyle',
          'Invalid union type "${json['converter']}"!');
  }
}

/// @nodoc
mixin _$FlutterFontStyle {
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FlutterFontStyleItalic value) italic,
    required TResult Function(_FlutterFontStyleNormal value) normal,
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_FlutterFontStyleItalic extends _FlutterFontStyleItalic {
  _$_FlutterFontStyleItalic({final String? $type})
      : $type = $type ?? 'f:1:FontStyle.italic',
        super._();

  factory _$_FlutterFontStyleItalic.fromJson(Map<String, dynamic> json) =>
      _$$_FlutterFontStyleItalicFromJson(json);

  @JsonKey(name: 'converter')
  final String $type;

  @override
  String toString() {
    return 'FlutterFontStyle.italic()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FlutterFontStyleItalic);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FlutterFontStyleItalic value) italic,
    required TResult Function(_FlutterFontStyleNormal value) normal,
  }) {
    return italic(this);
  }
}

abstract class _FlutterFontStyleItalic extends FlutterFontStyle {
  factory _FlutterFontStyleItalic() = _$_FlutterFontStyleItalic;
  _FlutterFontStyleItalic._() : super._();

  factory _FlutterFontStyleItalic.fromJson(Map<String, dynamic> json) =
      _$_FlutterFontStyleItalic.fromJson;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_FlutterFontStyleNormal extends _FlutterFontStyleNormal {
  _$_FlutterFontStyleNormal({final String? $type})
      : $type = $type ?? 'f:1:FontStyle.normal',
        super._();

  factory _$_FlutterFontStyleNormal.fromJson(Map<String, dynamic> json) =>
      _$$_FlutterFontStyleNormalFromJson(json);

  @JsonKey(name: 'converter')
  final String $type;

  @override
  String toString() {
    return 'FlutterFontStyle.normal()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FlutterFontStyleNormal);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FlutterFontStyleItalic value) italic,
    required TResult Function(_FlutterFontStyleNormal value) normal,
  }) {
    return normal(this);
  }
}

abstract class _FlutterFontStyleNormal extends FlutterFontStyle {
  factory _FlutterFontStyleNormal() = _$_FlutterFontStyleNormal;
  _FlutterFontStyleNormal._() : super._();

  factory _FlutterFontStyleNormal.fromJson(Map<String, dynamic> json) =
      _$_FlutterFontStyleNormal.fromJson;
}

FlutterTextDecoration _$FlutterTextDecorationFromJson(
    Map<String, dynamic> json) {
  switch (json['converter']) {
    case 'f:1:TextDecoration.lineThrough':
      return _FlutterTextDecorationLineThrough.fromJson(json);
    case 'f:1:TextDecoration.none':
      return _FlutterTextDecorationNone.fromJson(json);
    case 'f:1:TextDecoration.overline':
      return _FlutterTextDecorationOverline.fromJson(json);
    case 'f:1:TextDecoration.underline':
      return _FlutterTextDecorationUnderline.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'converter', 'FlutterTextDecoration',
          'Invalid union type "${json['converter']}"!');
  }
}

/// @nodoc
mixin _$FlutterTextDecoration {
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FlutterTextDecorationLineThrough value)
        lineThrough,
    required TResult Function(_FlutterTextDecorationNone value) none,
    required TResult Function(_FlutterTextDecorationOverline value) overline,
    required TResult Function(_FlutterTextDecorationUnderline value) underline,
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_FlutterTextDecorationLineThrough
    extends _FlutterTextDecorationLineThrough {
  _$_FlutterTextDecorationLineThrough({final String? $type})
      : $type = $type ?? 'f:1:TextDecoration.lineThrough',
        super._();

  factory _$_FlutterTextDecorationLineThrough.fromJson(
          Map<String, dynamic> json) =>
      _$$_FlutterTextDecorationLineThroughFromJson(json);

  @JsonKey(name: 'converter')
  final String $type;

  @override
  String toString() {
    return 'FlutterTextDecoration.lineThrough()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FlutterTextDecorationLineThrough);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FlutterTextDecorationLineThrough value)
        lineThrough,
    required TResult Function(_FlutterTextDecorationNone value) none,
    required TResult Function(_FlutterTextDecorationOverline value) overline,
    required TResult Function(_FlutterTextDecorationUnderline value) underline,
  }) {
    return lineThrough(this);
  }
}

abstract class _FlutterTextDecorationLineThrough extends FlutterTextDecoration {
  factory _FlutterTextDecorationLineThrough() =
      _$_FlutterTextDecorationLineThrough;
  _FlutterTextDecorationLineThrough._() : super._();

  factory _FlutterTextDecorationLineThrough.fromJson(
      Map<String, dynamic> json) = _$_FlutterTextDecorationLineThrough.fromJson;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_FlutterTextDecorationNone extends _FlutterTextDecorationNone {
  _$_FlutterTextDecorationNone({final String? $type})
      : $type = $type ?? 'f:1:TextDecoration.none',
        super._();

  factory _$_FlutterTextDecorationNone.fromJson(Map<String, dynamic> json) =>
      _$$_FlutterTextDecorationNoneFromJson(json);

  @JsonKey(name: 'converter')
  final String $type;

  @override
  String toString() {
    return 'FlutterTextDecoration.none()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FlutterTextDecorationNone);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FlutterTextDecorationLineThrough value)
        lineThrough,
    required TResult Function(_FlutterTextDecorationNone value) none,
    required TResult Function(_FlutterTextDecorationOverline value) overline,
    required TResult Function(_FlutterTextDecorationUnderline value) underline,
  }) {
    return none(this);
  }
}

abstract class _FlutterTextDecorationNone extends FlutterTextDecoration {
  factory _FlutterTextDecorationNone() = _$_FlutterTextDecorationNone;
  _FlutterTextDecorationNone._() : super._();

  factory _FlutterTextDecorationNone.fromJson(Map<String, dynamic> json) =
      _$_FlutterTextDecorationNone.fromJson;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_FlutterTextDecorationOverline extends _FlutterTextDecorationOverline {
  _$_FlutterTextDecorationOverline({final String? $type})
      : $type = $type ?? 'f:1:TextDecoration.overline',
        super._();

  factory _$_FlutterTextDecorationOverline.fromJson(
          Map<String, dynamic> json) =>
      _$$_FlutterTextDecorationOverlineFromJson(json);

  @JsonKey(name: 'converter')
  final String $type;

  @override
  String toString() {
    return 'FlutterTextDecoration.overline()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FlutterTextDecorationOverline);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FlutterTextDecorationLineThrough value)
        lineThrough,
    required TResult Function(_FlutterTextDecorationNone value) none,
    required TResult Function(_FlutterTextDecorationOverline value) overline,
    required TResult Function(_FlutterTextDecorationUnderline value) underline,
  }) {
    return overline(this);
  }
}

abstract class _FlutterTextDecorationOverline extends FlutterTextDecoration {
  factory _FlutterTextDecorationOverline() = _$_FlutterTextDecorationOverline;
  _FlutterTextDecorationOverline._() : super._();

  factory _FlutterTextDecorationOverline.fromJson(Map<String, dynamic> json) =
      _$_FlutterTextDecorationOverline.fromJson;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_FlutterTextDecorationUnderline
    extends _FlutterTextDecorationUnderline {
  _$_FlutterTextDecorationUnderline({final String? $type})
      : $type = $type ?? 'f:1:TextDecoration.underline',
        super._();

  factory _$_FlutterTextDecorationUnderline.fromJson(
          Map<String, dynamic> json) =>
      _$$_FlutterTextDecorationUnderlineFromJson(json);

  @JsonKey(name: 'converter')
  final String $type;

  @override
  String toString() {
    return 'FlutterTextDecoration.underline()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FlutterTextDecorationUnderline);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FlutterTextDecorationLineThrough value)
        lineThrough,
    required TResult Function(_FlutterTextDecorationNone value) none,
    required TResult Function(_FlutterTextDecorationOverline value) overline,
    required TResult Function(_FlutterTextDecorationUnderline value) underline,
  }) {
    return underline(this);
  }
}

abstract class _FlutterTextDecorationUnderline extends FlutterTextDecoration {
  factory _FlutterTextDecorationUnderline() = _$_FlutterTextDecorationUnderline;
  _FlutterTextDecorationUnderline._() : super._();

  factory _FlutterTextDecorationUnderline.fromJson(Map<String, dynamic> json) =
      _$_FlutterTextDecorationUnderline.fromJson;
}

FlutterTextLeadingDistribution _$FlutterTextLeadingDistributionFromJson(
    Map<String, dynamic> json) {
  switch (json['converter']) {
    case 'f:1:TextLeadingDistribution.even':
      return _FlutterTextLeadingDistributionEven.fromJson(json);
    case 'f:1:TextLeadingDistribution.proportional':
      return _FlutterTextLeadingDistributionProportional.fromJson(json);

    default:
      throw CheckedFromJsonException(
          json,
          'converter',
          'FlutterTextLeadingDistribution',
          'Invalid union type "${json['converter']}"!');
  }
}

/// @nodoc
mixin _$FlutterTextLeadingDistribution {
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FlutterTextLeadingDistributionEven value) even,
    required TResult Function(_FlutterTextLeadingDistributionProportional value)
        proportional,
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_FlutterTextLeadingDistributionEven
    extends _FlutterTextLeadingDistributionEven {
  _$_FlutterTextLeadingDistributionEven({final String? $type})
      : $type = $type ?? 'f:1:TextLeadingDistribution.even',
        super._();

  factory _$_FlutterTextLeadingDistributionEven.fromJson(
          Map<String, dynamic> json) =>
      _$$_FlutterTextLeadingDistributionEvenFromJson(json);

  @JsonKey(name: 'converter')
  final String $type;

  @override
  String toString() {
    return 'FlutterTextLeadingDistribution.even()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FlutterTextLeadingDistributionEven);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FlutterTextLeadingDistributionEven value) even,
    required TResult Function(_FlutterTextLeadingDistributionProportional value)
        proportional,
  }) {
    return even(this);
  }
}

abstract class _FlutterTextLeadingDistributionEven
    extends FlutterTextLeadingDistribution {
  factory _FlutterTextLeadingDistributionEven() =
      _$_FlutterTextLeadingDistributionEven;
  _FlutterTextLeadingDistributionEven._() : super._();

  factory _FlutterTextLeadingDistributionEven.fromJson(
          Map<String, dynamic> json) =
      _$_FlutterTextLeadingDistributionEven.fromJson;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_FlutterTextLeadingDistributionProportional
    extends _FlutterTextLeadingDistributionProportional {
  _$_FlutterTextLeadingDistributionProportional({final String? $type})
      : $type = $type ?? 'f:1:TextLeadingDistribution.proportional',
        super._();

  factory _$_FlutterTextLeadingDistributionProportional.fromJson(
          Map<String, dynamic> json) =>
      _$$_FlutterTextLeadingDistributionProportionalFromJson(json);

  @JsonKey(name: 'converter')
  final String $type;

  @override
  String toString() {
    return 'FlutterTextLeadingDistribution.proportional()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FlutterTextLeadingDistributionProportional);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FlutterTextLeadingDistributionEven value) even,
    required TResult Function(_FlutterTextLeadingDistributionProportional value)
        proportional,
  }) {
    return proportional(this);
  }
}

abstract class _FlutterTextLeadingDistributionProportional
    extends FlutterTextLeadingDistribution {
  factory _FlutterTextLeadingDistributionProportional() =
      _$_FlutterTextLeadingDistributionProportional;
  _FlutterTextLeadingDistributionProportional._() : super._();

  factory _FlutterTextLeadingDistributionProportional.fromJson(
          Map<String, dynamic> json) =
      _$_FlutterTextLeadingDistributionProportional.fromJson;
}

FlutterLocale _$FlutterLocaleFromJson(Map<String, dynamic> json) {
  return _FlutterLocale.fromJson(json);
}

/// @nodoc
mixin _$FlutterLocale {
  String get languageCode => throw _privateConstructorUsedError;
  String? get countryCode => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_FlutterLocale value) $default,
  ) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_FlutterLocale extends _FlutterLocale {
  _$_FlutterLocale(this.languageCode, [this.countryCode]) : super._();

  factory _$_FlutterLocale.fromJson(Map<String, dynamic> json) =>
      _$$_FlutterLocaleFromJson(json);

  @override
  final String languageCode;
  @override
  final String? countryCode;

  @override
  String toString() {
    return 'FlutterLocale(languageCode: $languageCode, countryCode: $countryCode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FlutterLocale &&
            (identical(other.languageCode, languageCode) ||
                other.languageCode == languageCode) &&
            (identical(other.countryCode, countryCode) ||
                other.countryCode == countryCode));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, languageCode, countryCode);

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_FlutterLocale value) $default,
  ) {
    return $default(this);
  }
}

abstract class _FlutterLocale extends FlutterLocale {
  factory _FlutterLocale(final String languageCode,
      [final String? countryCode]) = _$_FlutterLocale;
  _FlutterLocale._() : super._();

  factory _FlutterLocale.fromJson(Map<String, dynamic> json) =
      _$_FlutterLocale.fromJson;

  @override
  String get languageCode;
  @override
  String? get countryCode;
}

FlutterFontFeature _$FlutterFontFeatureFromJson(Map<String, dynamic> json) {
  switch (json['converter']) {
    case 'f:1:FontFeature':
      return _FontFeature.fromJson(json);
    case 'f:1:FontFeature.alternative':
      return _FontFeatureAlternative.fromJson(json);
    case 'f:1:FontFeature.alternativeFractions':
      return _FontFeatureAlternativeFractions.fromJson(json);
    case 'f:1:FontFeature.caseSensitiveForms':
      return _FontFeatureCaseSenitiveForms.fromJson(json);
    case 'f:1:FontFeature.characterVariant':
      return _FontFeatureCharacterVariant.fromJson(json);
    case 'f:1:FontFeature.contextualAlternates':
      return _FontFeatureContextualAlternates.fromJson(json);
    case 'f:1:FontFeature.denominator':
      return _FontFeatureDenominator.fromJson(json);
    case 'f:1:FontFeature.disable':
      return _FontFeatureDisable.fromJson(json);
    case 'f:1:FontFeature.enable':
      return _FontFeatureEnable.fromJson(json);
    case 'f:1:FontFeature.fractions':
      return _FontFeatureFractions.fromJson(json);
    case 'f:1:FontFeature.historicalForms':
      return _FontFeatureHistoricalForms.fromJson(json);
    case 'f:1:FontFeature.historicalLigatures':
      return _FontFeatureHistoricalLigatures.fromJson(json);
    case 'f:1:FontFeature.liningFigures':
      return _FontFeatureLiningFigures.fromJson(json);
    case 'f:1:FontFeature.localeAware':
      return _FontFeatureLocaleAware.fromJson(json);
    case 'f:1:FontFeature.notationalForms':
      return _FontFeatureNotationalForms.fromJson(json);
    case 'f:1:FontFeature.numerators':
      return _FontFeatureNumerators.fromJson(json);
    case 'f:1:FontFeature.oldstyleFigures':
      return _FontFeatureOldStyleFigures.fromJson(json);
    case 'f:1:FontFeature.ordinalForms':
      return _FontFeatureOrdinalForms.fromJson(json);
    case 'f:1:FontFeature.proportionalFigures':
      return _FontFeatureProportionalFigures.fromJson(json);
    case 'f:1:FontFeature.randomize':
      return _FontFeatureRandomize.fromJson(json);
    case 'f:1:FontFeature.scientificInferiors':
      return _FontFeatureScientificInferiors.fromJson(json);
    case 'f:1:FontFeature.slashedZero':
      return _FontFeatureSlashedZero.fromJson(json);
    case 'f:1:FontFeature.stylisticAlternates':
      return _FontFeatureStylisticAlternates.fromJson(json);
    case 'f:1:FontFeature.stylisticSet':
      return _FontFeatureStylisticSet.fromJson(json);
    case 'f:1:FontFeature.subscripts':
      return _FontFeatureSubscripts.fromJson(json);
    case 'f:1:FontFeature.superscripts':
      return _FontFeatureSuperscripts.fromJson(json);
    case 'f:1:FontFeature.swash':
      return _FontFeatureSwash.fromJson(json);
    case 'f:1:FontFeature.tabularFigures':
      return _FontFeatureTabularFigures.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'converter', 'FlutterFontFeature',
          'Invalid union type "${json['converter']}"!');
  }
}

/// @nodoc
mixin _$FlutterFontFeature {
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_FontFeature value) $default, {
    required TResult Function(_FontFeatureAlternative value) alternative,
    required TResult Function(_FontFeatureAlternativeFractions value)
        alternativeFractions,
    required TResult Function(_FontFeatureCaseSenitiveForms value)
        caseSensitiveForms,
    required TResult Function(_FontFeatureCharacterVariant value)
        characterVariant,
    required TResult Function(_FontFeatureContextualAlternates value)
        contextualAlternates,
    required TResult Function(_FontFeatureDenominator value) denominator,
    required TResult Function(_FontFeatureDisable value) disable,
    required TResult Function(_FontFeatureEnable value) enable,
    required TResult Function(_FontFeatureFractions value) fractions,
    required TResult Function(_FontFeatureHistoricalForms value)
        historicalForms,
    required TResult Function(_FontFeatureHistoricalLigatures value)
        historicalLigatures,
    required TResult Function(_FontFeatureLiningFigures value) liningFigures,
    required TResult Function(_FontFeatureLocaleAware value) localeAware,
    required TResult Function(_FontFeatureNotationalForms value)
        notationalForms,
    required TResult Function(_FontFeatureNumerators value) numerators,
    required TResult Function(_FontFeatureOldStyleFigures value)
        oldstyleFigures,
    required TResult Function(_FontFeatureOrdinalForms value) ordinalForms,
    required TResult Function(_FontFeatureProportionalFigures value)
        proportionalFigures,
    required TResult Function(_FontFeatureRandomize value) randomize,
    required TResult Function(_FontFeatureScientificInferiors value)
        scientificInferiors,
    required TResult Function(_FontFeatureSlashedZero value) slashedZero,
    required TResult Function(_FontFeatureStylisticAlternates value)
        stylisticAlternates,
    required TResult Function(_FontFeatureStylisticSet value) stylisticSet,
    required TResult Function(_FontFeatureSubscripts value) subscripts,
    required TResult Function(_FontFeatureSuperscripts value) superscripts,
    required TResult Function(_FontFeatureSwash value) swash,
    required TResult Function(_FontFeatureTabularFigures value) tabularFigures,
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_FontFeature extends _FontFeature {
  _$_FontFeature(this.feature, [this.value, final String? $type])
      : $type = $type ?? 'f:1:FontFeature',
        super._();

  factory _$_FontFeature.fromJson(Map<String, dynamic> json) =>
      _$$_FontFeatureFromJson(json);

  @override
  final String feature;
  @override
  final ZacInt? value;

  @JsonKey(name: 'converter')
  final String $type;

  @override
  String toString() {
    return 'FlutterFontFeature(feature: $feature, value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FontFeature &&
            (identical(other.feature, feature) || other.feature == feature) &&
            (identical(other.value, value) || other.value == value));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, feature, value);

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_FontFeature value) $default, {
    required TResult Function(_FontFeatureAlternative value) alternative,
    required TResult Function(_FontFeatureAlternativeFractions value)
        alternativeFractions,
    required TResult Function(_FontFeatureCaseSenitiveForms value)
        caseSensitiveForms,
    required TResult Function(_FontFeatureCharacterVariant value)
        characterVariant,
    required TResult Function(_FontFeatureContextualAlternates value)
        contextualAlternates,
    required TResult Function(_FontFeatureDenominator value) denominator,
    required TResult Function(_FontFeatureDisable value) disable,
    required TResult Function(_FontFeatureEnable value) enable,
    required TResult Function(_FontFeatureFractions value) fractions,
    required TResult Function(_FontFeatureHistoricalForms value)
        historicalForms,
    required TResult Function(_FontFeatureHistoricalLigatures value)
        historicalLigatures,
    required TResult Function(_FontFeatureLiningFigures value) liningFigures,
    required TResult Function(_FontFeatureLocaleAware value) localeAware,
    required TResult Function(_FontFeatureNotationalForms value)
        notationalForms,
    required TResult Function(_FontFeatureNumerators value) numerators,
    required TResult Function(_FontFeatureOldStyleFigures value)
        oldstyleFigures,
    required TResult Function(_FontFeatureOrdinalForms value) ordinalForms,
    required TResult Function(_FontFeatureProportionalFigures value)
        proportionalFigures,
    required TResult Function(_FontFeatureRandomize value) randomize,
    required TResult Function(_FontFeatureScientificInferiors value)
        scientificInferiors,
    required TResult Function(_FontFeatureSlashedZero value) slashedZero,
    required TResult Function(_FontFeatureStylisticAlternates value)
        stylisticAlternates,
    required TResult Function(_FontFeatureStylisticSet value) stylisticSet,
    required TResult Function(_FontFeatureSubscripts value) subscripts,
    required TResult Function(_FontFeatureSuperscripts value) superscripts,
    required TResult Function(_FontFeatureSwash value) swash,
    required TResult Function(_FontFeatureTabularFigures value) tabularFigures,
  }) {
    return $default(this);
  }
}

abstract class _FontFeature extends FlutterFontFeature {
  factory _FontFeature(final String feature, [final ZacInt? value]) =
      _$_FontFeature;
  _FontFeature._() : super._();

  factory _FontFeature.fromJson(Map<String, dynamic> json) =
      _$_FontFeature.fromJson;

  String get feature;
  ZacInt? get value;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_FontFeatureAlternative extends _FontFeatureAlternative {
  _$_FontFeatureAlternative(this.value, {final String? $type})
      : $type = $type ?? 'f:1:FontFeature.alternative',
        super._();

  factory _$_FontFeatureAlternative.fromJson(Map<String, dynamic> json) =>
      _$$_FontFeatureAlternativeFromJson(json);

  @override
  final int value;

  @JsonKey(name: 'converter')
  final String $type;

  @override
  String toString() {
    return 'FlutterFontFeature.alternative(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FontFeatureAlternative &&
            (identical(other.value, value) || other.value == value));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, value);

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_FontFeature value) $default, {
    required TResult Function(_FontFeatureAlternative value) alternative,
    required TResult Function(_FontFeatureAlternativeFractions value)
        alternativeFractions,
    required TResult Function(_FontFeatureCaseSenitiveForms value)
        caseSensitiveForms,
    required TResult Function(_FontFeatureCharacterVariant value)
        characterVariant,
    required TResult Function(_FontFeatureContextualAlternates value)
        contextualAlternates,
    required TResult Function(_FontFeatureDenominator value) denominator,
    required TResult Function(_FontFeatureDisable value) disable,
    required TResult Function(_FontFeatureEnable value) enable,
    required TResult Function(_FontFeatureFractions value) fractions,
    required TResult Function(_FontFeatureHistoricalForms value)
        historicalForms,
    required TResult Function(_FontFeatureHistoricalLigatures value)
        historicalLigatures,
    required TResult Function(_FontFeatureLiningFigures value) liningFigures,
    required TResult Function(_FontFeatureLocaleAware value) localeAware,
    required TResult Function(_FontFeatureNotationalForms value)
        notationalForms,
    required TResult Function(_FontFeatureNumerators value) numerators,
    required TResult Function(_FontFeatureOldStyleFigures value)
        oldstyleFigures,
    required TResult Function(_FontFeatureOrdinalForms value) ordinalForms,
    required TResult Function(_FontFeatureProportionalFigures value)
        proportionalFigures,
    required TResult Function(_FontFeatureRandomize value) randomize,
    required TResult Function(_FontFeatureScientificInferiors value)
        scientificInferiors,
    required TResult Function(_FontFeatureSlashedZero value) slashedZero,
    required TResult Function(_FontFeatureStylisticAlternates value)
        stylisticAlternates,
    required TResult Function(_FontFeatureStylisticSet value) stylisticSet,
    required TResult Function(_FontFeatureSubscripts value) subscripts,
    required TResult Function(_FontFeatureSuperscripts value) superscripts,
    required TResult Function(_FontFeatureSwash value) swash,
    required TResult Function(_FontFeatureTabularFigures value) tabularFigures,
  }) {
    return alternative(this);
  }
}

abstract class _FontFeatureAlternative extends FlutterFontFeature {
  factory _FontFeatureAlternative(final int value) = _$_FontFeatureAlternative;
  _FontFeatureAlternative._() : super._();

  factory _FontFeatureAlternative.fromJson(Map<String, dynamic> json) =
      _$_FontFeatureAlternative.fromJson;

  int get value;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_FontFeatureAlternativeFractions
    extends _FontFeatureAlternativeFractions {
  _$_FontFeatureAlternativeFractions({final String? $type})
      : $type = $type ?? 'f:1:FontFeature.alternativeFractions',
        super._();

  factory _$_FontFeatureAlternativeFractions.fromJson(
          Map<String, dynamic> json) =>
      _$$_FontFeatureAlternativeFractionsFromJson(json);

  @JsonKey(name: 'converter')
  final String $type;

  @override
  String toString() {
    return 'FlutterFontFeature.alternativeFractions()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FontFeatureAlternativeFractions);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_FontFeature value) $default, {
    required TResult Function(_FontFeatureAlternative value) alternative,
    required TResult Function(_FontFeatureAlternativeFractions value)
        alternativeFractions,
    required TResult Function(_FontFeatureCaseSenitiveForms value)
        caseSensitiveForms,
    required TResult Function(_FontFeatureCharacterVariant value)
        characterVariant,
    required TResult Function(_FontFeatureContextualAlternates value)
        contextualAlternates,
    required TResult Function(_FontFeatureDenominator value) denominator,
    required TResult Function(_FontFeatureDisable value) disable,
    required TResult Function(_FontFeatureEnable value) enable,
    required TResult Function(_FontFeatureFractions value) fractions,
    required TResult Function(_FontFeatureHistoricalForms value)
        historicalForms,
    required TResult Function(_FontFeatureHistoricalLigatures value)
        historicalLigatures,
    required TResult Function(_FontFeatureLiningFigures value) liningFigures,
    required TResult Function(_FontFeatureLocaleAware value) localeAware,
    required TResult Function(_FontFeatureNotationalForms value)
        notationalForms,
    required TResult Function(_FontFeatureNumerators value) numerators,
    required TResult Function(_FontFeatureOldStyleFigures value)
        oldstyleFigures,
    required TResult Function(_FontFeatureOrdinalForms value) ordinalForms,
    required TResult Function(_FontFeatureProportionalFigures value)
        proportionalFigures,
    required TResult Function(_FontFeatureRandomize value) randomize,
    required TResult Function(_FontFeatureScientificInferiors value)
        scientificInferiors,
    required TResult Function(_FontFeatureSlashedZero value) slashedZero,
    required TResult Function(_FontFeatureStylisticAlternates value)
        stylisticAlternates,
    required TResult Function(_FontFeatureStylisticSet value) stylisticSet,
    required TResult Function(_FontFeatureSubscripts value) subscripts,
    required TResult Function(_FontFeatureSuperscripts value) superscripts,
    required TResult Function(_FontFeatureSwash value) swash,
    required TResult Function(_FontFeatureTabularFigures value) tabularFigures,
  }) {
    return alternativeFractions(this);
  }
}

abstract class _FontFeatureAlternativeFractions extends FlutterFontFeature {
  factory _FontFeatureAlternativeFractions() =
      _$_FontFeatureAlternativeFractions;
  _FontFeatureAlternativeFractions._() : super._();

  factory _FontFeatureAlternativeFractions.fromJson(Map<String, dynamic> json) =
      _$_FontFeatureAlternativeFractions.fromJson;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_FontFeatureCaseSenitiveForms extends _FontFeatureCaseSenitiveForms {
  _$_FontFeatureCaseSenitiveForms({final String? $type})
      : $type = $type ?? 'f:1:FontFeature.caseSensitiveForms',
        super._();

  factory _$_FontFeatureCaseSenitiveForms.fromJson(Map<String, dynamic> json) =>
      _$$_FontFeatureCaseSenitiveFormsFromJson(json);

  @JsonKey(name: 'converter')
  final String $type;

  @override
  String toString() {
    return 'FlutterFontFeature.caseSensitiveForms()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FontFeatureCaseSenitiveForms);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_FontFeature value) $default, {
    required TResult Function(_FontFeatureAlternative value) alternative,
    required TResult Function(_FontFeatureAlternativeFractions value)
        alternativeFractions,
    required TResult Function(_FontFeatureCaseSenitiveForms value)
        caseSensitiveForms,
    required TResult Function(_FontFeatureCharacterVariant value)
        characterVariant,
    required TResult Function(_FontFeatureContextualAlternates value)
        contextualAlternates,
    required TResult Function(_FontFeatureDenominator value) denominator,
    required TResult Function(_FontFeatureDisable value) disable,
    required TResult Function(_FontFeatureEnable value) enable,
    required TResult Function(_FontFeatureFractions value) fractions,
    required TResult Function(_FontFeatureHistoricalForms value)
        historicalForms,
    required TResult Function(_FontFeatureHistoricalLigatures value)
        historicalLigatures,
    required TResult Function(_FontFeatureLiningFigures value) liningFigures,
    required TResult Function(_FontFeatureLocaleAware value) localeAware,
    required TResult Function(_FontFeatureNotationalForms value)
        notationalForms,
    required TResult Function(_FontFeatureNumerators value) numerators,
    required TResult Function(_FontFeatureOldStyleFigures value)
        oldstyleFigures,
    required TResult Function(_FontFeatureOrdinalForms value) ordinalForms,
    required TResult Function(_FontFeatureProportionalFigures value)
        proportionalFigures,
    required TResult Function(_FontFeatureRandomize value) randomize,
    required TResult Function(_FontFeatureScientificInferiors value)
        scientificInferiors,
    required TResult Function(_FontFeatureSlashedZero value) slashedZero,
    required TResult Function(_FontFeatureStylisticAlternates value)
        stylisticAlternates,
    required TResult Function(_FontFeatureStylisticSet value) stylisticSet,
    required TResult Function(_FontFeatureSubscripts value) subscripts,
    required TResult Function(_FontFeatureSuperscripts value) superscripts,
    required TResult Function(_FontFeatureSwash value) swash,
    required TResult Function(_FontFeatureTabularFigures value) tabularFigures,
  }) {
    return caseSensitiveForms(this);
  }
}

abstract class _FontFeatureCaseSenitiveForms extends FlutterFontFeature {
  factory _FontFeatureCaseSenitiveForms() = _$_FontFeatureCaseSenitiveForms;
  _FontFeatureCaseSenitiveForms._() : super._();

  factory _FontFeatureCaseSenitiveForms.fromJson(Map<String, dynamic> json) =
      _$_FontFeatureCaseSenitiveForms.fromJson;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_FontFeatureCharacterVariant extends _FontFeatureCharacterVariant {
  _$_FontFeatureCharacterVariant(this.value, {final String? $type})
      : $type = $type ?? 'f:1:FontFeature.characterVariant',
        super._();

  factory _$_FontFeatureCharacterVariant.fromJson(Map<String, dynamic> json) =>
      _$$_FontFeatureCharacterVariantFromJson(json);

  @override
  final int value;

  @JsonKey(name: 'converter')
  final String $type;

  @override
  String toString() {
    return 'FlutterFontFeature.characterVariant(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FontFeatureCharacterVariant &&
            (identical(other.value, value) || other.value == value));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, value);

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_FontFeature value) $default, {
    required TResult Function(_FontFeatureAlternative value) alternative,
    required TResult Function(_FontFeatureAlternativeFractions value)
        alternativeFractions,
    required TResult Function(_FontFeatureCaseSenitiveForms value)
        caseSensitiveForms,
    required TResult Function(_FontFeatureCharacterVariant value)
        characterVariant,
    required TResult Function(_FontFeatureContextualAlternates value)
        contextualAlternates,
    required TResult Function(_FontFeatureDenominator value) denominator,
    required TResult Function(_FontFeatureDisable value) disable,
    required TResult Function(_FontFeatureEnable value) enable,
    required TResult Function(_FontFeatureFractions value) fractions,
    required TResult Function(_FontFeatureHistoricalForms value)
        historicalForms,
    required TResult Function(_FontFeatureHistoricalLigatures value)
        historicalLigatures,
    required TResult Function(_FontFeatureLiningFigures value) liningFigures,
    required TResult Function(_FontFeatureLocaleAware value) localeAware,
    required TResult Function(_FontFeatureNotationalForms value)
        notationalForms,
    required TResult Function(_FontFeatureNumerators value) numerators,
    required TResult Function(_FontFeatureOldStyleFigures value)
        oldstyleFigures,
    required TResult Function(_FontFeatureOrdinalForms value) ordinalForms,
    required TResult Function(_FontFeatureProportionalFigures value)
        proportionalFigures,
    required TResult Function(_FontFeatureRandomize value) randomize,
    required TResult Function(_FontFeatureScientificInferiors value)
        scientificInferiors,
    required TResult Function(_FontFeatureSlashedZero value) slashedZero,
    required TResult Function(_FontFeatureStylisticAlternates value)
        stylisticAlternates,
    required TResult Function(_FontFeatureStylisticSet value) stylisticSet,
    required TResult Function(_FontFeatureSubscripts value) subscripts,
    required TResult Function(_FontFeatureSuperscripts value) superscripts,
    required TResult Function(_FontFeatureSwash value) swash,
    required TResult Function(_FontFeatureTabularFigures value) tabularFigures,
  }) {
    return characterVariant(this);
  }
}

abstract class _FontFeatureCharacterVariant extends FlutterFontFeature {
  factory _FontFeatureCharacterVariant(final int value) =
      _$_FontFeatureCharacterVariant;
  _FontFeatureCharacterVariant._() : super._();

  factory _FontFeatureCharacterVariant.fromJson(Map<String, dynamic> json) =
      _$_FontFeatureCharacterVariant.fromJson;

  int get value;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_FontFeatureContextualAlternates
    extends _FontFeatureContextualAlternates {
  _$_FontFeatureContextualAlternates({final String? $type})
      : $type = $type ?? 'f:1:FontFeature.contextualAlternates',
        super._();

  factory _$_FontFeatureContextualAlternates.fromJson(
          Map<String, dynamic> json) =>
      _$$_FontFeatureContextualAlternatesFromJson(json);

  @JsonKey(name: 'converter')
  final String $type;

  @override
  String toString() {
    return 'FlutterFontFeature.contextualAlternates()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FontFeatureContextualAlternates);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_FontFeature value) $default, {
    required TResult Function(_FontFeatureAlternative value) alternative,
    required TResult Function(_FontFeatureAlternativeFractions value)
        alternativeFractions,
    required TResult Function(_FontFeatureCaseSenitiveForms value)
        caseSensitiveForms,
    required TResult Function(_FontFeatureCharacterVariant value)
        characterVariant,
    required TResult Function(_FontFeatureContextualAlternates value)
        contextualAlternates,
    required TResult Function(_FontFeatureDenominator value) denominator,
    required TResult Function(_FontFeatureDisable value) disable,
    required TResult Function(_FontFeatureEnable value) enable,
    required TResult Function(_FontFeatureFractions value) fractions,
    required TResult Function(_FontFeatureHistoricalForms value)
        historicalForms,
    required TResult Function(_FontFeatureHistoricalLigatures value)
        historicalLigatures,
    required TResult Function(_FontFeatureLiningFigures value) liningFigures,
    required TResult Function(_FontFeatureLocaleAware value) localeAware,
    required TResult Function(_FontFeatureNotationalForms value)
        notationalForms,
    required TResult Function(_FontFeatureNumerators value) numerators,
    required TResult Function(_FontFeatureOldStyleFigures value)
        oldstyleFigures,
    required TResult Function(_FontFeatureOrdinalForms value) ordinalForms,
    required TResult Function(_FontFeatureProportionalFigures value)
        proportionalFigures,
    required TResult Function(_FontFeatureRandomize value) randomize,
    required TResult Function(_FontFeatureScientificInferiors value)
        scientificInferiors,
    required TResult Function(_FontFeatureSlashedZero value) slashedZero,
    required TResult Function(_FontFeatureStylisticAlternates value)
        stylisticAlternates,
    required TResult Function(_FontFeatureStylisticSet value) stylisticSet,
    required TResult Function(_FontFeatureSubscripts value) subscripts,
    required TResult Function(_FontFeatureSuperscripts value) superscripts,
    required TResult Function(_FontFeatureSwash value) swash,
    required TResult Function(_FontFeatureTabularFigures value) tabularFigures,
  }) {
    return contextualAlternates(this);
  }
}

abstract class _FontFeatureContextualAlternates extends FlutterFontFeature {
  factory _FontFeatureContextualAlternates() =
      _$_FontFeatureContextualAlternates;
  _FontFeatureContextualAlternates._() : super._();

  factory _FontFeatureContextualAlternates.fromJson(Map<String, dynamic> json) =
      _$_FontFeatureContextualAlternates.fromJson;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_FontFeatureDenominator extends _FontFeatureDenominator {
  _$_FontFeatureDenominator({final String? $type})
      : $type = $type ?? 'f:1:FontFeature.denominator',
        super._();

  factory _$_FontFeatureDenominator.fromJson(Map<String, dynamic> json) =>
      _$$_FontFeatureDenominatorFromJson(json);

  @JsonKey(name: 'converter')
  final String $type;

  @override
  String toString() {
    return 'FlutterFontFeature.denominator()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FontFeatureDenominator);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_FontFeature value) $default, {
    required TResult Function(_FontFeatureAlternative value) alternative,
    required TResult Function(_FontFeatureAlternativeFractions value)
        alternativeFractions,
    required TResult Function(_FontFeatureCaseSenitiveForms value)
        caseSensitiveForms,
    required TResult Function(_FontFeatureCharacterVariant value)
        characterVariant,
    required TResult Function(_FontFeatureContextualAlternates value)
        contextualAlternates,
    required TResult Function(_FontFeatureDenominator value) denominator,
    required TResult Function(_FontFeatureDisable value) disable,
    required TResult Function(_FontFeatureEnable value) enable,
    required TResult Function(_FontFeatureFractions value) fractions,
    required TResult Function(_FontFeatureHistoricalForms value)
        historicalForms,
    required TResult Function(_FontFeatureHistoricalLigatures value)
        historicalLigatures,
    required TResult Function(_FontFeatureLiningFigures value) liningFigures,
    required TResult Function(_FontFeatureLocaleAware value) localeAware,
    required TResult Function(_FontFeatureNotationalForms value)
        notationalForms,
    required TResult Function(_FontFeatureNumerators value) numerators,
    required TResult Function(_FontFeatureOldStyleFigures value)
        oldstyleFigures,
    required TResult Function(_FontFeatureOrdinalForms value) ordinalForms,
    required TResult Function(_FontFeatureProportionalFigures value)
        proportionalFigures,
    required TResult Function(_FontFeatureRandomize value) randomize,
    required TResult Function(_FontFeatureScientificInferiors value)
        scientificInferiors,
    required TResult Function(_FontFeatureSlashedZero value) slashedZero,
    required TResult Function(_FontFeatureStylisticAlternates value)
        stylisticAlternates,
    required TResult Function(_FontFeatureStylisticSet value) stylisticSet,
    required TResult Function(_FontFeatureSubscripts value) subscripts,
    required TResult Function(_FontFeatureSuperscripts value) superscripts,
    required TResult Function(_FontFeatureSwash value) swash,
    required TResult Function(_FontFeatureTabularFigures value) tabularFigures,
  }) {
    return denominator(this);
  }
}

abstract class _FontFeatureDenominator extends FlutterFontFeature {
  factory _FontFeatureDenominator() = _$_FontFeatureDenominator;
  _FontFeatureDenominator._() : super._();

  factory _FontFeatureDenominator.fromJson(Map<String, dynamic> json) =
      _$_FontFeatureDenominator.fromJson;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_FontFeatureDisable extends _FontFeatureDisable {
  _$_FontFeatureDisable(this.feature, {final String? $type})
      : $type = $type ?? 'f:1:FontFeature.disable',
        super._();

  factory _$_FontFeatureDisable.fromJson(Map<String, dynamic> json) =>
      _$$_FontFeatureDisableFromJson(json);

  @override
  final String feature;

  @JsonKey(name: 'converter')
  final String $type;

  @override
  String toString() {
    return 'FlutterFontFeature.disable(feature: $feature)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FontFeatureDisable &&
            (identical(other.feature, feature) || other.feature == feature));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, feature);

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_FontFeature value) $default, {
    required TResult Function(_FontFeatureAlternative value) alternative,
    required TResult Function(_FontFeatureAlternativeFractions value)
        alternativeFractions,
    required TResult Function(_FontFeatureCaseSenitiveForms value)
        caseSensitiveForms,
    required TResult Function(_FontFeatureCharacterVariant value)
        characterVariant,
    required TResult Function(_FontFeatureContextualAlternates value)
        contextualAlternates,
    required TResult Function(_FontFeatureDenominator value) denominator,
    required TResult Function(_FontFeatureDisable value) disable,
    required TResult Function(_FontFeatureEnable value) enable,
    required TResult Function(_FontFeatureFractions value) fractions,
    required TResult Function(_FontFeatureHistoricalForms value)
        historicalForms,
    required TResult Function(_FontFeatureHistoricalLigatures value)
        historicalLigatures,
    required TResult Function(_FontFeatureLiningFigures value) liningFigures,
    required TResult Function(_FontFeatureLocaleAware value) localeAware,
    required TResult Function(_FontFeatureNotationalForms value)
        notationalForms,
    required TResult Function(_FontFeatureNumerators value) numerators,
    required TResult Function(_FontFeatureOldStyleFigures value)
        oldstyleFigures,
    required TResult Function(_FontFeatureOrdinalForms value) ordinalForms,
    required TResult Function(_FontFeatureProportionalFigures value)
        proportionalFigures,
    required TResult Function(_FontFeatureRandomize value) randomize,
    required TResult Function(_FontFeatureScientificInferiors value)
        scientificInferiors,
    required TResult Function(_FontFeatureSlashedZero value) slashedZero,
    required TResult Function(_FontFeatureStylisticAlternates value)
        stylisticAlternates,
    required TResult Function(_FontFeatureStylisticSet value) stylisticSet,
    required TResult Function(_FontFeatureSubscripts value) subscripts,
    required TResult Function(_FontFeatureSuperscripts value) superscripts,
    required TResult Function(_FontFeatureSwash value) swash,
    required TResult Function(_FontFeatureTabularFigures value) tabularFigures,
  }) {
    return disable(this);
  }
}

abstract class _FontFeatureDisable extends FlutterFontFeature {
  factory _FontFeatureDisable(final String feature) = _$_FontFeatureDisable;
  _FontFeatureDisable._() : super._();

  factory _FontFeatureDisable.fromJson(Map<String, dynamic> json) =
      _$_FontFeatureDisable.fromJson;

  String get feature;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_FontFeatureEnable extends _FontFeatureEnable {
  _$_FontFeatureEnable(this.feature, {final String? $type})
      : $type = $type ?? 'f:1:FontFeature.enable',
        super._();

  factory _$_FontFeatureEnable.fromJson(Map<String, dynamic> json) =>
      _$$_FontFeatureEnableFromJson(json);

  @override
  final String feature;

  @JsonKey(name: 'converter')
  final String $type;

  @override
  String toString() {
    return 'FlutterFontFeature.enable(feature: $feature)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FontFeatureEnable &&
            (identical(other.feature, feature) || other.feature == feature));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, feature);

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_FontFeature value) $default, {
    required TResult Function(_FontFeatureAlternative value) alternative,
    required TResult Function(_FontFeatureAlternativeFractions value)
        alternativeFractions,
    required TResult Function(_FontFeatureCaseSenitiveForms value)
        caseSensitiveForms,
    required TResult Function(_FontFeatureCharacterVariant value)
        characterVariant,
    required TResult Function(_FontFeatureContextualAlternates value)
        contextualAlternates,
    required TResult Function(_FontFeatureDenominator value) denominator,
    required TResult Function(_FontFeatureDisable value) disable,
    required TResult Function(_FontFeatureEnable value) enable,
    required TResult Function(_FontFeatureFractions value) fractions,
    required TResult Function(_FontFeatureHistoricalForms value)
        historicalForms,
    required TResult Function(_FontFeatureHistoricalLigatures value)
        historicalLigatures,
    required TResult Function(_FontFeatureLiningFigures value) liningFigures,
    required TResult Function(_FontFeatureLocaleAware value) localeAware,
    required TResult Function(_FontFeatureNotationalForms value)
        notationalForms,
    required TResult Function(_FontFeatureNumerators value) numerators,
    required TResult Function(_FontFeatureOldStyleFigures value)
        oldstyleFigures,
    required TResult Function(_FontFeatureOrdinalForms value) ordinalForms,
    required TResult Function(_FontFeatureProportionalFigures value)
        proportionalFigures,
    required TResult Function(_FontFeatureRandomize value) randomize,
    required TResult Function(_FontFeatureScientificInferiors value)
        scientificInferiors,
    required TResult Function(_FontFeatureSlashedZero value) slashedZero,
    required TResult Function(_FontFeatureStylisticAlternates value)
        stylisticAlternates,
    required TResult Function(_FontFeatureStylisticSet value) stylisticSet,
    required TResult Function(_FontFeatureSubscripts value) subscripts,
    required TResult Function(_FontFeatureSuperscripts value) superscripts,
    required TResult Function(_FontFeatureSwash value) swash,
    required TResult Function(_FontFeatureTabularFigures value) tabularFigures,
  }) {
    return enable(this);
  }
}

abstract class _FontFeatureEnable extends FlutterFontFeature {
  factory _FontFeatureEnable(final String feature) = _$_FontFeatureEnable;
  _FontFeatureEnable._() : super._();

  factory _FontFeatureEnable.fromJson(Map<String, dynamic> json) =
      _$_FontFeatureEnable.fromJson;

  String get feature;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_FontFeatureFractions extends _FontFeatureFractions {
  _$_FontFeatureFractions({final String? $type})
      : $type = $type ?? 'f:1:FontFeature.fractions',
        super._();

  factory _$_FontFeatureFractions.fromJson(Map<String, dynamic> json) =>
      _$$_FontFeatureFractionsFromJson(json);

  @JsonKey(name: 'converter')
  final String $type;

  @override
  String toString() {
    return 'FlutterFontFeature.fractions()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_FontFeatureFractions);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_FontFeature value) $default, {
    required TResult Function(_FontFeatureAlternative value) alternative,
    required TResult Function(_FontFeatureAlternativeFractions value)
        alternativeFractions,
    required TResult Function(_FontFeatureCaseSenitiveForms value)
        caseSensitiveForms,
    required TResult Function(_FontFeatureCharacterVariant value)
        characterVariant,
    required TResult Function(_FontFeatureContextualAlternates value)
        contextualAlternates,
    required TResult Function(_FontFeatureDenominator value) denominator,
    required TResult Function(_FontFeatureDisable value) disable,
    required TResult Function(_FontFeatureEnable value) enable,
    required TResult Function(_FontFeatureFractions value) fractions,
    required TResult Function(_FontFeatureHistoricalForms value)
        historicalForms,
    required TResult Function(_FontFeatureHistoricalLigatures value)
        historicalLigatures,
    required TResult Function(_FontFeatureLiningFigures value) liningFigures,
    required TResult Function(_FontFeatureLocaleAware value) localeAware,
    required TResult Function(_FontFeatureNotationalForms value)
        notationalForms,
    required TResult Function(_FontFeatureNumerators value) numerators,
    required TResult Function(_FontFeatureOldStyleFigures value)
        oldstyleFigures,
    required TResult Function(_FontFeatureOrdinalForms value) ordinalForms,
    required TResult Function(_FontFeatureProportionalFigures value)
        proportionalFigures,
    required TResult Function(_FontFeatureRandomize value) randomize,
    required TResult Function(_FontFeatureScientificInferiors value)
        scientificInferiors,
    required TResult Function(_FontFeatureSlashedZero value) slashedZero,
    required TResult Function(_FontFeatureStylisticAlternates value)
        stylisticAlternates,
    required TResult Function(_FontFeatureStylisticSet value) stylisticSet,
    required TResult Function(_FontFeatureSubscripts value) subscripts,
    required TResult Function(_FontFeatureSuperscripts value) superscripts,
    required TResult Function(_FontFeatureSwash value) swash,
    required TResult Function(_FontFeatureTabularFigures value) tabularFigures,
  }) {
    return fractions(this);
  }
}

abstract class _FontFeatureFractions extends FlutterFontFeature {
  factory _FontFeatureFractions() = _$_FontFeatureFractions;
  _FontFeatureFractions._() : super._();

  factory _FontFeatureFractions.fromJson(Map<String, dynamic> json) =
      _$_FontFeatureFractions.fromJson;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_FontFeatureHistoricalForms extends _FontFeatureHistoricalForms {
  _$_FontFeatureHistoricalForms({final String? $type})
      : $type = $type ?? 'f:1:FontFeature.historicalForms',
        super._();

  factory _$_FontFeatureHistoricalForms.fromJson(Map<String, dynamic> json) =>
      _$$_FontFeatureHistoricalFormsFromJson(json);

  @JsonKey(name: 'converter')
  final String $type;

  @override
  String toString() {
    return 'FlutterFontFeature.historicalForms()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FontFeatureHistoricalForms);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_FontFeature value) $default, {
    required TResult Function(_FontFeatureAlternative value) alternative,
    required TResult Function(_FontFeatureAlternativeFractions value)
        alternativeFractions,
    required TResult Function(_FontFeatureCaseSenitiveForms value)
        caseSensitiveForms,
    required TResult Function(_FontFeatureCharacterVariant value)
        characterVariant,
    required TResult Function(_FontFeatureContextualAlternates value)
        contextualAlternates,
    required TResult Function(_FontFeatureDenominator value) denominator,
    required TResult Function(_FontFeatureDisable value) disable,
    required TResult Function(_FontFeatureEnable value) enable,
    required TResult Function(_FontFeatureFractions value) fractions,
    required TResult Function(_FontFeatureHistoricalForms value)
        historicalForms,
    required TResult Function(_FontFeatureHistoricalLigatures value)
        historicalLigatures,
    required TResult Function(_FontFeatureLiningFigures value) liningFigures,
    required TResult Function(_FontFeatureLocaleAware value) localeAware,
    required TResult Function(_FontFeatureNotationalForms value)
        notationalForms,
    required TResult Function(_FontFeatureNumerators value) numerators,
    required TResult Function(_FontFeatureOldStyleFigures value)
        oldstyleFigures,
    required TResult Function(_FontFeatureOrdinalForms value) ordinalForms,
    required TResult Function(_FontFeatureProportionalFigures value)
        proportionalFigures,
    required TResult Function(_FontFeatureRandomize value) randomize,
    required TResult Function(_FontFeatureScientificInferiors value)
        scientificInferiors,
    required TResult Function(_FontFeatureSlashedZero value) slashedZero,
    required TResult Function(_FontFeatureStylisticAlternates value)
        stylisticAlternates,
    required TResult Function(_FontFeatureStylisticSet value) stylisticSet,
    required TResult Function(_FontFeatureSubscripts value) subscripts,
    required TResult Function(_FontFeatureSuperscripts value) superscripts,
    required TResult Function(_FontFeatureSwash value) swash,
    required TResult Function(_FontFeatureTabularFigures value) tabularFigures,
  }) {
    return historicalForms(this);
  }
}

abstract class _FontFeatureHistoricalForms extends FlutterFontFeature {
  factory _FontFeatureHistoricalForms() = _$_FontFeatureHistoricalForms;
  _FontFeatureHistoricalForms._() : super._();

  factory _FontFeatureHistoricalForms.fromJson(Map<String, dynamic> json) =
      _$_FontFeatureHistoricalForms.fromJson;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_FontFeatureHistoricalLigatures
    extends _FontFeatureHistoricalLigatures {
  _$_FontFeatureHistoricalLigatures({final String? $type})
      : $type = $type ?? 'f:1:FontFeature.historicalLigatures',
        super._();

  factory _$_FontFeatureHistoricalLigatures.fromJson(
          Map<String, dynamic> json) =>
      _$$_FontFeatureHistoricalLigaturesFromJson(json);

  @JsonKey(name: 'converter')
  final String $type;

  @override
  String toString() {
    return 'FlutterFontFeature.historicalLigatures()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FontFeatureHistoricalLigatures);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_FontFeature value) $default, {
    required TResult Function(_FontFeatureAlternative value) alternative,
    required TResult Function(_FontFeatureAlternativeFractions value)
        alternativeFractions,
    required TResult Function(_FontFeatureCaseSenitiveForms value)
        caseSensitiveForms,
    required TResult Function(_FontFeatureCharacterVariant value)
        characterVariant,
    required TResult Function(_FontFeatureContextualAlternates value)
        contextualAlternates,
    required TResult Function(_FontFeatureDenominator value) denominator,
    required TResult Function(_FontFeatureDisable value) disable,
    required TResult Function(_FontFeatureEnable value) enable,
    required TResult Function(_FontFeatureFractions value) fractions,
    required TResult Function(_FontFeatureHistoricalForms value)
        historicalForms,
    required TResult Function(_FontFeatureHistoricalLigatures value)
        historicalLigatures,
    required TResult Function(_FontFeatureLiningFigures value) liningFigures,
    required TResult Function(_FontFeatureLocaleAware value) localeAware,
    required TResult Function(_FontFeatureNotationalForms value)
        notationalForms,
    required TResult Function(_FontFeatureNumerators value) numerators,
    required TResult Function(_FontFeatureOldStyleFigures value)
        oldstyleFigures,
    required TResult Function(_FontFeatureOrdinalForms value) ordinalForms,
    required TResult Function(_FontFeatureProportionalFigures value)
        proportionalFigures,
    required TResult Function(_FontFeatureRandomize value) randomize,
    required TResult Function(_FontFeatureScientificInferiors value)
        scientificInferiors,
    required TResult Function(_FontFeatureSlashedZero value) slashedZero,
    required TResult Function(_FontFeatureStylisticAlternates value)
        stylisticAlternates,
    required TResult Function(_FontFeatureStylisticSet value) stylisticSet,
    required TResult Function(_FontFeatureSubscripts value) subscripts,
    required TResult Function(_FontFeatureSuperscripts value) superscripts,
    required TResult Function(_FontFeatureSwash value) swash,
    required TResult Function(_FontFeatureTabularFigures value) tabularFigures,
  }) {
    return historicalLigatures(this);
  }
}

abstract class _FontFeatureHistoricalLigatures extends FlutterFontFeature {
  factory _FontFeatureHistoricalLigatures() = _$_FontFeatureHistoricalLigatures;
  _FontFeatureHistoricalLigatures._() : super._();

  factory _FontFeatureHistoricalLigatures.fromJson(Map<String, dynamic> json) =
      _$_FontFeatureHistoricalLigatures.fromJson;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_FontFeatureLiningFigures extends _FontFeatureLiningFigures {
  _$_FontFeatureLiningFigures({final String? $type})
      : $type = $type ?? 'f:1:FontFeature.liningFigures',
        super._();

  factory _$_FontFeatureLiningFigures.fromJson(Map<String, dynamic> json) =>
      _$$_FontFeatureLiningFiguresFromJson(json);

  @JsonKey(name: 'converter')
  final String $type;

  @override
  String toString() {
    return 'FlutterFontFeature.liningFigures()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FontFeatureLiningFigures);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_FontFeature value) $default, {
    required TResult Function(_FontFeatureAlternative value) alternative,
    required TResult Function(_FontFeatureAlternativeFractions value)
        alternativeFractions,
    required TResult Function(_FontFeatureCaseSenitiveForms value)
        caseSensitiveForms,
    required TResult Function(_FontFeatureCharacterVariant value)
        characterVariant,
    required TResult Function(_FontFeatureContextualAlternates value)
        contextualAlternates,
    required TResult Function(_FontFeatureDenominator value) denominator,
    required TResult Function(_FontFeatureDisable value) disable,
    required TResult Function(_FontFeatureEnable value) enable,
    required TResult Function(_FontFeatureFractions value) fractions,
    required TResult Function(_FontFeatureHistoricalForms value)
        historicalForms,
    required TResult Function(_FontFeatureHistoricalLigatures value)
        historicalLigatures,
    required TResult Function(_FontFeatureLiningFigures value) liningFigures,
    required TResult Function(_FontFeatureLocaleAware value) localeAware,
    required TResult Function(_FontFeatureNotationalForms value)
        notationalForms,
    required TResult Function(_FontFeatureNumerators value) numerators,
    required TResult Function(_FontFeatureOldStyleFigures value)
        oldstyleFigures,
    required TResult Function(_FontFeatureOrdinalForms value) ordinalForms,
    required TResult Function(_FontFeatureProportionalFigures value)
        proportionalFigures,
    required TResult Function(_FontFeatureRandomize value) randomize,
    required TResult Function(_FontFeatureScientificInferiors value)
        scientificInferiors,
    required TResult Function(_FontFeatureSlashedZero value) slashedZero,
    required TResult Function(_FontFeatureStylisticAlternates value)
        stylisticAlternates,
    required TResult Function(_FontFeatureStylisticSet value) stylisticSet,
    required TResult Function(_FontFeatureSubscripts value) subscripts,
    required TResult Function(_FontFeatureSuperscripts value) superscripts,
    required TResult Function(_FontFeatureSwash value) swash,
    required TResult Function(_FontFeatureTabularFigures value) tabularFigures,
  }) {
    return liningFigures(this);
  }
}

abstract class _FontFeatureLiningFigures extends FlutterFontFeature {
  factory _FontFeatureLiningFigures() = _$_FontFeatureLiningFigures;
  _FontFeatureLiningFigures._() : super._();

  factory _FontFeatureLiningFigures.fromJson(Map<String, dynamic> json) =
      _$_FontFeatureLiningFigures.fromJson;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_FontFeatureLocaleAware extends _FontFeatureLocaleAware {
  _$_FontFeatureLocaleAware({this.enable, final String? $type})
      : $type = $type ?? 'f:1:FontFeature.localeAware',
        super._();

  factory _$_FontFeatureLocaleAware.fromJson(Map<String, dynamic> json) =>
      _$$_FontFeatureLocaleAwareFromJson(json);

  @override
  final ZacValue<bool>? enable;

  @JsonKey(name: 'converter')
  final String $type;

  @override
  String toString() {
    return 'FlutterFontFeature.localeAware(enable: $enable)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FontFeatureLocaleAware &&
            (identical(other.enable, enable) || other.enable == enable));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, enable);

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_FontFeature value) $default, {
    required TResult Function(_FontFeatureAlternative value) alternative,
    required TResult Function(_FontFeatureAlternativeFractions value)
        alternativeFractions,
    required TResult Function(_FontFeatureCaseSenitiveForms value)
        caseSensitiveForms,
    required TResult Function(_FontFeatureCharacterVariant value)
        characterVariant,
    required TResult Function(_FontFeatureContextualAlternates value)
        contextualAlternates,
    required TResult Function(_FontFeatureDenominator value) denominator,
    required TResult Function(_FontFeatureDisable value) disable,
    required TResult Function(_FontFeatureEnable value) enable,
    required TResult Function(_FontFeatureFractions value) fractions,
    required TResult Function(_FontFeatureHistoricalForms value)
        historicalForms,
    required TResult Function(_FontFeatureHistoricalLigatures value)
        historicalLigatures,
    required TResult Function(_FontFeatureLiningFigures value) liningFigures,
    required TResult Function(_FontFeatureLocaleAware value) localeAware,
    required TResult Function(_FontFeatureNotationalForms value)
        notationalForms,
    required TResult Function(_FontFeatureNumerators value) numerators,
    required TResult Function(_FontFeatureOldStyleFigures value)
        oldstyleFigures,
    required TResult Function(_FontFeatureOrdinalForms value) ordinalForms,
    required TResult Function(_FontFeatureProportionalFigures value)
        proportionalFigures,
    required TResult Function(_FontFeatureRandomize value) randomize,
    required TResult Function(_FontFeatureScientificInferiors value)
        scientificInferiors,
    required TResult Function(_FontFeatureSlashedZero value) slashedZero,
    required TResult Function(_FontFeatureStylisticAlternates value)
        stylisticAlternates,
    required TResult Function(_FontFeatureStylisticSet value) stylisticSet,
    required TResult Function(_FontFeatureSubscripts value) subscripts,
    required TResult Function(_FontFeatureSuperscripts value) superscripts,
    required TResult Function(_FontFeatureSwash value) swash,
    required TResult Function(_FontFeatureTabularFigures value) tabularFigures,
  }) {
    return localeAware(this);
  }
}

abstract class _FontFeatureLocaleAware extends FlutterFontFeature {
  factory _FontFeatureLocaleAware({final ZacValue<bool>? enable}) =
      _$_FontFeatureLocaleAware;
  _FontFeatureLocaleAware._() : super._();

  factory _FontFeatureLocaleAware.fromJson(Map<String, dynamic> json) =
      _$_FontFeatureLocaleAware.fromJson;

  ZacValue<bool>? get enable;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_FontFeatureNotationalForms extends _FontFeatureNotationalForms {
  _$_FontFeatureNotationalForms([this.value, final String? $type])
      : $type = $type ?? 'f:1:FontFeature.notationalForms',
        super._();

  factory _$_FontFeatureNotationalForms.fromJson(Map<String, dynamic> json) =>
      _$$_FontFeatureNotationalFormsFromJson(json);

  @override
  final ZacInt? value;

  @JsonKey(name: 'converter')
  final String $type;

  @override
  String toString() {
    return 'FlutterFontFeature.notationalForms(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FontFeatureNotationalForms &&
            (identical(other.value, value) || other.value == value));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, value);

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_FontFeature value) $default, {
    required TResult Function(_FontFeatureAlternative value) alternative,
    required TResult Function(_FontFeatureAlternativeFractions value)
        alternativeFractions,
    required TResult Function(_FontFeatureCaseSenitiveForms value)
        caseSensitiveForms,
    required TResult Function(_FontFeatureCharacterVariant value)
        characterVariant,
    required TResult Function(_FontFeatureContextualAlternates value)
        contextualAlternates,
    required TResult Function(_FontFeatureDenominator value) denominator,
    required TResult Function(_FontFeatureDisable value) disable,
    required TResult Function(_FontFeatureEnable value) enable,
    required TResult Function(_FontFeatureFractions value) fractions,
    required TResult Function(_FontFeatureHistoricalForms value)
        historicalForms,
    required TResult Function(_FontFeatureHistoricalLigatures value)
        historicalLigatures,
    required TResult Function(_FontFeatureLiningFigures value) liningFigures,
    required TResult Function(_FontFeatureLocaleAware value) localeAware,
    required TResult Function(_FontFeatureNotationalForms value)
        notationalForms,
    required TResult Function(_FontFeatureNumerators value) numerators,
    required TResult Function(_FontFeatureOldStyleFigures value)
        oldstyleFigures,
    required TResult Function(_FontFeatureOrdinalForms value) ordinalForms,
    required TResult Function(_FontFeatureProportionalFigures value)
        proportionalFigures,
    required TResult Function(_FontFeatureRandomize value) randomize,
    required TResult Function(_FontFeatureScientificInferiors value)
        scientificInferiors,
    required TResult Function(_FontFeatureSlashedZero value) slashedZero,
    required TResult Function(_FontFeatureStylisticAlternates value)
        stylisticAlternates,
    required TResult Function(_FontFeatureStylisticSet value) stylisticSet,
    required TResult Function(_FontFeatureSubscripts value) subscripts,
    required TResult Function(_FontFeatureSuperscripts value) superscripts,
    required TResult Function(_FontFeatureSwash value) swash,
    required TResult Function(_FontFeatureTabularFigures value) tabularFigures,
  }) {
    return notationalForms(this);
  }
}

abstract class _FontFeatureNotationalForms extends FlutterFontFeature {
  factory _FontFeatureNotationalForms([final ZacInt? value]) =
      _$_FontFeatureNotationalForms;
  _FontFeatureNotationalForms._() : super._();

  factory _FontFeatureNotationalForms.fromJson(Map<String, dynamic> json) =
      _$_FontFeatureNotationalForms.fromJson;

  ZacInt? get value;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_FontFeatureNumerators extends _FontFeatureNumerators {
  _$_FontFeatureNumerators({final String? $type})
      : $type = $type ?? 'f:1:FontFeature.numerators',
        super._();

  factory _$_FontFeatureNumerators.fromJson(Map<String, dynamic> json) =>
      _$$_FontFeatureNumeratorsFromJson(json);

  @JsonKey(name: 'converter')
  final String $type;

  @override
  String toString() {
    return 'FlutterFontFeature.numerators()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_FontFeatureNumerators);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_FontFeature value) $default, {
    required TResult Function(_FontFeatureAlternative value) alternative,
    required TResult Function(_FontFeatureAlternativeFractions value)
        alternativeFractions,
    required TResult Function(_FontFeatureCaseSenitiveForms value)
        caseSensitiveForms,
    required TResult Function(_FontFeatureCharacterVariant value)
        characterVariant,
    required TResult Function(_FontFeatureContextualAlternates value)
        contextualAlternates,
    required TResult Function(_FontFeatureDenominator value) denominator,
    required TResult Function(_FontFeatureDisable value) disable,
    required TResult Function(_FontFeatureEnable value) enable,
    required TResult Function(_FontFeatureFractions value) fractions,
    required TResult Function(_FontFeatureHistoricalForms value)
        historicalForms,
    required TResult Function(_FontFeatureHistoricalLigatures value)
        historicalLigatures,
    required TResult Function(_FontFeatureLiningFigures value) liningFigures,
    required TResult Function(_FontFeatureLocaleAware value) localeAware,
    required TResult Function(_FontFeatureNotationalForms value)
        notationalForms,
    required TResult Function(_FontFeatureNumerators value) numerators,
    required TResult Function(_FontFeatureOldStyleFigures value)
        oldstyleFigures,
    required TResult Function(_FontFeatureOrdinalForms value) ordinalForms,
    required TResult Function(_FontFeatureProportionalFigures value)
        proportionalFigures,
    required TResult Function(_FontFeatureRandomize value) randomize,
    required TResult Function(_FontFeatureScientificInferiors value)
        scientificInferiors,
    required TResult Function(_FontFeatureSlashedZero value) slashedZero,
    required TResult Function(_FontFeatureStylisticAlternates value)
        stylisticAlternates,
    required TResult Function(_FontFeatureStylisticSet value) stylisticSet,
    required TResult Function(_FontFeatureSubscripts value) subscripts,
    required TResult Function(_FontFeatureSuperscripts value) superscripts,
    required TResult Function(_FontFeatureSwash value) swash,
    required TResult Function(_FontFeatureTabularFigures value) tabularFigures,
  }) {
    return numerators(this);
  }
}

abstract class _FontFeatureNumerators extends FlutterFontFeature {
  factory _FontFeatureNumerators() = _$_FontFeatureNumerators;
  _FontFeatureNumerators._() : super._();

  factory _FontFeatureNumerators.fromJson(Map<String, dynamic> json) =
      _$_FontFeatureNumerators.fromJson;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_FontFeatureOldStyleFigures extends _FontFeatureOldStyleFigures {
  _$_FontFeatureOldStyleFigures({final String? $type})
      : $type = $type ?? 'f:1:FontFeature.oldstyleFigures',
        super._();

  factory _$_FontFeatureOldStyleFigures.fromJson(Map<String, dynamic> json) =>
      _$$_FontFeatureOldStyleFiguresFromJson(json);

  @JsonKey(name: 'converter')
  final String $type;

  @override
  String toString() {
    return 'FlutterFontFeature.oldstyleFigures()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FontFeatureOldStyleFigures);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_FontFeature value) $default, {
    required TResult Function(_FontFeatureAlternative value) alternative,
    required TResult Function(_FontFeatureAlternativeFractions value)
        alternativeFractions,
    required TResult Function(_FontFeatureCaseSenitiveForms value)
        caseSensitiveForms,
    required TResult Function(_FontFeatureCharacterVariant value)
        characterVariant,
    required TResult Function(_FontFeatureContextualAlternates value)
        contextualAlternates,
    required TResult Function(_FontFeatureDenominator value) denominator,
    required TResult Function(_FontFeatureDisable value) disable,
    required TResult Function(_FontFeatureEnable value) enable,
    required TResult Function(_FontFeatureFractions value) fractions,
    required TResult Function(_FontFeatureHistoricalForms value)
        historicalForms,
    required TResult Function(_FontFeatureHistoricalLigatures value)
        historicalLigatures,
    required TResult Function(_FontFeatureLiningFigures value) liningFigures,
    required TResult Function(_FontFeatureLocaleAware value) localeAware,
    required TResult Function(_FontFeatureNotationalForms value)
        notationalForms,
    required TResult Function(_FontFeatureNumerators value) numerators,
    required TResult Function(_FontFeatureOldStyleFigures value)
        oldstyleFigures,
    required TResult Function(_FontFeatureOrdinalForms value) ordinalForms,
    required TResult Function(_FontFeatureProportionalFigures value)
        proportionalFigures,
    required TResult Function(_FontFeatureRandomize value) randomize,
    required TResult Function(_FontFeatureScientificInferiors value)
        scientificInferiors,
    required TResult Function(_FontFeatureSlashedZero value) slashedZero,
    required TResult Function(_FontFeatureStylisticAlternates value)
        stylisticAlternates,
    required TResult Function(_FontFeatureStylisticSet value) stylisticSet,
    required TResult Function(_FontFeatureSubscripts value) subscripts,
    required TResult Function(_FontFeatureSuperscripts value) superscripts,
    required TResult Function(_FontFeatureSwash value) swash,
    required TResult Function(_FontFeatureTabularFigures value) tabularFigures,
  }) {
    return oldstyleFigures(this);
  }
}

abstract class _FontFeatureOldStyleFigures extends FlutterFontFeature {
  factory _FontFeatureOldStyleFigures() = _$_FontFeatureOldStyleFigures;
  _FontFeatureOldStyleFigures._() : super._();

  factory _FontFeatureOldStyleFigures.fromJson(Map<String, dynamic> json) =
      _$_FontFeatureOldStyleFigures.fromJson;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_FontFeatureOrdinalForms extends _FontFeatureOrdinalForms {
  _$_FontFeatureOrdinalForms({final String? $type})
      : $type = $type ?? 'f:1:FontFeature.ordinalForms',
        super._();

  factory _$_FontFeatureOrdinalForms.fromJson(Map<String, dynamic> json) =>
      _$$_FontFeatureOrdinalFormsFromJson(json);

  @JsonKey(name: 'converter')
  final String $type;

  @override
  String toString() {
    return 'FlutterFontFeature.ordinalForms()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FontFeatureOrdinalForms);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_FontFeature value) $default, {
    required TResult Function(_FontFeatureAlternative value) alternative,
    required TResult Function(_FontFeatureAlternativeFractions value)
        alternativeFractions,
    required TResult Function(_FontFeatureCaseSenitiveForms value)
        caseSensitiveForms,
    required TResult Function(_FontFeatureCharacterVariant value)
        characterVariant,
    required TResult Function(_FontFeatureContextualAlternates value)
        contextualAlternates,
    required TResult Function(_FontFeatureDenominator value) denominator,
    required TResult Function(_FontFeatureDisable value) disable,
    required TResult Function(_FontFeatureEnable value) enable,
    required TResult Function(_FontFeatureFractions value) fractions,
    required TResult Function(_FontFeatureHistoricalForms value)
        historicalForms,
    required TResult Function(_FontFeatureHistoricalLigatures value)
        historicalLigatures,
    required TResult Function(_FontFeatureLiningFigures value) liningFigures,
    required TResult Function(_FontFeatureLocaleAware value) localeAware,
    required TResult Function(_FontFeatureNotationalForms value)
        notationalForms,
    required TResult Function(_FontFeatureNumerators value) numerators,
    required TResult Function(_FontFeatureOldStyleFigures value)
        oldstyleFigures,
    required TResult Function(_FontFeatureOrdinalForms value) ordinalForms,
    required TResult Function(_FontFeatureProportionalFigures value)
        proportionalFigures,
    required TResult Function(_FontFeatureRandomize value) randomize,
    required TResult Function(_FontFeatureScientificInferiors value)
        scientificInferiors,
    required TResult Function(_FontFeatureSlashedZero value) slashedZero,
    required TResult Function(_FontFeatureStylisticAlternates value)
        stylisticAlternates,
    required TResult Function(_FontFeatureStylisticSet value) stylisticSet,
    required TResult Function(_FontFeatureSubscripts value) subscripts,
    required TResult Function(_FontFeatureSuperscripts value) superscripts,
    required TResult Function(_FontFeatureSwash value) swash,
    required TResult Function(_FontFeatureTabularFigures value) tabularFigures,
  }) {
    return ordinalForms(this);
  }
}

abstract class _FontFeatureOrdinalForms extends FlutterFontFeature {
  factory _FontFeatureOrdinalForms() = _$_FontFeatureOrdinalForms;
  _FontFeatureOrdinalForms._() : super._();

  factory _FontFeatureOrdinalForms.fromJson(Map<String, dynamic> json) =
      _$_FontFeatureOrdinalForms.fromJson;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_FontFeatureProportionalFigures
    extends _FontFeatureProportionalFigures {
  _$_FontFeatureProportionalFigures({final String? $type})
      : $type = $type ?? 'f:1:FontFeature.proportionalFigures',
        super._();

  factory _$_FontFeatureProportionalFigures.fromJson(
          Map<String, dynamic> json) =>
      _$$_FontFeatureProportionalFiguresFromJson(json);

  @JsonKey(name: 'converter')
  final String $type;

  @override
  String toString() {
    return 'FlutterFontFeature.proportionalFigures()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FontFeatureProportionalFigures);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_FontFeature value) $default, {
    required TResult Function(_FontFeatureAlternative value) alternative,
    required TResult Function(_FontFeatureAlternativeFractions value)
        alternativeFractions,
    required TResult Function(_FontFeatureCaseSenitiveForms value)
        caseSensitiveForms,
    required TResult Function(_FontFeatureCharacterVariant value)
        characterVariant,
    required TResult Function(_FontFeatureContextualAlternates value)
        contextualAlternates,
    required TResult Function(_FontFeatureDenominator value) denominator,
    required TResult Function(_FontFeatureDisable value) disable,
    required TResult Function(_FontFeatureEnable value) enable,
    required TResult Function(_FontFeatureFractions value) fractions,
    required TResult Function(_FontFeatureHistoricalForms value)
        historicalForms,
    required TResult Function(_FontFeatureHistoricalLigatures value)
        historicalLigatures,
    required TResult Function(_FontFeatureLiningFigures value) liningFigures,
    required TResult Function(_FontFeatureLocaleAware value) localeAware,
    required TResult Function(_FontFeatureNotationalForms value)
        notationalForms,
    required TResult Function(_FontFeatureNumerators value) numerators,
    required TResult Function(_FontFeatureOldStyleFigures value)
        oldstyleFigures,
    required TResult Function(_FontFeatureOrdinalForms value) ordinalForms,
    required TResult Function(_FontFeatureProportionalFigures value)
        proportionalFigures,
    required TResult Function(_FontFeatureRandomize value) randomize,
    required TResult Function(_FontFeatureScientificInferiors value)
        scientificInferiors,
    required TResult Function(_FontFeatureSlashedZero value) slashedZero,
    required TResult Function(_FontFeatureStylisticAlternates value)
        stylisticAlternates,
    required TResult Function(_FontFeatureStylisticSet value) stylisticSet,
    required TResult Function(_FontFeatureSubscripts value) subscripts,
    required TResult Function(_FontFeatureSuperscripts value) superscripts,
    required TResult Function(_FontFeatureSwash value) swash,
    required TResult Function(_FontFeatureTabularFigures value) tabularFigures,
  }) {
    return proportionalFigures(this);
  }
}

abstract class _FontFeatureProportionalFigures extends FlutterFontFeature {
  factory _FontFeatureProportionalFigures() = _$_FontFeatureProportionalFigures;
  _FontFeatureProportionalFigures._() : super._();

  factory _FontFeatureProportionalFigures.fromJson(Map<String, dynamic> json) =
      _$_FontFeatureProportionalFigures.fromJson;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_FontFeatureRandomize extends _FontFeatureRandomize {
  _$_FontFeatureRandomize({final String? $type})
      : $type = $type ?? 'f:1:FontFeature.randomize',
        super._();

  factory _$_FontFeatureRandomize.fromJson(Map<String, dynamic> json) =>
      _$$_FontFeatureRandomizeFromJson(json);

  @JsonKey(name: 'converter')
  final String $type;

  @override
  String toString() {
    return 'FlutterFontFeature.randomize()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_FontFeatureRandomize);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_FontFeature value) $default, {
    required TResult Function(_FontFeatureAlternative value) alternative,
    required TResult Function(_FontFeatureAlternativeFractions value)
        alternativeFractions,
    required TResult Function(_FontFeatureCaseSenitiveForms value)
        caseSensitiveForms,
    required TResult Function(_FontFeatureCharacterVariant value)
        characterVariant,
    required TResult Function(_FontFeatureContextualAlternates value)
        contextualAlternates,
    required TResult Function(_FontFeatureDenominator value) denominator,
    required TResult Function(_FontFeatureDisable value) disable,
    required TResult Function(_FontFeatureEnable value) enable,
    required TResult Function(_FontFeatureFractions value) fractions,
    required TResult Function(_FontFeatureHistoricalForms value)
        historicalForms,
    required TResult Function(_FontFeatureHistoricalLigatures value)
        historicalLigatures,
    required TResult Function(_FontFeatureLiningFigures value) liningFigures,
    required TResult Function(_FontFeatureLocaleAware value) localeAware,
    required TResult Function(_FontFeatureNotationalForms value)
        notationalForms,
    required TResult Function(_FontFeatureNumerators value) numerators,
    required TResult Function(_FontFeatureOldStyleFigures value)
        oldstyleFigures,
    required TResult Function(_FontFeatureOrdinalForms value) ordinalForms,
    required TResult Function(_FontFeatureProportionalFigures value)
        proportionalFigures,
    required TResult Function(_FontFeatureRandomize value) randomize,
    required TResult Function(_FontFeatureScientificInferiors value)
        scientificInferiors,
    required TResult Function(_FontFeatureSlashedZero value) slashedZero,
    required TResult Function(_FontFeatureStylisticAlternates value)
        stylisticAlternates,
    required TResult Function(_FontFeatureStylisticSet value) stylisticSet,
    required TResult Function(_FontFeatureSubscripts value) subscripts,
    required TResult Function(_FontFeatureSuperscripts value) superscripts,
    required TResult Function(_FontFeatureSwash value) swash,
    required TResult Function(_FontFeatureTabularFigures value) tabularFigures,
  }) {
    return randomize(this);
  }
}

abstract class _FontFeatureRandomize extends FlutterFontFeature {
  factory _FontFeatureRandomize() = _$_FontFeatureRandomize;
  _FontFeatureRandomize._() : super._();

  factory _FontFeatureRandomize.fromJson(Map<String, dynamic> json) =
      _$_FontFeatureRandomize.fromJson;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_FontFeatureScientificInferiors
    extends _FontFeatureScientificInferiors {
  _$_FontFeatureScientificInferiors({final String? $type})
      : $type = $type ?? 'f:1:FontFeature.scientificInferiors',
        super._();

  factory _$_FontFeatureScientificInferiors.fromJson(
          Map<String, dynamic> json) =>
      _$$_FontFeatureScientificInferiorsFromJson(json);

  @JsonKey(name: 'converter')
  final String $type;

  @override
  String toString() {
    return 'FlutterFontFeature.scientificInferiors()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FontFeatureScientificInferiors);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_FontFeature value) $default, {
    required TResult Function(_FontFeatureAlternative value) alternative,
    required TResult Function(_FontFeatureAlternativeFractions value)
        alternativeFractions,
    required TResult Function(_FontFeatureCaseSenitiveForms value)
        caseSensitiveForms,
    required TResult Function(_FontFeatureCharacterVariant value)
        characterVariant,
    required TResult Function(_FontFeatureContextualAlternates value)
        contextualAlternates,
    required TResult Function(_FontFeatureDenominator value) denominator,
    required TResult Function(_FontFeatureDisable value) disable,
    required TResult Function(_FontFeatureEnable value) enable,
    required TResult Function(_FontFeatureFractions value) fractions,
    required TResult Function(_FontFeatureHistoricalForms value)
        historicalForms,
    required TResult Function(_FontFeatureHistoricalLigatures value)
        historicalLigatures,
    required TResult Function(_FontFeatureLiningFigures value) liningFigures,
    required TResult Function(_FontFeatureLocaleAware value) localeAware,
    required TResult Function(_FontFeatureNotationalForms value)
        notationalForms,
    required TResult Function(_FontFeatureNumerators value) numerators,
    required TResult Function(_FontFeatureOldStyleFigures value)
        oldstyleFigures,
    required TResult Function(_FontFeatureOrdinalForms value) ordinalForms,
    required TResult Function(_FontFeatureProportionalFigures value)
        proportionalFigures,
    required TResult Function(_FontFeatureRandomize value) randomize,
    required TResult Function(_FontFeatureScientificInferiors value)
        scientificInferiors,
    required TResult Function(_FontFeatureSlashedZero value) slashedZero,
    required TResult Function(_FontFeatureStylisticAlternates value)
        stylisticAlternates,
    required TResult Function(_FontFeatureStylisticSet value) stylisticSet,
    required TResult Function(_FontFeatureSubscripts value) subscripts,
    required TResult Function(_FontFeatureSuperscripts value) superscripts,
    required TResult Function(_FontFeatureSwash value) swash,
    required TResult Function(_FontFeatureTabularFigures value) tabularFigures,
  }) {
    return scientificInferiors(this);
  }
}

abstract class _FontFeatureScientificInferiors extends FlutterFontFeature {
  factory _FontFeatureScientificInferiors() = _$_FontFeatureScientificInferiors;
  _FontFeatureScientificInferiors._() : super._();

  factory _FontFeatureScientificInferiors.fromJson(Map<String, dynamic> json) =
      _$_FontFeatureScientificInferiors.fromJson;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_FontFeatureSlashedZero extends _FontFeatureSlashedZero {
  _$_FontFeatureSlashedZero({final String? $type})
      : $type = $type ?? 'f:1:FontFeature.slashedZero',
        super._();

  factory _$_FontFeatureSlashedZero.fromJson(Map<String, dynamic> json) =>
      _$$_FontFeatureSlashedZeroFromJson(json);

  @JsonKey(name: 'converter')
  final String $type;

  @override
  String toString() {
    return 'FlutterFontFeature.slashedZero()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FontFeatureSlashedZero);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_FontFeature value) $default, {
    required TResult Function(_FontFeatureAlternative value) alternative,
    required TResult Function(_FontFeatureAlternativeFractions value)
        alternativeFractions,
    required TResult Function(_FontFeatureCaseSenitiveForms value)
        caseSensitiveForms,
    required TResult Function(_FontFeatureCharacterVariant value)
        characterVariant,
    required TResult Function(_FontFeatureContextualAlternates value)
        contextualAlternates,
    required TResult Function(_FontFeatureDenominator value) denominator,
    required TResult Function(_FontFeatureDisable value) disable,
    required TResult Function(_FontFeatureEnable value) enable,
    required TResult Function(_FontFeatureFractions value) fractions,
    required TResult Function(_FontFeatureHistoricalForms value)
        historicalForms,
    required TResult Function(_FontFeatureHistoricalLigatures value)
        historicalLigatures,
    required TResult Function(_FontFeatureLiningFigures value) liningFigures,
    required TResult Function(_FontFeatureLocaleAware value) localeAware,
    required TResult Function(_FontFeatureNotationalForms value)
        notationalForms,
    required TResult Function(_FontFeatureNumerators value) numerators,
    required TResult Function(_FontFeatureOldStyleFigures value)
        oldstyleFigures,
    required TResult Function(_FontFeatureOrdinalForms value) ordinalForms,
    required TResult Function(_FontFeatureProportionalFigures value)
        proportionalFigures,
    required TResult Function(_FontFeatureRandomize value) randomize,
    required TResult Function(_FontFeatureScientificInferiors value)
        scientificInferiors,
    required TResult Function(_FontFeatureSlashedZero value) slashedZero,
    required TResult Function(_FontFeatureStylisticAlternates value)
        stylisticAlternates,
    required TResult Function(_FontFeatureStylisticSet value) stylisticSet,
    required TResult Function(_FontFeatureSubscripts value) subscripts,
    required TResult Function(_FontFeatureSuperscripts value) superscripts,
    required TResult Function(_FontFeatureSwash value) swash,
    required TResult Function(_FontFeatureTabularFigures value) tabularFigures,
  }) {
    return slashedZero(this);
  }
}

abstract class _FontFeatureSlashedZero extends FlutterFontFeature {
  factory _FontFeatureSlashedZero() = _$_FontFeatureSlashedZero;
  _FontFeatureSlashedZero._() : super._();

  factory _FontFeatureSlashedZero.fromJson(Map<String, dynamic> json) =
      _$_FontFeatureSlashedZero.fromJson;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_FontFeatureStylisticAlternates
    extends _FontFeatureStylisticAlternates {
  _$_FontFeatureStylisticAlternates({final String? $type})
      : $type = $type ?? 'f:1:FontFeature.stylisticAlternates',
        super._();

  factory _$_FontFeatureStylisticAlternates.fromJson(
          Map<String, dynamic> json) =>
      _$$_FontFeatureStylisticAlternatesFromJson(json);

  @JsonKey(name: 'converter')
  final String $type;

  @override
  String toString() {
    return 'FlutterFontFeature.stylisticAlternates()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FontFeatureStylisticAlternates);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_FontFeature value) $default, {
    required TResult Function(_FontFeatureAlternative value) alternative,
    required TResult Function(_FontFeatureAlternativeFractions value)
        alternativeFractions,
    required TResult Function(_FontFeatureCaseSenitiveForms value)
        caseSensitiveForms,
    required TResult Function(_FontFeatureCharacterVariant value)
        characterVariant,
    required TResult Function(_FontFeatureContextualAlternates value)
        contextualAlternates,
    required TResult Function(_FontFeatureDenominator value) denominator,
    required TResult Function(_FontFeatureDisable value) disable,
    required TResult Function(_FontFeatureEnable value) enable,
    required TResult Function(_FontFeatureFractions value) fractions,
    required TResult Function(_FontFeatureHistoricalForms value)
        historicalForms,
    required TResult Function(_FontFeatureHistoricalLigatures value)
        historicalLigatures,
    required TResult Function(_FontFeatureLiningFigures value) liningFigures,
    required TResult Function(_FontFeatureLocaleAware value) localeAware,
    required TResult Function(_FontFeatureNotationalForms value)
        notationalForms,
    required TResult Function(_FontFeatureNumerators value) numerators,
    required TResult Function(_FontFeatureOldStyleFigures value)
        oldstyleFigures,
    required TResult Function(_FontFeatureOrdinalForms value) ordinalForms,
    required TResult Function(_FontFeatureProportionalFigures value)
        proportionalFigures,
    required TResult Function(_FontFeatureRandomize value) randomize,
    required TResult Function(_FontFeatureScientificInferiors value)
        scientificInferiors,
    required TResult Function(_FontFeatureSlashedZero value) slashedZero,
    required TResult Function(_FontFeatureStylisticAlternates value)
        stylisticAlternates,
    required TResult Function(_FontFeatureStylisticSet value) stylisticSet,
    required TResult Function(_FontFeatureSubscripts value) subscripts,
    required TResult Function(_FontFeatureSuperscripts value) superscripts,
    required TResult Function(_FontFeatureSwash value) swash,
    required TResult Function(_FontFeatureTabularFigures value) tabularFigures,
  }) {
    return stylisticAlternates(this);
  }
}

abstract class _FontFeatureStylisticAlternates extends FlutterFontFeature {
  factory _FontFeatureStylisticAlternates() = _$_FontFeatureStylisticAlternates;
  _FontFeatureStylisticAlternates._() : super._();

  factory _FontFeatureStylisticAlternates.fromJson(Map<String, dynamic> json) =
      _$_FontFeatureStylisticAlternates.fromJson;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_FontFeatureStylisticSet extends _FontFeatureStylisticSet {
  _$_FontFeatureStylisticSet(this.value, {final String? $type})
      : $type = $type ?? 'f:1:FontFeature.stylisticSet',
        super._();

  factory _$_FontFeatureStylisticSet.fromJson(Map<String, dynamic> json) =>
      _$$_FontFeatureStylisticSetFromJson(json);

  @override
  final int value;

  @JsonKey(name: 'converter')
  final String $type;

  @override
  String toString() {
    return 'FlutterFontFeature.stylisticSet(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FontFeatureStylisticSet &&
            (identical(other.value, value) || other.value == value));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, value);

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_FontFeature value) $default, {
    required TResult Function(_FontFeatureAlternative value) alternative,
    required TResult Function(_FontFeatureAlternativeFractions value)
        alternativeFractions,
    required TResult Function(_FontFeatureCaseSenitiveForms value)
        caseSensitiveForms,
    required TResult Function(_FontFeatureCharacterVariant value)
        characterVariant,
    required TResult Function(_FontFeatureContextualAlternates value)
        contextualAlternates,
    required TResult Function(_FontFeatureDenominator value) denominator,
    required TResult Function(_FontFeatureDisable value) disable,
    required TResult Function(_FontFeatureEnable value) enable,
    required TResult Function(_FontFeatureFractions value) fractions,
    required TResult Function(_FontFeatureHistoricalForms value)
        historicalForms,
    required TResult Function(_FontFeatureHistoricalLigatures value)
        historicalLigatures,
    required TResult Function(_FontFeatureLiningFigures value) liningFigures,
    required TResult Function(_FontFeatureLocaleAware value) localeAware,
    required TResult Function(_FontFeatureNotationalForms value)
        notationalForms,
    required TResult Function(_FontFeatureNumerators value) numerators,
    required TResult Function(_FontFeatureOldStyleFigures value)
        oldstyleFigures,
    required TResult Function(_FontFeatureOrdinalForms value) ordinalForms,
    required TResult Function(_FontFeatureProportionalFigures value)
        proportionalFigures,
    required TResult Function(_FontFeatureRandomize value) randomize,
    required TResult Function(_FontFeatureScientificInferiors value)
        scientificInferiors,
    required TResult Function(_FontFeatureSlashedZero value) slashedZero,
    required TResult Function(_FontFeatureStylisticAlternates value)
        stylisticAlternates,
    required TResult Function(_FontFeatureStylisticSet value) stylisticSet,
    required TResult Function(_FontFeatureSubscripts value) subscripts,
    required TResult Function(_FontFeatureSuperscripts value) superscripts,
    required TResult Function(_FontFeatureSwash value) swash,
    required TResult Function(_FontFeatureTabularFigures value) tabularFigures,
  }) {
    return stylisticSet(this);
  }
}

abstract class _FontFeatureStylisticSet extends FlutterFontFeature {
  factory _FontFeatureStylisticSet(final int value) =
      _$_FontFeatureStylisticSet;
  _FontFeatureStylisticSet._() : super._();

  factory _FontFeatureStylisticSet.fromJson(Map<String, dynamic> json) =
      _$_FontFeatureStylisticSet.fromJson;

  int get value;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_FontFeatureSubscripts extends _FontFeatureSubscripts {
  _$_FontFeatureSubscripts({final String? $type})
      : $type = $type ?? 'f:1:FontFeature.subscripts',
        super._();

  factory _$_FontFeatureSubscripts.fromJson(Map<String, dynamic> json) =>
      _$$_FontFeatureSubscriptsFromJson(json);

  @JsonKey(name: 'converter')
  final String $type;

  @override
  String toString() {
    return 'FlutterFontFeature.subscripts()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_FontFeatureSubscripts);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_FontFeature value) $default, {
    required TResult Function(_FontFeatureAlternative value) alternative,
    required TResult Function(_FontFeatureAlternativeFractions value)
        alternativeFractions,
    required TResult Function(_FontFeatureCaseSenitiveForms value)
        caseSensitiveForms,
    required TResult Function(_FontFeatureCharacterVariant value)
        characterVariant,
    required TResult Function(_FontFeatureContextualAlternates value)
        contextualAlternates,
    required TResult Function(_FontFeatureDenominator value) denominator,
    required TResult Function(_FontFeatureDisable value) disable,
    required TResult Function(_FontFeatureEnable value) enable,
    required TResult Function(_FontFeatureFractions value) fractions,
    required TResult Function(_FontFeatureHistoricalForms value)
        historicalForms,
    required TResult Function(_FontFeatureHistoricalLigatures value)
        historicalLigatures,
    required TResult Function(_FontFeatureLiningFigures value) liningFigures,
    required TResult Function(_FontFeatureLocaleAware value) localeAware,
    required TResult Function(_FontFeatureNotationalForms value)
        notationalForms,
    required TResult Function(_FontFeatureNumerators value) numerators,
    required TResult Function(_FontFeatureOldStyleFigures value)
        oldstyleFigures,
    required TResult Function(_FontFeatureOrdinalForms value) ordinalForms,
    required TResult Function(_FontFeatureProportionalFigures value)
        proportionalFigures,
    required TResult Function(_FontFeatureRandomize value) randomize,
    required TResult Function(_FontFeatureScientificInferiors value)
        scientificInferiors,
    required TResult Function(_FontFeatureSlashedZero value) slashedZero,
    required TResult Function(_FontFeatureStylisticAlternates value)
        stylisticAlternates,
    required TResult Function(_FontFeatureStylisticSet value) stylisticSet,
    required TResult Function(_FontFeatureSubscripts value) subscripts,
    required TResult Function(_FontFeatureSuperscripts value) superscripts,
    required TResult Function(_FontFeatureSwash value) swash,
    required TResult Function(_FontFeatureTabularFigures value) tabularFigures,
  }) {
    return subscripts(this);
  }
}

abstract class _FontFeatureSubscripts extends FlutterFontFeature {
  factory _FontFeatureSubscripts() = _$_FontFeatureSubscripts;
  _FontFeatureSubscripts._() : super._();

  factory _FontFeatureSubscripts.fromJson(Map<String, dynamic> json) =
      _$_FontFeatureSubscripts.fromJson;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_FontFeatureSuperscripts extends _FontFeatureSuperscripts {
  _$_FontFeatureSuperscripts({final String? $type})
      : $type = $type ?? 'f:1:FontFeature.superscripts',
        super._();

  factory _$_FontFeatureSuperscripts.fromJson(Map<String, dynamic> json) =>
      _$$_FontFeatureSuperscriptsFromJson(json);

  @JsonKey(name: 'converter')
  final String $type;

  @override
  String toString() {
    return 'FlutterFontFeature.superscripts()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FontFeatureSuperscripts);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_FontFeature value) $default, {
    required TResult Function(_FontFeatureAlternative value) alternative,
    required TResult Function(_FontFeatureAlternativeFractions value)
        alternativeFractions,
    required TResult Function(_FontFeatureCaseSenitiveForms value)
        caseSensitiveForms,
    required TResult Function(_FontFeatureCharacterVariant value)
        characterVariant,
    required TResult Function(_FontFeatureContextualAlternates value)
        contextualAlternates,
    required TResult Function(_FontFeatureDenominator value) denominator,
    required TResult Function(_FontFeatureDisable value) disable,
    required TResult Function(_FontFeatureEnable value) enable,
    required TResult Function(_FontFeatureFractions value) fractions,
    required TResult Function(_FontFeatureHistoricalForms value)
        historicalForms,
    required TResult Function(_FontFeatureHistoricalLigatures value)
        historicalLigatures,
    required TResult Function(_FontFeatureLiningFigures value) liningFigures,
    required TResult Function(_FontFeatureLocaleAware value) localeAware,
    required TResult Function(_FontFeatureNotationalForms value)
        notationalForms,
    required TResult Function(_FontFeatureNumerators value) numerators,
    required TResult Function(_FontFeatureOldStyleFigures value)
        oldstyleFigures,
    required TResult Function(_FontFeatureOrdinalForms value) ordinalForms,
    required TResult Function(_FontFeatureProportionalFigures value)
        proportionalFigures,
    required TResult Function(_FontFeatureRandomize value) randomize,
    required TResult Function(_FontFeatureScientificInferiors value)
        scientificInferiors,
    required TResult Function(_FontFeatureSlashedZero value) slashedZero,
    required TResult Function(_FontFeatureStylisticAlternates value)
        stylisticAlternates,
    required TResult Function(_FontFeatureStylisticSet value) stylisticSet,
    required TResult Function(_FontFeatureSubscripts value) subscripts,
    required TResult Function(_FontFeatureSuperscripts value) superscripts,
    required TResult Function(_FontFeatureSwash value) swash,
    required TResult Function(_FontFeatureTabularFigures value) tabularFigures,
  }) {
    return superscripts(this);
  }
}

abstract class _FontFeatureSuperscripts extends FlutterFontFeature {
  factory _FontFeatureSuperscripts() = _$_FontFeatureSuperscripts;
  _FontFeatureSuperscripts._() : super._();

  factory _FontFeatureSuperscripts.fromJson(Map<String, dynamic> json) =
      _$_FontFeatureSuperscripts.fromJson;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_FontFeatureSwash extends _FontFeatureSwash {
  _$_FontFeatureSwash([this.value, final String? $type])
      : $type = $type ?? 'f:1:FontFeature.swash',
        super._();

  factory _$_FontFeatureSwash.fromJson(Map<String, dynamic> json) =>
      _$$_FontFeatureSwashFromJson(json);

  @override
  final ZacInt? value;

  @JsonKey(name: 'converter')
  final String $type;

  @override
  String toString() {
    return 'FlutterFontFeature.swash(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FontFeatureSwash &&
            (identical(other.value, value) || other.value == value));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, value);

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_FontFeature value) $default, {
    required TResult Function(_FontFeatureAlternative value) alternative,
    required TResult Function(_FontFeatureAlternativeFractions value)
        alternativeFractions,
    required TResult Function(_FontFeatureCaseSenitiveForms value)
        caseSensitiveForms,
    required TResult Function(_FontFeatureCharacterVariant value)
        characterVariant,
    required TResult Function(_FontFeatureContextualAlternates value)
        contextualAlternates,
    required TResult Function(_FontFeatureDenominator value) denominator,
    required TResult Function(_FontFeatureDisable value) disable,
    required TResult Function(_FontFeatureEnable value) enable,
    required TResult Function(_FontFeatureFractions value) fractions,
    required TResult Function(_FontFeatureHistoricalForms value)
        historicalForms,
    required TResult Function(_FontFeatureHistoricalLigatures value)
        historicalLigatures,
    required TResult Function(_FontFeatureLiningFigures value) liningFigures,
    required TResult Function(_FontFeatureLocaleAware value) localeAware,
    required TResult Function(_FontFeatureNotationalForms value)
        notationalForms,
    required TResult Function(_FontFeatureNumerators value) numerators,
    required TResult Function(_FontFeatureOldStyleFigures value)
        oldstyleFigures,
    required TResult Function(_FontFeatureOrdinalForms value) ordinalForms,
    required TResult Function(_FontFeatureProportionalFigures value)
        proportionalFigures,
    required TResult Function(_FontFeatureRandomize value) randomize,
    required TResult Function(_FontFeatureScientificInferiors value)
        scientificInferiors,
    required TResult Function(_FontFeatureSlashedZero value) slashedZero,
    required TResult Function(_FontFeatureStylisticAlternates value)
        stylisticAlternates,
    required TResult Function(_FontFeatureStylisticSet value) stylisticSet,
    required TResult Function(_FontFeatureSubscripts value) subscripts,
    required TResult Function(_FontFeatureSuperscripts value) superscripts,
    required TResult Function(_FontFeatureSwash value) swash,
    required TResult Function(_FontFeatureTabularFigures value) tabularFigures,
  }) {
    return swash(this);
  }
}

abstract class _FontFeatureSwash extends FlutterFontFeature {
  factory _FontFeatureSwash([final ZacInt? value]) = _$_FontFeatureSwash;
  _FontFeatureSwash._() : super._();

  factory _FontFeatureSwash.fromJson(Map<String, dynamic> json) =
      _$_FontFeatureSwash.fromJson;

  ZacInt? get value;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_FontFeatureTabularFigures extends _FontFeatureTabularFigures {
  _$_FontFeatureTabularFigures({final String? $type})
      : $type = $type ?? 'f:1:FontFeature.tabularFigures',
        super._();

  factory _$_FontFeatureTabularFigures.fromJson(Map<String, dynamic> json) =>
      _$$_FontFeatureTabularFiguresFromJson(json);

  @JsonKey(name: 'converter')
  final String $type;

  @override
  String toString() {
    return 'FlutterFontFeature.tabularFigures()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FontFeatureTabularFigures);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_FontFeature value) $default, {
    required TResult Function(_FontFeatureAlternative value) alternative,
    required TResult Function(_FontFeatureAlternativeFractions value)
        alternativeFractions,
    required TResult Function(_FontFeatureCaseSenitiveForms value)
        caseSensitiveForms,
    required TResult Function(_FontFeatureCharacterVariant value)
        characterVariant,
    required TResult Function(_FontFeatureContextualAlternates value)
        contextualAlternates,
    required TResult Function(_FontFeatureDenominator value) denominator,
    required TResult Function(_FontFeatureDisable value) disable,
    required TResult Function(_FontFeatureEnable value) enable,
    required TResult Function(_FontFeatureFractions value) fractions,
    required TResult Function(_FontFeatureHistoricalForms value)
        historicalForms,
    required TResult Function(_FontFeatureHistoricalLigatures value)
        historicalLigatures,
    required TResult Function(_FontFeatureLiningFigures value) liningFigures,
    required TResult Function(_FontFeatureLocaleAware value) localeAware,
    required TResult Function(_FontFeatureNotationalForms value)
        notationalForms,
    required TResult Function(_FontFeatureNumerators value) numerators,
    required TResult Function(_FontFeatureOldStyleFigures value)
        oldstyleFigures,
    required TResult Function(_FontFeatureOrdinalForms value) ordinalForms,
    required TResult Function(_FontFeatureProportionalFigures value)
        proportionalFigures,
    required TResult Function(_FontFeatureRandomize value) randomize,
    required TResult Function(_FontFeatureScientificInferiors value)
        scientificInferiors,
    required TResult Function(_FontFeatureSlashedZero value) slashedZero,
    required TResult Function(_FontFeatureStylisticAlternates value)
        stylisticAlternates,
    required TResult Function(_FontFeatureStylisticSet value) stylisticSet,
    required TResult Function(_FontFeatureSubscripts value) subscripts,
    required TResult Function(_FontFeatureSuperscripts value) superscripts,
    required TResult Function(_FontFeatureSwash value) swash,
    required TResult Function(_FontFeatureTabularFigures value) tabularFigures,
  }) {
    return tabularFigures(this);
  }
}

abstract class _FontFeatureTabularFigures extends FlutterFontFeature {
  factory _FontFeatureTabularFigures() = _$_FontFeatureTabularFigures;
  _FontFeatureTabularFigures._() : super._();

  factory _FontFeatureTabularFigures.fromJson(Map<String, dynamic> json) =
      _$_FontFeatureTabularFigures.fromJson;
}

FlutterTextDecorationStyle _$FlutterTextDecorationStyleFromJson(
    Map<String, dynamic> json) {
  switch (json['converter']) {
    case 'f:1:TextDecorationStyle.dashed':
      return _FlutterTextDecorationStyleDashed.fromJson(json);
    case 'f:1:TextDecorationStyle.dotted':
      return _FlutterTextDecorationStyleDotted.fromJson(json);
    case 'f:1:TextDecorationStyle.double':
      return _FlutterTextDecorationStyleDouble.fromJson(json);
    case 'f:1:TextDecorationStyle.solid':
      return _FlutterTextDecorationStyleSolid.fromJson(json);
    case 'f:1:TextDecorationStyle.wavy':
      return _FlutterTextDecorationStyleWavy.fromJson(json);

    default:
      throw CheckedFromJsonException(
          json,
          'converter',
          'FlutterTextDecorationStyle',
          'Invalid union type "${json['converter']}"!');
  }
}

/// @nodoc
mixin _$FlutterTextDecorationStyle {
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FlutterTextDecorationStyleDashed value) dashed,
    required TResult Function(_FlutterTextDecorationStyleDotted value) dotted,
    required TResult Function(_FlutterTextDecorationStyleDouble value) double,
    required TResult Function(_FlutterTextDecorationStyleSolid value) solid,
    required TResult Function(_FlutterTextDecorationStyleWavy value) wavy,
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_FlutterTextDecorationStyleDashed
    extends _FlutterTextDecorationStyleDashed {
  _$_FlutterTextDecorationStyleDashed({final String? $type})
      : $type = $type ?? 'f:1:TextDecorationStyle.dashed',
        super._();

  factory _$_FlutterTextDecorationStyleDashed.fromJson(
          Map<String, dynamic> json) =>
      _$$_FlutterTextDecorationStyleDashedFromJson(json);

  @JsonKey(name: 'converter')
  final String $type;

  @override
  String toString() {
    return 'FlutterTextDecorationStyle.dashed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FlutterTextDecorationStyleDashed);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FlutterTextDecorationStyleDashed value) dashed,
    required TResult Function(_FlutterTextDecorationStyleDotted value) dotted,
    required TResult Function(_FlutterTextDecorationStyleDouble value) double,
    required TResult Function(_FlutterTextDecorationStyleSolid value) solid,
    required TResult Function(_FlutterTextDecorationStyleWavy value) wavy,
  }) {
    return dashed(this);
  }
}

abstract class _FlutterTextDecorationStyleDashed
    extends FlutterTextDecorationStyle {
  factory _FlutterTextDecorationStyleDashed() =
      _$_FlutterTextDecorationStyleDashed;
  _FlutterTextDecorationStyleDashed._() : super._();

  factory _FlutterTextDecorationStyleDashed.fromJson(
      Map<String, dynamic> json) = _$_FlutterTextDecorationStyleDashed.fromJson;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_FlutterTextDecorationStyleDotted
    extends _FlutterTextDecorationStyleDotted {
  _$_FlutterTextDecorationStyleDotted({final String? $type})
      : $type = $type ?? 'f:1:TextDecorationStyle.dotted',
        super._();

  factory _$_FlutterTextDecorationStyleDotted.fromJson(
          Map<String, dynamic> json) =>
      _$$_FlutterTextDecorationStyleDottedFromJson(json);

  @JsonKey(name: 'converter')
  final String $type;

  @override
  String toString() {
    return 'FlutterTextDecorationStyle.dotted()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FlutterTextDecorationStyleDotted);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FlutterTextDecorationStyleDashed value) dashed,
    required TResult Function(_FlutterTextDecorationStyleDotted value) dotted,
    required TResult Function(_FlutterTextDecorationStyleDouble value) double,
    required TResult Function(_FlutterTextDecorationStyleSolid value) solid,
    required TResult Function(_FlutterTextDecorationStyleWavy value) wavy,
  }) {
    return dotted(this);
  }
}

abstract class _FlutterTextDecorationStyleDotted
    extends FlutterTextDecorationStyle {
  factory _FlutterTextDecorationStyleDotted() =
      _$_FlutterTextDecorationStyleDotted;
  _FlutterTextDecorationStyleDotted._() : super._();

  factory _FlutterTextDecorationStyleDotted.fromJson(
      Map<String, dynamic> json) = _$_FlutterTextDecorationStyleDotted.fromJson;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_FlutterTextDecorationStyleDouble
    extends _FlutterTextDecorationStyleDouble {
  _$_FlutterTextDecorationStyleDouble({final String? $type})
      : $type = $type ?? 'f:1:TextDecorationStyle.double',
        super._();

  factory _$_FlutterTextDecorationStyleDouble.fromJson(
          Map<String, dynamic> json) =>
      _$$_FlutterTextDecorationStyleDoubleFromJson(json);

  @JsonKey(name: 'converter')
  final String $type;

  @override
  String toString() {
    return 'FlutterTextDecorationStyle.double()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FlutterTextDecorationStyleDouble);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FlutterTextDecorationStyleDashed value) dashed,
    required TResult Function(_FlutterTextDecorationStyleDotted value) dotted,
    required TResult Function(_FlutterTextDecorationStyleDouble value) double,
    required TResult Function(_FlutterTextDecorationStyleSolid value) solid,
    required TResult Function(_FlutterTextDecorationStyleWavy value) wavy,
  }) {
    return double(this);
  }
}

abstract class _FlutterTextDecorationStyleDouble
    extends FlutterTextDecorationStyle {
  factory _FlutterTextDecorationStyleDouble() =
      _$_FlutterTextDecorationStyleDouble;
  _FlutterTextDecorationStyleDouble._() : super._();

  factory _FlutterTextDecorationStyleDouble.fromJson(
      Map<String, dynamic> json) = _$_FlutterTextDecorationStyleDouble.fromJson;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_FlutterTextDecorationStyleSolid
    extends _FlutterTextDecorationStyleSolid {
  _$_FlutterTextDecorationStyleSolid({final String? $type})
      : $type = $type ?? 'f:1:TextDecorationStyle.solid',
        super._();

  factory _$_FlutterTextDecorationStyleSolid.fromJson(
          Map<String, dynamic> json) =>
      _$$_FlutterTextDecorationStyleSolidFromJson(json);

  @JsonKey(name: 'converter')
  final String $type;

  @override
  String toString() {
    return 'FlutterTextDecorationStyle.solid()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FlutterTextDecorationStyleSolid);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FlutterTextDecorationStyleDashed value) dashed,
    required TResult Function(_FlutterTextDecorationStyleDotted value) dotted,
    required TResult Function(_FlutterTextDecorationStyleDouble value) double,
    required TResult Function(_FlutterTextDecorationStyleSolid value) solid,
    required TResult Function(_FlutterTextDecorationStyleWavy value) wavy,
  }) {
    return solid(this);
  }
}

abstract class _FlutterTextDecorationStyleSolid
    extends FlutterTextDecorationStyle {
  factory _FlutterTextDecorationStyleSolid() =
      _$_FlutterTextDecorationStyleSolid;
  _FlutterTextDecorationStyleSolid._() : super._();

  factory _FlutterTextDecorationStyleSolid.fromJson(Map<String, dynamic> json) =
      _$_FlutterTextDecorationStyleSolid.fromJson;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_FlutterTextDecorationStyleWavy
    extends _FlutterTextDecorationStyleWavy {
  _$_FlutterTextDecorationStyleWavy({final String? $type})
      : $type = $type ?? 'f:1:TextDecorationStyle.wavy',
        super._();

  factory _$_FlutterTextDecorationStyleWavy.fromJson(
          Map<String, dynamic> json) =>
      _$$_FlutterTextDecorationStyleWavyFromJson(json);

  @JsonKey(name: 'converter')
  final String $type;

  @override
  String toString() {
    return 'FlutterTextDecorationStyle.wavy()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FlutterTextDecorationStyleWavy);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FlutterTextDecorationStyleDashed value) dashed,
    required TResult Function(_FlutterTextDecorationStyleDotted value) dotted,
    required TResult Function(_FlutterTextDecorationStyleDouble value) double,
    required TResult Function(_FlutterTextDecorationStyleSolid value) solid,
    required TResult Function(_FlutterTextDecorationStyleWavy value) wavy,
  }) {
    return wavy(this);
  }
}

abstract class _FlutterTextDecorationStyleWavy
    extends FlutterTextDecorationStyle {
  factory _FlutterTextDecorationStyleWavy() = _$_FlutterTextDecorationStyleWavy;
  _FlutterTextDecorationStyleWavy._() : super._();

  factory _FlutterTextDecorationStyleWavy.fromJson(Map<String, dynamic> json) =
      _$_FlutterTextDecorationStyleWavy.fromJson;
}

FlutterTextAlign _$FlutterTextAlignFromJson(Map<String, dynamic> json) {
  switch (json['converter']) {
    case 'f:1:TextAlign.center':
      return _FlutterTextAlignCenter.fromJson(json);
    case 'f:1:TextAlign.end':
      return _FlutterTextAlignEnd.fromJson(json);
    case 'f:1:TextAlign.justify':
      return _FlutterTextAlignJustify.fromJson(json);
    case 'f:1:TextAlign.left':
      return _FlutterTextAlignLeft.fromJson(json);
    case 'f:1:TextAlign.right':
      return _FlutterTextAlignRight.fromJson(json);
    case 'f:1:TextAlign.start':
      return _FlutterTextAlignStart.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'converter', 'FlutterTextAlign',
          'Invalid union type "${json['converter']}"!');
  }
}

/// @nodoc
mixin _$FlutterTextAlign {
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FlutterTextAlignCenter value) center,
    required TResult Function(_FlutterTextAlignEnd value) end,
    required TResult Function(_FlutterTextAlignJustify value) justify,
    required TResult Function(_FlutterTextAlignLeft value) left,
    required TResult Function(_FlutterTextAlignRight value) right,
    required TResult Function(_FlutterTextAlignStart value) start,
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_FlutterTextAlignCenter extends _FlutterTextAlignCenter {
  _$_FlutterTextAlignCenter({final String? $type})
      : $type = $type ?? 'f:1:TextAlign.center',
        super._();

  factory _$_FlutterTextAlignCenter.fromJson(Map<String, dynamic> json) =>
      _$$_FlutterTextAlignCenterFromJson(json);

  @JsonKey(name: 'converter')
  final String $type;

  @override
  String toString() {
    return 'FlutterTextAlign.center()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FlutterTextAlignCenter);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FlutterTextAlignCenter value) center,
    required TResult Function(_FlutterTextAlignEnd value) end,
    required TResult Function(_FlutterTextAlignJustify value) justify,
    required TResult Function(_FlutterTextAlignLeft value) left,
    required TResult Function(_FlutterTextAlignRight value) right,
    required TResult Function(_FlutterTextAlignStart value) start,
  }) {
    return center(this);
  }
}

abstract class _FlutterTextAlignCenter extends FlutterTextAlign {
  factory _FlutterTextAlignCenter() = _$_FlutterTextAlignCenter;
  _FlutterTextAlignCenter._() : super._();

  factory _FlutterTextAlignCenter.fromJson(Map<String, dynamic> json) =
      _$_FlutterTextAlignCenter.fromJson;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_FlutterTextAlignEnd extends _FlutterTextAlignEnd {
  _$_FlutterTextAlignEnd({final String? $type})
      : $type = $type ?? 'f:1:TextAlign.end',
        super._();

  factory _$_FlutterTextAlignEnd.fromJson(Map<String, dynamic> json) =>
      _$$_FlutterTextAlignEndFromJson(json);

  @JsonKey(name: 'converter')
  final String $type;

  @override
  String toString() {
    return 'FlutterTextAlign.end()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_FlutterTextAlignEnd);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FlutterTextAlignCenter value) center,
    required TResult Function(_FlutterTextAlignEnd value) end,
    required TResult Function(_FlutterTextAlignJustify value) justify,
    required TResult Function(_FlutterTextAlignLeft value) left,
    required TResult Function(_FlutterTextAlignRight value) right,
    required TResult Function(_FlutterTextAlignStart value) start,
  }) {
    return end(this);
  }
}

abstract class _FlutterTextAlignEnd extends FlutterTextAlign {
  factory _FlutterTextAlignEnd() = _$_FlutterTextAlignEnd;
  _FlutterTextAlignEnd._() : super._();

  factory _FlutterTextAlignEnd.fromJson(Map<String, dynamic> json) =
      _$_FlutterTextAlignEnd.fromJson;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_FlutterTextAlignJustify extends _FlutterTextAlignJustify {
  _$_FlutterTextAlignJustify({final String? $type})
      : $type = $type ?? 'f:1:TextAlign.justify',
        super._();

  factory _$_FlutterTextAlignJustify.fromJson(Map<String, dynamic> json) =>
      _$$_FlutterTextAlignJustifyFromJson(json);

  @JsonKey(name: 'converter')
  final String $type;

  @override
  String toString() {
    return 'FlutterTextAlign.justify()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FlutterTextAlignJustify);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FlutterTextAlignCenter value) center,
    required TResult Function(_FlutterTextAlignEnd value) end,
    required TResult Function(_FlutterTextAlignJustify value) justify,
    required TResult Function(_FlutterTextAlignLeft value) left,
    required TResult Function(_FlutterTextAlignRight value) right,
    required TResult Function(_FlutterTextAlignStart value) start,
  }) {
    return justify(this);
  }
}

abstract class _FlutterTextAlignJustify extends FlutterTextAlign {
  factory _FlutterTextAlignJustify() = _$_FlutterTextAlignJustify;
  _FlutterTextAlignJustify._() : super._();

  factory _FlutterTextAlignJustify.fromJson(Map<String, dynamic> json) =
      _$_FlutterTextAlignJustify.fromJson;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_FlutterTextAlignLeft extends _FlutterTextAlignLeft {
  _$_FlutterTextAlignLeft({final String? $type})
      : $type = $type ?? 'f:1:TextAlign.left',
        super._();

  factory _$_FlutterTextAlignLeft.fromJson(Map<String, dynamic> json) =>
      _$$_FlutterTextAlignLeftFromJson(json);

  @JsonKey(name: 'converter')
  final String $type;

  @override
  String toString() {
    return 'FlutterTextAlign.left()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_FlutterTextAlignLeft);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FlutterTextAlignCenter value) center,
    required TResult Function(_FlutterTextAlignEnd value) end,
    required TResult Function(_FlutterTextAlignJustify value) justify,
    required TResult Function(_FlutterTextAlignLeft value) left,
    required TResult Function(_FlutterTextAlignRight value) right,
    required TResult Function(_FlutterTextAlignStart value) start,
  }) {
    return left(this);
  }
}

abstract class _FlutterTextAlignLeft extends FlutterTextAlign {
  factory _FlutterTextAlignLeft() = _$_FlutterTextAlignLeft;
  _FlutterTextAlignLeft._() : super._();

  factory _FlutterTextAlignLeft.fromJson(Map<String, dynamic> json) =
      _$_FlutterTextAlignLeft.fromJson;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_FlutterTextAlignRight extends _FlutterTextAlignRight {
  _$_FlutterTextAlignRight({final String? $type})
      : $type = $type ?? 'f:1:TextAlign.right',
        super._();

  factory _$_FlutterTextAlignRight.fromJson(Map<String, dynamic> json) =>
      _$$_FlutterTextAlignRightFromJson(json);

  @JsonKey(name: 'converter')
  final String $type;

  @override
  String toString() {
    return 'FlutterTextAlign.right()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_FlutterTextAlignRight);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FlutterTextAlignCenter value) center,
    required TResult Function(_FlutterTextAlignEnd value) end,
    required TResult Function(_FlutterTextAlignJustify value) justify,
    required TResult Function(_FlutterTextAlignLeft value) left,
    required TResult Function(_FlutterTextAlignRight value) right,
    required TResult Function(_FlutterTextAlignStart value) start,
  }) {
    return right(this);
  }
}

abstract class _FlutterTextAlignRight extends FlutterTextAlign {
  factory _FlutterTextAlignRight() = _$_FlutterTextAlignRight;
  _FlutterTextAlignRight._() : super._();

  factory _FlutterTextAlignRight.fromJson(Map<String, dynamic> json) =
      _$_FlutterTextAlignRight.fromJson;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_FlutterTextAlignStart extends _FlutterTextAlignStart {
  _$_FlutterTextAlignStart({final String? $type})
      : $type = $type ?? 'f:1:TextAlign.start',
        super._();

  factory _$_FlutterTextAlignStart.fromJson(Map<String, dynamic> json) =>
      _$$_FlutterTextAlignStartFromJson(json);

  @JsonKey(name: 'converter')
  final String $type;

  @override
  String toString() {
    return 'FlutterTextAlign.start()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_FlutterTextAlignStart);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FlutterTextAlignCenter value) center,
    required TResult Function(_FlutterTextAlignEnd value) end,
    required TResult Function(_FlutterTextAlignJustify value) justify,
    required TResult Function(_FlutterTextAlignLeft value) left,
    required TResult Function(_FlutterTextAlignRight value) right,
    required TResult Function(_FlutterTextAlignStart value) start,
  }) {
    return start(this);
  }
}

abstract class _FlutterTextAlignStart extends FlutterTextAlign {
  factory _FlutterTextAlignStart() = _$_FlutterTextAlignStart;
  _FlutterTextAlignStart._() : super._();

  factory _FlutterTextAlignStart.fromJson(Map<String, dynamic> json) =
      _$_FlutterTextAlignStart.fromJson;
}

FlutterTextHeightBehavior _$FlutterTextHeightBehaviorFromJson(
    Map<String, dynamic> json) {
  return _FlutterTextHeightBehavior.fromJson(json);
}

/// @nodoc
mixin _$FlutterTextHeightBehavior {
  ZacValue<bool>? get applyHeightToFirstAscent =>
      throw _privateConstructorUsedError;
  ZacValue<bool>? get applyHeightToLastDescent =>
      throw _privateConstructorUsedError;
  FlutterTextLeadingDistribution? get leadingDistribution =>
      throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_FlutterTextHeightBehavior value) $default,
  ) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_FlutterTextHeightBehavior extends _FlutterTextHeightBehavior {
  _$_FlutterTextHeightBehavior(
      {this.applyHeightToFirstAscent,
      this.applyHeightToLastDescent,
      this.leadingDistribution})
      : super._();

  factory _$_FlutterTextHeightBehavior.fromJson(Map<String, dynamic> json) =>
      _$$_FlutterTextHeightBehaviorFromJson(json);

  @override
  final ZacValue<bool>? applyHeightToFirstAscent;
  @override
  final ZacValue<bool>? applyHeightToLastDescent;
  @override
  final FlutterTextLeadingDistribution? leadingDistribution;

  @override
  String toString() {
    return 'FlutterTextHeightBehavior(applyHeightToFirstAscent: $applyHeightToFirstAscent, applyHeightToLastDescent: $applyHeightToLastDescent, leadingDistribution: $leadingDistribution)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FlutterTextHeightBehavior &&
            (identical(
                    other.applyHeightToFirstAscent, applyHeightToFirstAscent) ||
                other.applyHeightToFirstAscent == applyHeightToFirstAscent) &&
            (identical(
                    other.applyHeightToLastDescent, applyHeightToLastDescent) ||
                other.applyHeightToLastDescent == applyHeightToLastDescent) &&
            (identical(other.leadingDistribution, leadingDistribution) ||
                other.leadingDistribution == leadingDistribution));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, applyHeightToFirstAscent,
      applyHeightToLastDescent, leadingDistribution);

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_FlutterTextHeightBehavior value) $default,
  ) {
    return $default(this);
  }
}

abstract class _FlutterTextHeightBehavior extends FlutterTextHeightBehavior {
  factory _FlutterTextHeightBehavior(
          {final ZacValue<bool>? applyHeightToFirstAscent,
          final ZacValue<bool>? applyHeightToLastDescent,
          final FlutterTextLeadingDistribution? leadingDistribution}) =
      _$_FlutterTextHeightBehavior;
  _FlutterTextHeightBehavior._() : super._();

  factory _FlutterTextHeightBehavior.fromJson(Map<String, dynamic> json) =
      _$_FlutterTextHeightBehavior.fromJson;

  @override
  ZacValue<bool>? get applyHeightToFirstAscent;
  @override
  ZacValue<bool>? get applyHeightToLastDescent;
  @override
  FlutterTextLeadingDistribution? get leadingDistribution;
}

FlutterBlendMode _$FlutterBlendModeFromJson(Map<String, dynamic> json) {
  switch (json['converter']) {
    case 'f:1:BlendMode.clear':
      return _FlutterBlendModeClear.fromJson(json);
    case 'f:1:BlendMode.color':
      return _FlutterBlendModeColor.fromJson(json);
    case 'f:1:BlendMode.colorBurn':
      return _FlutterBlendModeColorBurn.fromJson(json);
    case 'f:1:BlendMode.colorDodge':
      return _FlutterBlendModeColorDodge.fromJson(json);
    case 'f:1:BlendMode.darken':
      return _FlutterBlendModeDarken.fromJson(json);
    case 'f:1:BlendMode.difference':
      return _FlutterBlendModeDifference.fromJson(json);
    case 'f:1:BlendMode.dst':
      return _FlutterBlendModeDst.fromJson(json);
    case 'f:1:BlendMode.dstATop':
      return _FlutterBlendModeDstATop.fromJson(json);
    case 'f:1:BlendMode.dstIn':
      return _FlutterBlendModeDstIn.fromJson(json);
    case 'f:1:BlendMode.dstOut':
      return _FlutterBlendModeDstOut.fromJson(json);
    case 'f:1:BlendMode.dstOver':
      return _FlutterBlendModeDstOver.fromJson(json);
    case 'f:1:BlendMode.exclusion':
      return _FlutterBlendModeExclusion.fromJson(json);
    case 'f:1:BlendMode.hardLight':
      return _FlutterBlendModeHardLight.fromJson(json);
    case 'f:1:BlendMode.hue':
      return _FlutterBlendModeHue.fromJson(json);
    case 'f:1:BlendMode.lighten':
      return _FlutterBlendModeLighten.fromJson(json);
    case 'f:1:BlendMode.luminosity':
      return _FlutterBlendModeLuminosity.fromJson(json);
    case 'f:1:BlendMode.modulate':
      return _FlutterBlendModeModulate.fromJson(json);
    case 'f:1:BlendMode.multiply':
      return _FlutterBlendModeMultiply.fromJson(json);
    case 'f:1:BlendMode.overlay':
      return _FlutterBlendModeOverlay.fromJson(json);
    case 'f:1:BlendMode.plus':
      return _FlutterBlendModePlus.fromJson(json);
    case 'f:1:BlendMode.saturation':
      return _FlutterBlendModeSaturation.fromJson(json);
    case 'f:1:BlendMode.screen':
      return _FlutterBlendModeScreen.fromJson(json);
    case 'f:1:BlendMode.softLight':
      return _FlutterBlendModeSoftLight.fromJson(json);
    case 'f:1:BlendMode.src':
      return _FlutterBlendModeSrc.fromJson(json);
    case 'f:1:BlendMode.srcATop':
      return _FlutterBlendModeSrcATop.fromJson(json);
    case 'f:1:BlendMode.srcIn':
      return _FlutterBlendModeSrcIn.fromJson(json);
    case 'f:1:BlendMode.srcOut':
      return _FlutterBlendModeSrcOut.fromJson(json);
    case 'f:1:BlendMode.srcOver':
      return _FlutterBlendModeSrcOver.fromJson(json);
    case 'f:1:BlendMode.xor':
      return _FlutterBlendModeXor.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'converter', 'FlutterBlendMode',
          'Invalid union type "${json['converter']}"!');
  }
}

/// @nodoc
mixin _$FlutterBlendMode {
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FlutterBlendModeClear value) clear,
    required TResult Function(_FlutterBlendModeColor value) color,
    required TResult Function(_FlutterBlendModeColorBurn value) colorBurn,
    required TResult Function(_FlutterBlendModeColorDodge value) colorDodge,
    required TResult Function(_FlutterBlendModeDarken value) darken,
    required TResult Function(_FlutterBlendModeDifference value) difference,
    required TResult Function(_FlutterBlendModeDst value) dst,
    required TResult Function(_FlutterBlendModeDstATop value) dstATop,
    required TResult Function(_FlutterBlendModeDstIn value) dstIn,
    required TResult Function(_FlutterBlendModeDstOut value) dstOut,
    required TResult Function(_FlutterBlendModeDstOver value) dstOver,
    required TResult Function(_FlutterBlendModeExclusion value) exclusion,
    required TResult Function(_FlutterBlendModeHardLight value) hardLight,
    required TResult Function(_FlutterBlendModeHue value) hue,
    required TResult Function(_FlutterBlendModeLighten value) lighten,
    required TResult Function(_FlutterBlendModeLuminosity value) luminosity,
    required TResult Function(_FlutterBlendModeModulate value) modulate,
    required TResult Function(_FlutterBlendModeMultiply value) multiply,
    required TResult Function(_FlutterBlendModeOverlay value) overlay,
    required TResult Function(_FlutterBlendModePlus value) plus,
    required TResult Function(_FlutterBlendModeSaturation value) saturation,
    required TResult Function(_FlutterBlendModeScreen value) screen,
    required TResult Function(_FlutterBlendModeSoftLight value) softLight,
    required TResult Function(_FlutterBlendModeSrc value) src,
    required TResult Function(_FlutterBlendModeSrcATop value) srcATop,
    required TResult Function(_FlutterBlendModeSrcIn value) srcIn,
    required TResult Function(_FlutterBlendModeSrcOut value) srcOut,
    required TResult Function(_FlutterBlendModeSrcOver value) srcOver,
    required TResult Function(_FlutterBlendModeXor value) xor,
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_FlutterBlendModeClear extends _FlutterBlendModeClear {
  _$_FlutterBlendModeClear({final String? $type})
      : $type = $type ?? 'f:1:BlendMode.clear',
        super._();

  factory _$_FlutterBlendModeClear.fromJson(Map<String, dynamic> json) =>
      _$$_FlutterBlendModeClearFromJson(json);

  @JsonKey(name: 'converter')
  final String $type;

  @override
  String toString() {
    return 'FlutterBlendMode.clear()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_FlutterBlendModeClear);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FlutterBlendModeClear value) clear,
    required TResult Function(_FlutterBlendModeColor value) color,
    required TResult Function(_FlutterBlendModeColorBurn value) colorBurn,
    required TResult Function(_FlutterBlendModeColorDodge value) colorDodge,
    required TResult Function(_FlutterBlendModeDarken value) darken,
    required TResult Function(_FlutterBlendModeDifference value) difference,
    required TResult Function(_FlutterBlendModeDst value) dst,
    required TResult Function(_FlutterBlendModeDstATop value) dstATop,
    required TResult Function(_FlutterBlendModeDstIn value) dstIn,
    required TResult Function(_FlutterBlendModeDstOut value) dstOut,
    required TResult Function(_FlutterBlendModeDstOver value) dstOver,
    required TResult Function(_FlutterBlendModeExclusion value) exclusion,
    required TResult Function(_FlutterBlendModeHardLight value) hardLight,
    required TResult Function(_FlutterBlendModeHue value) hue,
    required TResult Function(_FlutterBlendModeLighten value) lighten,
    required TResult Function(_FlutterBlendModeLuminosity value) luminosity,
    required TResult Function(_FlutterBlendModeModulate value) modulate,
    required TResult Function(_FlutterBlendModeMultiply value) multiply,
    required TResult Function(_FlutterBlendModeOverlay value) overlay,
    required TResult Function(_FlutterBlendModePlus value) plus,
    required TResult Function(_FlutterBlendModeSaturation value) saturation,
    required TResult Function(_FlutterBlendModeScreen value) screen,
    required TResult Function(_FlutterBlendModeSoftLight value) softLight,
    required TResult Function(_FlutterBlendModeSrc value) src,
    required TResult Function(_FlutterBlendModeSrcATop value) srcATop,
    required TResult Function(_FlutterBlendModeSrcIn value) srcIn,
    required TResult Function(_FlutterBlendModeSrcOut value) srcOut,
    required TResult Function(_FlutterBlendModeSrcOver value) srcOver,
    required TResult Function(_FlutterBlendModeXor value) xor,
  }) {
    return clear(this);
  }
}

abstract class _FlutterBlendModeClear extends FlutterBlendMode {
  factory _FlutterBlendModeClear() = _$_FlutterBlendModeClear;
  _FlutterBlendModeClear._() : super._();

  factory _FlutterBlendModeClear.fromJson(Map<String, dynamic> json) =
      _$_FlutterBlendModeClear.fromJson;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_FlutterBlendModeColor extends _FlutterBlendModeColor {
  _$_FlutterBlendModeColor({final String? $type})
      : $type = $type ?? 'f:1:BlendMode.color',
        super._();

  factory _$_FlutterBlendModeColor.fromJson(Map<String, dynamic> json) =>
      _$$_FlutterBlendModeColorFromJson(json);

  @JsonKey(name: 'converter')
  final String $type;

  @override
  String toString() {
    return 'FlutterBlendMode.color()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_FlutterBlendModeColor);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FlutterBlendModeClear value) clear,
    required TResult Function(_FlutterBlendModeColor value) color,
    required TResult Function(_FlutterBlendModeColorBurn value) colorBurn,
    required TResult Function(_FlutterBlendModeColorDodge value) colorDodge,
    required TResult Function(_FlutterBlendModeDarken value) darken,
    required TResult Function(_FlutterBlendModeDifference value) difference,
    required TResult Function(_FlutterBlendModeDst value) dst,
    required TResult Function(_FlutterBlendModeDstATop value) dstATop,
    required TResult Function(_FlutterBlendModeDstIn value) dstIn,
    required TResult Function(_FlutterBlendModeDstOut value) dstOut,
    required TResult Function(_FlutterBlendModeDstOver value) dstOver,
    required TResult Function(_FlutterBlendModeExclusion value) exclusion,
    required TResult Function(_FlutterBlendModeHardLight value) hardLight,
    required TResult Function(_FlutterBlendModeHue value) hue,
    required TResult Function(_FlutterBlendModeLighten value) lighten,
    required TResult Function(_FlutterBlendModeLuminosity value) luminosity,
    required TResult Function(_FlutterBlendModeModulate value) modulate,
    required TResult Function(_FlutterBlendModeMultiply value) multiply,
    required TResult Function(_FlutterBlendModeOverlay value) overlay,
    required TResult Function(_FlutterBlendModePlus value) plus,
    required TResult Function(_FlutterBlendModeSaturation value) saturation,
    required TResult Function(_FlutterBlendModeScreen value) screen,
    required TResult Function(_FlutterBlendModeSoftLight value) softLight,
    required TResult Function(_FlutterBlendModeSrc value) src,
    required TResult Function(_FlutterBlendModeSrcATop value) srcATop,
    required TResult Function(_FlutterBlendModeSrcIn value) srcIn,
    required TResult Function(_FlutterBlendModeSrcOut value) srcOut,
    required TResult Function(_FlutterBlendModeSrcOver value) srcOver,
    required TResult Function(_FlutterBlendModeXor value) xor,
  }) {
    return color(this);
  }
}

abstract class _FlutterBlendModeColor extends FlutterBlendMode {
  factory _FlutterBlendModeColor() = _$_FlutterBlendModeColor;
  _FlutterBlendModeColor._() : super._();

  factory _FlutterBlendModeColor.fromJson(Map<String, dynamic> json) =
      _$_FlutterBlendModeColor.fromJson;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_FlutterBlendModeColorBurn extends _FlutterBlendModeColorBurn {
  _$_FlutterBlendModeColorBurn({final String? $type})
      : $type = $type ?? 'f:1:BlendMode.colorBurn',
        super._();

  factory _$_FlutterBlendModeColorBurn.fromJson(Map<String, dynamic> json) =>
      _$$_FlutterBlendModeColorBurnFromJson(json);

  @JsonKey(name: 'converter')
  final String $type;

  @override
  String toString() {
    return 'FlutterBlendMode.colorBurn()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FlutterBlendModeColorBurn);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FlutterBlendModeClear value) clear,
    required TResult Function(_FlutterBlendModeColor value) color,
    required TResult Function(_FlutterBlendModeColorBurn value) colorBurn,
    required TResult Function(_FlutterBlendModeColorDodge value) colorDodge,
    required TResult Function(_FlutterBlendModeDarken value) darken,
    required TResult Function(_FlutterBlendModeDifference value) difference,
    required TResult Function(_FlutterBlendModeDst value) dst,
    required TResult Function(_FlutterBlendModeDstATop value) dstATop,
    required TResult Function(_FlutterBlendModeDstIn value) dstIn,
    required TResult Function(_FlutterBlendModeDstOut value) dstOut,
    required TResult Function(_FlutterBlendModeDstOver value) dstOver,
    required TResult Function(_FlutterBlendModeExclusion value) exclusion,
    required TResult Function(_FlutterBlendModeHardLight value) hardLight,
    required TResult Function(_FlutterBlendModeHue value) hue,
    required TResult Function(_FlutterBlendModeLighten value) lighten,
    required TResult Function(_FlutterBlendModeLuminosity value) luminosity,
    required TResult Function(_FlutterBlendModeModulate value) modulate,
    required TResult Function(_FlutterBlendModeMultiply value) multiply,
    required TResult Function(_FlutterBlendModeOverlay value) overlay,
    required TResult Function(_FlutterBlendModePlus value) plus,
    required TResult Function(_FlutterBlendModeSaturation value) saturation,
    required TResult Function(_FlutterBlendModeScreen value) screen,
    required TResult Function(_FlutterBlendModeSoftLight value) softLight,
    required TResult Function(_FlutterBlendModeSrc value) src,
    required TResult Function(_FlutterBlendModeSrcATop value) srcATop,
    required TResult Function(_FlutterBlendModeSrcIn value) srcIn,
    required TResult Function(_FlutterBlendModeSrcOut value) srcOut,
    required TResult Function(_FlutterBlendModeSrcOver value) srcOver,
    required TResult Function(_FlutterBlendModeXor value) xor,
  }) {
    return colorBurn(this);
  }
}

abstract class _FlutterBlendModeColorBurn extends FlutterBlendMode {
  factory _FlutterBlendModeColorBurn() = _$_FlutterBlendModeColorBurn;
  _FlutterBlendModeColorBurn._() : super._();

  factory _FlutterBlendModeColorBurn.fromJson(Map<String, dynamic> json) =
      _$_FlutterBlendModeColorBurn.fromJson;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_FlutterBlendModeColorDodge extends _FlutterBlendModeColorDodge {
  _$_FlutterBlendModeColorDodge({final String? $type})
      : $type = $type ?? 'f:1:BlendMode.colorDodge',
        super._();

  factory _$_FlutterBlendModeColorDodge.fromJson(Map<String, dynamic> json) =>
      _$$_FlutterBlendModeColorDodgeFromJson(json);

  @JsonKey(name: 'converter')
  final String $type;

  @override
  String toString() {
    return 'FlutterBlendMode.colorDodge()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FlutterBlendModeColorDodge);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FlutterBlendModeClear value) clear,
    required TResult Function(_FlutterBlendModeColor value) color,
    required TResult Function(_FlutterBlendModeColorBurn value) colorBurn,
    required TResult Function(_FlutterBlendModeColorDodge value) colorDodge,
    required TResult Function(_FlutterBlendModeDarken value) darken,
    required TResult Function(_FlutterBlendModeDifference value) difference,
    required TResult Function(_FlutterBlendModeDst value) dst,
    required TResult Function(_FlutterBlendModeDstATop value) dstATop,
    required TResult Function(_FlutterBlendModeDstIn value) dstIn,
    required TResult Function(_FlutterBlendModeDstOut value) dstOut,
    required TResult Function(_FlutterBlendModeDstOver value) dstOver,
    required TResult Function(_FlutterBlendModeExclusion value) exclusion,
    required TResult Function(_FlutterBlendModeHardLight value) hardLight,
    required TResult Function(_FlutterBlendModeHue value) hue,
    required TResult Function(_FlutterBlendModeLighten value) lighten,
    required TResult Function(_FlutterBlendModeLuminosity value) luminosity,
    required TResult Function(_FlutterBlendModeModulate value) modulate,
    required TResult Function(_FlutterBlendModeMultiply value) multiply,
    required TResult Function(_FlutterBlendModeOverlay value) overlay,
    required TResult Function(_FlutterBlendModePlus value) plus,
    required TResult Function(_FlutterBlendModeSaturation value) saturation,
    required TResult Function(_FlutterBlendModeScreen value) screen,
    required TResult Function(_FlutterBlendModeSoftLight value) softLight,
    required TResult Function(_FlutterBlendModeSrc value) src,
    required TResult Function(_FlutterBlendModeSrcATop value) srcATop,
    required TResult Function(_FlutterBlendModeSrcIn value) srcIn,
    required TResult Function(_FlutterBlendModeSrcOut value) srcOut,
    required TResult Function(_FlutterBlendModeSrcOver value) srcOver,
    required TResult Function(_FlutterBlendModeXor value) xor,
  }) {
    return colorDodge(this);
  }
}

abstract class _FlutterBlendModeColorDodge extends FlutterBlendMode {
  factory _FlutterBlendModeColorDodge() = _$_FlutterBlendModeColorDodge;
  _FlutterBlendModeColorDodge._() : super._();

  factory _FlutterBlendModeColorDodge.fromJson(Map<String, dynamic> json) =
      _$_FlutterBlendModeColorDodge.fromJson;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_FlutterBlendModeDarken extends _FlutterBlendModeDarken {
  _$_FlutterBlendModeDarken({final String? $type})
      : $type = $type ?? 'f:1:BlendMode.darken',
        super._();

  factory _$_FlutterBlendModeDarken.fromJson(Map<String, dynamic> json) =>
      _$$_FlutterBlendModeDarkenFromJson(json);

  @JsonKey(name: 'converter')
  final String $type;

  @override
  String toString() {
    return 'FlutterBlendMode.darken()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FlutterBlendModeDarken);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FlutterBlendModeClear value) clear,
    required TResult Function(_FlutterBlendModeColor value) color,
    required TResult Function(_FlutterBlendModeColorBurn value) colorBurn,
    required TResult Function(_FlutterBlendModeColorDodge value) colorDodge,
    required TResult Function(_FlutterBlendModeDarken value) darken,
    required TResult Function(_FlutterBlendModeDifference value) difference,
    required TResult Function(_FlutterBlendModeDst value) dst,
    required TResult Function(_FlutterBlendModeDstATop value) dstATop,
    required TResult Function(_FlutterBlendModeDstIn value) dstIn,
    required TResult Function(_FlutterBlendModeDstOut value) dstOut,
    required TResult Function(_FlutterBlendModeDstOver value) dstOver,
    required TResult Function(_FlutterBlendModeExclusion value) exclusion,
    required TResult Function(_FlutterBlendModeHardLight value) hardLight,
    required TResult Function(_FlutterBlendModeHue value) hue,
    required TResult Function(_FlutterBlendModeLighten value) lighten,
    required TResult Function(_FlutterBlendModeLuminosity value) luminosity,
    required TResult Function(_FlutterBlendModeModulate value) modulate,
    required TResult Function(_FlutterBlendModeMultiply value) multiply,
    required TResult Function(_FlutterBlendModeOverlay value) overlay,
    required TResult Function(_FlutterBlendModePlus value) plus,
    required TResult Function(_FlutterBlendModeSaturation value) saturation,
    required TResult Function(_FlutterBlendModeScreen value) screen,
    required TResult Function(_FlutterBlendModeSoftLight value) softLight,
    required TResult Function(_FlutterBlendModeSrc value) src,
    required TResult Function(_FlutterBlendModeSrcATop value) srcATop,
    required TResult Function(_FlutterBlendModeSrcIn value) srcIn,
    required TResult Function(_FlutterBlendModeSrcOut value) srcOut,
    required TResult Function(_FlutterBlendModeSrcOver value) srcOver,
    required TResult Function(_FlutterBlendModeXor value) xor,
  }) {
    return darken(this);
  }
}

abstract class _FlutterBlendModeDarken extends FlutterBlendMode {
  factory _FlutterBlendModeDarken() = _$_FlutterBlendModeDarken;
  _FlutterBlendModeDarken._() : super._();

  factory _FlutterBlendModeDarken.fromJson(Map<String, dynamic> json) =
      _$_FlutterBlendModeDarken.fromJson;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_FlutterBlendModeDifference extends _FlutterBlendModeDifference {
  _$_FlutterBlendModeDifference({final String? $type})
      : $type = $type ?? 'f:1:BlendMode.difference',
        super._();

  factory _$_FlutterBlendModeDifference.fromJson(Map<String, dynamic> json) =>
      _$$_FlutterBlendModeDifferenceFromJson(json);

  @JsonKey(name: 'converter')
  final String $type;

  @override
  String toString() {
    return 'FlutterBlendMode.difference()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FlutterBlendModeDifference);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FlutterBlendModeClear value) clear,
    required TResult Function(_FlutterBlendModeColor value) color,
    required TResult Function(_FlutterBlendModeColorBurn value) colorBurn,
    required TResult Function(_FlutterBlendModeColorDodge value) colorDodge,
    required TResult Function(_FlutterBlendModeDarken value) darken,
    required TResult Function(_FlutterBlendModeDifference value) difference,
    required TResult Function(_FlutterBlendModeDst value) dst,
    required TResult Function(_FlutterBlendModeDstATop value) dstATop,
    required TResult Function(_FlutterBlendModeDstIn value) dstIn,
    required TResult Function(_FlutterBlendModeDstOut value) dstOut,
    required TResult Function(_FlutterBlendModeDstOver value) dstOver,
    required TResult Function(_FlutterBlendModeExclusion value) exclusion,
    required TResult Function(_FlutterBlendModeHardLight value) hardLight,
    required TResult Function(_FlutterBlendModeHue value) hue,
    required TResult Function(_FlutterBlendModeLighten value) lighten,
    required TResult Function(_FlutterBlendModeLuminosity value) luminosity,
    required TResult Function(_FlutterBlendModeModulate value) modulate,
    required TResult Function(_FlutterBlendModeMultiply value) multiply,
    required TResult Function(_FlutterBlendModeOverlay value) overlay,
    required TResult Function(_FlutterBlendModePlus value) plus,
    required TResult Function(_FlutterBlendModeSaturation value) saturation,
    required TResult Function(_FlutterBlendModeScreen value) screen,
    required TResult Function(_FlutterBlendModeSoftLight value) softLight,
    required TResult Function(_FlutterBlendModeSrc value) src,
    required TResult Function(_FlutterBlendModeSrcATop value) srcATop,
    required TResult Function(_FlutterBlendModeSrcIn value) srcIn,
    required TResult Function(_FlutterBlendModeSrcOut value) srcOut,
    required TResult Function(_FlutterBlendModeSrcOver value) srcOver,
    required TResult Function(_FlutterBlendModeXor value) xor,
  }) {
    return difference(this);
  }
}

abstract class _FlutterBlendModeDifference extends FlutterBlendMode {
  factory _FlutterBlendModeDifference() = _$_FlutterBlendModeDifference;
  _FlutterBlendModeDifference._() : super._();

  factory _FlutterBlendModeDifference.fromJson(Map<String, dynamic> json) =
      _$_FlutterBlendModeDifference.fromJson;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_FlutterBlendModeDst extends _FlutterBlendModeDst {
  _$_FlutterBlendModeDst({final String? $type})
      : $type = $type ?? 'f:1:BlendMode.dst',
        super._();

  factory _$_FlutterBlendModeDst.fromJson(Map<String, dynamic> json) =>
      _$$_FlutterBlendModeDstFromJson(json);

  @JsonKey(name: 'converter')
  final String $type;

  @override
  String toString() {
    return 'FlutterBlendMode.dst()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_FlutterBlendModeDst);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FlutterBlendModeClear value) clear,
    required TResult Function(_FlutterBlendModeColor value) color,
    required TResult Function(_FlutterBlendModeColorBurn value) colorBurn,
    required TResult Function(_FlutterBlendModeColorDodge value) colorDodge,
    required TResult Function(_FlutterBlendModeDarken value) darken,
    required TResult Function(_FlutterBlendModeDifference value) difference,
    required TResult Function(_FlutterBlendModeDst value) dst,
    required TResult Function(_FlutterBlendModeDstATop value) dstATop,
    required TResult Function(_FlutterBlendModeDstIn value) dstIn,
    required TResult Function(_FlutterBlendModeDstOut value) dstOut,
    required TResult Function(_FlutterBlendModeDstOver value) dstOver,
    required TResult Function(_FlutterBlendModeExclusion value) exclusion,
    required TResult Function(_FlutterBlendModeHardLight value) hardLight,
    required TResult Function(_FlutterBlendModeHue value) hue,
    required TResult Function(_FlutterBlendModeLighten value) lighten,
    required TResult Function(_FlutterBlendModeLuminosity value) luminosity,
    required TResult Function(_FlutterBlendModeModulate value) modulate,
    required TResult Function(_FlutterBlendModeMultiply value) multiply,
    required TResult Function(_FlutterBlendModeOverlay value) overlay,
    required TResult Function(_FlutterBlendModePlus value) plus,
    required TResult Function(_FlutterBlendModeSaturation value) saturation,
    required TResult Function(_FlutterBlendModeScreen value) screen,
    required TResult Function(_FlutterBlendModeSoftLight value) softLight,
    required TResult Function(_FlutterBlendModeSrc value) src,
    required TResult Function(_FlutterBlendModeSrcATop value) srcATop,
    required TResult Function(_FlutterBlendModeSrcIn value) srcIn,
    required TResult Function(_FlutterBlendModeSrcOut value) srcOut,
    required TResult Function(_FlutterBlendModeSrcOver value) srcOver,
    required TResult Function(_FlutterBlendModeXor value) xor,
  }) {
    return dst(this);
  }
}

abstract class _FlutterBlendModeDst extends FlutterBlendMode {
  factory _FlutterBlendModeDst() = _$_FlutterBlendModeDst;
  _FlutterBlendModeDst._() : super._();

  factory _FlutterBlendModeDst.fromJson(Map<String, dynamic> json) =
      _$_FlutterBlendModeDst.fromJson;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_FlutterBlendModeDstATop extends _FlutterBlendModeDstATop {
  _$_FlutterBlendModeDstATop({final String? $type})
      : $type = $type ?? 'f:1:BlendMode.dstATop',
        super._();

  factory _$_FlutterBlendModeDstATop.fromJson(Map<String, dynamic> json) =>
      _$$_FlutterBlendModeDstATopFromJson(json);

  @JsonKey(name: 'converter')
  final String $type;

  @override
  String toString() {
    return 'FlutterBlendMode.dstATop()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FlutterBlendModeDstATop);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FlutterBlendModeClear value) clear,
    required TResult Function(_FlutterBlendModeColor value) color,
    required TResult Function(_FlutterBlendModeColorBurn value) colorBurn,
    required TResult Function(_FlutterBlendModeColorDodge value) colorDodge,
    required TResult Function(_FlutterBlendModeDarken value) darken,
    required TResult Function(_FlutterBlendModeDifference value) difference,
    required TResult Function(_FlutterBlendModeDst value) dst,
    required TResult Function(_FlutterBlendModeDstATop value) dstATop,
    required TResult Function(_FlutterBlendModeDstIn value) dstIn,
    required TResult Function(_FlutterBlendModeDstOut value) dstOut,
    required TResult Function(_FlutterBlendModeDstOver value) dstOver,
    required TResult Function(_FlutterBlendModeExclusion value) exclusion,
    required TResult Function(_FlutterBlendModeHardLight value) hardLight,
    required TResult Function(_FlutterBlendModeHue value) hue,
    required TResult Function(_FlutterBlendModeLighten value) lighten,
    required TResult Function(_FlutterBlendModeLuminosity value) luminosity,
    required TResult Function(_FlutterBlendModeModulate value) modulate,
    required TResult Function(_FlutterBlendModeMultiply value) multiply,
    required TResult Function(_FlutterBlendModeOverlay value) overlay,
    required TResult Function(_FlutterBlendModePlus value) plus,
    required TResult Function(_FlutterBlendModeSaturation value) saturation,
    required TResult Function(_FlutterBlendModeScreen value) screen,
    required TResult Function(_FlutterBlendModeSoftLight value) softLight,
    required TResult Function(_FlutterBlendModeSrc value) src,
    required TResult Function(_FlutterBlendModeSrcATop value) srcATop,
    required TResult Function(_FlutterBlendModeSrcIn value) srcIn,
    required TResult Function(_FlutterBlendModeSrcOut value) srcOut,
    required TResult Function(_FlutterBlendModeSrcOver value) srcOver,
    required TResult Function(_FlutterBlendModeXor value) xor,
  }) {
    return dstATop(this);
  }
}

abstract class _FlutterBlendModeDstATop extends FlutterBlendMode {
  factory _FlutterBlendModeDstATop() = _$_FlutterBlendModeDstATop;
  _FlutterBlendModeDstATop._() : super._();

  factory _FlutterBlendModeDstATop.fromJson(Map<String, dynamic> json) =
      _$_FlutterBlendModeDstATop.fromJson;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_FlutterBlendModeDstIn extends _FlutterBlendModeDstIn {
  _$_FlutterBlendModeDstIn({final String? $type})
      : $type = $type ?? 'f:1:BlendMode.dstIn',
        super._();

  factory _$_FlutterBlendModeDstIn.fromJson(Map<String, dynamic> json) =>
      _$$_FlutterBlendModeDstInFromJson(json);

  @JsonKey(name: 'converter')
  final String $type;

  @override
  String toString() {
    return 'FlutterBlendMode.dstIn()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_FlutterBlendModeDstIn);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FlutterBlendModeClear value) clear,
    required TResult Function(_FlutterBlendModeColor value) color,
    required TResult Function(_FlutterBlendModeColorBurn value) colorBurn,
    required TResult Function(_FlutterBlendModeColorDodge value) colorDodge,
    required TResult Function(_FlutterBlendModeDarken value) darken,
    required TResult Function(_FlutterBlendModeDifference value) difference,
    required TResult Function(_FlutterBlendModeDst value) dst,
    required TResult Function(_FlutterBlendModeDstATop value) dstATop,
    required TResult Function(_FlutterBlendModeDstIn value) dstIn,
    required TResult Function(_FlutterBlendModeDstOut value) dstOut,
    required TResult Function(_FlutterBlendModeDstOver value) dstOver,
    required TResult Function(_FlutterBlendModeExclusion value) exclusion,
    required TResult Function(_FlutterBlendModeHardLight value) hardLight,
    required TResult Function(_FlutterBlendModeHue value) hue,
    required TResult Function(_FlutterBlendModeLighten value) lighten,
    required TResult Function(_FlutterBlendModeLuminosity value) luminosity,
    required TResult Function(_FlutterBlendModeModulate value) modulate,
    required TResult Function(_FlutterBlendModeMultiply value) multiply,
    required TResult Function(_FlutterBlendModeOverlay value) overlay,
    required TResult Function(_FlutterBlendModePlus value) plus,
    required TResult Function(_FlutterBlendModeSaturation value) saturation,
    required TResult Function(_FlutterBlendModeScreen value) screen,
    required TResult Function(_FlutterBlendModeSoftLight value) softLight,
    required TResult Function(_FlutterBlendModeSrc value) src,
    required TResult Function(_FlutterBlendModeSrcATop value) srcATop,
    required TResult Function(_FlutterBlendModeSrcIn value) srcIn,
    required TResult Function(_FlutterBlendModeSrcOut value) srcOut,
    required TResult Function(_FlutterBlendModeSrcOver value) srcOver,
    required TResult Function(_FlutterBlendModeXor value) xor,
  }) {
    return dstIn(this);
  }
}

abstract class _FlutterBlendModeDstIn extends FlutterBlendMode {
  factory _FlutterBlendModeDstIn() = _$_FlutterBlendModeDstIn;
  _FlutterBlendModeDstIn._() : super._();

  factory _FlutterBlendModeDstIn.fromJson(Map<String, dynamic> json) =
      _$_FlutterBlendModeDstIn.fromJson;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_FlutterBlendModeDstOut extends _FlutterBlendModeDstOut {
  _$_FlutterBlendModeDstOut({final String? $type})
      : $type = $type ?? 'f:1:BlendMode.dstOut',
        super._();

  factory _$_FlutterBlendModeDstOut.fromJson(Map<String, dynamic> json) =>
      _$$_FlutterBlendModeDstOutFromJson(json);

  @JsonKey(name: 'converter')
  final String $type;

  @override
  String toString() {
    return 'FlutterBlendMode.dstOut()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FlutterBlendModeDstOut);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FlutterBlendModeClear value) clear,
    required TResult Function(_FlutterBlendModeColor value) color,
    required TResult Function(_FlutterBlendModeColorBurn value) colorBurn,
    required TResult Function(_FlutterBlendModeColorDodge value) colorDodge,
    required TResult Function(_FlutterBlendModeDarken value) darken,
    required TResult Function(_FlutterBlendModeDifference value) difference,
    required TResult Function(_FlutterBlendModeDst value) dst,
    required TResult Function(_FlutterBlendModeDstATop value) dstATop,
    required TResult Function(_FlutterBlendModeDstIn value) dstIn,
    required TResult Function(_FlutterBlendModeDstOut value) dstOut,
    required TResult Function(_FlutterBlendModeDstOver value) dstOver,
    required TResult Function(_FlutterBlendModeExclusion value) exclusion,
    required TResult Function(_FlutterBlendModeHardLight value) hardLight,
    required TResult Function(_FlutterBlendModeHue value) hue,
    required TResult Function(_FlutterBlendModeLighten value) lighten,
    required TResult Function(_FlutterBlendModeLuminosity value) luminosity,
    required TResult Function(_FlutterBlendModeModulate value) modulate,
    required TResult Function(_FlutterBlendModeMultiply value) multiply,
    required TResult Function(_FlutterBlendModeOverlay value) overlay,
    required TResult Function(_FlutterBlendModePlus value) plus,
    required TResult Function(_FlutterBlendModeSaturation value) saturation,
    required TResult Function(_FlutterBlendModeScreen value) screen,
    required TResult Function(_FlutterBlendModeSoftLight value) softLight,
    required TResult Function(_FlutterBlendModeSrc value) src,
    required TResult Function(_FlutterBlendModeSrcATop value) srcATop,
    required TResult Function(_FlutterBlendModeSrcIn value) srcIn,
    required TResult Function(_FlutterBlendModeSrcOut value) srcOut,
    required TResult Function(_FlutterBlendModeSrcOver value) srcOver,
    required TResult Function(_FlutterBlendModeXor value) xor,
  }) {
    return dstOut(this);
  }
}

abstract class _FlutterBlendModeDstOut extends FlutterBlendMode {
  factory _FlutterBlendModeDstOut() = _$_FlutterBlendModeDstOut;
  _FlutterBlendModeDstOut._() : super._();

  factory _FlutterBlendModeDstOut.fromJson(Map<String, dynamic> json) =
      _$_FlutterBlendModeDstOut.fromJson;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_FlutterBlendModeDstOver extends _FlutterBlendModeDstOver {
  _$_FlutterBlendModeDstOver({final String? $type})
      : $type = $type ?? 'f:1:BlendMode.dstOver',
        super._();

  factory _$_FlutterBlendModeDstOver.fromJson(Map<String, dynamic> json) =>
      _$$_FlutterBlendModeDstOverFromJson(json);

  @JsonKey(name: 'converter')
  final String $type;

  @override
  String toString() {
    return 'FlutterBlendMode.dstOver()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FlutterBlendModeDstOver);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FlutterBlendModeClear value) clear,
    required TResult Function(_FlutterBlendModeColor value) color,
    required TResult Function(_FlutterBlendModeColorBurn value) colorBurn,
    required TResult Function(_FlutterBlendModeColorDodge value) colorDodge,
    required TResult Function(_FlutterBlendModeDarken value) darken,
    required TResult Function(_FlutterBlendModeDifference value) difference,
    required TResult Function(_FlutterBlendModeDst value) dst,
    required TResult Function(_FlutterBlendModeDstATop value) dstATop,
    required TResult Function(_FlutterBlendModeDstIn value) dstIn,
    required TResult Function(_FlutterBlendModeDstOut value) dstOut,
    required TResult Function(_FlutterBlendModeDstOver value) dstOver,
    required TResult Function(_FlutterBlendModeExclusion value) exclusion,
    required TResult Function(_FlutterBlendModeHardLight value) hardLight,
    required TResult Function(_FlutterBlendModeHue value) hue,
    required TResult Function(_FlutterBlendModeLighten value) lighten,
    required TResult Function(_FlutterBlendModeLuminosity value) luminosity,
    required TResult Function(_FlutterBlendModeModulate value) modulate,
    required TResult Function(_FlutterBlendModeMultiply value) multiply,
    required TResult Function(_FlutterBlendModeOverlay value) overlay,
    required TResult Function(_FlutterBlendModePlus value) plus,
    required TResult Function(_FlutterBlendModeSaturation value) saturation,
    required TResult Function(_FlutterBlendModeScreen value) screen,
    required TResult Function(_FlutterBlendModeSoftLight value) softLight,
    required TResult Function(_FlutterBlendModeSrc value) src,
    required TResult Function(_FlutterBlendModeSrcATop value) srcATop,
    required TResult Function(_FlutterBlendModeSrcIn value) srcIn,
    required TResult Function(_FlutterBlendModeSrcOut value) srcOut,
    required TResult Function(_FlutterBlendModeSrcOver value) srcOver,
    required TResult Function(_FlutterBlendModeXor value) xor,
  }) {
    return dstOver(this);
  }
}

abstract class _FlutterBlendModeDstOver extends FlutterBlendMode {
  factory _FlutterBlendModeDstOver() = _$_FlutterBlendModeDstOver;
  _FlutterBlendModeDstOver._() : super._();

  factory _FlutterBlendModeDstOver.fromJson(Map<String, dynamic> json) =
      _$_FlutterBlendModeDstOver.fromJson;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_FlutterBlendModeExclusion extends _FlutterBlendModeExclusion {
  _$_FlutterBlendModeExclusion({final String? $type})
      : $type = $type ?? 'f:1:BlendMode.exclusion',
        super._();

  factory _$_FlutterBlendModeExclusion.fromJson(Map<String, dynamic> json) =>
      _$$_FlutterBlendModeExclusionFromJson(json);

  @JsonKey(name: 'converter')
  final String $type;

  @override
  String toString() {
    return 'FlutterBlendMode.exclusion()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FlutterBlendModeExclusion);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FlutterBlendModeClear value) clear,
    required TResult Function(_FlutterBlendModeColor value) color,
    required TResult Function(_FlutterBlendModeColorBurn value) colorBurn,
    required TResult Function(_FlutterBlendModeColorDodge value) colorDodge,
    required TResult Function(_FlutterBlendModeDarken value) darken,
    required TResult Function(_FlutterBlendModeDifference value) difference,
    required TResult Function(_FlutterBlendModeDst value) dst,
    required TResult Function(_FlutterBlendModeDstATop value) dstATop,
    required TResult Function(_FlutterBlendModeDstIn value) dstIn,
    required TResult Function(_FlutterBlendModeDstOut value) dstOut,
    required TResult Function(_FlutterBlendModeDstOver value) dstOver,
    required TResult Function(_FlutterBlendModeExclusion value) exclusion,
    required TResult Function(_FlutterBlendModeHardLight value) hardLight,
    required TResult Function(_FlutterBlendModeHue value) hue,
    required TResult Function(_FlutterBlendModeLighten value) lighten,
    required TResult Function(_FlutterBlendModeLuminosity value) luminosity,
    required TResult Function(_FlutterBlendModeModulate value) modulate,
    required TResult Function(_FlutterBlendModeMultiply value) multiply,
    required TResult Function(_FlutterBlendModeOverlay value) overlay,
    required TResult Function(_FlutterBlendModePlus value) plus,
    required TResult Function(_FlutterBlendModeSaturation value) saturation,
    required TResult Function(_FlutterBlendModeScreen value) screen,
    required TResult Function(_FlutterBlendModeSoftLight value) softLight,
    required TResult Function(_FlutterBlendModeSrc value) src,
    required TResult Function(_FlutterBlendModeSrcATop value) srcATop,
    required TResult Function(_FlutterBlendModeSrcIn value) srcIn,
    required TResult Function(_FlutterBlendModeSrcOut value) srcOut,
    required TResult Function(_FlutterBlendModeSrcOver value) srcOver,
    required TResult Function(_FlutterBlendModeXor value) xor,
  }) {
    return exclusion(this);
  }
}

abstract class _FlutterBlendModeExclusion extends FlutterBlendMode {
  factory _FlutterBlendModeExclusion() = _$_FlutterBlendModeExclusion;
  _FlutterBlendModeExclusion._() : super._();

  factory _FlutterBlendModeExclusion.fromJson(Map<String, dynamic> json) =
      _$_FlutterBlendModeExclusion.fromJson;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_FlutterBlendModeHardLight extends _FlutterBlendModeHardLight {
  _$_FlutterBlendModeHardLight({final String? $type})
      : $type = $type ?? 'f:1:BlendMode.hardLight',
        super._();

  factory _$_FlutterBlendModeHardLight.fromJson(Map<String, dynamic> json) =>
      _$$_FlutterBlendModeHardLightFromJson(json);

  @JsonKey(name: 'converter')
  final String $type;

  @override
  String toString() {
    return 'FlutterBlendMode.hardLight()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FlutterBlendModeHardLight);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FlutterBlendModeClear value) clear,
    required TResult Function(_FlutterBlendModeColor value) color,
    required TResult Function(_FlutterBlendModeColorBurn value) colorBurn,
    required TResult Function(_FlutterBlendModeColorDodge value) colorDodge,
    required TResult Function(_FlutterBlendModeDarken value) darken,
    required TResult Function(_FlutterBlendModeDifference value) difference,
    required TResult Function(_FlutterBlendModeDst value) dst,
    required TResult Function(_FlutterBlendModeDstATop value) dstATop,
    required TResult Function(_FlutterBlendModeDstIn value) dstIn,
    required TResult Function(_FlutterBlendModeDstOut value) dstOut,
    required TResult Function(_FlutterBlendModeDstOver value) dstOver,
    required TResult Function(_FlutterBlendModeExclusion value) exclusion,
    required TResult Function(_FlutterBlendModeHardLight value) hardLight,
    required TResult Function(_FlutterBlendModeHue value) hue,
    required TResult Function(_FlutterBlendModeLighten value) lighten,
    required TResult Function(_FlutterBlendModeLuminosity value) luminosity,
    required TResult Function(_FlutterBlendModeModulate value) modulate,
    required TResult Function(_FlutterBlendModeMultiply value) multiply,
    required TResult Function(_FlutterBlendModeOverlay value) overlay,
    required TResult Function(_FlutterBlendModePlus value) plus,
    required TResult Function(_FlutterBlendModeSaturation value) saturation,
    required TResult Function(_FlutterBlendModeScreen value) screen,
    required TResult Function(_FlutterBlendModeSoftLight value) softLight,
    required TResult Function(_FlutterBlendModeSrc value) src,
    required TResult Function(_FlutterBlendModeSrcATop value) srcATop,
    required TResult Function(_FlutterBlendModeSrcIn value) srcIn,
    required TResult Function(_FlutterBlendModeSrcOut value) srcOut,
    required TResult Function(_FlutterBlendModeSrcOver value) srcOver,
    required TResult Function(_FlutterBlendModeXor value) xor,
  }) {
    return hardLight(this);
  }
}

abstract class _FlutterBlendModeHardLight extends FlutterBlendMode {
  factory _FlutterBlendModeHardLight() = _$_FlutterBlendModeHardLight;
  _FlutterBlendModeHardLight._() : super._();

  factory _FlutterBlendModeHardLight.fromJson(Map<String, dynamic> json) =
      _$_FlutterBlendModeHardLight.fromJson;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_FlutterBlendModeHue extends _FlutterBlendModeHue {
  _$_FlutterBlendModeHue({final String? $type})
      : $type = $type ?? 'f:1:BlendMode.hue',
        super._();

  factory _$_FlutterBlendModeHue.fromJson(Map<String, dynamic> json) =>
      _$$_FlutterBlendModeHueFromJson(json);

  @JsonKey(name: 'converter')
  final String $type;

  @override
  String toString() {
    return 'FlutterBlendMode.hue()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_FlutterBlendModeHue);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FlutterBlendModeClear value) clear,
    required TResult Function(_FlutterBlendModeColor value) color,
    required TResult Function(_FlutterBlendModeColorBurn value) colorBurn,
    required TResult Function(_FlutterBlendModeColorDodge value) colorDodge,
    required TResult Function(_FlutterBlendModeDarken value) darken,
    required TResult Function(_FlutterBlendModeDifference value) difference,
    required TResult Function(_FlutterBlendModeDst value) dst,
    required TResult Function(_FlutterBlendModeDstATop value) dstATop,
    required TResult Function(_FlutterBlendModeDstIn value) dstIn,
    required TResult Function(_FlutterBlendModeDstOut value) dstOut,
    required TResult Function(_FlutterBlendModeDstOver value) dstOver,
    required TResult Function(_FlutterBlendModeExclusion value) exclusion,
    required TResult Function(_FlutterBlendModeHardLight value) hardLight,
    required TResult Function(_FlutterBlendModeHue value) hue,
    required TResult Function(_FlutterBlendModeLighten value) lighten,
    required TResult Function(_FlutterBlendModeLuminosity value) luminosity,
    required TResult Function(_FlutterBlendModeModulate value) modulate,
    required TResult Function(_FlutterBlendModeMultiply value) multiply,
    required TResult Function(_FlutterBlendModeOverlay value) overlay,
    required TResult Function(_FlutterBlendModePlus value) plus,
    required TResult Function(_FlutterBlendModeSaturation value) saturation,
    required TResult Function(_FlutterBlendModeScreen value) screen,
    required TResult Function(_FlutterBlendModeSoftLight value) softLight,
    required TResult Function(_FlutterBlendModeSrc value) src,
    required TResult Function(_FlutterBlendModeSrcATop value) srcATop,
    required TResult Function(_FlutterBlendModeSrcIn value) srcIn,
    required TResult Function(_FlutterBlendModeSrcOut value) srcOut,
    required TResult Function(_FlutterBlendModeSrcOver value) srcOver,
    required TResult Function(_FlutterBlendModeXor value) xor,
  }) {
    return hue(this);
  }
}

abstract class _FlutterBlendModeHue extends FlutterBlendMode {
  factory _FlutterBlendModeHue() = _$_FlutterBlendModeHue;
  _FlutterBlendModeHue._() : super._();

  factory _FlutterBlendModeHue.fromJson(Map<String, dynamic> json) =
      _$_FlutterBlendModeHue.fromJson;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_FlutterBlendModeLighten extends _FlutterBlendModeLighten {
  _$_FlutterBlendModeLighten({final String? $type})
      : $type = $type ?? 'f:1:BlendMode.lighten',
        super._();

  factory _$_FlutterBlendModeLighten.fromJson(Map<String, dynamic> json) =>
      _$$_FlutterBlendModeLightenFromJson(json);

  @JsonKey(name: 'converter')
  final String $type;

  @override
  String toString() {
    return 'FlutterBlendMode.lighten()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FlutterBlendModeLighten);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FlutterBlendModeClear value) clear,
    required TResult Function(_FlutterBlendModeColor value) color,
    required TResult Function(_FlutterBlendModeColorBurn value) colorBurn,
    required TResult Function(_FlutterBlendModeColorDodge value) colorDodge,
    required TResult Function(_FlutterBlendModeDarken value) darken,
    required TResult Function(_FlutterBlendModeDifference value) difference,
    required TResult Function(_FlutterBlendModeDst value) dst,
    required TResult Function(_FlutterBlendModeDstATop value) dstATop,
    required TResult Function(_FlutterBlendModeDstIn value) dstIn,
    required TResult Function(_FlutterBlendModeDstOut value) dstOut,
    required TResult Function(_FlutterBlendModeDstOver value) dstOver,
    required TResult Function(_FlutterBlendModeExclusion value) exclusion,
    required TResult Function(_FlutterBlendModeHardLight value) hardLight,
    required TResult Function(_FlutterBlendModeHue value) hue,
    required TResult Function(_FlutterBlendModeLighten value) lighten,
    required TResult Function(_FlutterBlendModeLuminosity value) luminosity,
    required TResult Function(_FlutterBlendModeModulate value) modulate,
    required TResult Function(_FlutterBlendModeMultiply value) multiply,
    required TResult Function(_FlutterBlendModeOverlay value) overlay,
    required TResult Function(_FlutterBlendModePlus value) plus,
    required TResult Function(_FlutterBlendModeSaturation value) saturation,
    required TResult Function(_FlutterBlendModeScreen value) screen,
    required TResult Function(_FlutterBlendModeSoftLight value) softLight,
    required TResult Function(_FlutterBlendModeSrc value) src,
    required TResult Function(_FlutterBlendModeSrcATop value) srcATop,
    required TResult Function(_FlutterBlendModeSrcIn value) srcIn,
    required TResult Function(_FlutterBlendModeSrcOut value) srcOut,
    required TResult Function(_FlutterBlendModeSrcOver value) srcOver,
    required TResult Function(_FlutterBlendModeXor value) xor,
  }) {
    return lighten(this);
  }
}

abstract class _FlutterBlendModeLighten extends FlutterBlendMode {
  factory _FlutterBlendModeLighten() = _$_FlutterBlendModeLighten;
  _FlutterBlendModeLighten._() : super._();

  factory _FlutterBlendModeLighten.fromJson(Map<String, dynamic> json) =
      _$_FlutterBlendModeLighten.fromJson;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_FlutterBlendModeLuminosity extends _FlutterBlendModeLuminosity {
  _$_FlutterBlendModeLuminosity({final String? $type})
      : $type = $type ?? 'f:1:BlendMode.luminosity',
        super._();

  factory _$_FlutterBlendModeLuminosity.fromJson(Map<String, dynamic> json) =>
      _$$_FlutterBlendModeLuminosityFromJson(json);

  @JsonKey(name: 'converter')
  final String $type;

  @override
  String toString() {
    return 'FlutterBlendMode.luminosity()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FlutterBlendModeLuminosity);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FlutterBlendModeClear value) clear,
    required TResult Function(_FlutterBlendModeColor value) color,
    required TResult Function(_FlutterBlendModeColorBurn value) colorBurn,
    required TResult Function(_FlutterBlendModeColorDodge value) colorDodge,
    required TResult Function(_FlutterBlendModeDarken value) darken,
    required TResult Function(_FlutterBlendModeDifference value) difference,
    required TResult Function(_FlutterBlendModeDst value) dst,
    required TResult Function(_FlutterBlendModeDstATop value) dstATop,
    required TResult Function(_FlutterBlendModeDstIn value) dstIn,
    required TResult Function(_FlutterBlendModeDstOut value) dstOut,
    required TResult Function(_FlutterBlendModeDstOver value) dstOver,
    required TResult Function(_FlutterBlendModeExclusion value) exclusion,
    required TResult Function(_FlutterBlendModeHardLight value) hardLight,
    required TResult Function(_FlutterBlendModeHue value) hue,
    required TResult Function(_FlutterBlendModeLighten value) lighten,
    required TResult Function(_FlutterBlendModeLuminosity value) luminosity,
    required TResult Function(_FlutterBlendModeModulate value) modulate,
    required TResult Function(_FlutterBlendModeMultiply value) multiply,
    required TResult Function(_FlutterBlendModeOverlay value) overlay,
    required TResult Function(_FlutterBlendModePlus value) plus,
    required TResult Function(_FlutterBlendModeSaturation value) saturation,
    required TResult Function(_FlutterBlendModeScreen value) screen,
    required TResult Function(_FlutterBlendModeSoftLight value) softLight,
    required TResult Function(_FlutterBlendModeSrc value) src,
    required TResult Function(_FlutterBlendModeSrcATop value) srcATop,
    required TResult Function(_FlutterBlendModeSrcIn value) srcIn,
    required TResult Function(_FlutterBlendModeSrcOut value) srcOut,
    required TResult Function(_FlutterBlendModeSrcOver value) srcOver,
    required TResult Function(_FlutterBlendModeXor value) xor,
  }) {
    return luminosity(this);
  }
}

abstract class _FlutterBlendModeLuminosity extends FlutterBlendMode {
  factory _FlutterBlendModeLuminosity() = _$_FlutterBlendModeLuminosity;
  _FlutterBlendModeLuminosity._() : super._();

  factory _FlutterBlendModeLuminosity.fromJson(Map<String, dynamic> json) =
      _$_FlutterBlendModeLuminosity.fromJson;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_FlutterBlendModeModulate extends _FlutterBlendModeModulate {
  _$_FlutterBlendModeModulate({final String? $type})
      : $type = $type ?? 'f:1:BlendMode.modulate',
        super._();

  factory _$_FlutterBlendModeModulate.fromJson(Map<String, dynamic> json) =>
      _$$_FlutterBlendModeModulateFromJson(json);

  @JsonKey(name: 'converter')
  final String $type;

  @override
  String toString() {
    return 'FlutterBlendMode.modulate()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FlutterBlendModeModulate);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FlutterBlendModeClear value) clear,
    required TResult Function(_FlutterBlendModeColor value) color,
    required TResult Function(_FlutterBlendModeColorBurn value) colorBurn,
    required TResult Function(_FlutterBlendModeColorDodge value) colorDodge,
    required TResult Function(_FlutterBlendModeDarken value) darken,
    required TResult Function(_FlutterBlendModeDifference value) difference,
    required TResult Function(_FlutterBlendModeDst value) dst,
    required TResult Function(_FlutterBlendModeDstATop value) dstATop,
    required TResult Function(_FlutterBlendModeDstIn value) dstIn,
    required TResult Function(_FlutterBlendModeDstOut value) dstOut,
    required TResult Function(_FlutterBlendModeDstOver value) dstOver,
    required TResult Function(_FlutterBlendModeExclusion value) exclusion,
    required TResult Function(_FlutterBlendModeHardLight value) hardLight,
    required TResult Function(_FlutterBlendModeHue value) hue,
    required TResult Function(_FlutterBlendModeLighten value) lighten,
    required TResult Function(_FlutterBlendModeLuminosity value) luminosity,
    required TResult Function(_FlutterBlendModeModulate value) modulate,
    required TResult Function(_FlutterBlendModeMultiply value) multiply,
    required TResult Function(_FlutterBlendModeOverlay value) overlay,
    required TResult Function(_FlutterBlendModePlus value) plus,
    required TResult Function(_FlutterBlendModeSaturation value) saturation,
    required TResult Function(_FlutterBlendModeScreen value) screen,
    required TResult Function(_FlutterBlendModeSoftLight value) softLight,
    required TResult Function(_FlutterBlendModeSrc value) src,
    required TResult Function(_FlutterBlendModeSrcATop value) srcATop,
    required TResult Function(_FlutterBlendModeSrcIn value) srcIn,
    required TResult Function(_FlutterBlendModeSrcOut value) srcOut,
    required TResult Function(_FlutterBlendModeSrcOver value) srcOver,
    required TResult Function(_FlutterBlendModeXor value) xor,
  }) {
    return modulate(this);
  }
}

abstract class _FlutterBlendModeModulate extends FlutterBlendMode {
  factory _FlutterBlendModeModulate() = _$_FlutterBlendModeModulate;
  _FlutterBlendModeModulate._() : super._();

  factory _FlutterBlendModeModulate.fromJson(Map<String, dynamic> json) =
      _$_FlutterBlendModeModulate.fromJson;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_FlutterBlendModeMultiply extends _FlutterBlendModeMultiply {
  _$_FlutterBlendModeMultiply({final String? $type})
      : $type = $type ?? 'f:1:BlendMode.multiply',
        super._();

  factory _$_FlutterBlendModeMultiply.fromJson(Map<String, dynamic> json) =>
      _$$_FlutterBlendModeMultiplyFromJson(json);

  @JsonKey(name: 'converter')
  final String $type;

  @override
  String toString() {
    return 'FlutterBlendMode.multiply()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FlutterBlendModeMultiply);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FlutterBlendModeClear value) clear,
    required TResult Function(_FlutterBlendModeColor value) color,
    required TResult Function(_FlutterBlendModeColorBurn value) colorBurn,
    required TResult Function(_FlutterBlendModeColorDodge value) colorDodge,
    required TResult Function(_FlutterBlendModeDarken value) darken,
    required TResult Function(_FlutterBlendModeDifference value) difference,
    required TResult Function(_FlutterBlendModeDst value) dst,
    required TResult Function(_FlutterBlendModeDstATop value) dstATop,
    required TResult Function(_FlutterBlendModeDstIn value) dstIn,
    required TResult Function(_FlutterBlendModeDstOut value) dstOut,
    required TResult Function(_FlutterBlendModeDstOver value) dstOver,
    required TResult Function(_FlutterBlendModeExclusion value) exclusion,
    required TResult Function(_FlutterBlendModeHardLight value) hardLight,
    required TResult Function(_FlutterBlendModeHue value) hue,
    required TResult Function(_FlutterBlendModeLighten value) lighten,
    required TResult Function(_FlutterBlendModeLuminosity value) luminosity,
    required TResult Function(_FlutterBlendModeModulate value) modulate,
    required TResult Function(_FlutterBlendModeMultiply value) multiply,
    required TResult Function(_FlutterBlendModeOverlay value) overlay,
    required TResult Function(_FlutterBlendModePlus value) plus,
    required TResult Function(_FlutterBlendModeSaturation value) saturation,
    required TResult Function(_FlutterBlendModeScreen value) screen,
    required TResult Function(_FlutterBlendModeSoftLight value) softLight,
    required TResult Function(_FlutterBlendModeSrc value) src,
    required TResult Function(_FlutterBlendModeSrcATop value) srcATop,
    required TResult Function(_FlutterBlendModeSrcIn value) srcIn,
    required TResult Function(_FlutterBlendModeSrcOut value) srcOut,
    required TResult Function(_FlutterBlendModeSrcOver value) srcOver,
    required TResult Function(_FlutterBlendModeXor value) xor,
  }) {
    return multiply(this);
  }
}

abstract class _FlutterBlendModeMultiply extends FlutterBlendMode {
  factory _FlutterBlendModeMultiply() = _$_FlutterBlendModeMultiply;
  _FlutterBlendModeMultiply._() : super._();

  factory _FlutterBlendModeMultiply.fromJson(Map<String, dynamic> json) =
      _$_FlutterBlendModeMultiply.fromJson;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_FlutterBlendModeOverlay extends _FlutterBlendModeOverlay {
  _$_FlutterBlendModeOverlay({final String? $type})
      : $type = $type ?? 'f:1:BlendMode.overlay',
        super._();

  factory _$_FlutterBlendModeOverlay.fromJson(Map<String, dynamic> json) =>
      _$$_FlutterBlendModeOverlayFromJson(json);

  @JsonKey(name: 'converter')
  final String $type;

  @override
  String toString() {
    return 'FlutterBlendMode.overlay()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FlutterBlendModeOverlay);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FlutterBlendModeClear value) clear,
    required TResult Function(_FlutterBlendModeColor value) color,
    required TResult Function(_FlutterBlendModeColorBurn value) colorBurn,
    required TResult Function(_FlutterBlendModeColorDodge value) colorDodge,
    required TResult Function(_FlutterBlendModeDarken value) darken,
    required TResult Function(_FlutterBlendModeDifference value) difference,
    required TResult Function(_FlutterBlendModeDst value) dst,
    required TResult Function(_FlutterBlendModeDstATop value) dstATop,
    required TResult Function(_FlutterBlendModeDstIn value) dstIn,
    required TResult Function(_FlutterBlendModeDstOut value) dstOut,
    required TResult Function(_FlutterBlendModeDstOver value) dstOver,
    required TResult Function(_FlutterBlendModeExclusion value) exclusion,
    required TResult Function(_FlutterBlendModeHardLight value) hardLight,
    required TResult Function(_FlutterBlendModeHue value) hue,
    required TResult Function(_FlutterBlendModeLighten value) lighten,
    required TResult Function(_FlutterBlendModeLuminosity value) luminosity,
    required TResult Function(_FlutterBlendModeModulate value) modulate,
    required TResult Function(_FlutterBlendModeMultiply value) multiply,
    required TResult Function(_FlutterBlendModeOverlay value) overlay,
    required TResult Function(_FlutterBlendModePlus value) plus,
    required TResult Function(_FlutterBlendModeSaturation value) saturation,
    required TResult Function(_FlutterBlendModeScreen value) screen,
    required TResult Function(_FlutterBlendModeSoftLight value) softLight,
    required TResult Function(_FlutterBlendModeSrc value) src,
    required TResult Function(_FlutterBlendModeSrcATop value) srcATop,
    required TResult Function(_FlutterBlendModeSrcIn value) srcIn,
    required TResult Function(_FlutterBlendModeSrcOut value) srcOut,
    required TResult Function(_FlutterBlendModeSrcOver value) srcOver,
    required TResult Function(_FlutterBlendModeXor value) xor,
  }) {
    return overlay(this);
  }
}

abstract class _FlutterBlendModeOverlay extends FlutterBlendMode {
  factory _FlutterBlendModeOverlay() = _$_FlutterBlendModeOverlay;
  _FlutterBlendModeOverlay._() : super._();

  factory _FlutterBlendModeOverlay.fromJson(Map<String, dynamic> json) =
      _$_FlutterBlendModeOverlay.fromJson;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_FlutterBlendModePlus extends _FlutterBlendModePlus {
  _$_FlutterBlendModePlus({final String? $type})
      : $type = $type ?? 'f:1:BlendMode.plus',
        super._();

  factory _$_FlutterBlendModePlus.fromJson(Map<String, dynamic> json) =>
      _$$_FlutterBlendModePlusFromJson(json);

  @JsonKey(name: 'converter')
  final String $type;

  @override
  String toString() {
    return 'FlutterBlendMode.plus()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_FlutterBlendModePlus);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FlutterBlendModeClear value) clear,
    required TResult Function(_FlutterBlendModeColor value) color,
    required TResult Function(_FlutterBlendModeColorBurn value) colorBurn,
    required TResult Function(_FlutterBlendModeColorDodge value) colorDodge,
    required TResult Function(_FlutterBlendModeDarken value) darken,
    required TResult Function(_FlutterBlendModeDifference value) difference,
    required TResult Function(_FlutterBlendModeDst value) dst,
    required TResult Function(_FlutterBlendModeDstATop value) dstATop,
    required TResult Function(_FlutterBlendModeDstIn value) dstIn,
    required TResult Function(_FlutterBlendModeDstOut value) dstOut,
    required TResult Function(_FlutterBlendModeDstOver value) dstOver,
    required TResult Function(_FlutterBlendModeExclusion value) exclusion,
    required TResult Function(_FlutterBlendModeHardLight value) hardLight,
    required TResult Function(_FlutterBlendModeHue value) hue,
    required TResult Function(_FlutterBlendModeLighten value) lighten,
    required TResult Function(_FlutterBlendModeLuminosity value) luminosity,
    required TResult Function(_FlutterBlendModeModulate value) modulate,
    required TResult Function(_FlutterBlendModeMultiply value) multiply,
    required TResult Function(_FlutterBlendModeOverlay value) overlay,
    required TResult Function(_FlutterBlendModePlus value) plus,
    required TResult Function(_FlutterBlendModeSaturation value) saturation,
    required TResult Function(_FlutterBlendModeScreen value) screen,
    required TResult Function(_FlutterBlendModeSoftLight value) softLight,
    required TResult Function(_FlutterBlendModeSrc value) src,
    required TResult Function(_FlutterBlendModeSrcATop value) srcATop,
    required TResult Function(_FlutterBlendModeSrcIn value) srcIn,
    required TResult Function(_FlutterBlendModeSrcOut value) srcOut,
    required TResult Function(_FlutterBlendModeSrcOver value) srcOver,
    required TResult Function(_FlutterBlendModeXor value) xor,
  }) {
    return plus(this);
  }
}

abstract class _FlutterBlendModePlus extends FlutterBlendMode {
  factory _FlutterBlendModePlus() = _$_FlutterBlendModePlus;
  _FlutterBlendModePlus._() : super._();

  factory _FlutterBlendModePlus.fromJson(Map<String, dynamic> json) =
      _$_FlutterBlendModePlus.fromJson;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_FlutterBlendModeSaturation extends _FlutterBlendModeSaturation {
  _$_FlutterBlendModeSaturation({final String? $type})
      : $type = $type ?? 'f:1:BlendMode.saturation',
        super._();

  factory _$_FlutterBlendModeSaturation.fromJson(Map<String, dynamic> json) =>
      _$$_FlutterBlendModeSaturationFromJson(json);

  @JsonKey(name: 'converter')
  final String $type;

  @override
  String toString() {
    return 'FlutterBlendMode.saturation()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FlutterBlendModeSaturation);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FlutterBlendModeClear value) clear,
    required TResult Function(_FlutterBlendModeColor value) color,
    required TResult Function(_FlutterBlendModeColorBurn value) colorBurn,
    required TResult Function(_FlutterBlendModeColorDodge value) colorDodge,
    required TResult Function(_FlutterBlendModeDarken value) darken,
    required TResult Function(_FlutterBlendModeDifference value) difference,
    required TResult Function(_FlutterBlendModeDst value) dst,
    required TResult Function(_FlutterBlendModeDstATop value) dstATop,
    required TResult Function(_FlutterBlendModeDstIn value) dstIn,
    required TResult Function(_FlutterBlendModeDstOut value) dstOut,
    required TResult Function(_FlutterBlendModeDstOver value) dstOver,
    required TResult Function(_FlutterBlendModeExclusion value) exclusion,
    required TResult Function(_FlutterBlendModeHardLight value) hardLight,
    required TResult Function(_FlutterBlendModeHue value) hue,
    required TResult Function(_FlutterBlendModeLighten value) lighten,
    required TResult Function(_FlutterBlendModeLuminosity value) luminosity,
    required TResult Function(_FlutterBlendModeModulate value) modulate,
    required TResult Function(_FlutterBlendModeMultiply value) multiply,
    required TResult Function(_FlutterBlendModeOverlay value) overlay,
    required TResult Function(_FlutterBlendModePlus value) plus,
    required TResult Function(_FlutterBlendModeSaturation value) saturation,
    required TResult Function(_FlutterBlendModeScreen value) screen,
    required TResult Function(_FlutterBlendModeSoftLight value) softLight,
    required TResult Function(_FlutterBlendModeSrc value) src,
    required TResult Function(_FlutterBlendModeSrcATop value) srcATop,
    required TResult Function(_FlutterBlendModeSrcIn value) srcIn,
    required TResult Function(_FlutterBlendModeSrcOut value) srcOut,
    required TResult Function(_FlutterBlendModeSrcOver value) srcOver,
    required TResult Function(_FlutterBlendModeXor value) xor,
  }) {
    return saturation(this);
  }
}

abstract class _FlutterBlendModeSaturation extends FlutterBlendMode {
  factory _FlutterBlendModeSaturation() = _$_FlutterBlendModeSaturation;
  _FlutterBlendModeSaturation._() : super._();

  factory _FlutterBlendModeSaturation.fromJson(Map<String, dynamic> json) =
      _$_FlutterBlendModeSaturation.fromJson;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_FlutterBlendModeScreen extends _FlutterBlendModeScreen {
  _$_FlutterBlendModeScreen({final String? $type})
      : $type = $type ?? 'f:1:BlendMode.screen',
        super._();

  factory _$_FlutterBlendModeScreen.fromJson(Map<String, dynamic> json) =>
      _$$_FlutterBlendModeScreenFromJson(json);

  @JsonKey(name: 'converter')
  final String $type;

  @override
  String toString() {
    return 'FlutterBlendMode.screen()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FlutterBlendModeScreen);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FlutterBlendModeClear value) clear,
    required TResult Function(_FlutterBlendModeColor value) color,
    required TResult Function(_FlutterBlendModeColorBurn value) colorBurn,
    required TResult Function(_FlutterBlendModeColorDodge value) colorDodge,
    required TResult Function(_FlutterBlendModeDarken value) darken,
    required TResult Function(_FlutterBlendModeDifference value) difference,
    required TResult Function(_FlutterBlendModeDst value) dst,
    required TResult Function(_FlutterBlendModeDstATop value) dstATop,
    required TResult Function(_FlutterBlendModeDstIn value) dstIn,
    required TResult Function(_FlutterBlendModeDstOut value) dstOut,
    required TResult Function(_FlutterBlendModeDstOver value) dstOver,
    required TResult Function(_FlutterBlendModeExclusion value) exclusion,
    required TResult Function(_FlutterBlendModeHardLight value) hardLight,
    required TResult Function(_FlutterBlendModeHue value) hue,
    required TResult Function(_FlutterBlendModeLighten value) lighten,
    required TResult Function(_FlutterBlendModeLuminosity value) luminosity,
    required TResult Function(_FlutterBlendModeModulate value) modulate,
    required TResult Function(_FlutterBlendModeMultiply value) multiply,
    required TResult Function(_FlutterBlendModeOverlay value) overlay,
    required TResult Function(_FlutterBlendModePlus value) plus,
    required TResult Function(_FlutterBlendModeSaturation value) saturation,
    required TResult Function(_FlutterBlendModeScreen value) screen,
    required TResult Function(_FlutterBlendModeSoftLight value) softLight,
    required TResult Function(_FlutterBlendModeSrc value) src,
    required TResult Function(_FlutterBlendModeSrcATop value) srcATop,
    required TResult Function(_FlutterBlendModeSrcIn value) srcIn,
    required TResult Function(_FlutterBlendModeSrcOut value) srcOut,
    required TResult Function(_FlutterBlendModeSrcOver value) srcOver,
    required TResult Function(_FlutterBlendModeXor value) xor,
  }) {
    return screen(this);
  }
}

abstract class _FlutterBlendModeScreen extends FlutterBlendMode {
  factory _FlutterBlendModeScreen() = _$_FlutterBlendModeScreen;
  _FlutterBlendModeScreen._() : super._();

  factory _FlutterBlendModeScreen.fromJson(Map<String, dynamic> json) =
      _$_FlutterBlendModeScreen.fromJson;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_FlutterBlendModeSoftLight extends _FlutterBlendModeSoftLight {
  _$_FlutterBlendModeSoftLight({final String? $type})
      : $type = $type ?? 'f:1:BlendMode.softLight',
        super._();

  factory _$_FlutterBlendModeSoftLight.fromJson(Map<String, dynamic> json) =>
      _$$_FlutterBlendModeSoftLightFromJson(json);

  @JsonKey(name: 'converter')
  final String $type;

  @override
  String toString() {
    return 'FlutterBlendMode.softLight()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FlutterBlendModeSoftLight);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FlutterBlendModeClear value) clear,
    required TResult Function(_FlutterBlendModeColor value) color,
    required TResult Function(_FlutterBlendModeColorBurn value) colorBurn,
    required TResult Function(_FlutterBlendModeColorDodge value) colorDodge,
    required TResult Function(_FlutterBlendModeDarken value) darken,
    required TResult Function(_FlutterBlendModeDifference value) difference,
    required TResult Function(_FlutterBlendModeDst value) dst,
    required TResult Function(_FlutterBlendModeDstATop value) dstATop,
    required TResult Function(_FlutterBlendModeDstIn value) dstIn,
    required TResult Function(_FlutterBlendModeDstOut value) dstOut,
    required TResult Function(_FlutterBlendModeDstOver value) dstOver,
    required TResult Function(_FlutterBlendModeExclusion value) exclusion,
    required TResult Function(_FlutterBlendModeHardLight value) hardLight,
    required TResult Function(_FlutterBlendModeHue value) hue,
    required TResult Function(_FlutterBlendModeLighten value) lighten,
    required TResult Function(_FlutterBlendModeLuminosity value) luminosity,
    required TResult Function(_FlutterBlendModeModulate value) modulate,
    required TResult Function(_FlutterBlendModeMultiply value) multiply,
    required TResult Function(_FlutterBlendModeOverlay value) overlay,
    required TResult Function(_FlutterBlendModePlus value) plus,
    required TResult Function(_FlutterBlendModeSaturation value) saturation,
    required TResult Function(_FlutterBlendModeScreen value) screen,
    required TResult Function(_FlutterBlendModeSoftLight value) softLight,
    required TResult Function(_FlutterBlendModeSrc value) src,
    required TResult Function(_FlutterBlendModeSrcATop value) srcATop,
    required TResult Function(_FlutterBlendModeSrcIn value) srcIn,
    required TResult Function(_FlutterBlendModeSrcOut value) srcOut,
    required TResult Function(_FlutterBlendModeSrcOver value) srcOver,
    required TResult Function(_FlutterBlendModeXor value) xor,
  }) {
    return softLight(this);
  }
}

abstract class _FlutterBlendModeSoftLight extends FlutterBlendMode {
  factory _FlutterBlendModeSoftLight() = _$_FlutterBlendModeSoftLight;
  _FlutterBlendModeSoftLight._() : super._();

  factory _FlutterBlendModeSoftLight.fromJson(Map<String, dynamic> json) =
      _$_FlutterBlendModeSoftLight.fromJson;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_FlutterBlendModeSrc extends _FlutterBlendModeSrc {
  _$_FlutterBlendModeSrc({final String? $type})
      : $type = $type ?? 'f:1:BlendMode.src',
        super._();

  factory _$_FlutterBlendModeSrc.fromJson(Map<String, dynamic> json) =>
      _$$_FlutterBlendModeSrcFromJson(json);

  @JsonKey(name: 'converter')
  final String $type;

  @override
  String toString() {
    return 'FlutterBlendMode.src()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_FlutterBlendModeSrc);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FlutterBlendModeClear value) clear,
    required TResult Function(_FlutterBlendModeColor value) color,
    required TResult Function(_FlutterBlendModeColorBurn value) colorBurn,
    required TResult Function(_FlutterBlendModeColorDodge value) colorDodge,
    required TResult Function(_FlutterBlendModeDarken value) darken,
    required TResult Function(_FlutterBlendModeDifference value) difference,
    required TResult Function(_FlutterBlendModeDst value) dst,
    required TResult Function(_FlutterBlendModeDstATop value) dstATop,
    required TResult Function(_FlutterBlendModeDstIn value) dstIn,
    required TResult Function(_FlutterBlendModeDstOut value) dstOut,
    required TResult Function(_FlutterBlendModeDstOver value) dstOver,
    required TResult Function(_FlutterBlendModeExclusion value) exclusion,
    required TResult Function(_FlutterBlendModeHardLight value) hardLight,
    required TResult Function(_FlutterBlendModeHue value) hue,
    required TResult Function(_FlutterBlendModeLighten value) lighten,
    required TResult Function(_FlutterBlendModeLuminosity value) luminosity,
    required TResult Function(_FlutterBlendModeModulate value) modulate,
    required TResult Function(_FlutterBlendModeMultiply value) multiply,
    required TResult Function(_FlutterBlendModeOverlay value) overlay,
    required TResult Function(_FlutterBlendModePlus value) plus,
    required TResult Function(_FlutterBlendModeSaturation value) saturation,
    required TResult Function(_FlutterBlendModeScreen value) screen,
    required TResult Function(_FlutterBlendModeSoftLight value) softLight,
    required TResult Function(_FlutterBlendModeSrc value) src,
    required TResult Function(_FlutterBlendModeSrcATop value) srcATop,
    required TResult Function(_FlutterBlendModeSrcIn value) srcIn,
    required TResult Function(_FlutterBlendModeSrcOut value) srcOut,
    required TResult Function(_FlutterBlendModeSrcOver value) srcOver,
    required TResult Function(_FlutterBlendModeXor value) xor,
  }) {
    return src(this);
  }
}

abstract class _FlutterBlendModeSrc extends FlutterBlendMode {
  factory _FlutterBlendModeSrc() = _$_FlutterBlendModeSrc;
  _FlutterBlendModeSrc._() : super._();

  factory _FlutterBlendModeSrc.fromJson(Map<String, dynamic> json) =
      _$_FlutterBlendModeSrc.fromJson;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_FlutterBlendModeSrcATop extends _FlutterBlendModeSrcATop {
  _$_FlutterBlendModeSrcATop({final String? $type})
      : $type = $type ?? 'f:1:BlendMode.srcATop',
        super._();

  factory _$_FlutterBlendModeSrcATop.fromJson(Map<String, dynamic> json) =>
      _$$_FlutterBlendModeSrcATopFromJson(json);

  @JsonKey(name: 'converter')
  final String $type;

  @override
  String toString() {
    return 'FlutterBlendMode.srcATop()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FlutterBlendModeSrcATop);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FlutterBlendModeClear value) clear,
    required TResult Function(_FlutterBlendModeColor value) color,
    required TResult Function(_FlutterBlendModeColorBurn value) colorBurn,
    required TResult Function(_FlutterBlendModeColorDodge value) colorDodge,
    required TResult Function(_FlutterBlendModeDarken value) darken,
    required TResult Function(_FlutterBlendModeDifference value) difference,
    required TResult Function(_FlutterBlendModeDst value) dst,
    required TResult Function(_FlutterBlendModeDstATop value) dstATop,
    required TResult Function(_FlutterBlendModeDstIn value) dstIn,
    required TResult Function(_FlutterBlendModeDstOut value) dstOut,
    required TResult Function(_FlutterBlendModeDstOver value) dstOver,
    required TResult Function(_FlutterBlendModeExclusion value) exclusion,
    required TResult Function(_FlutterBlendModeHardLight value) hardLight,
    required TResult Function(_FlutterBlendModeHue value) hue,
    required TResult Function(_FlutterBlendModeLighten value) lighten,
    required TResult Function(_FlutterBlendModeLuminosity value) luminosity,
    required TResult Function(_FlutterBlendModeModulate value) modulate,
    required TResult Function(_FlutterBlendModeMultiply value) multiply,
    required TResult Function(_FlutterBlendModeOverlay value) overlay,
    required TResult Function(_FlutterBlendModePlus value) plus,
    required TResult Function(_FlutterBlendModeSaturation value) saturation,
    required TResult Function(_FlutterBlendModeScreen value) screen,
    required TResult Function(_FlutterBlendModeSoftLight value) softLight,
    required TResult Function(_FlutterBlendModeSrc value) src,
    required TResult Function(_FlutterBlendModeSrcATop value) srcATop,
    required TResult Function(_FlutterBlendModeSrcIn value) srcIn,
    required TResult Function(_FlutterBlendModeSrcOut value) srcOut,
    required TResult Function(_FlutterBlendModeSrcOver value) srcOver,
    required TResult Function(_FlutterBlendModeXor value) xor,
  }) {
    return srcATop(this);
  }
}

abstract class _FlutterBlendModeSrcATop extends FlutterBlendMode {
  factory _FlutterBlendModeSrcATop() = _$_FlutterBlendModeSrcATop;
  _FlutterBlendModeSrcATop._() : super._();

  factory _FlutterBlendModeSrcATop.fromJson(Map<String, dynamic> json) =
      _$_FlutterBlendModeSrcATop.fromJson;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_FlutterBlendModeSrcIn extends _FlutterBlendModeSrcIn {
  _$_FlutterBlendModeSrcIn({final String? $type})
      : $type = $type ?? 'f:1:BlendMode.srcIn',
        super._();

  factory _$_FlutterBlendModeSrcIn.fromJson(Map<String, dynamic> json) =>
      _$$_FlutterBlendModeSrcInFromJson(json);

  @JsonKey(name: 'converter')
  final String $type;

  @override
  String toString() {
    return 'FlutterBlendMode.srcIn()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_FlutterBlendModeSrcIn);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FlutterBlendModeClear value) clear,
    required TResult Function(_FlutterBlendModeColor value) color,
    required TResult Function(_FlutterBlendModeColorBurn value) colorBurn,
    required TResult Function(_FlutterBlendModeColorDodge value) colorDodge,
    required TResult Function(_FlutterBlendModeDarken value) darken,
    required TResult Function(_FlutterBlendModeDifference value) difference,
    required TResult Function(_FlutterBlendModeDst value) dst,
    required TResult Function(_FlutterBlendModeDstATop value) dstATop,
    required TResult Function(_FlutterBlendModeDstIn value) dstIn,
    required TResult Function(_FlutterBlendModeDstOut value) dstOut,
    required TResult Function(_FlutterBlendModeDstOver value) dstOver,
    required TResult Function(_FlutterBlendModeExclusion value) exclusion,
    required TResult Function(_FlutterBlendModeHardLight value) hardLight,
    required TResult Function(_FlutterBlendModeHue value) hue,
    required TResult Function(_FlutterBlendModeLighten value) lighten,
    required TResult Function(_FlutterBlendModeLuminosity value) luminosity,
    required TResult Function(_FlutterBlendModeModulate value) modulate,
    required TResult Function(_FlutterBlendModeMultiply value) multiply,
    required TResult Function(_FlutterBlendModeOverlay value) overlay,
    required TResult Function(_FlutterBlendModePlus value) plus,
    required TResult Function(_FlutterBlendModeSaturation value) saturation,
    required TResult Function(_FlutterBlendModeScreen value) screen,
    required TResult Function(_FlutterBlendModeSoftLight value) softLight,
    required TResult Function(_FlutterBlendModeSrc value) src,
    required TResult Function(_FlutterBlendModeSrcATop value) srcATop,
    required TResult Function(_FlutterBlendModeSrcIn value) srcIn,
    required TResult Function(_FlutterBlendModeSrcOut value) srcOut,
    required TResult Function(_FlutterBlendModeSrcOver value) srcOver,
    required TResult Function(_FlutterBlendModeXor value) xor,
  }) {
    return srcIn(this);
  }
}

abstract class _FlutterBlendModeSrcIn extends FlutterBlendMode {
  factory _FlutterBlendModeSrcIn() = _$_FlutterBlendModeSrcIn;
  _FlutterBlendModeSrcIn._() : super._();

  factory _FlutterBlendModeSrcIn.fromJson(Map<String, dynamic> json) =
      _$_FlutterBlendModeSrcIn.fromJson;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_FlutterBlendModeSrcOut extends _FlutterBlendModeSrcOut {
  _$_FlutterBlendModeSrcOut({final String? $type})
      : $type = $type ?? 'f:1:BlendMode.srcOut',
        super._();

  factory _$_FlutterBlendModeSrcOut.fromJson(Map<String, dynamic> json) =>
      _$$_FlutterBlendModeSrcOutFromJson(json);

  @JsonKey(name: 'converter')
  final String $type;

  @override
  String toString() {
    return 'FlutterBlendMode.srcOut()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FlutterBlendModeSrcOut);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FlutterBlendModeClear value) clear,
    required TResult Function(_FlutterBlendModeColor value) color,
    required TResult Function(_FlutterBlendModeColorBurn value) colorBurn,
    required TResult Function(_FlutterBlendModeColorDodge value) colorDodge,
    required TResult Function(_FlutterBlendModeDarken value) darken,
    required TResult Function(_FlutterBlendModeDifference value) difference,
    required TResult Function(_FlutterBlendModeDst value) dst,
    required TResult Function(_FlutterBlendModeDstATop value) dstATop,
    required TResult Function(_FlutterBlendModeDstIn value) dstIn,
    required TResult Function(_FlutterBlendModeDstOut value) dstOut,
    required TResult Function(_FlutterBlendModeDstOver value) dstOver,
    required TResult Function(_FlutterBlendModeExclusion value) exclusion,
    required TResult Function(_FlutterBlendModeHardLight value) hardLight,
    required TResult Function(_FlutterBlendModeHue value) hue,
    required TResult Function(_FlutterBlendModeLighten value) lighten,
    required TResult Function(_FlutterBlendModeLuminosity value) luminosity,
    required TResult Function(_FlutterBlendModeModulate value) modulate,
    required TResult Function(_FlutterBlendModeMultiply value) multiply,
    required TResult Function(_FlutterBlendModeOverlay value) overlay,
    required TResult Function(_FlutterBlendModePlus value) plus,
    required TResult Function(_FlutterBlendModeSaturation value) saturation,
    required TResult Function(_FlutterBlendModeScreen value) screen,
    required TResult Function(_FlutterBlendModeSoftLight value) softLight,
    required TResult Function(_FlutterBlendModeSrc value) src,
    required TResult Function(_FlutterBlendModeSrcATop value) srcATop,
    required TResult Function(_FlutterBlendModeSrcIn value) srcIn,
    required TResult Function(_FlutterBlendModeSrcOut value) srcOut,
    required TResult Function(_FlutterBlendModeSrcOver value) srcOver,
    required TResult Function(_FlutterBlendModeXor value) xor,
  }) {
    return srcOut(this);
  }
}

abstract class _FlutterBlendModeSrcOut extends FlutterBlendMode {
  factory _FlutterBlendModeSrcOut() = _$_FlutterBlendModeSrcOut;
  _FlutterBlendModeSrcOut._() : super._();

  factory _FlutterBlendModeSrcOut.fromJson(Map<String, dynamic> json) =
      _$_FlutterBlendModeSrcOut.fromJson;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_FlutterBlendModeSrcOver extends _FlutterBlendModeSrcOver {
  _$_FlutterBlendModeSrcOver({final String? $type})
      : $type = $type ?? 'f:1:BlendMode.srcOver',
        super._();

  factory _$_FlutterBlendModeSrcOver.fromJson(Map<String, dynamic> json) =>
      _$$_FlutterBlendModeSrcOverFromJson(json);

  @JsonKey(name: 'converter')
  final String $type;

  @override
  String toString() {
    return 'FlutterBlendMode.srcOver()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FlutterBlendModeSrcOver);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FlutterBlendModeClear value) clear,
    required TResult Function(_FlutterBlendModeColor value) color,
    required TResult Function(_FlutterBlendModeColorBurn value) colorBurn,
    required TResult Function(_FlutterBlendModeColorDodge value) colorDodge,
    required TResult Function(_FlutterBlendModeDarken value) darken,
    required TResult Function(_FlutterBlendModeDifference value) difference,
    required TResult Function(_FlutterBlendModeDst value) dst,
    required TResult Function(_FlutterBlendModeDstATop value) dstATop,
    required TResult Function(_FlutterBlendModeDstIn value) dstIn,
    required TResult Function(_FlutterBlendModeDstOut value) dstOut,
    required TResult Function(_FlutterBlendModeDstOver value) dstOver,
    required TResult Function(_FlutterBlendModeExclusion value) exclusion,
    required TResult Function(_FlutterBlendModeHardLight value) hardLight,
    required TResult Function(_FlutterBlendModeHue value) hue,
    required TResult Function(_FlutterBlendModeLighten value) lighten,
    required TResult Function(_FlutterBlendModeLuminosity value) luminosity,
    required TResult Function(_FlutterBlendModeModulate value) modulate,
    required TResult Function(_FlutterBlendModeMultiply value) multiply,
    required TResult Function(_FlutterBlendModeOverlay value) overlay,
    required TResult Function(_FlutterBlendModePlus value) plus,
    required TResult Function(_FlutterBlendModeSaturation value) saturation,
    required TResult Function(_FlutterBlendModeScreen value) screen,
    required TResult Function(_FlutterBlendModeSoftLight value) softLight,
    required TResult Function(_FlutterBlendModeSrc value) src,
    required TResult Function(_FlutterBlendModeSrcATop value) srcATop,
    required TResult Function(_FlutterBlendModeSrcIn value) srcIn,
    required TResult Function(_FlutterBlendModeSrcOut value) srcOut,
    required TResult Function(_FlutterBlendModeSrcOver value) srcOver,
    required TResult Function(_FlutterBlendModeXor value) xor,
  }) {
    return srcOver(this);
  }
}

abstract class _FlutterBlendModeSrcOver extends FlutterBlendMode {
  factory _FlutterBlendModeSrcOver() = _$_FlutterBlendModeSrcOver;
  _FlutterBlendModeSrcOver._() : super._();

  factory _FlutterBlendModeSrcOver.fromJson(Map<String, dynamic> json) =
      _$_FlutterBlendModeSrcOver.fromJson;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_FlutterBlendModeXor extends _FlutterBlendModeXor {
  _$_FlutterBlendModeXor({final String? $type})
      : $type = $type ?? 'f:1:BlendMode.xor',
        super._();

  factory _$_FlutterBlendModeXor.fromJson(Map<String, dynamic> json) =>
      _$$_FlutterBlendModeXorFromJson(json);

  @JsonKey(name: 'converter')
  final String $type;

  @override
  String toString() {
    return 'FlutterBlendMode.xor()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_FlutterBlendModeXor);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FlutterBlendModeClear value) clear,
    required TResult Function(_FlutterBlendModeColor value) color,
    required TResult Function(_FlutterBlendModeColorBurn value) colorBurn,
    required TResult Function(_FlutterBlendModeColorDodge value) colorDodge,
    required TResult Function(_FlutterBlendModeDarken value) darken,
    required TResult Function(_FlutterBlendModeDifference value) difference,
    required TResult Function(_FlutterBlendModeDst value) dst,
    required TResult Function(_FlutterBlendModeDstATop value) dstATop,
    required TResult Function(_FlutterBlendModeDstIn value) dstIn,
    required TResult Function(_FlutterBlendModeDstOut value) dstOut,
    required TResult Function(_FlutterBlendModeDstOver value) dstOver,
    required TResult Function(_FlutterBlendModeExclusion value) exclusion,
    required TResult Function(_FlutterBlendModeHardLight value) hardLight,
    required TResult Function(_FlutterBlendModeHue value) hue,
    required TResult Function(_FlutterBlendModeLighten value) lighten,
    required TResult Function(_FlutterBlendModeLuminosity value) luminosity,
    required TResult Function(_FlutterBlendModeModulate value) modulate,
    required TResult Function(_FlutterBlendModeMultiply value) multiply,
    required TResult Function(_FlutterBlendModeOverlay value) overlay,
    required TResult Function(_FlutterBlendModePlus value) plus,
    required TResult Function(_FlutterBlendModeSaturation value) saturation,
    required TResult Function(_FlutterBlendModeScreen value) screen,
    required TResult Function(_FlutterBlendModeSoftLight value) softLight,
    required TResult Function(_FlutterBlendModeSrc value) src,
    required TResult Function(_FlutterBlendModeSrcATop value) srcATop,
    required TResult Function(_FlutterBlendModeSrcIn value) srcIn,
    required TResult Function(_FlutterBlendModeSrcOut value) srcOut,
    required TResult Function(_FlutterBlendModeSrcOver value) srcOver,
    required TResult Function(_FlutterBlendModeXor value) xor,
  }) {
    return xor(this);
  }
}

abstract class _FlutterBlendModeXor extends FlutterBlendMode {
  factory _FlutterBlendModeXor() = _$_FlutterBlendModeXor;
  _FlutterBlendModeXor._() : super._();

  factory _FlutterBlendModeXor.fromJson(Map<String, dynamic> json) =
      _$_FlutterBlendModeXor.fromJson;
}

FlutterRect _$FlutterRectFromJson(Map<String, dynamic> json) {
  switch (json['converter']) {
    case 'f:1:Rect.fromCenter':
      return _FlutterRectFroMCenter.fromJson(json);
    case 'f:1:Rect.fromCircle':
      return _FlutterRectFromCircle.fromJson(json);
    case 'f:1:Rect.fromLTRB':
      return _FlutterRectFromLTRB.fromJson(json);
    case 'f:1:Rect.fromLTWH':
      return _FlutterRectFromLTWH.fromJson(json);
    case 'f:1:Rect.fromPoints':
      return _FlutterRectFromPoints.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'converter', 'FlutterRect',
          'Invalid union type "${json['converter']}"!');
  }
}

/// @nodoc
mixin _$FlutterRect {
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FlutterRectFroMCenter value) fromCenter,
    required TResult Function(_FlutterRectFromCircle value) fromCircle,
    required TResult Function(_FlutterRectFromLTRB value) fromLTRB,
    required TResult Function(_FlutterRectFromLTWH value) fromLTWH,
    required TResult Function(_FlutterRectFromPoints value) fromPoints,
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_FlutterRectFroMCenter extends _FlutterRectFroMCenter {
  _$_FlutterRectFroMCenter(
      {required this.center,
      required this.width,
      required this.height,
      final String? $type})
      : $type = $type ?? 'f:1:Rect.fromCenter',
        super._();

  factory _$_FlutterRectFroMCenter.fromJson(Map<String, dynamic> json) =>
      _$$_FlutterRectFroMCenterFromJson(json);

  @override
  final FlutterOffset center;
  @override
  final ZacValue<double> width;
  @override
  final ZacValue<double> height;

  @JsonKey(name: 'converter')
  final String $type;

  @override
  String toString() {
    return 'FlutterRect.fromCenter(center: $center, width: $width, height: $height)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FlutterRectFroMCenter &&
            (identical(other.center, center) || other.center == center) &&
            (identical(other.width, width) || other.width == width) &&
            (identical(other.height, height) || other.height == height));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, center, width, height);

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FlutterRectFroMCenter value) fromCenter,
    required TResult Function(_FlutterRectFromCircle value) fromCircle,
    required TResult Function(_FlutterRectFromLTRB value) fromLTRB,
    required TResult Function(_FlutterRectFromLTWH value) fromLTWH,
    required TResult Function(_FlutterRectFromPoints value) fromPoints,
  }) {
    return fromCenter(this);
  }
}

abstract class _FlutterRectFroMCenter extends FlutterRect {
  factory _FlutterRectFroMCenter(
      {required final FlutterOffset center,
      required final ZacValue<double> width,
      required final ZacValue<double> height}) = _$_FlutterRectFroMCenter;
  _FlutterRectFroMCenter._() : super._();

  factory _FlutterRectFroMCenter.fromJson(Map<String, dynamic> json) =
      _$_FlutterRectFroMCenter.fromJson;

  FlutterOffset get center;
  ZacValue<double> get width;
  ZacValue<double> get height;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_FlutterRectFromCircle extends _FlutterRectFromCircle {
  _$_FlutterRectFromCircle(
      {required this.center, required this.radius, final String? $type})
      : $type = $type ?? 'f:1:Rect.fromCircle',
        super._();

  factory _$_FlutterRectFromCircle.fromJson(Map<String, dynamic> json) =>
      _$$_FlutterRectFromCircleFromJson(json);

  @override
  final FlutterOffset center;
  @override
  final ZacValue<double> radius;

  @JsonKey(name: 'converter')
  final String $type;

  @override
  String toString() {
    return 'FlutterRect.fromCircle(center: $center, radius: $radius)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FlutterRectFromCircle &&
            (identical(other.center, center) || other.center == center) &&
            (identical(other.radius, radius) || other.radius == radius));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, center, radius);

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FlutterRectFroMCenter value) fromCenter,
    required TResult Function(_FlutterRectFromCircle value) fromCircle,
    required TResult Function(_FlutterRectFromLTRB value) fromLTRB,
    required TResult Function(_FlutterRectFromLTWH value) fromLTWH,
    required TResult Function(_FlutterRectFromPoints value) fromPoints,
  }) {
    return fromCircle(this);
  }
}

abstract class _FlutterRectFromCircle extends FlutterRect {
  factory _FlutterRectFromCircle(
      {required final FlutterOffset center,
      required final ZacValue<double> radius}) = _$_FlutterRectFromCircle;
  _FlutterRectFromCircle._() : super._();

  factory _FlutterRectFromCircle.fromJson(Map<String, dynamic> json) =
      _$_FlutterRectFromCircle.fromJson;

  FlutterOffset get center;
  ZacValue<double> get radius;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_FlutterRectFromLTRB extends _FlutterRectFromLTRB {
  _$_FlutterRectFromLTRB(this.left, this.top, this.right, this.bottom,
      {final String? $type})
      : $type = $type ?? 'f:1:Rect.fromLTRB',
        super._();

  factory _$_FlutterRectFromLTRB.fromJson(Map<String, dynamic> json) =>
      _$$_FlutterRectFromLTRBFromJson(json);

  @override
  final ZacValue<double> left;
  @override
  final ZacValue<double> top;
  @override
  final ZacValue<double> right;
  @override
  final ZacValue<double> bottom;

  @JsonKey(name: 'converter')
  final String $type;

  @override
  String toString() {
    return 'FlutterRect.fromLTRB(left: $left, top: $top, right: $right, bottom: $bottom)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FlutterRectFromLTRB &&
            (identical(other.left, left) || other.left == left) &&
            (identical(other.top, top) || other.top == top) &&
            (identical(other.right, right) || other.right == right) &&
            (identical(other.bottom, bottom) || other.bottom == bottom));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, left, top, right, bottom);

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FlutterRectFroMCenter value) fromCenter,
    required TResult Function(_FlutterRectFromCircle value) fromCircle,
    required TResult Function(_FlutterRectFromLTRB value) fromLTRB,
    required TResult Function(_FlutterRectFromLTWH value) fromLTWH,
    required TResult Function(_FlutterRectFromPoints value) fromPoints,
  }) {
    return fromLTRB(this);
  }
}

abstract class _FlutterRectFromLTRB extends FlutterRect {
  factory _FlutterRectFromLTRB(
      final ZacValue<double> left,
      final ZacValue<double> top,
      final ZacValue<double> right,
      final ZacValue<double> bottom) = _$_FlutterRectFromLTRB;
  _FlutterRectFromLTRB._() : super._();

  factory _FlutterRectFromLTRB.fromJson(Map<String, dynamic> json) =
      _$_FlutterRectFromLTRB.fromJson;

  ZacValue<double> get left;
  ZacValue<double> get top;
  ZacValue<double> get right;
  ZacValue<double> get bottom;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_FlutterRectFromLTWH extends _FlutterRectFromLTWH {
  _$_FlutterRectFromLTWH(this.left, this.top, this.width, this.height,
      {final String? $type})
      : $type = $type ?? 'f:1:Rect.fromLTWH',
        super._();

  factory _$_FlutterRectFromLTWH.fromJson(Map<String, dynamic> json) =>
      _$$_FlutterRectFromLTWHFromJson(json);

  @override
  final ZacValue<double> left;
  @override
  final ZacValue<double> top;
  @override
  final ZacValue<double> width;
  @override
  final ZacValue<double> height;

  @JsonKey(name: 'converter')
  final String $type;

  @override
  String toString() {
    return 'FlutterRect.fromLTWH(left: $left, top: $top, width: $width, height: $height)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FlutterRectFromLTWH &&
            (identical(other.left, left) || other.left == left) &&
            (identical(other.top, top) || other.top == top) &&
            (identical(other.width, width) || other.width == width) &&
            (identical(other.height, height) || other.height == height));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, left, top, width, height);

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FlutterRectFroMCenter value) fromCenter,
    required TResult Function(_FlutterRectFromCircle value) fromCircle,
    required TResult Function(_FlutterRectFromLTRB value) fromLTRB,
    required TResult Function(_FlutterRectFromLTWH value) fromLTWH,
    required TResult Function(_FlutterRectFromPoints value) fromPoints,
  }) {
    return fromLTWH(this);
  }
}

abstract class _FlutterRectFromLTWH extends FlutterRect {
  factory _FlutterRectFromLTWH(
      final ZacValue<double> left,
      final ZacValue<double> top,
      final ZacValue<double> width,
      final ZacValue<double> height) = _$_FlutterRectFromLTWH;
  _FlutterRectFromLTWH._() : super._();

  factory _FlutterRectFromLTWH.fromJson(Map<String, dynamic> json) =
      _$_FlutterRectFromLTWH.fromJson;

  ZacValue<double> get left;
  ZacValue<double> get top;
  ZacValue<double> get width;
  ZacValue<double> get height;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_FlutterRectFromPoints extends _FlutterRectFromPoints {
  _$_FlutterRectFromPoints(this.a, this.b, {final String? $type})
      : $type = $type ?? 'f:1:Rect.fromPoints',
        super._();

  factory _$_FlutterRectFromPoints.fromJson(Map<String, dynamic> json) =>
      _$$_FlutterRectFromPointsFromJson(json);

  @override
  final FlutterOffset a;
  @override
  final FlutterOffset b;

  @JsonKey(name: 'converter')
  final String $type;

  @override
  String toString() {
    return 'FlutterRect.fromPoints(a: $a, b: $b)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FlutterRectFromPoints &&
            (identical(other.a, a) || other.a == a) &&
            (identical(other.b, b) || other.b == b));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, a, b);

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FlutterRectFroMCenter value) fromCenter,
    required TResult Function(_FlutterRectFromCircle value) fromCircle,
    required TResult Function(_FlutterRectFromLTRB value) fromLTRB,
    required TResult Function(_FlutterRectFromLTWH value) fromLTWH,
    required TResult Function(_FlutterRectFromPoints value) fromPoints,
  }) {
    return fromPoints(this);
  }
}

abstract class _FlutterRectFromPoints extends FlutterRect {
  factory _FlutterRectFromPoints(final FlutterOffset a, final FlutterOffset b) =
      _$_FlutterRectFromPoints;
  _FlutterRectFromPoints._() : super._();

  factory _FlutterRectFromPoints.fromJson(Map<String, dynamic> json) =
      _$_FlutterRectFromPoints.fromJson;

  FlutterOffset get a;
  FlutterOffset get b;
}

FlutterFilterQuality _$FlutterFilterQualityFromJson(Map<String, dynamic> json) {
  switch (json['converter']) {
    case 'f:1:FilterQuality.high':
      return _FlutterFilterQualityHigh.fromJson(json);
    case 'f:1:FilterQuality.low':
      return _FlutterFilterQualityLow.fromJson(json);
    case 'f:1:FilterQuality.medium':
      return _FlutterFilterQualityMedium.fromJson(json);
    case 'f:1:FilterQuality.none':
      return _FlutterFilterQualityNone.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'converter', 'FlutterFilterQuality',
          'Invalid union type "${json['converter']}"!');
  }
}

/// @nodoc
mixin _$FlutterFilterQuality {
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FlutterFilterQualityHigh value) high,
    required TResult Function(_FlutterFilterQualityLow value) low,
    required TResult Function(_FlutterFilterQualityMedium value) medium,
    required TResult Function(_FlutterFilterQualityNone value) none,
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_FlutterFilterQualityHigh extends _FlutterFilterQualityHigh {
  _$_FlutterFilterQualityHigh({final String? $type})
      : $type = $type ?? 'f:1:FilterQuality.high',
        super._();

  factory _$_FlutterFilterQualityHigh.fromJson(Map<String, dynamic> json) =>
      _$$_FlutterFilterQualityHighFromJson(json);

  @JsonKey(name: 'converter')
  final String $type;

  @override
  String toString() {
    return 'FlutterFilterQuality.high()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FlutterFilterQualityHigh);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FlutterFilterQualityHigh value) high,
    required TResult Function(_FlutterFilterQualityLow value) low,
    required TResult Function(_FlutterFilterQualityMedium value) medium,
    required TResult Function(_FlutterFilterQualityNone value) none,
  }) {
    return high(this);
  }
}

abstract class _FlutterFilterQualityHigh extends FlutterFilterQuality {
  factory _FlutterFilterQualityHigh() = _$_FlutterFilterQualityHigh;
  _FlutterFilterQualityHigh._() : super._();

  factory _FlutterFilterQualityHigh.fromJson(Map<String, dynamic> json) =
      _$_FlutterFilterQualityHigh.fromJson;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_FlutterFilterQualityLow extends _FlutterFilterQualityLow {
  _$_FlutterFilterQualityLow({final String? $type})
      : $type = $type ?? 'f:1:FilterQuality.low',
        super._();

  factory _$_FlutterFilterQualityLow.fromJson(Map<String, dynamic> json) =>
      _$$_FlutterFilterQualityLowFromJson(json);

  @JsonKey(name: 'converter')
  final String $type;

  @override
  String toString() {
    return 'FlutterFilterQuality.low()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FlutterFilterQualityLow);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FlutterFilterQualityHigh value) high,
    required TResult Function(_FlutterFilterQualityLow value) low,
    required TResult Function(_FlutterFilterQualityMedium value) medium,
    required TResult Function(_FlutterFilterQualityNone value) none,
  }) {
    return low(this);
  }
}

abstract class _FlutterFilterQualityLow extends FlutterFilterQuality {
  factory _FlutterFilterQualityLow() = _$_FlutterFilterQualityLow;
  _FlutterFilterQualityLow._() : super._();

  factory _FlutterFilterQualityLow.fromJson(Map<String, dynamic> json) =
      _$_FlutterFilterQualityLow.fromJson;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_FlutterFilterQualityMedium extends _FlutterFilterQualityMedium {
  _$_FlutterFilterQualityMedium({final String? $type})
      : $type = $type ?? 'f:1:FilterQuality.medium',
        super._();

  factory _$_FlutterFilterQualityMedium.fromJson(Map<String, dynamic> json) =>
      _$$_FlutterFilterQualityMediumFromJson(json);

  @JsonKey(name: 'converter')
  final String $type;

  @override
  String toString() {
    return 'FlutterFilterQuality.medium()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FlutterFilterQualityMedium);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FlutterFilterQualityHigh value) high,
    required TResult Function(_FlutterFilterQualityLow value) low,
    required TResult Function(_FlutterFilterQualityMedium value) medium,
    required TResult Function(_FlutterFilterQualityNone value) none,
  }) {
    return medium(this);
  }
}

abstract class _FlutterFilterQualityMedium extends FlutterFilterQuality {
  factory _FlutterFilterQualityMedium() = _$_FlutterFilterQualityMedium;
  _FlutterFilterQualityMedium._() : super._();

  factory _FlutterFilterQualityMedium.fromJson(Map<String, dynamic> json) =
      _$_FlutterFilterQualityMedium.fromJson;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_FlutterFilterQualityNone extends _FlutterFilterQualityNone {
  _$_FlutterFilterQualityNone({final String? $type})
      : $type = $type ?? 'f:1:FilterQuality.none',
        super._();

  factory _$_FlutterFilterQualityNone.fromJson(Map<String, dynamic> json) =>
      _$$_FlutterFilterQualityNoneFromJson(json);

  @JsonKey(name: 'converter')
  final String $type;

  @override
  String toString() {
    return 'FlutterFilterQuality.none()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FlutterFilterQualityNone);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FlutterFilterQualityHigh value) high,
    required TResult Function(_FlutterFilterQualityLow value) low,
    required TResult Function(_FlutterFilterQualityMedium value) medium,
    required TResult Function(_FlutterFilterQualityNone value) none,
  }) {
    return none(this);
  }
}

abstract class _FlutterFilterQualityNone extends FlutterFilterQuality {
  factory _FlutterFilterQualityNone() = _$_FlutterFilterQualityNone;
  _FlutterFilterQualityNone._() : super._();

  factory _FlutterFilterQualityNone.fromJson(Map<String, dynamic> json) =
      _$_FlutterFilterQualityNone.fromJson;
}

FlutterBrightness _$FlutterBrightnessFromJson(Map<String, dynamic> json) {
  switch (json['converter']) {
    case 'f:1:Brightness.dark':
      return _FlutterBrightnessDark.fromJson(json);
    case 'f:1:Brightness.light':
      return _FlutterBrightnessLight.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'converter', 'FlutterBrightness',
          'Invalid union type "${json['converter']}"!');
  }
}

/// @nodoc
mixin _$FlutterBrightness {
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FlutterBrightnessDark value) dark,
    required TResult Function(_FlutterBrightnessLight value) light,
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_FlutterBrightnessDark extends _FlutterBrightnessDark {
  _$_FlutterBrightnessDark({final String? $type})
      : $type = $type ?? 'f:1:Brightness.dark',
        super._();

  factory _$_FlutterBrightnessDark.fromJson(Map<String, dynamic> json) =>
      _$$_FlutterBrightnessDarkFromJson(json);

  @JsonKey(name: 'converter')
  final String $type;

  @override
  String toString() {
    return 'FlutterBrightness.dark()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_FlutterBrightnessDark);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FlutterBrightnessDark value) dark,
    required TResult Function(_FlutterBrightnessLight value) light,
  }) {
    return dark(this);
  }
}

abstract class _FlutterBrightnessDark extends FlutterBrightness {
  factory _FlutterBrightnessDark() = _$_FlutterBrightnessDark;
  _FlutterBrightnessDark._() : super._();

  factory _FlutterBrightnessDark.fromJson(Map<String, dynamic> json) =
      _$_FlutterBrightnessDark.fromJson;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_FlutterBrightnessLight extends _FlutterBrightnessLight {
  _$_FlutterBrightnessLight({final String? $type})
      : $type = $type ?? 'f:1:Brightness.light',
        super._();

  factory _$_FlutterBrightnessLight.fromJson(Map<String, dynamic> json) =>
      _$$_FlutterBrightnessLightFromJson(json);

  @JsonKey(name: 'converter')
  final String $type;

  @override
  String toString() {
    return 'FlutterBrightness.light()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FlutterBrightnessLight);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FlutterBrightnessDark value) dark,
    required TResult Function(_FlutterBrightnessLight value) light,
  }) {
    return light(this);
  }
}

abstract class _FlutterBrightnessLight extends FlutterBrightness {
  factory _FlutterBrightnessLight() = _$_FlutterBrightnessLight;
  _FlutterBrightnessLight._() : super._();

  factory _FlutterBrightnessLight.fromJson(Map<String, dynamic> json) =
      _$_FlutterBrightnessLight.fromJson;
}

FlutterSize _$FlutterSizeFromJson(Map<String, dynamic> json) {
  return _FlutterSize.fromJson(json);
}

/// @nodoc
mixin _$FlutterSize {
  ZacValue<double> get width => throw _privateConstructorUsedError;
  ZacValue<double> get height => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_FlutterSize value) $default,
  ) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_FlutterSize extends _FlutterSize {
  _$_FlutterSize(this.width, this.height) : super._();

  factory _$_FlutterSize.fromJson(Map<String, dynamic> json) =>
      _$$_FlutterSizeFromJson(json);

  @override
  final ZacValue<double> width;
  @override
  final ZacValue<double> height;

  @override
  String toString() {
    return 'FlutterSize(width: $width, height: $height)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FlutterSize &&
            (identical(other.width, width) || other.width == width) &&
            (identical(other.height, height) || other.height == height));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, width, height);

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_FlutterSize value) $default,
  ) {
    return $default(this);
  }
}

abstract class _FlutterSize extends FlutterSize {
  factory _FlutterSize(
          final ZacValue<double> width, final ZacValue<double> height) =
      _$_FlutterSize;
  _FlutterSize._() : super._();

  factory _FlutterSize.fromJson(Map<String, dynamic> json) =
      _$_FlutterSize.fromJson;

  @override
  ZacValue<double> get width;
  @override
  ZacValue<double> get height;
}

FlutterBoxHeightStyle _$FlutterBoxHeightStyleFromJson(
    Map<String, dynamic> json) {
  switch (json['converter']) {
    case 'f:1:BoxHeightStyle.includeLineSpacingBottom':
      return _FlutterBoxHeightStyleincludeLineSpacingBottom.fromJson(json);
    case 'f:1:BoxHeightStyle.includeLineSpacingMiddle':
      return _FlutterBoxHeightStyleincludeLineSpacingMiddle.fromJson(json);
    case 'f:1:BoxHeightStyle.includeLineSpacingTop':
      return _FlutterBoxHeightStyleincludeLineSpacingTop.fromJson(json);
    case 'f:1:BoxHeightStyle.max':
      return _FlutterBoxHeightStylemax.fromJson(json);
    case 'f:1:BoxHeightStyle.strut':
      return _FlutterBoxHeightStylestrut.fromJson(json);
    case 'f:1:BoxHeightStyle.tight':
      return _FlutterBoxHeightStyletight.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'converter', 'FlutterBoxHeightStyle',
          'Invalid union type "${json['converter']}"!');
  }
}

/// @nodoc
mixin _$FlutterBoxHeightStyle {
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(
            _FlutterBoxHeightStyleincludeLineSpacingBottom value)
        includeLineSpacingBottom,
    required TResult Function(
            _FlutterBoxHeightStyleincludeLineSpacingMiddle value)
        includeLineSpacingMiddle,
    required TResult Function(_FlutterBoxHeightStyleincludeLineSpacingTop value)
        includeLineSpacingTop,
    required TResult Function(_FlutterBoxHeightStylemax value) max,
    required TResult Function(_FlutterBoxHeightStylestrut value) strut,
    required TResult Function(_FlutterBoxHeightStyletight value) tight,
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_FlutterBoxHeightStyleincludeLineSpacingBottom
    extends _FlutterBoxHeightStyleincludeLineSpacingBottom {
  _$_FlutterBoxHeightStyleincludeLineSpacingBottom({final String? $type})
      : $type = $type ?? 'f:1:BoxHeightStyle.includeLineSpacingBottom',
        super._();

  factory _$_FlutterBoxHeightStyleincludeLineSpacingBottom.fromJson(
          Map<String, dynamic> json) =>
      _$$_FlutterBoxHeightStyleincludeLineSpacingBottomFromJson(json);

  @JsonKey(name: 'converter')
  final String $type;

  @override
  String toString() {
    return 'FlutterBoxHeightStyle.includeLineSpacingBottom()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FlutterBoxHeightStyleincludeLineSpacingBottom);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(
            _FlutterBoxHeightStyleincludeLineSpacingBottom value)
        includeLineSpacingBottom,
    required TResult Function(
            _FlutterBoxHeightStyleincludeLineSpacingMiddle value)
        includeLineSpacingMiddle,
    required TResult Function(_FlutterBoxHeightStyleincludeLineSpacingTop value)
        includeLineSpacingTop,
    required TResult Function(_FlutterBoxHeightStylemax value) max,
    required TResult Function(_FlutterBoxHeightStylestrut value) strut,
    required TResult Function(_FlutterBoxHeightStyletight value) tight,
  }) {
    return includeLineSpacingBottom(this);
  }
}

abstract class _FlutterBoxHeightStyleincludeLineSpacingBottom
    extends FlutterBoxHeightStyle {
  factory _FlutterBoxHeightStyleincludeLineSpacingBottom() =
      _$_FlutterBoxHeightStyleincludeLineSpacingBottom;
  _FlutterBoxHeightStyleincludeLineSpacingBottom._() : super._();

  factory _FlutterBoxHeightStyleincludeLineSpacingBottom.fromJson(
          Map<String, dynamic> json) =
      _$_FlutterBoxHeightStyleincludeLineSpacingBottom.fromJson;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_FlutterBoxHeightStyleincludeLineSpacingMiddle
    extends _FlutterBoxHeightStyleincludeLineSpacingMiddle {
  _$_FlutterBoxHeightStyleincludeLineSpacingMiddle({final String? $type})
      : $type = $type ?? 'f:1:BoxHeightStyle.includeLineSpacingMiddle',
        super._();

  factory _$_FlutterBoxHeightStyleincludeLineSpacingMiddle.fromJson(
          Map<String, dynamic> json) =>
      _$$_FlutterBoxHeightStyleincludeLineSpacingMiddleFromJson(json);

  @JsonKey(name: 'converter')
  final String $type;

  @override
  String toString() {
    return 'FlutterBoxHeightStyle.includeLineSpacingMiddle()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FlutterBoxHeightStyleincludeLineSpacingMiddle);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(
            _FlutterBoxHeightStyleincludeLineSpacingBottom value)
        includeLineSpacingBottom,
    required TResult Function(
            _FlutterBoxHeightStyleincludeLineSpacingMiddle value)
        includeLineSpacingMiddle,
    required TResult Function(_FlutterBoxHeightStyleincludeLineSpacingTop value)
        includeLineSpacingTop,
    required TResult Function(_FlutterBoxHeightStylemax value) max,
    required TResult Function(_FlutterBoxHeightStylestrut value) strut,
    required TResult Function(_FlutterBoxHeightStyletight value) tight,
  }) {
    return includeLineSpacingMiddle(this);
  }
}

abstract class _FlutterBoxHeightStyleincludeLineSpacingMiddle
    extends FlutterBoxHeightStyle {
  factory _FlutterBoxHeightStyleincludeLineSpacingMiddle() =
      _$_FlutterBoxHeightStyleincludeLineSpacingMiddle;
  _FlutterBoxHeightStyleincludeLineSpacingMiddle._() : super._();

  factory _FlutterBoxHeightStyleincludeLineSpacingMiddle.fromJson(
          Map<String, dynamic> json) =
      _$_FlutterBoxHeightStyleincludeLineSpacingMiddle.fromJson;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_FlutterBoxHeightStyleincludeLineSpacingTop
    extends _FlutterBoxHeightStyleincludeLineSpacingTop {
  _$_FlutterBoxHeightStyleincludeLineSpacingTop({final String? $type})
      : $type = $type ?? 'f:1:BoxHeightStyle.includeLineSpacingTop',
        super._();

  factory _$_FlutterBoxHeightStyleincludeLineSpacingTop.fromJson(
          Map<String, dynamic> json) =>
      _$$_FlutterBoxHeightStyleincludeLineSpacingTopFromJson(json);

  @JsonKey(name: 'converter')
  final String $type;

  @override
  String toString() {
    return 'FlutterBoxHeightStyle.includeLineSpacingTop()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FlutterBoxHeightStyleincludeLineSpacingTop);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(
            _FlutterBoxHeightStyleincludeLineSpacingBottom value)
        includeLineSpacingBottom,
    required TResult Function(
            _FlutterBoxHeightStyleincludeLineSpacingMiddle value)
        includeLineSpacingMiddle,
    required TResult Function(_FlutterBoxHeightStyleincludeLineSpacingTop value)
        includeLineSpacingTop,
    required TResult Function(_FlutterBoxHeightStylemax value) max,
    required TResult Function(_FlutterBoxHeightStylestrut value) strut,
    required TResult Function(_FlutterBoxHeightStyletight value) tight,
  }) {
    return includeLineSpacingTop(this);
  }
}

abstract class _FlutterBoxHeightStyleincludeLineSpacingTop
    extends FlutterBoxHeightStyle {
  factory _FlutterBoxHeightStyleincludeLineSpacingTop() =
      _$_FlutterBoxHeightStyleincludeLineSpacingTop;
  _FlutterBoxHeightStyleincludeLineSpacingTop._() : super._();

  factory _FlutterBoxHeightStyleincludeLineSpacingTop.fromJson(
          Map<String, dynamic> json) =
      _$_FlutterBoxHeightStyleincludeLineSpacingTop.fromJson;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_FlutterBoxHeightStylemax extends _FlutterBoxHeightStylemax {
  _$_FlutterBoxHeightStylemax({final String? $type})
      : $type = $type ?? 'f:1:BoxHeightStyle.max',
        super._();

  factory _$_FlutterBoxHeightStylemax.fromJson(Map<String, dynamic> json) =>
      _$$_FlutterBoxHeightStylemaxFromJson(json);

  @JsonKey(name: 'converter')
  final String $type;

  @override
  String toString() {
    return 'FlutterBoxHeightStyle.max()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FlutterBoxHeightStylemax);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(
            _FlutterBoxHeightStyleincludeLineSpacingBottom value)
        includeLineSpacingBottom,
    required TResult Function(
            _FlutterBoxHeightStyleincludeLineSpacingMiddle value)
        includeLineSpacingMiddle,
    required TResult Function(_FlutterBoxHeightStyleincludeLineSpacingTop value)
        includeLineSpacingTop,
    required TResult Function(_FlutterBoxHeightStylemax value) max,
    required TResult Function(_FlutterBoxHeightStylestrut value) strut,
    required TResult Function(_FlutterBoxHeightStyletight value) tight,
  }) {
    return max(this);
  }
}

abstract class _FlutterBoxHeightStylemax extends FlutterBoxHeightStyle {
  factory _FlutterBoxHeightStylemax() = _$_FlutterBoxHeightStylemax;
  _FlutterBoxHeightStylemax._() : super._();

  factory _FlutterBoxHeightStylemax.fromJson(Map<String, dynamic> json) =
      _$_FlutterBoxHeightStylemax.fromJson;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_FlutterBoxHeightStylestrut extends _FlutterBoxHeightStylestrut {
  _$_FlutterBoxHeightStylestrut({final String? $type})
      : $type = $type ?? 'f:1:BoxHeightStyle.strut',
        super._();

  factory _$_FlutterBoxHeightStylestrut.fromJson(Map<String, dynamic> json) =>
      _$$_FlutterBoxHeightStylestrutFromJson(json);

  @JsonKey(name: 'converter')
  final String $type;

  @override
  String toString() {
    return 'FlutterBoxHeightStyle.strut()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FlutterBoxHeightStylestrut);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(
            _FlutterBoxHeightStyleincludeLineSpacingBottom value)
        includeLineSpacingBottom,
    required TResult Function(
            _FlutterBoxHeightStyleincludeLineSpacingMiddle value)
        includeLineSpacingMiddle,
    required TResult Function(_FlutterBoxHeightStyleincludeLineSpacingTop value)
        includeLineSpacingTop,
    required TResult Function(_FlutterBoxHeightStylemax value) max,
    required TResult Function(_FlutterBoxHeightStylestrut value) strut,
    required TResult Function(_FlutterBoxHeightStyletight value) tight,
  }) {
    return strut(this);
  }
}

abstract class _FlutterBoxHeightStylestrut extends FlutterBoxHeightStyle {
  factory _FlutterBoxHeightStylestrut() = _$_FlutterBoxHeightStylestrut;
  _FlutterBoxHeightStylestrut._() : super._();

  factory _FlutterBoxHeightStylestrut.fromJson(Map<String, dynamic> json) =
      _$_FlutterBoxHeightStylestrut.fromJson;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_FlutterBoxHeightStyletight extends _FlutterBoxHeightStyletight {
  _$_FlutterBoxHeightStyletight({final String? $type})
      : $type = $type ?? 'f:1:BoxHeightStyle.tight',
        super._();

  factory _$_FlutterBoxHeightStyletight.fromJson(Map<String, dynamic> json) =>
      _$$_FlutterBoxHeightStyletightFromJson(json);

  @JsonKey(name: 'converter')
  final String $type;

  @override
  String toString() {
    return 'FlutterBoxHeightStyle.tight()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FlutterBoxHeightStyletight);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(
            _FlutterBoxHeightStyleincludeLineSpacingBottom value)
        includeLineSpacingBottom,
    required TResult Function(
            _FlutterBoxHeightStyleincludeLineSpacingMiddle value)
        includeLineSpacingMiddle,
    required TResult Function(_FlutterBoxHeightStyleincludeLineSpacingTop value)
        includeLineSpacingTop,
    required TResult Function(_FlutterBoxHeightStylemax value) max,
    required TResult Function(_FlutterBoxHeightStylestrut value) strut,
    required TResult Function(_FlutterBoxHeightStyletight value) tight,
  }) {
    return tight(this);
  }
}

abstract class _FlutterBoxHeightStyletight extends FlutterBoxHeightStyle {
  factory _FlutterBoxHeightStyletight() = _$_FlutterBoxHeightStyletight;
  _FlutterBoxHeightStyletight._() : super._();

  factory _FlutterBoxHeightStyletight.fromJson(Map<String, dynamic> json) =
      _$_FlutterBoxHeightStyletight.fromJson;
}

FlutterBoxWidthStyle _$FlutterBoxWidthStyleFromJson(Map<String, dynamic> json) {
  switch (json['converter']) {
    case 'f:1:BoxWidthStyle.max':
      return _FlutterBoxWidthStylemax.fromJson(json);
    case 'f:1:BoxWidthStyle.tight':
      return _FlutterBoxWidthStyletight.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'converter', 'FlutterBoxWidthStyle',
          'Invalid union type "${json['converter']}"!');
  }
}

/// @nodoc
mixin _$FlutterBoxWidthStyle {
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FlutterBoxWidthStylemax value) max,
    required TResult Function(_FlutterBoxWidthStyletight value) tight,
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_FlutterBoxWidthStylemax extends _FlutterBoxWidthStylemax {
  _$_FlutterBoxWidthStylemax({final String? $type})
      : $type = $type ?? 'f:1:BoxWidthStyle.max',
        super._();

  factory _$_FlutterBoxWidthStylemax.fromJson(Map<String, dynamic> json) =>
      _$$_FlutterBoxWidthStylemaxFromJson(json);

  @JsonKey(name: 'converter')
  final String $type;

  @override
  String toString() {
    return 'FlutterBoxWidthStyle.max()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FlutterBoxWidthStylemax);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FlutterBoxWidthStylemax value) max,
    required TResult Function(_FlutterBoxWidthStyletight value) tight,
  }) {
    return max(this);
  }
}

abstract class _FlutterBoxWidthStylemax extends FlutterBoxWidthStyle {
  factory _FlutterBoxWidthStylemax() = _$_FlutterBoxWidthStylemax;
  _FlutterBoxWidthStylemax._() : super._();

  factory _FlutterBoxWidthStylemax.fromJson(Map<String, dynamic> json) =
      _$_FlutterBoxWidthStylemax.fromJson;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_FlutterBoxWidthStyletight extends _FlutterBoxWidthStyletight {
  _$_FlutterBoxWidthStyletight({final String? $type})
      : $type = $type ?? 'f:1:BoxWidthStyle.tight',
        super._();

  factory _$_FlutterBoxWidthStyletight.fromJson(Map<String, dynamic> json) =>
      _$$_FlutterBoxWidthStyletightFromJson(json);

  @JsonKey(name: 'converter')
  final String $type;

  @override
  String toString() {
    return 'FlutterBoxWidthStyle.tight()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FlutterBoxWidthStyletight);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FlutterBoxWidthStylemax value) max,
    required TResult Function(_FlutterBoxWidthStyletight value) tight,
  }) {
    return tight(this);
  }
}

abstract class _FlutterBoxWidthStyletight extends FlutterBoxWidthStyle {
  factory _FlutterBoxWidthStyletight() = _$_FlutterBoxWidthStyletight;
  _FlutterBoxWidthStyletight._() : super._();

  factory _FlutterBoxWidthStyletight.fromJson(Map<String, dynamic> json) =
      _$_FlutterBoxWidthStyletight.fromJson;
}

FlutterShadow _$FlutterShadowFromJson(Map<String, dynamic> json) {
  return _FlutterShadowShadow.fromJson(json);
}

/// @nodoc
mixin _$FlutterShadow {
  FlutterColor? get color => throw _privateConstructorUsedError;
  FlutterOffset? get offset => throw _privateConstructorUsedError;
  ZacValue<double>? get blurRadius => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_FlutterShadowShadow value) $default,
  ) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_FlutterShadowShadow extends _FlutterShadowShadow {
  _$_FlutterShadowShadow({this.color, this.offset, this.blurRadius})
      : super._();

  factory _$_FlutterShadowShadow.fromJson(Map<String, dynamic> json) =>
      _$$_FlutterShadowShadowFromJson(json);

  @override
  final FlutterColor? color;
  @override
  final FlutterOffset? offset;
  @override
  final ZacValue<double>? blurRadius;

  @override
  String toString() {
    return 'FlutterShadow(color: $color, offset: $offset, blurRadius: $blurRadius)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FlutterShadowShadow &&
            (identical(other.color, color) || other.color == color) &&
            (identical(other.offset, offset) || other.offset == offset) &&
            (identical(other.blurRadius, blurRadius) ||
                other.blurRadius == blurRadius));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, color, offset, blurRadius);

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_FlutterShadowShadow value) $default,
  ) {
    return $default(this);
  }
}

abstract class _FlutterShadowShadow extends FlutterShadow {
  factory _FlutterShadowShadow(
      {final FlutterColor? color,
      final FlutterOffset? offset,
      final ZacValue<double>? blurRadius}) = _$_FlutterShadowShadow;
  _FlutterShadowShadow._() : super._();

  factory _FlutterShadowShadow.fromJson(Map<String, dynamic> json) =
      _$_FlutterShadowShadow.fromJson;

  @override
  FlutterColor? get color;
  @override
  FlutterOffset? get offset;
  @override
  ZacValue<double>? get blurRadius;
}
