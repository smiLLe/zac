// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'zac_json_path.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ZacJsonPathTransformer _$ZacJsonPathTransformerFromJson(
    Map<String, dynamic> json) {
  return _ZacJsonPathTransformer.fromJson(json);
}

/// @nodoc
mixin _$ZacJsonPathTransformer {
  String get expression => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_ZacJsonPathTransformer value) $default,
  ) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_ZacJsonPathTransformer extends _ZacJsonPathTransformer {
  _$_ZacJsonPathTransformer({required this.expression}) : super._();

  factory _$_ZacJsonPathTransformer.fromJson(Map<String, dynamic> json) =>
      _$$_ZacJsonPathTransformerFromJson(json);

  @override
  final String expression;

  @override
  String toString() {
    return 'ZacJsonPathTransformer(expression: $expression)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ZacJsonPathTransformer &&
            const DeepCollectionEquality()
                .equals(other.expression, expression));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(expression));

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_ZacJsonPathTransformer value) $default,
  ) {
    return $default(this);
  }
}

abstract class _ZacJsonPathTransformer extends ZacJsonPathTransformer {
  factory _ZacJsonPathTransformer({required final String expression}) =
      _$_ZacJsonPathTransformer;
  _ZacJsonPathTransformer._() : super._();

  factory _ZacJsonPathTransformer.fromJson(Map<String, dynamic> json) =
      _$_ZacJsonPathTransformer.fromJson;

  @override
  String get expression;
}
