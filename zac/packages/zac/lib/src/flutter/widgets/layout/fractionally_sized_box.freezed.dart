// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'fractionally_sized_box.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FlutterFractionallySizedBox _$FlutterFractionallySizedBoxFromJson(
    Map<String, dynamic> json) {
  return _FlutterFractionallySizedBox.fromJson(json);
}

/// @nodoc
mixin _$FlutterFractionallySizedBox {
  ZacBuilder<Key?>? get key => throw _privateConstructorUsedError;
  ZacBuilder<Widget?>? get child => throw _privateConstructorUsedError;
  ZacBuilder<AlignmentGeometry?>? get alignment =>
      throw _privateConstructorUsedError;
  ZacBuilder<double?>? get widthFactor => throw _privateConstructorUsedError;
  ZacBuilder<double?>? get heightFactor => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_FlutterFractionallySizedBox value) $default,
  ) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_FlutterFractionallySizedBox extends _FlutterFractionallySizedBox {
  _$_FlutterFractionallySizedBox(
      {this.key,
      this.child,
      this.alignment,
      this.widthFactor,
      this.heightFactor})
      : super._();

  factory _$_FlutterFractionallySizedBox.fromJson(Map<String, dynamic> json) =>
      _$$_FlutterFractionallySizedBoxFromJson(json);

  @override
  final ZacBuilder<Key?>? key;
  @override
  final ZacBuilder<Widget?>? child;
  @override
  final ZacBuilder<AlignmentGeometry?>? alignment;
  @override
  final ZacBuilder<double?>? widthFactor;
  @override
  final ZacBuilder<double?>? heightFactor;

  @override
  String toString() {
    return 'FlutterFractionallySizedBox(key: $key, child: $child, alignment: $alignment, widthFactor: $widthFactor, heightFactor: $heightFactor)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FlutterFractionallySizedBox &&
            (identical(other.key, key) || other.key == key) &&
            (identical(other.child, child) || other.child == child) &&
            (identical(other.alignment, alignment) ||
                other.alignment == alignment) &&
            (identical(other.widthFactor, widthFactor) ||
                other.widthFactor == widthFactor) &&
            (identical(other.heightFactor, heightFactor) ||
                other.heightFactor == heightFactor));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, key, child, alignment, widthFactor, heightFactor);

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_FlutterFractionallySizedBox value) $default,
  ) {
    return $default(this);
  }
}

abstract class _FlutterFractionallySizedBox
    extends FlutterFractionallySizedBox {
  factory _FlutterFractionallySizedBox(
          {final ZacBuilder<Key?>? key,
          final ZacBuilder<Widget?>? child,
          final ZacBuilder<AlignmentGeometry?>? alignment,
          final ZacBuilder<double?>? widthFactor,
          final ZacBuilder<double?>? heightFactor}) =
      _$_FlutterFractionallySizedBox;
  _FlutterFractionallySizedBox._() : super._();

  factory _FlutterFractionallySizedBox.fromJson(Map<String, dynamic> json) =
      _$_FlutterFractionallySizedBox.fromJson;

  @override
  ZacBuilder<Key?>? get key;
  @override
  ZacBuilder<Widget?>? get child;
  @override
  ZacBuilder<AlignmentGeometry?>? get alignment;
  @override
  ZacBuilder<double?>? get widthFactor;
  @override
  ZacBuilder<double?>? get heightFactor;
}
