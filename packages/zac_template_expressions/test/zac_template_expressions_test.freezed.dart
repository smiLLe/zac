// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'zac_template_expressions_test.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$LeakContext {
  void Function(ZacBuildContext) get cb => throw _privateConstructorUsedError;
  ZacWidget? get child => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_LeakContext value) $default,
  ) =>
      throw _privateConstructorUsedError;
}

/// @nodoc

class _$_LeakContext extends _LeakContext {
  _$_LeakContext({required this.cb, this.child}) : super._();

  @override
  final void Function(ZacBuildContext) cb;
  @override
  final ZacWidget? child;

  @override
  String toString() {
    return 'LeakContext(cb: $cb, child: $child)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LeakContext &&
            (identical(other.cb, cb) || other.cb == cb) &&
            const DeepCollectionEquality().equals(other.child, child));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, cb, const DeepCollectionEquality().hash(child));

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_LeakContext value) $default,
  ) {
    return $default(this);
  }
}

abstract class _LeakContext extends LeakContext {
  factory _LeakContext(
      {required final void Function(ZacBuildContext) cb,
      final ZacWidget? child}) = _$_LeakContext;
  _LeakContext._() : super._();

  @override
  void Function(ZacBuildContext) get cb;
  @override
  ZacWidget? get child;
}