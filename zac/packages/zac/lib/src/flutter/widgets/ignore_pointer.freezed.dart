// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

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
  ZacValue<bool>? get ignoring => throw _privateConstructorUsedError;
  ZacValue<bool>? get ignoringSemantics => throw _privateConstructorUsedError;
  FlutterWidget? get child => throw _privateConstructorUsedError;

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
  final ZacValue<bool>? ignoring;
  @override
  final ZacValue<bool>? ignoringSemantics;
  @override
  final FlutterWidget? child;

  @override
  String toString() {
    return 'FlutterIgnorePointer(key: $key, ignoring: $ignoring, ignoringSemantics: $ignoringSemantics, child: $child)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FlutterIgnorePointer &&
            (identical(other.key, key) || other.key == key) &&
            (identical(other.ignoring, ignoring) ||
                other.ignoring == ignoring) &&
            (identical(other.ignoringSemantics, ignoringSemantics) ||
                other.ignoringSemantics == ignoringSemantics) &&
            (identical(other.child, child) || other.child == child));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, key, ignoring, ignoringSemantics, child);

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
      final ZacValue<bool>? ignoring,
      final ZacValue<bool>? ignoringSemantics,
      final FlutterWidget? child}) = _$_FlutterIgnorePointer;
  _FlutterIgnorePointer._() : super._();

  factory _FlutterIgnorePointer.fromJson(Map<String, dynamic> json) =
      _$_FlutterIgnorePointer.fromJson;

  @override
  FlutterKey? get key;
  @override
  ZacValue<bool>? get ignoring;
  @override
  ZacValue<bool>? get ignoringSemantics;
  @override
  FlutterWidget? get child;
}
