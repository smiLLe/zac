// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'interactive_viewer.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FlutterInteractiveViewer _$FlutterInteractiveViewerFromJson(
    Map<String, dynamic> json) {
  return _FlutterInteractiveViewer.fromJson(json);
}

/// @nodoc
mixin _$FlutterInteractiveViewer {
  FlutterKey? get key => throw _privateConstructorUsedError;
  FlutterWidget get child => throw _privateConstructorUsedError;
  FlutterClip? get clipBehavior => throw _privateConstructorUsedError;
  ZacBool? get alignPanAxis => throw _privateConstructorUsedError;
  FlutterEdgeInsets? get boundaryMargin => throw _privateConstructorUsedError;
  ZacBool? get constrained => throw _privateConstructorUsedError;
  ZacDouble? get maxScale => throw _privateConstructorUsedError;
  ZacDouble? get minScale => throw _privateConstructorUsedError;
  ZacActions? get onInteractionEnd => throw _privateConstructorUsedError;
  ZacActions? get onInteractionStart => throw _privateConstructorUsedError;
  ZacActions? get onInteractionUpdate => throw _privateConstructorUsedError;
  ZacBool? get panEnabled => throw _privateConstructorUsedError;
  ZacBool? get scaleEnabled => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_FlutterInteractiveViewer value) $default,
  ) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_FlutterInteractiveViewer extends _FlutterInteractiveViewer {
  _$_FlutterInteractiveViewer(
      {this.key,
      required this.child,
      this.clipBehavior,
      this.alignPanAxis,
      this.boundaryMargin,
      this.constrained,
      this.maxScale,
      this.minScale,
      this.onInteractionEnd,
      this.onInteractionStart,
      this.onInteractionUpdate,
      this.panEnabled,
      this.scaleEnabled})
      : super._();

  factory _$_FlutterInteractiveViewer.fromJson(Map<String, dynamic> json) =>
      _$$_FlutterInteractiveViewerFromJson(json);

  @override
  final FlutterKey? key;
  @override
  final FlutterWidget child;
  @override
  final FlutterClip? clipBehavior;
  @override
  final ZacBool? alignPanAxis;
  @override
  final FlutterEdgeInsets? boundaryMargin;
  @override
  final ZacBool? constrained;
  @override
  final ZacDouble? maxScale;
  @override
  final ZacDouble? minScale;
  @override
  final ZacActions? onInteractionEnd;
  @override
  final ZacActions? onInteractionStart;
  @override
  final ZacActions? onInteractionUpdate;
  @override
  final ZacBool? panEnabled;
  @override
  final ZacBool? scaleEnabled;

  @override
  String toString() {
    return 'FlutterInteractiveViewer(key: $key, child: $child, clipBehavior: $clipBehavior, alignPanAxis: $alignPanAxis, boundaryMargin: $boundaryMargin, constrained: $constrained, maxScale: $maxScale, minScale: $minScale, onInteractionEnd: $onInteractionEnd, onInteractionStart: $onInteractionStart, onInteractionUpdate: $onInteractionUpdate, panEnabled: $panEnabled, scaleEnabled: $scaleEnabled)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FlutterInteractiveViewer &&
            (identical(other.key, key) || other.key == key) &&
            (identical(other.child, child) || other.child == child) &&
            (identical(other.clipBehavior, clipBehavior) ||
                other.clipBehavior == clipBehavior) &&
            (identical(other.alignPanAxis, alignPanAxis) ||
                other.alignPanAxis == alignPanAxis) &&
            (identical(other.boundaryMargin, boundaryMargin) ||
                other.boundaryMargin == boundaryMargin) &&
            (identical(other.constrained, constrained) ||
                other.constrained == constrained) &&
            (identical(other.maxScale, maxScale) ||
                other.maxScale == maxScale) &&
            (identical(other.minScale, minScale) ||
                other.minScale == minScale) &&
            (identical(other.onInteractionEnd, onInteractionEnd) ||
                other.onInteractionEnd == onInteractionEnd) &&
            (identical(other.onInteractionStart, onInteractionStart) ||
                other.onInteractionStart == onInteractionStart) &&
            (identical(other.onInteractionUpdate, onInteractionUpdate) ||
                other.onInteractionUpdate == onInteractionUpdate) &&
            (identical(other.panEnabled, panEnabled) ||
                other.panEnabled == panEnabled) &&
            (identical(other.scaleEnabled, scaleEnabled) ||
                other.scaleEnabled == scaleEnabled));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      key,
      child,
      clipBehavior,
      alignPanAxis,
      boundaryMargin,
      constrained,
      maxScale,
      minScale,
      onInteractionEnd,
      onInteractionStart,
      onInteractionUpdate,
      panEnabled,
      scaleEnabled);

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_FlutterInteractiveViewer value) $default,
  ) {
    return $default(this);
  }
}

abstract class _FlutterInteractiveViewer extends FlutterInteractiveViewer {
  factory _FlutterInteractiveViewer(
      {final FlutterKey? key,
      required final FlutterWidget child,
      final FlutterClip? clipBehavior,
      final ZacBool? alignPanAxis,
      final FlutterEdgeInsets? boundaryMargin,
      final ZacBool? constrained,
      final ZacDouble? maxScale,
      final ZacDouble? minScale,
      final ZacActions? onInteractionEnd,
      final ZacActions? onInteractionStart,
      final ZacActions? onInteractionUpdate,
      final ZacBool? panEnabled,
      final ZacBool? scaleEnabled}) = _$_FlutterInteractiveViewer;
  _FlutterInteractiveViewer._() : super._();

  factory _FlutterInteractiveViewer.fromJson(Map<String, dynamic> json) =
      _$_FlutterInteractiveViewer.fromJson;

  @override
  FlutterKey? get key;
  @override
  FlutterWidget get child;
  @override
  FlutterClip? get clipBehavior;
  @override
  ZacBool? get alignPanAxis;
  @override
  FlutterEdgeInsets? get boundaryMargin;
  @override
  ZacBool? get constrained;
  @override
  ZacDouble? get maxScale;
  @override
  ZacDouble? get minScale;
  @override
  ZacActions? get onInteractionEnd;
  @override
  ZacActions? get onInteractionStart;
  @override
  ZacActions? get onInteractionUpdate;
  @override
  ZacBool? get panEnabled;
  @override
  ZacBool? get scaleEnabled;
}
