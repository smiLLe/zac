// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'sized_box.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FlutterSizedBox _$FlutterSizedBoxFromJson(Map<String, dynamic> json) {
  switch (json['_converter']) {
    case 'f:1:SizedBox':
      return _FlutterWidgetSizedBox.fromJson(json);
    case 'f:1:SizedBox.expand':
      return _FlutterWidgetSizedBoxExpand.fromJson(json);
    case 'f:1:SizedBox.fromSize':
      return _FlutterWidgetSizedBoxFromSize.fromJson(json);
    case 'f:1:SizedBox.shrink':
      return _FlutterWidgetSizedBoxShrink.fromJson(json);
    case 'f:1:SizedBox.square':
      return _FlutterWidgetSizedBoxSquare.fromJson(json);

    default:
      throw CheckedFromJsonException(json, '_converter', 'FlutterSizedBox',
          'Invalid union type "${json['_converter']}"!');
  }
}

/// @nodoc
mixin _$FlutterSizedBox {
  FlutterKey? get key => throw _privateConstructorUsedError;
  FlutterWidget? get child => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_FlutterWidgetSizedBox value) $default, {
    required TResult Function(_FlutterWidgetSizedBoxExpand value) expand,
    required TResult Function(_FlutterWidgetSizedBoxFromSize value) fromSize,
    required TResult Function(_FlutterWidgetSizedBoxShrink value) shrink,
    required TResult Function(_FlutterWidgetSizedBoxSquare value) square,
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_FlutterWidgetSizedBox extends _FlutterWidgetSizedBox {
  _$_FlutterWidgetSizedBox(
      {this.key, this.width, this.height, this.child, final String? $type})
      : $type = $type ?? 'f:1:SizedBox',
        super._();

  factory _$_FlutterWidgetSizedBox.fromJson(Map<String, dynamic> json) =>
      _$$_FlutterWidgetSizedBoxFromJson(json);

  @override
  final FlutterKey? key;
  @override
  final ZacDouble? width;
  @override
  final ZacDouble? height;
  @override
  final FlutterWidget? child;

  @JsonKey(name: '_converter')
  final String $type;

  @override
  String toString() {
    return 'FlutterSizedBox(key: $key, width: $width, height: $height, child: $child)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FlutterWidgetSizedBox &&
            const DeepCollectionEquality().equals(other.key, key) &&
            const DeepCollectionEquality().equals(other.width, width) &&
            const DeepCollectionEquality().equals(other.height, height) &&
            const DeepCollectionEquality().equals(other.child, child));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(key),
      const DeepCollectionEquality().hash(width),
      const DeepCollectionEquality().hash(height),
      const DeepCollectionEquality().hash(child));

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_FlutterWidgetSizedBox value) $default, {
    required TResult Function(_FlutterWidgetSizedBoxExpand value) expand,
    required TResult Function(_FlutterWidgetSizedBoxFromSize value) fromSize,
    required TResult Function(_FlutterWidgetSizedBoxShrink value) shrink,
    required TResult Function(_FlutterWidgetSizedBoxSquare value) square,
  }) {
    return $default(this);
  }
}

abstract class _FlutterWidgetSizedBox extends FlutterSizedBox {
  factory _FlutterWidgetSizedBox(
      {final FlutterKey? key,
      final ZacDouble? width,
      final ZacDouble? height,
      final FlutterWidget? child}) = _$_FlutterWidgetSizedBox;
  _FlutterWidgetSizedBox._() : super._();

  factory _FlutterWidgetSizedBox.fromJson(Map<String, dynamic> json) =
      _$_FlutterWidgetSizedBox.fromJson;

