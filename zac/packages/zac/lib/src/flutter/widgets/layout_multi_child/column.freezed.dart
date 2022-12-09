// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'column.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FlutterColumn _$FlutterColumnFromJson(Map<String, dynamic> json) {
  return _FlutterColumn.fromJson(json);
}

/// @nodoc
mixin _$FlutterColumn {
  FlutterKey? get key => throw _privateConstructorUsedError;
  FlutterMainAxisAlignment? get mainAxisAlignment =>
      throw _privateConstructorUsedError;
  FlutterMainAxisSize? get mainAxisSize => throw _privateConstructorUsedError;
  FlutterCrossAxisAlignment? get crossAxisAlignment =>
      throw _privateConstructorUsedError;
  FlutterTextDirection? get textDirection => throw _privateConstructorUsedError;
  FlutterVerticalDirection? get verticalDirection =>
      throw _privateConstructorUsedError;
  FlutterTextBaseline? get textBaseline => throw _privateConstructorUsedError;
  ZacListOfFlutterWidget? get children => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_FlutterColumn value) $default,
  ) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_FlutterColumn extends _FlutterColumn {
  _$_FlutterColumn(
      {this.key,
      this.mainAxisAlignment,
      this.mainAxisSize,
      this.crossAxisAlignment,
      this.textDirection,
      this.verticalDirection,
      this.textBaseline,
      this.children})
      : super._();

  factory _$_FlutterColumn.fromJson(Map<String, dynamic> json) =>
      _$$_FlutterColumnFromJson(json);

  @override
  final FlutterKey? key;
  @override
  final FlutterMainAxisAlignment? mainAxisAlignment;
  @override
  final FlutterMainAxisSize? mainAxisSize;
  @override
  final FlutterCrossAxisAlignment? crossAxisAlignment;
  @override
  final FlutterTextDirection? textDirection;
  @override
  final FlutterVerticalDirection? verticalDirection;
  @override
  final FlutterTextBaseline? textBaseline;
  @override
  final ZacListOfFlutterWidget? children;

  @override
  String toString() {
    return 'FlutterColumn(key: $key, mainAxisAlignment: $mainAxisAlignment, mainAxisSize: $mainAxisSize, crossAxisAlignment: $crossAxisAlignment, textDirection: $textDirection, verticalDirection: $verticalDirection, textBaseline: $textBaseline, children: $children)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FlutterColumn &&
            (identical(other.key, key) || other.key == key) &&
            (identical(other.mainAxisAlignment, mainAxisAlignment) ||
                other.mainAxisAlignment == mainAxisAlignment) &&
            (identical(other.mainAxisSize, mainAxisSize) ||
                other.mainAxisSize == mainAxisSize) &&
            (identical(other.crossAxisAlignment, crossAxisAlignment) ||
                other.crossAxisAlignment == crossAxisAlignment) &&
            (identical(other.textDirection, textDirection) ||
                other.textDirection == textDirection) &&
            (identical(other.verticalDirection, verticalDirection) ||
                other.verticalDirection == verticalDirection) &&
            (identical(other.textBaseline, textBaseline) ||
                other.textBaseline == textBaseline) &&
            (identical(other.children, children) ||
                other.children == children));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      key,
      mainAxisAlignment,
      mainAxisSize,
      crossAxisAlignment,
      textDirection,
      verticalDirection,
      textBaseline,
      children);

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_FlutterColumn value) $default,
  ) {
    return $default(this);
  }
}

abstract class _FlutterColumn extends FlutterColumn {
  factory _FlutterColumn(
      {final FlutterKey? key,
      final FlutterMainAxisAlignment? mainAxisAlignment,
      final FlutterMainAxisSize? mainAxisSize,
      final FlutterCrossAxisAlignment? crossAxisAlignment,
      final FlutterTextDirection? textDirection,
      final FlutterVerticalDirection? verticalDirection,
      final FlutterTextBaseline? textBaseline,
      final ZacListOfFlutterWidget? children}) = _$_FlutterColumn;
  _FlutterColumn._() : super._();

  factory _FlutterColumn.fromJson(Map<String, dynamic> json) =
      _$_FlutterColumn.fromJson;

  @override
  FlutterKey? get key;
  @override
  FlutterMainAxisAlignment? get mainAxisAlignment;
  @override
  FlutterMainAxisSize? get mainAxisSize;
  @override
  FlutterCrossAxisAlignment? get crossAxisAlignment;
  @override
  FlutterTextDirection? get textDirection;
  @override
  FlutterVerticalDirection? get verticalDirection;
  @override
  FlutterTextBaseline? get textBaseline;
  @override
  ZacListOfFlutterWidget? get children;
}
