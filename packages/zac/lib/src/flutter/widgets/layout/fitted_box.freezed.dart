// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'fitted_box.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FlutterFittedBox _$FlutterFittedBoxFromJson(Map<String, dynamic> json) {
  return _FlutterFittedBox.fromJson(json);
}

/// @nodoc
mixin _$FlutterFittedBox {
  FlutterKey? get key => throw _privateConstructorUsedError;
  FlutterBoxFit? get fit => throw _privateConstructorUsedError;
  FlutterAlignmentGeometry? get alignment => throw _privateConstructorUsedError;
  FlutterClip? get clipBehavior => throw _privateConstructorUsedError;
  FlutterWidget? get child => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_FlutterFittedBox value) $default,
  ) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_FlutterFittedBox extends _FlutterFittedBox {
  _$_FlutterFittedBox(
      {this.key, this.fit, this.alignment, this.clipBehavior, this.child})
      : super._();

  factory _$_FlutterFittedBox.fromJson(Map<String, dynamic> json) =>
      _$$_FlutterFittedBoxFromJson(json);

  @override
  final FlutterKey? key;
  @override
  final FlutterBoxFit? fit;
  @override
  final FlutterAlignmentGeometry? alignment;
  @override
  final FlutterClip? clipBehavior;
  @override
  final FlutterWidget? child;

  @override
  String toString() {
    return 'FlutterFittedBox(key: $key, fit: $fit, alignment: $alignment, clipBehavior: $clipBehavior, child: $child)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FlutterFittedBox &&
            const DeepCollectionEquality().equals(other.key, key) &&
            const DeepCollectionEquality().equals(other.fit, fit) &&
            const DeepCollectionEquality().equals(other.alignment, alignment) &&
            const DeepCollectionEquality()
                .equals(other.clipBehavior, clipBehavior) &&
            const DeepCollectionEquality().equals(other.child, child));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(key),
      const DeepCollectionEquality().hash(fit),
      const DeepCollectionEquality().hash(alignment),
      const DeepCollectionEquality().hash(clipBehavior),
      const DeepCollectionEquality().hash(child));

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_FlutterFittedBox value) $default,
  ) {
    return $default(this);
  }
}

abstract class _FlutterFittedBox extends FlutterFittedBox {
  factory _FlutterFittedBox(
      {final FlutterKey? key,
      final FlutterBoxFit? fit,
      final FlutterAlignmentGeometry? alignment,
      final FlutterClip? clipBehavior,
      final FlutterWidget? child}) = _$_FlutterFittedBox;
  _FlutterFittedBox._() : super._();

  factory _FlutterFittedBox.fromJson(Map<String, dynamic> json) =
      _$_FlutterFittedBox.fromJson;

  @override
  FlutterKey? get key;
  @override
  FlutterBoxFit? get fit;
  @override
  FlutterAlignmentGeometry? get alignment;
  @override
  FlutterClip? get clipBehavior;
  @override
  FlutterWidget? get child;
}