  @override
  FlutterKey? get key;
  ZacDouble? get width;
  ZacDouble? get height;
  @override
  FlutterWidget? get child;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_FlutterWidgetSizedBoxExpand extends _FlutterWidgetSizedBoxExpand {
  _$_FlutterWidgetSizedBoxExpand({this.key, this.child, final String? $type})
      : $type = $type ?? 'f:1:SizedBox.expand',
        super._();

  factory _$_FlutterWidgetSizedBoxExpand.fromJson(Map<String, dynamic> json) =>
      _$$_FlutterWidgetSizedBoxExpandFromJson(json);

  @override
  final FlutterKey? key;
  @override
  final FlutterWidget? child;

  @JsonKey(name: '_converter')
  final String $type;

  @override
  String toString() {
    return 'FlutterSizedBox.expand(key: $key, child: $child)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FlutterWidgetSizedBoxExpand &&
            const DeepCollectionEquality().equals(other.key, key) &&
            const DeepCollectionEquality().equals(other.child, child));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(key),
      const DeepCollectionEquality().hash(child));

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_FlutterWidgetSizedBox value) $default, {
    required TResult Function(_FlutterWidgetSizedBoxExpand value) expand,
    required TResult Function(_FlutterWidgetSizedBoxFromSize value) fromSize,
    required TResult Function(_FlutterWidgetSizedBoxShrink value) shrink,
    required TResult Function(_FlutterWidgetSizedBoxSquare value) square,
  }) {
    return expand(this);
  }
}

abstract class _FlutterWidgetSizedBoxExpand extends FlutterSizedBox {
  factory _FlutterWidgetSizedBoxExpand(
      {final FlutterKey? key,
      final FlutterWidget? child}) = _$_FlutterWidgetSizedBoxExpand;
  _FlutterWidgetSizedBoxExpand._() : super._();

  factory _FlutterWidgetSizedBoxExpand.fromJson(Map<String, dynamic> json) =
      _$_FlutterWidgetSizedBoxExpand.fromJson;

  @override
  FlutterKey? get key;
  @override
  FlutterWidget? get child;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_FlutterWidgetSizedBoxFromSize extends _FlutterWidgetSizedBoxFromSize {
  _$_FlutterWidgetSizedBoxFromSize(
      {this.key, this.child, this.size, final String? $type})
      : $type = $type ?? 'f:1:SizedBox.fromSize',
        super._();

  factory _$_FlutterWidgetSizedBoxFromSize.fromJson(
          Map<String, dynamic> json) =>
      _$$_FlutterWidgetSizedBoxFromSizeFromJson(json);

  @override
  final FlutterKey? key;
  @override
  final FlutterWidget? child;
  @override
  final FlutterSize? size;

  @JsonKey(name: '_converter')
  final String $type;

  @override
  String toString() {
    return 'FlutterSizedBox.fromSize(key: $key, child: $child, size: $size)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FlutterWidgetSizedBoxFromSize &&
            const DeepCollectionEquality().equals(other.key, key) &&
            const DeepCollectionEquality().equals(other.child, child) &&
            const DeepCollectionEquality().equals(other.size, size));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(key),
      const DeepCollectionEquality().hash(child),
      const DeepCollectionEquality().hash(size));

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_FlutterWidgetSizedBox value) $default, {
    required TResult Function(_FlutterWidgetSizedBoxExpand value) expand,
    required TResult Function(_FlutterWidgetSizedBoxFromSize value) fromSize,
    required TResult Function(_FlutterWidgetSizedBoxShrink value) shrink,
    required TResult Function(_FlutterWidgetSizedBoxSquare value) square,
  }) {
    return fromSize(this);
  }
}

abstract class _FlutterWidgetSizedBoxFromSize extends FlutterSizedBox {
  factory _FlutterWidgetSizedBoxFromSize(
      {final FlutterKey? key,
      final FlutterWidget? child,
      final FlutterSize? size}) = _$_FlutterWidgetSizedBoxFromSize;
  _FlutterWidgetSizedBoxFromSize._() : super._();

  factory _FlutterWidgetSizedBoxFromSize.fromJson(Map<String, dynamic> json) =
      _$_FlutterWidgetSizedBoxFromSize.fromJson;

