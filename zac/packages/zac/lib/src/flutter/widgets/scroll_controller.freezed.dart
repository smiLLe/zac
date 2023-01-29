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
  return _FlutterScrollController.fromJson(json);
}

/// @nodoc
mixin _$FlutterScrollController {
  double? get initialScrollOffset => throw _privateConstructorUsedError;
  bool? get keepScrollOffset => throw _privateConstructorUsedError;
  String? get debugLabel => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_FlutterScrollController value) $default,
  ) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_FlutterScrollController extends _FlutterScrollController {
  _$_FlutterScrollController(
      {this.initialScrollOffset, this.keepScrollOffset, this.debugLabel})
      : super._();

  factory _$_FlutterScrollController.fromJson(Map<String, dynamic> json) =>
      _$$_FlutterScrollControllerFromJson(json);

  @override
  final double? initialScrollOffset;
  @override
  final bool? keepScrollOffset;
  @override
  final String? debugLabel;

  @override
  String toString() {
    return 'FlutterScrollController(initialScrollOffset: $initialScrollOffset, keepScrollOffset: $keepScrollOffset, debugLabel: $debugLabel)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FlutterScrollController &&
            (identical(other.initialScrollOffset, initialScrollOffset) ||
                other.initialScrollOffset == initialScrollOffset) &&
            (identical(other.keepScrollOffset, keepScrollOffset) ||
                other.keepScrollOffset == keepScrollOffset) &&
            (identical(other.debugLabel, debugLabel) ||
                other.debugLabel == debugLabel));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, initialScrollOffset, keepScrollOffset, debugLabel);

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_FlutterScrollController value) $default,
  ) {
    return $default(this);
  }
}

abstract class _FlutterScrollController extends FlutterScrollController {
  factory _FlutterScrollController(
      {final double? initialScrollOffset,
      final bool? keepScrollOffset,
      final String? debugLabel}) = _$_FlutterScrollController;
  _FlutterScrollController._() : super._();

  factory _FlutterScrollController.fromJson(Map<String, dynamic> json) =
      _$_FlutterScrollController.fromJson;

  @override
  double? get initialScrollOffset;
  @override
  bool? get keepScrollOffset;
  @override
  String? get debugLabel;
}
