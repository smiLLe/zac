// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'zac_build.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ConsumeSharedValue<T> _$ConsumeSharedValueFromJson<T>(
    Map<String, dynamic> json) {
  return _ConsumeSharedValue<T>.fromJson(json);
}

/// @nodoc
mixin _$ConsumeSharedValue<T> {
  Object get family => throw _privateConstructorUsedError;
  ZacTransformers? get transformer => throw _privateConstructorUsedError;
  SharedValueConsumeType? get forceConsume =>
      throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_ConsumeSharedValue<T> value) $default,
  ) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_ConsumeSharedValue<T> extends _ConsumeSharedValue<T> {
  _$_ConsumeSharedValue(
      {required this.family, this.transformer, this.forceConsume})
      : super._();

  factory _$_ConsumeSharedValue.fromJson(Map<String, dynamic> json) =>
      _$$_ConsumeSharedValueFromJson(json);

  @override
  final Object family;
  @override
  final ZacTransformers? transformer;
  @override
  final SharedValueConsumeType? forceConsume;

  @override
  String toString() {
    return 'ConsumeSharedValue<$T>(family: $family, transformer: $transformer, forceConsume: $forceConsume)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ConsumeSharedValue<T> &&
            const DeepCollectionEquality().equals(other.family, family) &&
            (identical(other.transformer, transformer) ||
                other.transformer == transformer) &&
            (identical(other.forceConsume, forceConsume) ||
                other.forceConsume == forceConsume));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(family), transformer, forceConsume);

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_ConsumeSharedValue<T> value) $default,
  ) {
    return $default(this);
  }
}

abstract class _ConsumeSharedValue<T> extends ConsumeSharedValue<T> {
  factory _ConsumeSharedValue(
      {required final Object family,
      final ZacTransformers? transformer,
      final SharedValueConsumeType? forceConsume}) = _$_ConsumeSharedValue<T>;
  _ConsumeSharedValue._() : super._();

  factory _ConsumeSharedValue.fromJson(Map<String, dynamic> json) =
      _$_ConsumeSharedValue<T>.fromJson;

  @override
  Object get family;
  @override
  ZacTransformers? get transformer;
  @override
  SharedValueConsumeType? get forceConsume;
}

ConsumeSharedValueList<T, X>
    _$ConsumeSharedValueListFromJson<T extends Object?, X extends List<T>?>(
        Map<String, dynamic> json) {
  return _ConsumeSharedValueList<T, X>.fromJson(json);
}

/// @nodoc
mixin _$ConsumeSharedValueList<T extends Object?, X extends List<T>?> {
  Object get family => throw _privateConstructorUsedError;
  ZacTransformers? get transformer => throw _privateConstructorUsedError;
  ZacTransformers? get itemTransformer => throw _privateConstructorUsedError;
  SharedValueConsumeType? get forceConsume =>
      throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_ConsumeSharedValueList<T, X> value) $default,
  ) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_ConsumeSharedValueList<T extends Object?, X extends List<T>?>
    extends _ConsumeSharedValueList<T, X> {
  _$_ConsumeSharedValueList(
      {required this.family,
      this.transformer,
      this.itemTransformer,
      this.forceConsume})
      : super._();

  factory _$_ConsumeSharedValueList.fromJson(Map<String, dynamic> json) =>
      _$$_ConsumeSharedValueListFromJson(json);

  @override
  final Object family;
  @override
  final ZacTransformers? transformer;
  @override
  final ZacTransformers? itemTransformer;
  @override
  final SharedValueConsumeType? forceConsume;

  @override
  String toString() {
    return 'ConsumeSharedValueList<$T, $X>(family: $family, transformer: $transformer, itemTransformer: $itemTransformer, forceConsume: $forceConsume)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ConsumeSharedValueList<T, X> &&
            const DeepCollectionEquality().equals(other.family, family) &&
            (identical(other.transformer, transformer) ||
                other.transformer == transformer) &&
            (identical(other.itemTransformer, itemTransformer) ||
                other.itemTransformer == itemTransformer) &&
            (identical(other.forceConsume, forceConsume) ||
                other.forceConsume == forceConsume));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(family),
      transformer,
      itemTransformer,
      forceConsume);

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_ConsumeSharedValueList<T, X> value) $default,
  ) {
    return $default(this);
  }
}

abstract class _ConsumeSharedValueList<T extends Object?, X extends List<T>?>
    extends ConsumeSharedValueList<T, X> {
  factory _ConsumeSharedValueList(
          {required final Object family,
          final ZacTransformers? transformer,
          final ZacTransformers? itemTransformer,
          final SharedValueConsumeType? forceConsume}) =
      _$_ConsumeSharedValueList<T, X>;
  _ConsumeSharedValueList._() : super._();

  factory _ConsumeSharedValueList.fromJson(Map<String, dynamic> json) =
      _$_ConsumeSharedValueList<T, X>.fromJson;

  @override
  Object get family;
  @override
  ZacTransformers? get transformer;
  @override
  ZacTransformers? get itemTransformer;
  @override
  SharedValueConsumeType? get forceConsume;
}
