// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

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
  FlutterKey? get key => throw _privateConstructorUsedError;
  FlutterAxis? get direction => throw _privateConstructorUsedError;
  FlutterWrapAlignment? get alignment => throw _privateConstructorUsedError;
  ZacValue<double>? get spacing => throw _privateConstructorUsedError;
  ZacValue<double>? get runSpacing => throw _privateConstructorUsedError;
  FlutterWrapAlignment? get runAlignment => throw _privateConstructorUsedError;
  FlutterWrapCrossAlignment? get crossAxisAlignment =>
      throw _privateConstructorUsedError;
  FlutterTextDirection? get textDirection => throw _privateConstructorUsedError;
  FlutterVerticalDirection? get verticalDirection =>
      throw _privateConstructorUsedError;
  FlutterClip? get clipBehavior => throw _privateConstructorUsedError;
  ZacValueList<FlutterWidget>? get children =>
      throw _privateConstructorUsedError;

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
  final FlutterKey? key;
  @override
  final FlutterAxis? direction;
  @override
  final FlutterWrapAlignment? alignment;
  @override
  final ZacValue<double>? spacing;
  @override
  final ZacValue<double>? runSpacing;
  @override
  final FlutterWrapAlignment? runAlignment;
  @override
  final FlutterWrapCrossAlignment? crossAxisAlignment;
  @override
  final FlutterTextDirection? textDirection;
  @override
  final FlutterVerticalDirection? verticalDirection;
  @override
  final FlutterClip? clipBehavior;
  @override
  final ZacValueList<FlutterWidget>? children;

  @override
  String toString() {
    return 'FlutterWrap(key: $key, direction: $direction, alignment: $alignment, spacing: $spacing, runSpacing: $runSpacing, runAlignment: $runAlignment, crossAxisAlignment: $crossAxisAlignment, textDirection: $textDirection, verticalDirection: $verticalDirection, clipBehavior: $clipBehavior, children: $children)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FlutterWrap &&
            const DeepCollectionEquality().equals(other.key, key) &&
            const DeepCollectionEquality().equals(other.direction, direction) &&
            const DeepCollectionEquality().equals(other.alignment, alignment) &&
            const DeepCollectionEquality().equals(other.spacing, spacing) &&
            const DeepCollectionEquality()
                .equals(other.runSpacing, runSpacing) &&
            const DeepCollectionEquality()
                .equals(other.runAlignment, runAlignment) &&
            const DeepCollectionEquality()
                .equals(other.crossAxisAlignment, crossAxisAlignment) &&
            const DeepCollectionEquality()
                .equals(other.textDirection, textDirection) &&
            const DeepCollectionEquality()
                .equals(other.verticalDirection, verticalDirection) &&
            const DeepCollectionEquality()
                .equals(other.clipBehavior, clipBehavior) &&
            const DeepCollectionEquality().equals(other.children, children));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(key),
      const DeepCollectionEquality().hash(direction),
      const DeepCollectionEquality().hash(alignment),
      const DeepCollectionEquality().hash(spacing),
      const DeepCollectionEquality().hash(runSpacing),
      const DeepCollectionEquality().hash(runAlignment),
      const DeepCollectionEquality().hash(crossAxisAlignment),
      const DeepCollectionEquality().hash(textDirection),
      const DeepCollectionEquality().hash(verticalDirection),
      const DeepCollectionEquality().hash(clipBehavior),
      const DeepCollectionEquality().hash(children));

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
      {final FlutterKey? key,
      final FlutterAxis? direction,
      final FlutterWrapAlignment? alignment,
      final ZacValue<double>? spacing,
      final ZacValue<double>? runSpacing,
      final FlutterWrapAlignment? runAlignment,
      final FlutterWrapCrossAlignment? crossAxisAlignment,
      final FlutterTextDirection? textDirection,
      final FlutterVerticalDirection? verticalDirection,
      final FlutterClip? clipBehavior,
      final ZacValueList<FlutterWidget>? children}) = _$_FlutterWrap;
  _FlutterWrap._() : super._();

  factory _FlutterWrap.fromJson(Map<String, dynamic> json) =
      _$_FlutterWrap.fromJson;

  @override
  FlutterKey? get key;
  @override
  FlutterAxis? get direction;
  @override
  FlutterWrapAlignment? get alignment;
  @override
  ZacValue<double>? get spacing;
  @override
  ZacValue<double>? get runSpacing;
  @override
  FlutterWrapAlignment? get runAlignment;
  @override
  FlutterWrapCrossAlignment? get crossAxisAlignment;
  @override
  FlutterTextDirection? get textDirection;
  @override
  FlutterVerticalDirection? get verticalDirection;
  @override
  FlutterClip? get clipBehavior;
  @override
  ZacValueList<FlutterWidget>? get children;
}
