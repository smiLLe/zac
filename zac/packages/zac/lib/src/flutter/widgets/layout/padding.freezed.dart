// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'padding.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FlutterPadding _$FlutterPaddingFromJson(Map<String, dynamic> json) {
  return _FlutterPadding.fromJson(json);
}

/// @nodoc
mixin _$FlutterPadding {
  FlutterKey? get key => throw _privateConstructorUsedError;
  FlutterEdgeInsetsGeometry get padding => throw _privateConstructorUsedError;
  ZacValue<Widget?>? get child => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_FlutterPadding value) $default,
  ) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_FlutterPadding extends _FlutterPadding {
  _$_FlutterPadding({this.key, required this.padding, this.child}) : super._();

  factory _$_FlutterPadding.fromJson(Map<String, dynamic> json) =>
      _$$_FlutterPaddingFromJson(json);

  @override
  final FlutterKey? key;
  @override
  final FlutterEdgeInsetsGeometry padding;
  @override
  final ZacValue<Widget?>? child;

  @override
  String toString() {
    return 'FlutterPadding(key: $key, padding: $padding, child: $child)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FlutterPadding &&
            (identical(other.key, key) || other.key == key) &&
            (identical(other.padding, padding) || other.padding == padding) &&
            (identical(other.child, child) || other.child == child));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, key, padding, child);

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_FlutterPadding value) $default,
  ) {
    return $default(this);
  }
}

abstract class _FlutterPadding extends FlutterPadding {
  factory _FlutterPadding(
      {final FlutterKey? key,
      required final FlutterEdgeInsetsGeometry padding,
      final ZacValue<Widget?>? child}) = _$_FlutterPadding;
  _FlutterPadding._() : super._();

  factory _FlutterPadding.fromJson(Map<String, dynamic> json) =
      _$_FlutterPadding.fromJson;

  @override
  FlutterKey? get key;
  @override
  FlutterEdgeInsetsGeometry get padding;
  @override
  ZacValue<Widget?>? get child;
}
