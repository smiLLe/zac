// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'limited_box.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FlutterLimitedBox _$FlutterLimitedBoxFromJson(Map<String, dynamic> json) {
  return _FlutterLimitedBox.fromJson(json);
}

/// @nodoc
mixin _$FlutterLimitedBox {
  ZacBuilder<Key?>? get key => throw _privateConstructorUsedError;
  ZacBuilder<double?>? get maxWidth => throw _privateConstructorUsedError;
  ZacBuilder<double?>? get maxHeight => throw _privateConstructorUsedError;
  ZacBuilder<Widget?>? get child => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_FlutterLimitedBox value) $default,
  ) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_FlutterLimitedBox extends _FlutterLimitedBox {
  _$_FlutterLimitedBox({this.key, this.maxWidth, this.maxHeight, this.child})
      : super._();

  factory _$_FlutterLimitedBox.fromJson(Map<String, dynamic> json) =>
      _$$_FlutterLimitedBoxFromJson(json);

  @override
  final ZacBuilder<Key?>? key;
  @override
  final ZacBuilder<double?>? maxWidth;
  @override
  final ZacBuilder<double?>? maxHeight;
  @override
  final ZacBuilder<Widget?>? child;

  @override
  String toString() {
    return 'FlutterLimitedBox(key: $key, maxWidth: $maxWidth, maxHeight: $maxHeight, child: $child)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FlutterLimitedBox &&
            (identical(other.key, key) || other.key == key) &&
            (identical(other.maxWidth, maxWidth) ||
                other.maxWidth == maxWidth) &&
            (identical(other.maxHeight, maxHeight) ||
                other.maxHeight == maxHeight) &&
            (identical(other.child, child) || other.child == child));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, key, maxWidth, maxHeight, child);

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_FlutterLimitedBox value) $default,
  ) {
    return $default(this);
  }
}

abstract class _FlutterLimitedBox extends FlutterLimitedBox {
  factory _FlutterLimitedBox(
      {final ZacBuilder<Key?>? key,
      final ZacBuilder<double?>? maxWidth,
      final ZacBuilder<double?>? maxHeight,
      final ZacBuilder<Widget?>? child}) = _$_FlutterLimitedBox;
  _FlutterLimitedBox._() : super._();

  factory _FlutterLimitedBox.fromJson(Map<String, dynamic> json) =
      _$_FlutterLimitedBox.fromJson;

  @override
  ZacBuilder<Key?>? get key;
  @override
  ZacBuilder<double?>? get maxWidth;
  @override
  ZacBuilder<double?>? get maxHeight;
  @override
  ZacBuilder<Widget?>? get child;
}
