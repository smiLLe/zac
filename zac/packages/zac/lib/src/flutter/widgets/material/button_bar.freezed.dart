// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'button_bar.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FlutterButtonBar _$FlutterButtonBarFromJson(Map<String, dynamic> json) {
  return _FlutterButtonBar.fromJson(json);
}

/// @nodoc
mixin _$FlutterButtonBar {
  FlutterKey? get key => throw _privateConstructorUsedError;
  FlutterMainAxisAlignment? get alignment => throw _privateConstructorUsedError;
  FlutterMainAxisSize? get mainAxisSize =>
      throw _privateConstructorUsedError; // FlutterButtonTextTheme? buttonTextTheme,
  ZacDouble? get buttonMinWidth => throw _privateConstructorUsedError;
  ZacDouble? get buttonHeight => throw _privateConstructorUsedError;
  FlutterEdgeInsetsGeometry? get buttonPadding =>
      throw _privateConstructorUsedError;
  ZacBool? get buttonAlignedDropdown =>
      throw _privateConstructorUsedError; // FlutterButtonBarLayoutBehavior? layoutBehavior,
  FlutterVerticalDirection? get overflowDirection =>
      throw _privateConstructorUsedError;
  ZacDouble? get overflowButtonSpacing => throw _privateConstructorUsedError;
  ZacValueList<FlutterWidget>? get children =>
      throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_FlutterButtonBar value) $default,
  ) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_FlutterButtonBar extends _FlutterButtonBar {
  _$_FlutterButtonBar(
      {this.key,
      this.alignment,
      this.mainAxisSize,
      this.buttonMinWidth,
      this.buttonHeight,
      this.buttonPadding,
      this.buttonAlignedDropdown,
      this.overflowDirection,
      this.overflowButtonSpacing,
      this.children})
      : super._();

  factory _$_FlutterButtonBar.fromJson(Map<String, dynamic> json) =>
      _$$_FlutterButtonBarFromJson(json);

  @override
  final FlutterKey? key;
  @override
  final FlutterMainAxisAlignment? alignment;
  @override
  final FlutterMainAxisSize? mainAxisSize;
// FlutterButtonTextTheme? buttonTextTheme,
  @override
  final ZacDouble? buttonMinWidth;
  @override
  final ZacDouble? buttonHeight;
  @override
  final FlutterEdgeInsetsGeometry? buttonPadding;
  @override
  final ZacBool? buttonAlignedDropdown;
// FlutterButtonBarLayoutBehavior? layoutBehavior,
  @override
  final FlutterVerticalDirection? overflowDirection;
  @override
  final ZacDouble? overflowButtonSpacing;
  @override
  final ZacValueList<FlutterWidget>? children;

  @override
  String toString() {
    return 'FlutterButtonBar(key: $key, alignment: $alignment, mainAxisSize: $mainAxisSize, buttonMinWidth: $buttonMinWidth, buttonHeight: $buttonHeight, buttonPadding: $buttonPadding, buttonAlignedDropdown: $buttonAlignedDropdown, overflowDirection: $overflowDirection, overflowButtonSpacing: $overflowButtonSpacing, children: $children)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FlutterButtonBar &&
            (identical(other.key, key) || other.key == key) &&
            (identical(other.alignment, alignment) ||
                other.alignment == alignment) &&
            (identical(other.mainAxisSize, mainAxisSize) ||
                other.mainAxisSize == mainAxisSize) &&
            (identical(other.buttonMinWidth, buttonMinWidth) ||
                other.buttonMinWidth == buttonMinWidth) &&
            (identical(other.buttonHeight, buttonHeight) ||
                other.buttonHeight == buttonHeight) &&
            (identical(other.buttonPadding, buttonPadding) ||
                other.buttonPadding == buttonPadding) &&
            (identical(other.buttonAlignedDropdown, buttonAlignedDropdown) ||
                other.buttonAlignedDropdown == buttonAlignedDropdown) &&
            (identical(other.overflowDirection, overflowDirection) ||
                other.overflowDirection == overflowDirection) &&
            (identical(other.overflowButtonSpacing, overflowButtonSpacing) ||
                other.overflowButtonSpacing == overflowButtonSpacing) &&
            (identical(other.children, children) ||
                other.children == children));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      key,
      alignment,
      mainAxisSize,
      buttonMinWidth,
      buttonHeight,
      buttonPadding,
      buttonAlignedDropdown,
      overflowDirection,
      overflowButtonSpacing,
      children);

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_FlutterButtonBar value) $default,
  ) {
    return $default(this);
  }
}

abstract class _FlutterButtonBar extends FlutterButtonBar {
  factory _FlutterButtonBar(
      {final FlutterKey? key,
      final FlutterMainAxisAlignment? alignment,
      final FlutterMainAxisSize? mainAxisSize,
      final ZacDouble? buttonMinWidth,
      final ZacDouble? buttonHeight,
      final FlutterEdgeInsetsGeometry? buttonPadding,
      final ZacBool? buttonAlignedDropdown,
      final FlutterVerticalDirection? overflowDirection,
      final ZacDouble? overflowButtonSpacing,
      final ZacValueList<FlutterWidget>? children}) = _$_FlutterButtonBar;
  _FlutterButtonBar._() : super._();

  factory _FlutterButtonBar.fromJson(Map<String, dynamic> json) =
      _$_FlutterButtonBar.fromJson;

  @override
  FlutterKey? get key;
  @override
  FlutterMainAxisAlignment? get alignment;
  @override
  FlutterMainAxisSize? get mainAxisSize;
  @override // FlutterButtonTextTheme? buttonTextTheme,
  ZacDouble? get buttonMinWidth;
  @override
  ZacDouble? get buttonHeight;
  @override
  FlutterEdgeInsetsGeometry? get buttonPadding;
  @override
  ZacBool? get buttonAlignedDropdown;
  @override // FlutterButtonBarLayoutBehavior? layoutBehavior,
  FlutterVerticalDirection? get overflowDirection;
  @override
  ZacDouble? get overflowButtonSpacing;
  @override
  ZacValueList<FlutterWidget>? get children;
}
