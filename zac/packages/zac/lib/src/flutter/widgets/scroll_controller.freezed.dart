// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'scroll_controller.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FlutterScrollController _$FlutterScrollControllerFromJson(
    Map<String, dynamic> json) {
  return _ScrollControllerProvide.fromJson(json);
}

/// @nodoc
mixin _$FlutterScrollController {
  ZacBuilder<double?>? get initialScrollOffset =>
      throw _privateConstructorUsedError;
  ZacBuilder<bool?>? get keepScrollOffset => throw _privateConstructorUsedError;
  ZacBuilder<String?>? get debugLabel => throw _privateConstructorUsedError;
  Object? get family => throw _privateConstructorUsedError;
  ZacBuilder<Widget> get child => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_ScrollControllerProvide value) $default,
  ) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_ScrollControllerProvide extends _ScrollControllerProvide {
  _$_ScrollControllerProvide(
      {this.initialScrollOffset,
      this.keepScrollOffset,
      this.debugLabel,
      this.family,
      required this.child})
      : super._();

  factory _$_ScrollControllerProvide.fromJson(Map<String, dynamic> json) =>
      _$$_ScrollControllerProvideFromJson(json);

  @override
  final ZacBuilder<double?>? initialScrollOffset;
  @override
  final ZacBuilder<bool?>? keepScrollOffset;
  @override
  final ZacBuilder<String?>? debugLabel;
  @override
  final Object? family;
  @override
  final ZacBuilder<Widget> child;

  @override
  String toString() {
    return 'FlutterScrollController(initialScrollOffset: $initialScrollOffset, keepScrollOffset: $keepScrollOffset, debugLabel: $debugLabel, family: $family, child: $child)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ScrollControllerProvide &&
            (identical(other.initialScrollOffset, initialScrollOffset) ||
                other.initialScrollOffset == initialScrollOffset) &&
            (identical(other.keepScrollOffset, keepScrollOffset) ||
                other.keepScrollOffset == keepScrollOffset) &&
            (identical(other.debugLabel, debugLabel) ||
                other.debugLabel == debugLabel) &&
            const DeepCollectionEquality().equals(other.family, family) &&
            (identical(other.child, child) || other.child == child));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      initialScrollOffset,
      keepScrollOffset,
      debugLabel,
      const DeepCollectionEquality().hash(family),
      child);

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_ScrollControllerProvide value) $default,
  ) {
    return $default(this);
  }
}

abstract class _ScrollControllerProvide extends FlutterScrollController {
  factory _ScrollControllerProvide(
      {final ZacBuilder<double?>? initialScrollOffset,
      final ZacBuilder<bool?>? keepScrollOffset,
      final ZacBuilder<String?>? debugLabel,
      final Object? family,
      required final ZacBuilder<Widget> child}) = _$_ScrollControllerProvide;
  _ScrollControllerProvide._() : super._();

  factory _ScrollControllerProvide.fromJson(Map<String, dynamic> json) =
      _$_ScrollControllerProvide.fromJson;

  @override
  ZacBuilder<double?>? get initialScrollOffset;
  @override
  ZacBuilder<bool?>? get keepScrollOffset;
  @override
  ZacBuilder<String?>? get debugLabel;
  @override
  Object? get family;
  @override
  ZacBuilder<Widget> get child;
}
