// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sliver_list.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FlutterSliverList _$FlutterSliverListFromJson(Map<String, dynamic> json) {
  return _FlutterSliverList.fromJson(json);
}

/// @nodoc
mixin _$FlutterSliverList {
  ZacBuilder<Key?>? get key => throw _privateConstructorUsedError;
  FlutterSliverChildDelegate get delegate => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_FlutterSliverList value) $default,
  ) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_FlutterSliverList extends _FlutterSliverList {
  _$_FlutterSliverList({this.key, required this.delegate}) : super._();

  factory _$_FlutterSliverList.fromJson(Map<String, dynamic> json) =>
      _$$_FlutterSliverListFromJson(json);

  @override
  final ZacBuilder<Key?>? key;
  @override
  final FlutterSliverChildDelegate delegate;

  @override
  String toString() {
    return 'FlutterSliverList(key: $key, delegate: $delegate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FlutterSliverList &&
            (identical(other.key, key) || other.key == key) &&
            (identical(other.delegate, delegate) ||
                other.delegate == delegate));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, key, delegate);

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_FlutterSliverList value) $default,
  ) {
    return $default(this);
  }
}

abstract class _FlutterSliverList extends FlutterSliverList {
  factory _FlutterSliverList(
          {final ZacBuilder<Key?>? key,
          required final FlutterSliverChildDelegate delegate}) =
      _$_FlutterSliverList;
  _FlutterSliverList._() : super._();

  factory _FlutterSliverList.fromJson(Map<String, dynamic> json) =
      _$_FlutterSliverList.fromJson;

  @override
  ZacBuilder<Key?>? get key;
  @override
  FlutterSliverChildDelegate get delegate;
}
