// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'center.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FlutterCenter _$FlutterCenterFromJson(Map<String, dynamic> json) {
  return _FlutterCenter.fromJson(json);
}

/// @nodoc
mixin _$FlutterCenter {
  FlutterKey? get key => throw _privateConstructorUsedError;
  ZacDouble? get widthFactor => throw _privateConstructorUsedError;
  ZacDouble? get heightFactor => throw _privateConstructorUsedError;
  ZacWidget? get child => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_FlutterCenter value) $default,
  ) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_FlutterCenter extends _FlutterCenter {
  _$_FlutterCenter({this.key, this.widthFactor, this.heightFactor, this.child})
      : super._();

  factory _$_FlutterCenter.fromJson(Map<String, dynamic> json) =>
      _$$_FlutterCenterFromJson(json);

  @override
  final FlutterKey? key;
  @override
  final ZacDouble? widthFactor;
  @override
  final ZacDouble? heightFactor;
  @override
  final ZacWidget? child;

  @override
  String toString() {
    return 'FlutterCenter(key: $key, widthFactor: $widthFactor, heightFactor: $heightFactor, child: $child)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FlutterCenter &&
            const DeepCollectionEquality().equals(other.key, key) &&
            const DeepCollectionEquality()
                .equals(other.widthFactor, widthFactor) &&
            const DeepCollectionEquality()
                .equals(other.heightFactor, heightFactor) &&
            const DeepCollectionEquality().equals(other.child, child));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(key),
      const DeepCollectionEquality().hash(widthFactor),
      const DeepCollectionEquality().hash(heightFactor),
      const DeepCollectionEquality().hash(child));

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_FlutterCenter value) $default,
  ) {
    return $default(this);
  }
}

abstract class _FlutterCenter extends FlutterCenter {
  factory _FlutterCenter(
      {final FlutterKey? key,
      final ZacDouble? widthFactor,
      final ZacDouble? heightFactor,
      final ZacWidget? child}) = _$_FlutterCenter;
  _FlutterCenter._() : super._();

  factory _FlutterCenter.fromJson(Map<String, dynamic> json) =
      _$_FlutterCenter.fromJson;

  @override
  FlutterKey? get key;
  @override
  ZacDouble? get widthFactor;
  @override
  ZacDouble? get heightFactor;
  @override
  ZacWidget? get child;
}
