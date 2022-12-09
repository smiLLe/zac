// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'constrained_box.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FlutterConstrainedBox _$FlutterConstrainedBoxFromJson(
    Map<String, dynamic> json) {
  return _FlutterConstrainedBox.fromJson(json);
}

/// @nodoc
mixin _$FlutterConstrainedBox {
  FlutterKey? get key => throw _privateConstructorUsedError;
  FlutterBoxConstraints get constraints => throw _privateConstructorUsedError;
  FlutterWidget? get child => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_FlutterConstrainedBox value) $default,
  ) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_FlutterConstrainedBox extends _FlutterConstrainedBox {
  _$_FlutterConstrainedBox({this.key, required this.constraints, this.child})
      : super._();

  factory _$_FlutterConstrainedBox.fromJson(Map<String, dynamic> json) =>
      _$$_FlutterConstrainedBoxFromJson(json);

  @override
  final FlutterKey? key;
  @override
  final FlutterBoxConstraints constraints;
  @override
  final FlutterWidget? child;

  @override
  String toString() {
    return 'FlutterConstrainedBox(key: $key, constraints: $constraints, child: $child)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FlutterConstrainedBox &&
            (identical(other.key, key) || other.key == key) &&
            (identical(other.constraints, constraints) ||
                other.constraints == constraints) &&
            (identical(other.child, child) || other.child == child));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, key, constraints, child);

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_FlutterConstrainedBox value) $default,
  ) {
    return $default(this);
  }
}

abstract class _FlutterConstrainedBox extends FlutterConstrainedBox {
  factory _FlutterConstrainedBox(
      {final FlutterKey? key,
      required final FlutterBoxConstraints constraints,
      final FlutterWidget? child}) = _$_FlutterConstrainedBox;
  _FlutterConstrainedBox._() : super._();

  factory _FlutterConstrainedBox.fromJson(Map<String, dynamic> json) =
      _$_FlutterConstrainedBox.fromJson;

  @override
  FlutterKey? get key;
  @override
  FlutterBoxConstraints get constraints;
  @override
  FlutterWidget? get child;
}
