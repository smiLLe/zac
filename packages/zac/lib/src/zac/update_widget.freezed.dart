// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'update_widget.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ZacUpdateWidgetBuilder _$ZacUpdateWidgetBuilderFromJson(
    Map<String, dynamic> json) {
  return _ZacUpdateWidgetBuilder.fromJson(json);
}

/// @nodoc
mixin _$ZacUpdateWidgetBuilder {
  FlutterKey? get key => throw _privateConstructorUsedError;
  FlutterWidget get child => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_ZacUpdateWidgetBuilder value) $default,
  ) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_ZacUpdateWidgetBuilder extends _ZacUpdateWidgetBuilder {
  _$_ZacUpdateWidgetBuilder({this.key, required this.child}) : super._();

  factory _$_ZacUpdateWidgetBuilder.fromJson(Map<String, dynamic> json) =>
      _$$_ZacUpdateWidgetBuilderFromJson(json);

  @override
  final FlutterKey? key;
  @override
  final FlutterWidget child;

  @override
  String toString() {
    return 'ZacUpdateWidgetBuilder(key: $key, child: $child)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ZacUpdateWidgetBuilder &&
            const DeepCollectionEquality().equals(other.key, key) &&
            const DeepCollectionEquality().equals(other.child, child));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(key),
      const DeepCollectionEquality().hash(child));

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_ZacUpdateWidgetBuilder value) $default,
  ) {
    return $default(this);
  }
}

abstract class _ZacUpdateWidgetBuilder extends ZacUpdateWidgetBuilder {
  factory _ZacUpdateWidgetBuilder(
      {final FlutterKey? key,
      required final FlutterWidget child}) = _$_ZacUpdateWidgetBuilder;
  _ZacUpdateWidgetBuilder._() : super._();

  factory _ZacUpdateWidgetBuilder.fromJson(Map<String, dynamic> json) =
      _$_ZacUpdateWidgetBuilder.fromJson;

  @override
  FlutterKey? get key;
  @override
  FlutterWidget get child;
}
