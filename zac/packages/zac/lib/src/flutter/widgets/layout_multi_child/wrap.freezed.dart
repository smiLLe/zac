// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'wrap.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FlutterWrap _$FlutterWrapFromJson(Map<String, dynamic> json) {
  return _FlutterWrap.fromJson(json);
}

/// @nodoc
mixin _$FlutterWrap {
  ZacBuilder<Key?>? get key => throw _privateConstructorUsedError;
  ZacBuilder<Axis?>? get direction => throw _privateConstructorUsedError;
  ZacBuilder<WrapAlignment?>? get alignment =>
      throw _privateConstructorUsedError;
  ZacBuilder<double?>? get spacing => throw _privateConstructorUsedError;
  ZacBuilder<double?>? get runSpacing => throw _privateConstructorUsedError;
  ZacBuilder<WrapAlignment?>? get runAlignment =>
      throw _privateConstructorUsedError;
  ZacBuilder<WrapCrossAlignment?>? get crossAxisAlignment =>
      throw _privateConstructorUsedError;
  ZacBuilder<TextDirection?>? get textDirection =>
      throw _privateConstructorUsedError;
  ZacBuilder<VerticalDirection?>? get verticalDirection =>
      throw _privateConstructorUsedError;
  ZacBuilder<Clip?>? get clipBehavior => throw _privateConstructorUsedError;
  ZacBuilder<List<Widget>?>? get children => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_FlutterWrap value) $default,
  ) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_FlutterWrap extends _FlutterWrap {
  _$_FlutterWrap(
      {this.key,
      this.direction,
      this.alignment,
      this.spacing,
      this.runSpacing,
      this.runAlignment,
      this.crossAxisAlignment,
      this.textDirection,
      this.verticalDirection,
      this.clipBehavior,
      this.children})
      : super._();

  factory _$_FlutterWrap.fromJson(Map<String, dynamic> json) =>
      _$$_FlutterWrapFromJson(json);

  @override
  final ZacBuilder<Key?>? key;
  @override
  final ZacBuilder<Axis?>? direction;
  @override
  final ZacBuilder<WrapAlignment?>? alignment;
  @override
  final ZacBuilder<double?>? spacing;
  @override
  final ZacBuilder<double?>? runSpacing;
  @override
  final ZacBuilder<WrapAlignment?>? runAlignment;
  @override
  final ZacBuilder<WrapCrossAlignment?>? crossAxisAlignment;
  @override
  final ZacBuilder<TextDirection?>? textDirection;
  @override
  final ZacBuilder<VerticalDirection?>? verticalDirection;
  @override
  final ZacBuilder<Clip?>? clipBehavior;
  @override
  final ZacBuilder<List<Widget>?>? children;

  @override
  String toString() {
    return 'FlutterWrap(key: $key, direction: $direction, alignment: $alignment, spacing: $spacing, runSpacing: $runSpacing, runAlignment: $runAlignment, crossAxisAlignment: $crossAxisAlignment, textDirection: $textDirection, verticalDirection: $verticalDirection, clipBehavior: $clipBehavior, children: $children)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FlutterWrap &&
            (identical(other.key, key) || other.key == key) &&
            (identical(other.direction, direction) ||
                other.direction == direction) &&
            (identical(other.alignment, alignment) ||
                other.alignment == alignment) &&
            (identical(other.spacing, spacing) || other.spacing == spacing) &&
            (identical(other.runSpacing, runSpacing) ||
                other.runSpacing == runSpacing) &&
            (identical(other.runAlignment, runAlignment) ||
                other.runAlignment == runAlignment) &&
            (identical(other.crossAxisAlignment, crossAxisAlignment) ||
                other.crossAxisAlignment == crossAxisAlignment) &&
            (identical(other.textDirection, textDirection) ||
                other.textDirection == textDirection) &&
            (identical(other.verticalDirection, verticalDirection) ||
                other.verticalDirection == verticalDirection) &&
            (identical(other.clipBehavior, clipBehavior) ||
                other.clipBehavior == clipBehavior) &&
            (identical(other.children, children) ||
                other.children == children));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      key,
      direction,
      alignment,
      spacing,
      runSpacing,
      runAlignment,
      crossAxisAlignment,
      textDirection,
      verticalDirection,
      clipBehavior,
      children);

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_FlutterWrap value) $default,
  ) {
    return $default(this);
  }
}

abstract class _FlutterWrap extends FlutterWrap {
  factory _FlutterWrap(
      {final ZacBuilder<Key?>? key,
      final ZacBuilder<Axis?>? direction,
      final ZacBuilder<WrapAlignment?>? alignment,
      final ZacBuilder<double?>? spacing,
      final ZacBuilder<double?>? runSpacing,
      final ZacBuilder<WrapAlignment?>? runAlignment,
      final ZacBuilder<WrapCrossAlignment?>? crossAxisAlignment,
      final ZacBuilder<TextDirection?>? textDirection,
      final ZacBuilder<VerticalDirection?>? verticalDirection,
      final ZacBuilder<Clip?>? clipBehavior,
      final ZacBuilder<List<Widget>?>? children}) = _$_FlutterWrap;
  _FlutterWrap._() : super._();

  factory _FlutterWrap.fromJson(Map<String, dynamic> json) =
      _$_FlutterWrap.fromJson;

  @override
  ZacBuilder<Key?>? get key;
  @override
  ZacBuilder<Axis?>? get direction;
  @override
  ZacBuilder<WrapAlignment?>? get alignment;
  @override
  ZacBuilder<double?>? get spacing;
  @override
  ZacBuilder<double?>? get runSpacing;
  @override
  ZacBuilder<WrapAlignment?>? get runAlignment;
  @override
  ZacBuilder<WrapCrossAlignment?>? get crossAxisAlignment;
  @override
  ZacBuilder<TextDirection?>? get textDirection;
  @override
  ZacBuilder<VerticalDirection?>? get verticalDirection;
  @override
  ZacBuilder<Clip?>? get clipBehavior;
  @override
  ZacBuilder<List<Widget>?>? get children;
}
