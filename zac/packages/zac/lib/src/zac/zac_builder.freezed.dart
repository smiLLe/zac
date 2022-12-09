// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'zac_builder.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ZacBuilderConsume {
  SharedValueConsumeType get type => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_ZacBuilderConsume value) $default,
  ) =>
      throw _privateConstructorUsedError;
}

/// @nodoc

class _$_ZacBuilderConsume implements _ZacBuilderConsume {
  const _$_ZacBuilderConsume(
      {this.type = const SharedValueConsumeType.watch()});

  @override
  @JsonKey()
  final SharedValueConsumeType type;

  @override
  String toString() {
    return 'ZacBuilderConsume(type: $type)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ZacBuilderConsume &&
            (identical(other.type, type) || other.type == type));
  }

  @override
  int get hashCode => Object.hash(runtimeType, type);

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_ZacBuilderConsume value) $default,
  ) {
    return $default(this);
  }
}

abstract class _ZacBuilderConsume implements ZacBuilderConsume {
  const factory _ZacBuilderConsume({final SharedValueConsumeType type}) =
      _$_ZacBuilderConsume;

  @override
  SharedValueConsumeType get type;
}
