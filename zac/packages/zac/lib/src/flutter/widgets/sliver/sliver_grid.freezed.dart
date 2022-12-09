// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sliver_grid.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FlutterSliverGrid _$FlutterSliverGridFromJson(Map<String, dynamic> json) {
  return _FlutterSliverGrid.fromJson(json);
}

/// @nodoc
mixin _$FlutterSliverGrid {
  FlutterKey? get key => throw _privateConstructorUsedError;
  FlutterSliverChildDelegate get delegate => throw _privateConstructorUsedError;
  FlutterSliverGridDelegate get gridDelegate =>
      throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_FlutterSliverGrid value) $default,
  ) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_FlutterSliverGrid extends _FlutterSliverGrid {
  _$_FlutterSliverGrid(
      {this.key, required this.delegate, required this.gridDelegate})
      : super._();

  factory _$_FlutterSliverGrid.fromJson(Map<String, dynamic> json) =>
      _$$_FlutterSliverGridFromJson(json);

  @override
  final FlutterKey? key;
  @override
  final FlutterSliverChildDelegate delegate;
  @override
  final FlutterSliverGridDelegate gridDelegate;

  @override
  String toString() {
    return 'FlutterSliverGrid(key: $key, delegate: $delegate, gridDelegate: $gridDelegate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FlutterSliverGrid &&
            (identical(other.key, key) || other.key == key) &&
            (identical(other.delegate, delegate) ||
                other.delegate == delegate) &&
            (identical(other.gridDelegate, gridDelegate) ||
                other.gridDelegate == gridDelegate));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, key, delegate, gridDelegate);

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_FlutterSliverGrid value) $default,
  ) {
    return $default(this);
  }
}

abstract class _FlutterSliverGrid extends FlutterSliverGrid {
  factory _FlutterSliverGrid(
          {final FlutterKey? key,
          required final FlutterSliverChildDelegate delegate,
          required final FlutterSliverGridDelegate gridDelegate}) =
      _$_FlutterSliverGrid;
  _FlutterSliverGrid._() : super._();

  factory _FlutterSliverGrid.fromJson(Map<String, dynamic> json) =
      _$_FlutterSliverGrid.fromJson;

  @override
  FlutterKey? get key;
  @override
  FlutterSliverChildDelegate get delegate;
  @override
  FlutterSliverGridDelegate get gridDelegate;
}
