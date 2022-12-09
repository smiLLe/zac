// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'rotated_box.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FlutterRotatedBox _$FlutterRotatedBoxFromJson(Map<String, dynamic> json) {
  return _FlutterRotatedBox.fromJson(json);
}

/// @nodoc
mixin _$FlutterRotatedBox {
  FlutterKey? get key => throw _privateConstructorUsedError;
  FlutterWidget? get child => throw _privateConstructorUsedError;
  int get quarterTurns => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_FlutterRotatedBox value) $default,
  ) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_FlutterRotatedBox extends _FlutterRotatedBox {
  _$_FlutterRotatedBox({this.key, this.child, required this.quarterTurns})
      : super._();

  factory _$_FlutterRotatedBox.fromJson(Map<String, dynamic> json) =>
      _$$_FlutterRotatedBoxFromJson(json);

  @override
  final FlutterKey? key;
  @override
  final FlutterWidget? child;
  @override
  final int quarterTurns;

  @override
  String toString() {
    return 'FlutterRotatedBox(key: $key, child: $child, quarterTurns: $quarterTurns)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FlutterRotatedBox &&
            (identical(other.key, key) || other.key == key) &&
            (identical(other.child, child) || other.child == child) &&
            (identical(other.quarterTurns, quarterTurns) ||
                other.quarterTurns == quarterTurns));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, key, child, quarterTurns);

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_FlutterRotatedBox value) $default,
  ) {
    return $default(this);
  }
}

abstract class _FlutterRotatedBox extends FlutterRotatedBox {
  factory _FlutterRotatedBox(
      {final FlutterKey? key,
      final FlutterWidget? child,
      required final int quarterTurns}) = _$_FlutterRotatedBox;
  _FlutterRotatedBox._() : super._();

  factory _FlutterRotatedBox.fromJson(Map<String, dynamic> json) =
      _$_FlutterRotatedBox.fromJson;

  @override
  FlutterKey? get key;
  @override
  FlutterWidget? get child;
  @override
  int get quarterTurns;
}
