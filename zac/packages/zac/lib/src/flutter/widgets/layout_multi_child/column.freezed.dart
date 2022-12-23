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
  ZacValue<Key?>? get key => throw _privateConstructorUsedError;
  ZacValue<MainAxisAlignment?>? get mainAxisAlignment =>
      throw _privateConstructorUsedError;
  ZacValue<MainAxisSize?>? get mainAxisSize =>
      throw _privateConstructorUsedError;
  ZacValue<CrossAxisAlignment?>? get crossAxisAlignment =>
      throw _privateConstructorUsedError;
  ZacValue<TextDirection?>? get textDirection =>
      throw _privateConstructorUsedError;
  ZacValue<VerticalDirection?>? get verticalDirection =>
      throw _privateConstructorUsedError;
  ZacValue<TextBaseline?>? get textBaseline =>
      throw _privateConstructorUsedError;
  ZacValueList<Widget, List<Widget>?>? get children =>
      throw _privateConstructorUsedError;

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
  final ZacValue<Key?>? key;
  @override
  final ZacValue<MainAxisAlignment?>? mainAxisAlignment;
  @override
  final ZacValue<MainAxisSize?>? mainAxisSize;
  @override
  final ZacValue<CrossAxisAlignment?>? crossAxisAlignment;
  @override
  final ZacValue<TextDirection?>? textDirection;
  @override
  final ZacValue<VerticalDirection?>? verticalDirection;
  @override
  final ZacValue<TextBaseline?>? textBaseline;
  @override
  final ZacValueList<Widget, List<Widget>?>? children;

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
      {final ZacValue<Key?>? key,
      final ZacValue<MainAxisAlignment?>? mainAxisAlignment,
      final ZacValue<MainAxisSize?>? mainAxisSize,
      final ZacValue<CrossAxisAlignment?>? crossAxisAlignment,
      final ZacValue<TextDirection?>? textDirection,
      final ZacValue<VerticalDirection?>? verticalDirection,
      final ZacValue<TextBaseline?>? textBaseline,
      final ZacValueList<Widget, List<Widget>?>? children}) = _$_FlutterColumn;
  _FlutterColumn._() : super._();

  factory _FlutterColumn.fromJson(Map<String, dynamic> json) =
      _$_FlutterColumn.fromJson;

  @override
  ZacValue<Key?>? get key;
  @override
  ZacValue<MainAxisAlignment?>? get mainAxisAlignment;
  @override
  ZacValue<MainAxisSize?>? get mainAxisSize;
  @override
  ZacValue<CrossAxisAlignment?>? get crossAxisAlignment;
  @override
  ZacValue<TextDirection?>? get textDirection;
  @override
  ZacValue<VerticalDirection?>? get verticalDirection;
  @override
  ZacValue<TextBaseline?>? get textBaseline;
  @override
  ZacValueList<Widget, List<Widget>?>? get children;
}
