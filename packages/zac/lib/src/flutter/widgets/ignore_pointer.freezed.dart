// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'ignore_pointer.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FlutterIgnorePointer _$FlutterIgnorePointerFromJson(Map<String, dynamic> json) {
  return _FlutterIgnorePointer.fromJson(json);
}

/// @nodoc
mixin _$FlutterIgnorePointer {
  FlutterKey? get key => throw _privateConstructorUsedError;
  ZacBool? get ignoring => throw _privateConstructorUsedError;
  ZacBool? get ignoringSemantics => throw _privateConstructorUsedError;
  ZacWidget? get child => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_FlutterIgnorePointer value) $default,
  ) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_FlutterIgnorePointer extends _FlutterIgnorePointer {
  _$_FlutterIgnorePointer(
      {this.key, this.ignoring, this.ignoringSemantics, this.child})
      : super._();

  factory _$_FlutterIgnorePointer.fromJson(Map<String, dynamic> json) =>
      _$$_FlutterIgnorePointerFromJson(json);

  @override
  final FlutterKey? key;
  @override
  final ZacBool? ignoring;
  @override
  final ZacBool? ignoringSemantics;
  @override
  final ZacWidget? child;

  @override
  String toString() {
    return 'FlutterIgnorePointer(key: $key, ignoring: $ignoring, ignoringSemantics: $ignoringSemantics, child: $child)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FlutterIgnorePointer &&
            const DeepCollectionEquality().equals(other.key, key) &&
            const DeepCollectionEquality().equals(other.ignoring, ignoring) &&
            const DeepCollectionEquality()
                .equals(other.ignoringSemantics, ignoringSemantics) &&
            const DeepCollectionEquality().equals(other.child, child));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(key),
      const DeepCollectionEquality().hash(ignoring),
      const DeepCollectionEquality().hash(ignoringSemantics),
      const DeepCollectionEquality().hash(child));

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_FlutterIgnorePointer value) $default,
  ) {
    return $default(this);
  }
}

abstract class _FlutterIgnorePointer extends FlutterIgnorePointer {
  factory _FlutterIgnorePointer(
      {final FlutterKey? key,
      final ZacBool? ignoring,
      final ZacBool? ignoringSemantics,
      final ZacWidget? child}) = _$_FlutterIgnorePointer;
  _FlutterIgnorePointer._() : super._();

  factory _FlutterIgnorePointer.fromJson(Map<String, dynamic> json) =
      _$_FlutterIgnorePointer.fromJson;

  @override
  FlutterKey? get key;
  @override
  ZacBool? get ignoring;
  @override
  ZacBool? get ignoringSemantics;
  @override
  ZacWidget? get child;
}