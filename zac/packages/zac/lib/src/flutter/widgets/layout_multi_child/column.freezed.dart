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
  ZacListBuilder<Widget, List<Widget>?>? get children =>
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
  final ZacListBuilder<Widget, List<Widget>?>? children;

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
          {final ZacBuilder<Key?>? key,
          final ZacBuilder<MainAxisAlignment?>? mainAxisAlignment,
          final ZacBuilder<MainAxisSize?>? mainAxisSize,
          final ZacBuilder<CrossAxisAlignment?>? crossAxisAlignment,
          final ZacBuilder<TextDirection?>? textDirection,
          final ZacBuilder<VerticalDirection?>? verticalDirection,
          final ZacBuilder<TextBaseline?>? textBaseline,
          final ZacListBuilder<Widget, List<Widget>?>? children}) =
      _$_FlutterColumn;
  _FlutterColumn._() : super._();

  factory _FlutterColumn.fromJson(Map<String, dynamic> json) =
      _$_FlutterColumn.fromJson;

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
  ZacListBuilder<Widget, List<Widget>?>? get children;
}
