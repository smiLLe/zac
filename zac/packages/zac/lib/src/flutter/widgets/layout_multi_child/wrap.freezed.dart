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
  ZacValue<Key>? get key => throw _privateConstructorUsedError;
  ZacValue<Axis>? get direction => throw _privateConstructorUsedError;
  ZacValue<WrapAlignment>? get alignment => throw _privateConstructorUsedError;
  ZacValue<double>? get spacing => throw _privateConstructorUsedError;
  ZacValue<double>? get runSpacing => throw _privateConstructorUsedError;
  ZacValue<WrapAlignment>? get runAlignment =>
      throw _privateConstructorUsedError;
  ZacValue<WrapCrossAlignment>? get crossAxisAlignment =>
      throw _privateConstructorUsedError;
  ZacValue<TextDirection>? get textDirection =>
      throw _privateConstructorUsedError;
  ZacValue<VerticalDirection>? get verticalDirection =>
      throw _privateConstructorUsedError;
  ZacValue<Clip>? get clipBehavior => throw _privateConstructorUsedError;
  ZacListOfFlutterWidget? get children => throw _privateConstructorUsedError;

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
  final ZacValue<Key>? key;
  @override
  final ZacValue<Axis>? direction;
  @override
  final ZacValue<WrapAlignment>? alignment;
  @override
  final ZacValue<double>? spacing;
  @override
  final ZacValue<double>? runSpacing;
  @override
  final ZacValue<WrapAlignment>? runAlignment;
  @override
  final ZacValue<WrapCrossAlignment>? crossAxisAlignment;
  @override
  final ZacValue<TextDirection>? textDirection;
  @override
  final ZacValue<VerticalDirection>? verticalDirection;
  @override
  final ZacValue<Clip>? clipBehavior;
  @override
  final ZacListOfFlutterWidget? children;

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
      {final ZacValue<Key>? key,
      final ZacValue<Axis>? direction,
      final ZacValue<WrapAlignment>? alignment,
      final ZacValue<double>? spacing,
      final ZacValue<double>? runSpacing,
      final ZacValue<WrapAlignment>? runAlignment,
      final ZacValue<WrapCrossAlignment>? crossAxisAlignment,
      final ZacValue<TextDirection>? textDirection,
      final ZacValue<VerticalDirection>? verticalDirection,
      final ZacValue<Clip>? clipBehavior,
      final ZacListOfFlutterWidget? children}) = _$_FlutterWrap;
  _FlutterWrap._() : super._();

  factory _FlutterWrap.fromJson(Map<String, dynamic> json) =
      _$_FlutterWrap.fromJson;

  @override
  ZacValue<Key>? get key;
  @override
  ZacValue<Axis>? get direction;
  @override
  ZacValue<WrapAlignment>? get alignment;
  @override
  ZacValue<double>? get spacing;
  @override
  ZacValue<double>? get runSpacing;
  @override
  ZacValue<WrapAlignment>? get runAlignment;
  @override
  ZacValue<WrapCrossAlignment>? get crossAxisAlignment;
  @override
  ZacValue<TextDirection>? get textDirection;
  @override
  ZacValue<VerticalDirection>? get verticalDirection;
  @override
  ZacValue<Clip>? get clipBehavior;
  @override
  ZacListOfFlutterWidget? get children;
}
