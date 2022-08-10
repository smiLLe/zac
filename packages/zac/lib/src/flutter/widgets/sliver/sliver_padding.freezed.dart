// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'sliver_padding.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FlutterSliverPadding _$FlutterSliverPaddingFromJson(Map<String, dynamic> json) {
  return _FlutterSliverPadding.fromJson(json);
}

/// @nodoc
mixin _$FlutterSliverPadding {
  FlutterKey? get key => throw _privateConstructorUsedError;
  ZacWidget? get sliver => throw _privateConstructorUsedError;
  FlutterEdgeInsetsGeometry get padding => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_FlutterSliverPadding value) $default,
  ) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_FlutterSliverPadding extends _FlutterSliverPadding {
  _$_FlutterSliverPadding({this.key, this.sliver, required this.padding})
      : super._();

  factory _$_FlutterSliverPadding.fromJson(Map<String, dynamic> json) =>
      _$$_FlutterSliverPaddingFromJson(json);

  @override
  final FlutterKey? key;
  @override
  final ZacWidget? sliver;
  @override
  final FlutterEdgeInsetsGeometry padding;

  @override
  String toString() {
    return 'FlutterSliverPadding(key: $key, sliver: $sliver, padding: $padding)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FlutterSliverPadding &&
            const DeepCollectionEquality().equals(other.key, key) &&
            const DeepCollectionEquality().equals(other.sliver, sliver) &&
            const DeepCollectionEquality().equals(other.padding, padding));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(key),
      const DeepCollectionEquality().hash(sliver),
      const DeepCollectionEquality().hash(padding));

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_FlutterSliverPadding value) $default,
  ) {
    return $default(this);
  }
}

abstract class _FlutterSliverPadding extends FlutterSliverPadding {
  factory _FlutterSliverPadding(
          {final FlutterKey? key,
          final ZacWidget? sliver,
          required final FlutterEdgeInsetsGeometry padding}) =
      _$_FlutterSliverPadding;
  _FlutterSliverPadding._() : super._();

  factory _FlutterSliverPadding.fromJson(Map<String, dynamic> json) =
      _$_FlutterSliverPadding.fromJson;

  @override
  FlutterKey? get key;
  @override
  ZacWidget? get sliver;
  @override
  FlutterEdgeInsetsGeometry get padding;
}
