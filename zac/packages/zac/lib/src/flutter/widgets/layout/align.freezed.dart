// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'align.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FlutterAlign _$FlutterAlignFromJson(Map<String, dynamic> json) {
  return _FlutterAlign.fromJson(json);
}

/// @nodoc
mixin _$FlutterAlign {
  ZacValue<Key?>? get key => throw _privateConstructorUsedError;
  ZacValue<AlignmentGeometry?>? get alignment =>
      throw _privateConstructorUsedError;
  ZacValue<double?>? get widthFactor => throw _privateConstructorUsedError;
  ZacValue<double?>? get heightFactor => throw _privateConstructorUsedError;
  ZacValue<Widget?>? get child => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_FlutterAlign value) $default,
  ) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_FlutterAlign extends _FlutterAlign {
  _$_FlutterAlign(
      {this.key,
      this.alignment,
      this.widthFactor,
      this.heightFactor,
      this.child})
      : super._();

  factory _$_FlutterAlign.fromJson(Map<String, dynamic> json) =>
      _$$_FlutterAlignFromJson(json);

  @override
  final ZacValue<Key?>? key;
  @override
  final ZacValue<AlignmentGeometry?>? alignment;
  @override
  final ZacValue<double?>? widthFactor;
  @override
  final ZacValue<double?>? heightFactor;
  @override
  final ZacValue<Widget?>? child;

  @override
  String toString() {
    return 'FlutterAlign(key: $key, alignment: $alignment, widthFactor: $widthFactor, heightFactor: $heightFactor, child: $child)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FlutterAlign &&
            (identical(other.key, key) || other.key == key) &&
            (identical(other.alignment, alignment) ||
                other.alignment == alignment) &&
            (identical(other.widthFactor, widthFactor) ||
                other.widthFactor == widthFactor) &&
            (identical(other.heightFactor, heightFactor) ||
                other.heightFactor == heightFactor) &&
            (identical(other.child, child) || other.child == child));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, key, alignment, widthFactor, heightFactor, child);

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_FlutterAlign value) $default,
  ) {
    return $default(this);
  }
}

abstract class _FlutterAlign extends FlutterAlign {
  factory _FlutterAlign(
      {final ZacValue<Key?>? key,
      final ZacValue<AlignmentGeometry?>? alignment,
      final ZacValue<double?>? widthFactor,
      final ZacValue<double?>? heightFactor,
      final ZacValue<Widget?>? child}) = _$_FlutterAlign;
  _FlutterAlign._() : super._();

  factory _FlutterAlign.fromJson(Map<String, dynamic> json) =
      _$_FlutterAlign.fromJson;

  @override
  ZacValue<Key?>? get key;
  @override
  ZacValue<AlignmentGeometry?>? get alignment;
  @override
  ZacValue<double?>? get widthFactor;
  @override
  ZacValue<double?>? get heightFactor;
  @override
  ZacValue<Widget?>? get child;
}
