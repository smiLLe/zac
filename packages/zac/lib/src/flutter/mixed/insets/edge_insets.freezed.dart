// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'edge_insets.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FlutterEdgeInsets _$FlutterEdgeInsetsFromJson(Map<String, dynamic> json) {
  switch (json['_converter']) {
    case 'f:1:EdgeInsets.all':
      return _FlutterEdgeInsetsAll.fromJson(json);
    case 'f:1:EdgeInsets.symmetric':
      return _FlutterEdgeInsetsSymmetric.fromJson(json);
    case 'f:1:EdgeInsets.only':
      return _FlutterEdgeInsetsOnly.fromJson(json);

    default:
      throw CheckedFromJsonException(json, '_converter', 'FlutterEdgeInsets',
          'Invalid union type "${json['_converter']}"!');
  }
}

/// @nodoc
mixin _$FlutterEdgeInsets {
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FlutterEdgeInsetsAll value) all,
    required TResult Function(_FlutterEdgeInsetsSymmetric value) symmetric,
    required TResult Function(_FlutterEdgeInsetsOnly value) only,
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_FlutterEdgeInsetsAll extends _FlutterEdgeInsetsAll {
  _$_FlutterEdgeInsetsAll(this.value, {final String? $type})
      : $type = $type ?? 'f:1:EdgeInsets.all',
        super._();

  factory _$_FlutterEdgeInsetsAll.fromJson(Map<String, dynamic> json) =>
      _$$_FlutterEdgeInsetsAllFromJson(json);

  @override
  final ZacDouble value;

  @JsonKey(name: '_converter')
  final String $type;

  @override
  String toString() {
    return 'FlutterEdgeInsets.all(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FlutterEdgeInsetsAll &&
            const DeepCollectionEquality().equals(other.value, value));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(value));

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FlutterEdgeInsetsAll value) all,
    required TResult Function(_FlutterEdgeInsetsSymmetric value) symmetric,
    required TResult Function(_FlutterEdgeInsetsOnly value) only,
  }) {
    return all(this);
  }
}

abstract class _FlutterEdgeInsetsAll extends FlutterEdgeInsets {
  factory _FlutterEdgeInsetsAll(final ZacDouble value) =
      _$_FlutterEdgeInsetsAll;
  _FlutterEdgeInsetsAll._() : super._();

  factory _FlutterEdgeInsetsAll.fromJson(Map<String, dynamic> json) =
      _$_FlutterEdgeInsetsAll.fromJson;

  ZacDouble get value;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_FlutterEdgeInsetsSymmetric extends _FlutterEdgeInsetsSymmetric {
  _$_FlutterEdgeInsetsSymmetric(
      {this.vertical, this.horizontal, final String? $type})
      : $type = $type ?? 'f:1:EdgeInsets.symmetric',
        super._();

  factory _$_FlutterEdgeInsetsSymmetric.fromJson(Map<String, dynamic> json) =>
      _$$_FlutterEdgeInsetsSymmetricFromJson(json);

  @override
  final ZacDouble? vertical;
  @override
  final ZacDouble? horizontal;

  @JsonKey(name: '_converter')
  final String $type;

  @override
  String toString() {
    return 'FlutterEdgeInsets.symmetric(vertical: $vertical, horizontal: $horizontal)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FlutterEdgeInsetsSymmetric &&
            const DeepCollectionEquality().equals(other.vertical, vertical) &&
            const DeepCollectionEquality()
                .equals(other.horizontal, horizontal));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(vertical),
      const DeepCollectionEquality().hash(horizontal));

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FlutterEdgeInsetsAll value) all,
    required TResult Function(_FlutterEdgeInsetsSymmetric value) symmetric,
    required TResult Function(_FlutterEdgeInsetsOnly value) only,
  }) {
    return symmetric(this);
  }
}

abstract class _FlutterEdgeInsetsSymmetric extends FlutterEdgeInsets {
  factory _FlutterEdgeInsetsSymmetric(
      {final ZacDouble? vertical,
      final ZacDouble? horizontal}) = _$_FlutterEdgeInsetsSymmetric;
  _FlutterEdgeInsetsSymmetric._() : super._();

  factory _FlutterEdgeInsetsSymmetric.fromJson(Map<String, dynamic> json) =
      _$_FlutterEdgeInsetsSymmetric.fromJson;

  ZacDouble? get vertical;
  ZacDouble? get horizontal;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_FlutterEdgeInsetsOnly extends _FlutterEdgeInsetsOnly {
  _$_FlutterEdgeInsetsOnly(
      {this.left, this.top, this.right, this.bottom, final String? $type})
      : $type = $type ?? 'f:1:EdgeInsets.only',
        super._();

  factory _$_FlutterEdgeInsetsOnly.fromJson(Map<String, dynamic> json) =>
      _$$_FlutterEdgeInsetsOnlyFromJson(json);

  @override
  final ZacDouble? left;
  @override
  final ZacDouble? top;
  @override
  final ZacDouble? right;
  @override
  final ZacDouble? bottom;

  @JsonKey(name: '_converter')
  final String $type;

  @override
  String toString() {
    return 'FlutterEdgeInsets.only(left: $left, top: $top, right: $right, bottom: $bottom)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FlutterEdgeInsetsOnly &&
            const DeepCollectionEquality().equals(other.left, left) &&
            const DeepCollectionEquality().equals(other.top, top) &&
            const DeepCollectionEquality().equals(other.right, right) &&
            const DeepCollectionEquality().equals(other.bottom, bottom));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(left),
      const DeepCollectionEquality().hash(top),
      const DeepCollectionEquality().hash(right),
      const DeepCollectionEquality().hash(bottom));

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FlutterEdgeInsetsAll value) all,
    required TResult Function(_FlutterEdgeInsetsSymmetric value) symmetric,
    required TResult Function(_FlutterEdgeInsetsOnly value) only,
  }) {
    return only(this);
  }
}

