// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'base.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ZacBuilderOr _$ZacBuilderOrFromJson(Map<String, dynamic> json) {
  switch (json['builder']) {
    case 'z:1:BuilderOr':
      return _ZacBuilderOr.fromJson(json);
    case 'z:1:BuilderOr.builtin':
      return _ZacBuilderOrBuiltIn.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'builder', 'ZacBuilderOr',
          'Invalid union type "${json['builder']}"!');
  }
}

/// @nodoc
mixin _$ZacBuilderOr {
  Object? get value => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_ZacBuilderOr value) $default, {
    required TResult Function(_ZacBuilderOrBuiltIn value) builtIn,
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_ZacBuilderOr implements _ZacBuilderOr {
  _$_ZacBuilderOr(this.value, {final String? $type})
      : $type = $type ?? 'z:1:BuilderOr';

  factory _$_ZacBuilderOr.fromJson(Map<String, dynamic> json) =>
      _$$_ZacBuilderOrFromJson(json);

  @override
  final ZacBuilder<Object> value;

  @JsonKey(name: 'builder')
  final String $type;

  @override
  String toString() {
    return 'ZacBuilderOr(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ZacBuilderOr &&
            (identical(other.value, value) || other.value == value));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, value);

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_ZacBuilderOr value) $default, {
    required TResult Function(_ZacBuilderOrBuiltIn value) builtIn,
  }) {
    return $default(this);
  }
}

abstract class _ZacBuilderOr implements ZacBuilderOr {
  factory _ZacBuilderOr(final ZacBuilder<Object> value) = _$_ZacBuilderOr;

  factory _ZacBuilderOr.fromJson(Map<String, dynamic> json) =
      _$_ZacBuilderOr.fromJson;

  @override
  ZacBuilder<Object> get value;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_ZacBuilderOrBuiltIn implements _ZacBuilderOrBuiltIn {
  _$_ZacBuilderOrBuiltIn(this.value, {final String? $type})
      : $type = $type ?? 'z:1:BuilderOr.builtin';

  factory _$_ZacBuilderOrBuiltIn.fromJson(Map<String, dynamic> json) =>
      _$$_ZacBuilderOrBuiltInFromJson(json);

  @override
  final Object? value;

  @JsonKey(name: 'builder')
  final String $type;

  @override
  String toString() {
    return 'ZacBuilderOr.builtIn(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ZacBuilderOrBuiltIn &&
            const DeepCollectionEquality().equals(other.value, value));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(value));

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_ZacBuilderOr value) $default, {
    required TResult Function(_ZacBuilderOrBuiltIn value) builtIn,
  }) {
    return builtIn(this);
  }
}

abstract class _ZacBuilderOrBuiltIn implements ZacBuilderOr {
  factory _ZacBuilderOrBuiltIn(final Object? value) = _$_ZacBuilderOrBuiltIn;

  factory _ZacBuilderOrBuiltIn.fromJson(Map<String, dynamic> json) =
      _$_ZacBuilderOrBuiltIn.fromJson;

  @override
  Object? get value;
}
