// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'padding.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FlutterPadding _$FlutterPaddingFromJson(Map<String, dynamic> json) {
  return _FlutterPadding.fromJson(json);
}

/// @nodoc
mixin _$FlutterPadding {
  FlutterKey? get key => throw _privateConstructorUsedError;
  FlutterEdgeInsetsGeometry get padding => throw _privateConstructorUsedError;
  ZacWidget? get child => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_FlutterPadding value) $default,
  ) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_FlutterPadding extends _FlutterPadding {
  _$_FlutterPadding({this.key, required this.padding, this.child}) : super._();

  factory _$_FlutterPadding.fromJson(Map<String, dynamic> json) =>
      _$$_FlutterPaddingFromJson(json);

  @override
  final FlutterKey? key;
  @override
  final FlutterEdgeInsetsGeometry padding;
  @override
  final ZacWidget? child;

  @override
  String toString() {
    return 'FlutterPadding(key: $key, padding: $padding, child: $child)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FlutterPadding &&
            const DeepCollectionEquality().equals(other.key, key) &&
            const DeepCollectionEquality().equals(other.padding, padding) &&
            const DeepCollectionEquality().equals(other.child, child));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(key),
      const DeepCollectionEquality().hash(padding),
      const DeepCollectionEquality().hash(child));

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_FlutterPadding value) $default,
  ) {
    return $default(this);
  }
}

abstract class _FlutterPadding extends FlutterPadding {
  factory _FlutterPadding(
      {final FlutterKey? key,
      required final FlutterEdgeInsetsGeometry padding,
      final ZacWidget? child}) = _$_FlutterPadding;
  _FlutterPadding._() : super._();

  factory _FlutterPadding.fromJson(Map<String, dynamic> json) =
      _$_FlutterPadding.fromJson;

  @override
  FlutterKey? get key;
  @override
  FlutterEdgeInsetsGeometry get padding;
  @override
  ZacWidget? get child;
}
