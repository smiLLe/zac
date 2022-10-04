// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'expanded.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FlutterExpanded _$FlutterExpandedFromJson(Map<String, dynamic> json) {
  return _FlutterExpanded.fromJson(json);
}

/// @nodoc
mixin _$FlutterExpanded {
  FlutterKey? get key => throw _privateConstructorUsedError;
  ZacInt? get flex => throw _privateConstructorUsedError;
  FlutterWidget get child => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_FlutterExpanded value) $default,
  ) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_FlutterExpanded extends _FlutterExpanded {
  _$_FlutterExpanded({this.key, this.flex, required this.child}) : super._();

  factory _$_FlutterExpanded.fromJson(Map<String, dynamic> json) =>
      _$$_FlutterExpandedFromJson(json);

  @override
  final FlutterKey? key;
  @override
  final ZacInt? flex;
  @override
  final FlutterWidget child;

  @override
  String toString() {
    return 'FlutterExpanded(key: $key, flex: $flex, child: $child)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FlutterExpanded &&
            const DeepCollectionEquality().equals(other.key, key) &&
            const DeepCollectionEquality().equals(other.flex, flex) &&
            const DeepCollectionEquality().equals(other.child, child));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(key),
      const DeepCollectionEquality().hash(flex),
      const DeepCollectionEquality().hash(child));

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_FlutterExpanded value) $default,
  ) {
    return $default(this);
  }
}

abstract class _FlutterExpanded extends FlutterExpanded {
  factory _FlutterExpanded(
      {final FlutterKey? key,
      final ZacInt? flex,
      required final FlutterWidget child}) = _$_FlutterExpanded;
  _FlutterExpanded._() : super._();

  factory _FlutterExpanded.fromJson(Map<String, dynamic> json) =
      _$_FlutterExpanded.fromJson;

  @override
  FlutterKey? get key;
  @override
  ZacInt? get flex;
  @override
  FlutterWidget get child;
}