  @override
  FlutterKey? get key;
  @override
  FlutterWidget? get child;
  FlutterSize? get size;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_FlutterWidgetSizedBoxShrink extends _FlutterWidgetSizedBoxShrink {
  _$_FlutterWidgetSizedBoxShrink({this.key, this.child, final String? $type})
      : $type = $type ?? 'f:1:SizedBox.shrink',
        super._();

  factory _$_FlutterWidgetSizedBoxShrink.fromJson(Map<String, dynamic> json) =>
      _$$_FlutterWidgetSizedBoxShrinkFromJson(json);

  @override
  final FlutterKey? key;
  @override
  final FlutterWidget? child;

  @JsonKey(name: '_converter')
  final String $type;

  @override
  String toString() {
    return 'FlutterSizedBox.shrink(key: $key, child: $child)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FlutterWidgetSizedBoxShrink &&
            const DeepCollectionEquality().equals(other.key, key) &&
            const DeepCollectionEquality().equals(other.child, child));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(key),
      const DeepCollectionEquality().hash(child));

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_FlutterWidgetSizedBox value) $default, {
    required TResult Function(_FlutterWidgetSizedBoxExpand value) expand,
    required TResult Function(_FlutterWidgetSizedBoxFromSize value) fromSize,
    required TResult Function(_FlutterWidgetSizedBoxShrink value) shrink,
    required TResult Function(_FlutterWidgetSizedBoxSquare value) square,
  }) {
    return shrink(this);
  }
}

abstract class _FlutterWidgetSizedBoxShrink extends FlutterSizedBox {
  factory _FlutterWidgetSizedBoxShrink(
      {final FlutterKey? key,
      final FlutterWidget? child}) = _$_FlutterWidgetSizedBoxShrink;
  _FlutterWidgetSizedBoxShrink._() : super._();

  factory _FlutterWidgetSizedBoxShrink.fromJson(Map<String, dynamic> json) =
      _$_FlutterWidgetSizedBoxShrink.fromJson;

  @override
  FlutterKey? get key;
  @override
  FlutterWidget? get child;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_FlutterWidgetSizedBoxSquare extends _FlutterWidgetSizedBoxSquare {
  _$_FlutterWidgetSizedBoxSquare(
      {this.key, this.child, this.dimension, final String? $type})
      : $type = $type ?? 'f:1:SizedBox.square',
        super._();

  factory _$_FlutterWidgetSizedBoxSquare.fromJson(Map<String, dynamic> json) =>
      _$$_FlutterWidgetSizedBoxSquareFromJson(json);

  @override
  final FlutterKey? key;
  @override
  final FlutterWidget? child;
  @override
  final ZacDouble? dimension;

  @JsonKey(name: '_converter')
  final String $type;

  @override
  String toString() {
    return 'FlutterSizedBox.square(key: $key, child: $child, dimension: $dimension)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FlutterWidgetSizedBoxSquare &&
            const DeepCollectionEquality().equals(other.key, key) &&
            const DeepCollectionEquality().equals(other.child, child) &&
            const DeepCollectionEquality().equals(other.dimension, dimension));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(key),
      const DeepCollectionEquality().hash(child),
      const DeepCollectionEquality().hash(dimension));

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_FlutterWidgetSizedBox value) $default, {
    required TResult Function(_FlutterWidgetSizedBoxExpand value) expand,
    required TResult Function(_FlutterWidgetSizedBoxFromSize value) fromSize,
    required TResult Function(_FlutterWidgetSizedBoxShrink value) shrink,
    required TResult Function(_FlutterWidgetSizedBoxSquare value) square,
  }) {
    return square(this);
  }
}

abstract class _FlutterWidgetSizedBoxSquare extends FlutterSizedBox {
  factory _FlutterWidgetSizedBoxSquare(
      {final FlutterKey? key,
      final FlutterWidget? child,
      final ZacDouble? dimension}) = _$_FlutterWidgetSizedBoxSquare;
  _FlutterWidgetSizedBoxSquare._() : super._();

  factory _FlutterWidgetSizedBoxSquare.fromJson(Map<String, dynamic> json) =
      _$_FlutterWidgetSizedBoxSquare.fromJson;

  @override
  FlutterKey? get key;
  @override
  FlutterWidget? get child;
  ZacDouble? get dimension;
}
