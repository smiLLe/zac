// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'completer.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DartCompleterVoid _$DartCompleterVoidFromJson(Map<String, dynamic> json) {
  return _DartCompleterVoidConsumeSharedValue.fromJson(json);
}

/// @nodoc
mixin _$DartCompleterVoid {
  Object get family => throw _privateConstructorUsedError;
  ZacTransformers? get transformer => throw _privateConstructorUsedError;
  ZacTransformers? get select => throw _privateConstructorUsedError;
  SharedValueConsumeType? get forceConsume =>
      throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DartCompleterVoidConsumeSharedValue value)
        consume,
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_DartCompleterVoidConsumeSharedValue
    extends _DartCompleterVoidConsumeSharedValue
    with ConsumeSharedValue<Completer<void>> {
  _$_DartCompleterVoidConsumeSharedValue(
      {required this.family, this.transformer, this.select, this.forceConsume})
      : super._();

  factory _$_DartCompleterVoidConsumeSharedValue.fromJson(
          Map<String, dynamic> json) =>
      _$$_DartCompleterVoidConsumeSharedValueFromJson(json);

  @override
  final Object family;
  @override
  final ZacTransformers? transformer;
  @override
  final ZacTransformers? select;
  @override
  final SharedValueConsumeType? forceConsume;

  @override
  String toString() {
    return 'DartCompleterVoid.consume(family: $family, transformer: $transformer, select: $select, forceConsume: $forceConsume)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DartCompleterVoidConsumeSharedValue &&
            const DeepCollectionEquality().equals(other.family, family) &&
            (identical(other.transformer, transformer) ||
                other.transformer == transformer) &&
            (identical(other.select, select) || other.select == select) &&
            (identical(other.forceConsume, forceConsume) ||
                other.forceConsume == forceConsume));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(family),
      transformer,
      select,
      forceConsume);

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_DartCompleterVoidConsumeSharedValue value)
        consume,
  }) {
    return consume(this);
  }
}

abstract class _DartCompleterVoidConsumeSharedValue extends DartCompleterVoid
    implements ConsumeSharedValue<Completer<void>> {
  factory _DartCompleterVoidConsumeSharedValue(
          {required final Object family,
          final ZacTransformers? transformer,
          final ZacTransformers? select,
          final SharedValueConsumeType? forceConsume}) =
      _$_DartCompleterVoidConsumeSharedValue;
  _DartCompleterVoidConsumeSharedValue._() : super._();

  factory _DartCompleterVoidConsumeSharedValue.fromJson(
          Map<String, dynamic> json) =
      _$_DartCompleterVoidConsumeSharedValue.fromJson;

  @override
  Object get family;
  @override
  ZacTransformers? get transformer;
  @override
  ZacTransformers? get select;
  @override
  SharedValueConsumeType? get forceConsume;
}

ZacCompleterProviderBuilder _$ZacCompleterProviderBuilderFromJson(
    Map<String, dynamic> json) {
  return _ZacCompleterProviderBuilderVoid.fromJson(json);
}

/// @nodoc
mixin _$ZacCompleterProviderBuilder {
  ZacValue<Widget> get child => throw _privateConstructorUsedError;
  Object get family => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ZacCompleterProviderBuilderVoid value) asVoid,
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_ZacCompleterProviderBuilderVoid
    extends _ZacCompleterProviderBuilderVoid {
  _$_ZacCompleterProviderBuilderVoid(
      {required this.child, required this.family})
      : super._();

  factory _$_ZacCompleterProviderBuilderVoid.fromJson(
          Map<String, dynamic> json) =>
      _$$_ZacCompleterProviderBuilderVoidFromJson(json);

  @override
  final ZacValue<Widget> child;
  @override
  final Object family;

  @override
  String toString() {
    return 'ZacCompleterProviderBuilder.asVoid(child: $child, family: $family)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ZacCompleterProviderBuilderVoid &&
            (identical(other.child, child) || other.child == child) &&
            const DeepCollectionEquality().equals(other.family, family));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, child, const DeepCollectionEquality().hash(family));

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ZacCompleterProviderBuilderVoid value) asVoid,
  }) {
    return asVoid(this);
  }
}

abstract class _ZacCompleterProviderBuilderVoid
    extends ZacCompleterProviderBuilder {
  factory _ZacCompleterProviderBuilderVoid(
      {required final ZacValue<Widget> child,
      required final Object family}) = _$_ZacCompleterProviderBuilderVoid;
  _ZacCompleterProviderBuilderVoid._() : super._();

  factory _ZacCompleterProviderBuilderVoid.fromJson(Map<String, dynamic> json) =
      _$_ZacCompleterProviderBuilderVoid.fromJson;

  @override
  ZacValue<Widget> get child;
  @override
  Object get family;
}

ZacCompleterActions _$ZacCompleterActionsFromJson(Map<String, dynamic> json) {
  return _ZacCompleterActionsVoid.fromJson(json);
}

/// @nodoc
mixin _$ZacCompleterActions {
  DartCompleterVoid get completer => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ZacCompleterActionsVoid value) completeVoid,
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_ZacCompleterActionsVoid extends _ZacCompleterActionsVoid {
  _$_ZacCompleterActionsVoid({required this.completer}) : super._();

  factory _$_ZacCompleterActionsVoid.fromJson(Map<String, dynamic> json) =>
      _$$_ZacCompleterActionsVoidFromJson(json);

  @override
  final DartCompleterVoid completer;

  @override
  String toString() {
    return 'ZacCompleterActions.completeVoid(completer: $completer)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ZacCompleterActionsVoid &&
            (identical(other.completer, completer) ||
                other.completer == completer));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, completer);

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ZacCompleterActionsVoid value) completeVoid,
  }) {
    return completeVoid(this);
  }
}

abstract class _ZacCompleterActionsVoid extends ZacCompleterActions {
  factory _ZacCompleterActionsVoid(
          {required final DartCompleterVoid completer}) =
      _$_ZacCompleterActionsVoid;
  _ZacCompleterActionsVoid._() : super._();

  factory _ZacCompleterActionsVoid.fromJson(Map<String, dynamic> json) =
      _$_ZacCompleterActionsVoid.fromJson;

  @override
  DartCompleterVoid get completer;
}
