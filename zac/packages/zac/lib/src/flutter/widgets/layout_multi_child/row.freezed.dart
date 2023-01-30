// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'row.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FlutterRow _$FlutterRowFromJson(Map<String, dynamic> json) {
  return _FlutterRow.fromJson(json);
}

/// @nodoc
mixin _$FlutterRow {
  ZacBuilder<Key?>? get key => throw _privateConstructorUsedError;
  ZacBuilder<MainAxisAlignment?>? get mainAxisAlignment =>
      throw _privateConstructorUsedError;
  ZacBuilder<MainAxisSize?>? get mainAxisSize =>
      throw _privateConstructorUsedError;
  ZacBuilder<CrossAxisAlignment?>? get crossAxisAlignment =>
      throw _privateConstructorUsedError;
  ZacBuilder<TextDirection?>? get textDirection =>
      throw _privateConstructorUsedError;
  ZacBuilder<VerticalDirection?>? get verticalDirection =>
      throw _privateConstructorUsedError;
  ZacBuilder<TextBaseline?>? get textBaseline =>
      throw _privateConstructorUsedError;
  ZacBuilder<List<Widget>?>? get children => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_FlutterRow value) $default,
  ) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_FlutterRow extends _FlutterRow {
  _$_FlutterRow(
      {this.key,
      this.mainAxisAlignment,
      this.mainAxisSize,
      this.crossAxisAlignment,
      this.textDirection,
      this.verticalDirection,
      this.textBaseline,
      this.children})
      : super._();

  factory _$_FlutterRow.fromJson(Map<String, dynamic> json) =>
      _$$_FlutterRowFromJson(json);

  @override
  final ZacBuilder<Key?>? key;
  @override
  final ZacBuilder<MainAxisAlignment?>? mainAxisAlignment;
  @override
  final ZacBuilder<MainAxisSize?>? mainAxisSize;
  @override
  final ZacBuilder<CrossAxisAlignment?>? crossAxisAlignment;
  @override
  final ZacBuilder<TextDirection?>? textDirection;
  @override
  final ZacBuilder<VerticalDirection?>? verticalDirection;
  @override
  final ZacBuilder<TextBaseline?>? textBaseline;
  @override
  final ZacBuilder<List<Widget>?>? children;

  @override
  String toString() {
    return 'FlutterRow(key: $key, mainAxisAlignment: $mainAxisAlignment, mainAxisSize: $mainAxisSize, crossAxisAlignment: $crossAxisAlignment, textDirection: $textDirection, verticalDirection: $verticalDirection, textBaseline: $textBaseline, children: $children)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FlutterRow &&
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
    TResult Function(_FlutterRow value) $default,
  ) {
    return $default(this);
  }
}

abstract class _FlutterRow extends FlutterRow {
  factory _FlutterRow(
      {final ZacBuilder<Key?>? key,
      final ZacBuilder<MainAxisAlignment?>? mainAxisAlignment,
      final ZacBuilder<MainAxisSize?>? mainAxisSize,
      final ZacBuilder<CrossAxisAlignment?>? crossAxisAlignment,
      final ZacBuilder<TextDirection?>? textDirection,
      final ZacBuilder<VerticalDirection?>? verticalDirection,
      final ZacBuilder<TextBaseline?>? textBaseline,
      final ZacBuilder<List<Widget>?>? children}) = _$_FlutterRow;
  _FlutterRow._() : super._();

  factory _FlutterRow.fromJson(Map<String, dynamic> json) =
      _$_FlutterRow.fromJson;

  @override
  ZacBuilder<Key?>? get key;
  @override
  ZacBuilder<MainAxisAlignment?>? get mainAxisAlignment;
  @override
  ZacBuilder<MainAxisSize?>? get mainAxisSize;
  @override
  ZacBuilder<CrossAxisAlignment?>? get crossAxisAlignment;
  @override
  ZacBuilder<TextDirection?>? get textDirection;
  @override
  ZacBuilder<VerticalDirection?>? get verticalDirection;
  @override
  ZacBuilder<TextBaseline?>? get textBaseline;
  @override
  ZacBuilder<List<Widget>?>? get children;
}
