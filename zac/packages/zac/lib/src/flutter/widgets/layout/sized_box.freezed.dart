// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sized_box.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FlutterSizedBox _$FlutterSizedBoxFromJson(Map<String, dynamic> json) {
  switch (json['converter']) {
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
      throw CheckedFromJsonException(json, 'converter', 'FlutterSizedBox',
          'Invalid union type "${json['converter']}"!');
  }
}

/// @nodoc
mixin _$FlutterSizedBox {
  ZacValue<Key?>? get key => throw _privateConstructorUsedError;
  ZacValue<Widget?>? get child => throw _privateConstructorUsedError;

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
  final ZacValue<Key?>? key;
  @override
  final ZacValue<double?>? width;
  @override
  final ZacValue<double?>? height;
  @override
  final ZacValue<Widget?>? child;

  @JsonKey(name: 'converter')
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
            (identical(other.key, key) || other.key == key) &&
            (identical(other.width, width) || other.width == width) &&
            (identical(other.height, height) || other.height == height) &&
            (identical(other.child, child) || other.child == child));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, key, width, height, child);

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
      {final ZacValue<Key?>? key,
      final ZacValue<double?>? width,
      final ZacValue<double?>? height,
      final ZacValue<Widget?>? child}) = _$_FlutterWidgetSizedBox;
  _FlutterWidgetSizedBox._() : super._();

  factory _FlutterWidgetSizedBox.fromJson(Map<String, dynamic> json) =
      _$_FlutterWidgetSizedBox.fromJson;

  @override
  ZacValue<Key?>? get key;
  ZacValue<double?>? get width;
  ZacValue<double?>? get height;
  @override
  ZacValue<Widget?>? get child;
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
  final ZacValue<Key?>? key;
  @override
  final ZacValue<Widget?>? child;

  @JsonKey(name: 'converter')
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
            (identical(other.key, key) || other.key == key) &&
            (identical(other.child, child) || other.child == child));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, key, child);

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
      {final ZacValue<Key?>? key,
      final ZacValue<Widget?>? child}) = _$_FlutterWidgetSizedBoxExpand;
  _FlutterWidgetSizedBoxExpand._() : super._();

  factory _FlutterWidgetSizedBoxExpand.fromJson(Map<String, dynamic> json) =
      _$_FlutterWidgetSizedBoxExpand.fromJson;

  @override
  ZacValue<Key?>? get key;
  @override
  ZacValue<Widget?>? get child;
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
  final ZacValue<Key?>? key;
  @override
  final ZacValue<Widget?>? child;
  @override
  final ZacValue<Size?>? size;

  @JsonKey(name: 'converter')
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
            (identical(other.key, key) || other.key == key) &&
            (identical(other.child, child) || other.child == child) &&
            (identical(other.size, size) || other.size == size));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, key, child, size);

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
      {final ZacValue<Key?>? key,
      final ZacValue<Widget?>? child,
      final ZacValue<Size?>? size}) = _$_FlutterWidgetSizedBoxFromSize;
  _FlutterWidgetSizedBoxFromSize._() : super._();

  factory _FlutterWidgetSizedBoxFromSize.fromJson(Map<String, dynamic> json) =
      _$_FlutterWidgetSizedBoxFromSize.fromJson;

  @override
  ZacValue<Key?>? get key;
  @override
  ZacValue<Widget?>? get child;
  ZacValue<Size?>? get size;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_FlutterWidgetSizedBoxShrink extends _FlutterWidgetSizedBoxShrink {
  const _$_FlutterWidgetSizedBoxShrink(
      {this.key, this.child, final String? $type})
      : $type = $type ?? 'f:1:SizedBox.shrink',
        super._();

  factory _$_FlutterWidgetSizedBoxShrink.fromJson(Map<String, dynamic> json) =>
      _$$_FlutterWidgetSizedBoxShrinkFromJson(json);

  @override
  final ZacValue<Key?>? key;
  @override
  final ZacValue<Widget?>? child;

  @JsonKey(name: 'converter')
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
            (identical(other.key, key) || other.key == key) &&
            (identical(other.child, child) || other.child == child));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, key, child);

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
  const factory _FlutterWidgetSizedBoxShrink(
      {final ZacValue<Key?>? key,
      final ZacValue<Widget?>? child}) = _$_FlutterWidgetSizedBoxShrink;
  const _FlutterWidgetSizedBoxShrink._() : super._();

  factory _FlutterWidgetSizedBoxShrink.fromJson(Map<String, dynamic> json) =
      _$_FlutterWidgetSizedBoxShrink.fromJson;

  @override
  ZacValue<Key?>? get key;
  @override
  ZacValue<Widget?>? get child;
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
  final ZacValue<Key?>? key;
  @override
  final ZacValue<Widget?>? child;
  @override
  final ZacValue<double?>? dimension;

  @JsonKey(name: 'converter')
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
            (identical(other.key, key) || other.key == key) &&
            (identical(other.child, child) || other.child == child) &&
            (identical(other.dimension, dimension) ||
                other.dimension == dimension));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, key, child, dimension);

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
      {final ZacValue<Key?>? key,
      final ZacValue<Widget?>? child,
      final ZacValue<double?>? dimension}) = _$_FlutterWidgetSizedBoxSquare;
  _FlutterWidgetSizedBoxSquare._() : super._();

  factory _FlutterWidgetSizedBoxSquare.fromJson(Map<String, dynamic> json) =
      _$_FlutterWidgetSizedBoxSquare.fromJson;

  @override
  ZacValue<Key?>? get key;
  @override
  ZacValue<Widget?>? get child;
  ZacValue<double?>? get dimension;
}
