// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'scroll_controller.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FlutterScrollController _$FlutterScrollControllerFromJson(
    Map<String, dynamic> json) {
  return _ScrollControllerConsumeSharedValue.fromJson(json);
}

/// @nodoc
mixin _$FlutterScrollController {
  Object get family => throw _privateConstructorUsedError;
  ZacTransformers? get transformer => throw _privateConstructorUsedError;
  ZacTransformers? get select => throw _privateConstructorUsedError;
  SharedValueConsumeType? get forceConsume =>
      throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ScrollControllerConsumeSharedValue value)
        consume,
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_ScrollControllerConsumeSharedValue
    extends _ScrollControllerConsumeSharedValue
    with ZacValueConsumeImpl<ScrollController> {
  _$_ScrollControllerConsumeSharedValue(
      {required this.family, this.transformer, this.select, this.forceConsume})
      : super._();

  factory _$_ScrollControllerConsumeSharedValue.fromJson(
          Map<String, dynamic> json) =>
      _$$_ScrollControllerConsumeSharedValueFromJson(json);

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
    return 'FlutterScrollController.consume(family: $family, transformer: $transformer, select: $select, forceConsume: $forceConsume)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ScrollControllerConsumeSharedValue &&
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
    required TResult Function(_ScrollControllerConsumeSharedValue value)
        consume,
  }) {
    return consume(this);
  }
}

abstract class _ScrollControllerConsumeSharedValue
    extends FlutterScrollController
    implements
        ZacValueConsume<ScrollController>,
        ZacValueConsumeImpl<ScrollController> {
  factory _ScrollControllerConsumeSharedValue(
          {required final Object family,
          final ZacTransformers? transformer,
          final ZacTransformers? select,
          final SharedValueConsumeType? forceConsume}) =
      _$_ScrollControllerConsumeSharedValue;
  _ScrollControllerConsumeSharedValue._() : super._();

  factory _ScrollControllerConsumeSharedValue.fromJson(
          Map<String, dynamic> json) =
      _$_ScrollControllerConsumeSharedValue.fromJson;

  @override
  Object get family;
  @override
  ZacTransformers? get transformer;
  @override
  ZacTransformers? get select;
  @override
  SharedValueConsumeType? get forceConsume;
}
