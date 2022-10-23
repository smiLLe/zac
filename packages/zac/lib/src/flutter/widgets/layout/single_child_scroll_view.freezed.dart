// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'single_child_scroll_view.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FlutterSingleChildScrollView _$FlutterSingleChildScrollViewFromJson(
    Map<String, dynamic> json) {
  return _FlutterSingleChildScrollView.fromJson(json);
}

/// @nodoc
mixin _$FlutterSingleChildScrollView {
  FlutterKey? get key => throw _privateConstructorUsedError;
  FlutterAxis? get scrollDirection => throw _privateConstructorUsedError;
  ZacValue<bool>? get reverse => throw _privateConstructorUsedError;
  FlutterEdgeInsetsGeometry? get padding => throw _privateConstructorUsedError;
  ZacValue<bool>? get primary =>
      throw _privateConstructorUsedError; // ScrollPhysics? physics,
// ScrollController? controller,
  FlutterWidget? get child =>
      throw _privateConstructorUsedError; // DragStartBehavior dragStartBehavior = DragStartBehavior.start,
  FlutterClip? get clipBehavior => throw _privateConstructorUsedError;
  ZacValue<String>? get restorationId => throw _privateConstructorUsedError;
  FlutterScrollViewKeyboardDismissBehavior? get keyboardDismissBehavior =>
      throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_FlutterSingleChildScrollView value) $default,
  ) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_FlutterSingleChildScrollView extends _FlutterSingleChildScrollView {
  _$_FlutterSingleChildScrollView(
      {this.key,
      this.scrollDirection,
      this.reverse,
      this.padding,
      this.primary,
      this.child,
      this.clipBehavior,
      this.restorationId,
      this.keyboardDismissBehavior})
      : super._();

  factory _$_FlutterSingleChildScrollView.fromJson(Map<String, dynamic> json) =>
      _$$_FlutterSingleChildScrollViewFromJson(json);

  @override
  final FlutterKey? key;
  @override
  final FlutterAxis? scrollDirection;
  @override
  final ZacValue<bool>? reverse;
  @override
  final FlutterEdgeInsetsGeometry? padding;
  @override
  final ZacValue<bool>? primary;
// ScrollPhysics? physics,
// ScrollController? controller,
  @override
  final FlutterWidget? child;
// DragStartBehavior dragStartBehavior = DragStartBehavior.start,
  @override
  final FlutterClip? clipBehavior;
  @override
  final ZacValue<String>? restorationId;
  @override
  final FlutterScrollViewKeyboardDismissBehavior? keyboardDismissBehavior;

  @override
  String toString() {
    return 'FlutterSingleChildScrollView(key: $key, scrollDirection: $scrollDirection, reverse: $reverse, padding: $padding, primary: $primary, child: $child, clipBehavior: $clipBehavior, restorationId: $restorationId, keyboardDismissBehavior: $keyboardDismissBehavior)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FlutterSingleChildScrollView &&
            (identical(other.key, key) || other.key == key) &&
            (identical(other.scrollDirection, scrollDirection) ||
                other.scrollDirection == scrollDirection) &&
            (identical(other.reverse, reverse) || other.reverse == reverse) &&
            (identical(other.padding, padding) || other.padding == padding) &&
            (identical(other.primary, primary) || other.primary == primary) &&
            (identical(other.child, child) || other.child == child) &&
            (identical(other.clipBehavior, clipBehavior) ||
                other.clipBehavior == clipBehavior) &&
            (identical(other.restorationId, restorationId) ||
                other.restorationId == restorationId) &&
            (identical(
                    other.keyboardDismissBehavior, keyboardDismissBehavior) ||
                other.keyboardDismissBehavior == keyboardDismissBehavior));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      key,
      scrollDirection,
      reverse,
      padding,
      primary,
      child,
      clipBehavior,
      restorationId,
      keyboardDismissBehavior);

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_FlutterSingleChildScrollView value) $default,
  ) {
    return $default(this);
  }
}

abstract class _FlutterSingleChildScrollView
    extends FlutterSingleChildScrollView {
  factory _FlutterSingleChildScrollView(
      {final FlutterKey? key,
      final FlutterAxis? scrollDirection,
      final ZacValue<bool>? reverse,
      final FlutterEdgeInsetsGeometry? padding,
      final ZacValue<bool>? primary,
      final FlutterWidget? child,
      final FlutterClip? clipBehavior,
      final ZacValue<String>? restorationId,
      final FlutterScrollViewKeyboardDismissBehavior?
          keyboardDismissBehavior}) = _$_FlutterSingleChildScrollView;
  _FlutterSingleChildScrollView._() : super._();

  factory _FlutterSingleChildScrollView.fromJson(Map<String, dynamic> json) =
      _$_FlutterSingleChildScrollView.fromJson;

  @override
  FlutterKey? get key;
  @override
  FlutterAxis? get scrollDirection;
  @override
  ZacValue<bool>? get reverse;
  @override
  FlutterEdgeInsetsGeometry? get padding;
  @override
  ZacValue<bool>? get primary;
  @override // ScrollPhysics? physics,
// ScrollController? controller,
  FlutterWidget? get child;
  @override // DragStartBehavior dragStartBehavior = DragStartBehavior.start,
  FlutterClip? get clipBehavior;
  @override
  ZacValue<String>? get restorationId;
  @override
  FlutterScrollViewKeyboardDismissBehavior? get keyboardDismissBehavior;
}