abstract class _FlutterEdgeInsetsOnly extends FlutterEdgeInsets {
  factory _FlutterEdgeInsetsOnly(
      {final ZacDouble? left,
      final ZacDouble? top,
      final ZacDouble? right,
      final ZacDouble? bottom}) = _$_FlutterEdgeInsetsOnly;
  _FlutterEdgeInsetsOnly._() : super._();

  factory _FlutterEdgeInsetsOnly.fromJson(Map<String, dynamic> json) =
      _$_FlutterEdgeInsetsOnly.fromJson;

  ZacDouble? get left;
  ZacDouble? get top;
  ZacDouble? get right;
  ZacDouble? get bottom;
}

FlutterEdgeInsetsDirectional _$FlutterEdgeInsetsDirectionalFromJson(
    Map<String, dynamic> json) {
  switch (json['_converter']) {
    case 'f:1:EdgeInsetsDirectional.all':
      return _FlutterEdgeInsetsDirectionalAll.fromJson(json);
    case 'f:1:EdgeInsetsDirectional.only':
      return _FlutterEdgeInsetsDirectionalOnly.fromJson(json);

    default:
      throw CheckedFromJsonException(
          json,
          '_converter',
          'FlutterEdgeInsetsDirectional',
          'Invalid union type "${json['_converter']}"!');
  }
}

/// @nodoc
mixin _$FlutterEdgeInsetsDirectional {
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FlutterEdgeInsetsDirectionalAll value) all,
    required TResult Function(_FlutterEdgeInsetsDirectionalOnly value) only,
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_FlutterEdgeInsetsDirectionalAll
    extends _FlutterEdgeInsetsDirectionalAll {
  _$_FlutterEdgeInsetsDirectionalAll(this.value, {final String? $type})
      : $type = $type ?? 'f:1:EdgeInsetsDirectional.all',
        super._();

  factory _$_FlutterEdgeInsetsDirectionalAll.fromJson(
          Map<String, dynamic> json) =>
      _$$_FlutterEdgeInsetsDirectionalAllFromJson(json);

  @override
  final ZacDouble value;

  @JsonKey(name: '_converter')
  final String $type;

  @override
  String toString() {
    return 'FlutterEdgeInsetsDirectional.all(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FlutterEdgeInsetsDirectionalAll &&
            const DeepCollectionEquality().equals(other.value, value));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(value));

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FlutterEdgeInsetsDirectionalAll value) all,
    required TResult Function(_FlutterEdgeInsetsDirectionalOnly value) only,
  }) {
    return all(this);
  }
}

abstract class _FlutterEdgeInsetsDirectionalAll
    extends FlutterEdgeInsetsDirectional {
  factory _FlutterEdgeInsetsDirectionalAll(final ZacDouble value) =
      _$_FlutterEdgeInsetsDirectionalAll;
  _FlutterEdgeInsetsDirectionalAll._() : super._();

  factory _FlutterEdgeInsetsDirectionalAll.fromJson(Map<String, dynamic> json) =
      _$_FlutterEdgeInsetsDirectionalAll.fromJson;

  ZacDouble get value;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_FlutterEdgeInsetsDirectionalOnly
    extends _FlutterEdgeInsetsDirectionalOnly {
  _$_FlutterEdgeInsetsDirectionalOnly(
      {this.start, this.top, this.end, this.bottom, final String? $type})
      : $type = $type ?? 'f:1:EdgeInsetsDirectional.only',
        super._();

  factory _$_FlutterEdgeInsetsDirectionalOnly.fromJson(
          Map<String, dynamic> json) =>
      _$$_FlutterEdgeInsetsDirectionalOnlyFromJson(json);

  @override
  final ZacDouble? start;
  @override
  final ZacDouble? top;
  @override
  final ZacDouble? end;
  @override
  final ZacDouble? bottom;

  @JsonKey(name: '_converter')
  final String $type;

  @override
  String toString() {
    return 'FlutterEdgeInsetsDirectional.only(start: $start, top: $top, end: $end, bottom: $bottom)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FlutterEdgeInsetsDirectionalOnly &&
            const DeepCollectionEquality().equals(other.start, start) &&
            const DeepCollectionEquality().equals(other.top, top) &&
            const DeepCollectionEquality().equals(other.end, end) &&
            const DeepCollectionEquality().equals(other.bottom, bottom));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(start),
      const DeepCollectionEquality().hash(top),
      const DeepCollectionEquality().hash(end),
      const DeepCollectionEquality().hash(bottom));

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FlutterEdgeInsetsDirectionalAll value) all,
    required TResult Function(_FlutterEdgeInsetsDirectionalOnly value) only,
  }) {
    return only(this);
  }
}

abstract class _FlutterEdgeInsetsDirectionalOnly
    extends FlutterEdgeInsetsDirectional {
  factory _FlutterEdgeInsetsDirectionalOnly(
      {final ZacDouble? start,
      final ZacDouble? top,
      final ZacDouble? end,
      final ZacDouble? bottom}) = _$_FlutterEdgeInsetsDirectionalOnly;
  _FlutterEdgeInsetsDirectionalOnly._() : super._();

  factory _FlutterEdgeInsetsDirectionalOnly.fromJson(
      Map<String, dynamic> json) = _$_FlutterEdgeInsetsDirectionalOnly.fromJson;

  ZacDouble? get start;
  ZacDouble? get top;
  ZacDouble? get end;
  ZacDouble? get bottom;
}
