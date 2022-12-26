// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'decorated_box.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FlutterDecoratedBox _$FlutterDecoratedBoxFromJson(Map<String, dynamic> json) {
  return _FlutterDecoratedBox.fromJson(json);
}

/// @nodoc
mixin _$FlutterDecoratedBox {
  ZacValue<Key?>? get key => throw _privateConstructorUsedError;
  ZacValue<Widget?>? get child => throw _privateConstructorUsedError;
  ZacValue<Decoration> get decoration => throw _privateConstructorUsedError;
  ZacValue<DecorationPosition?>? get position =>
      throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_FlutterDecoratedBox value) $default,
  ) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_FlutterDecoratedBox extends _FlutterDecoratedBox {
  _$_FlutterDecoratedBox(
      {this.key, this.child, required this.decoration, this.position})
      : super._();

  factory _$_FlutterDecoratedBox.fromJson(Map<String, dynamic> json) =>
      _$$_FlutterDecoratedBoxFromJson(json);

  @override
  final ZacValue<Key?>? key;
  @override
  final ZacValue<Widget?>? child;
  @override
  final ZacValue<Decoration> decoration;
  @override
  final ZacValue<DecorationPosition?>? position;

  @override
  String toString() {
    return 'FlutterDecoratedBox(key: $key, child: $child, decoration: $decoration, position: $position)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FlutterDecoratedBox &&
            (identical(other.key, key) || other.key == key) &&
            (identical(other.child, child) || other.child == child) &&
            (identical(other.decoration, decoration) ||
                other.decoration == decoration) &&
            (identical(other.position, position) ||
                other.position == position));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, key, child, decoration, position);

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_FlutterDecoratedBox value) $default,
  ) {
    return $default(this);
  }
}

abstract class _FlutterDecoratedBox extends FlutterDecoratedBox {
  factory _FlutterDecoratedBox(
      {final ZacValue<Key?>? key,
      final ZacValue<Widget?>? child,
      required final ZacValue<Decoration> decoration,
      final ZacValue<DecorationPosition?>? position}) = _$_FlutterDecoratedBox;
  _FlutterDecoratedBox._() : super._();

  factory _FlutterDecoratedBox.fromJson(Map<String, dynamic> json) =
      _$_FlutterDecoratedBox.fromJson;

  @override
  ZacValue<Key?>? get key;
  @override
  ZacValue<Widget?>? get child;
  @override
  ZacValue<Decoration> get decoration;
  @override
  ZacValue<DecorationPosition?>? get position;
}
