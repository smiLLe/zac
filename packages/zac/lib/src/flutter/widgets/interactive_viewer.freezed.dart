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
  ZacValue<double>? get maxScale => throw _privateConstructorUsedError;
  ZacValue<double>? get minScale => throw _privateConstructorUsedError;
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
  final ZacValue<double>? maxScale;
  @override
  final ZacValue<double>? minScale;
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
            const DeepCollectionEquality().equals(other.key, key) &&
            const DeepCollectionEquality().equals(other.child, child) &&
            const DeepCollectionEquality()
                .equals(other.clipBehavior, clipBehavior) &&
            const DeepCollectionEquality()
                .equals(other.alignPanAxis, alignPanAxis) &&
            const DeepCollectionEquality()
                .equals(other.boundaryMargin, boundaryMargin) &&
            const DeepCollectionEquality()
                .equals(other.constrained, constrained) &&
            const DeepCollectionEquality().equals(other.maxScale, maxScale) &&
            const DeepCollectionEquality().equals(other.minScale, minScale) &&
            const DeepCollectionEquality()
                .equals(other.onInteractionEnd, onInteractionEnd) &&
            const DeepCollectionEquality()
                .equals(other.onInteractionStart, onInteractionStart) &&
            const DeepCollectionEquality()
                .equals(other.onInteractionUpdate, onInteractionUpdate) &&
            const DeepCollectionEquality()
                .equals(other.panEnabled, panEnabled) &&
            const DeepCollectionEquality()
                .equals(other.scaleEnabled, scaleEnabled));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(key),
      const DeepCollectionEquality().hash(child),
      const DeepCollectionEquality().hash(clipBehavior),
      const DeepCollectionEquality().hash(alignPanAxis),
      const DeepCollectionEquality().hash(boundaryMargin),
      const DeepCollectionEquality().hash(constrained),
      const DeepCollectionEquality().hash(maxScale),
      const DeepCollectionEquality().hash(minScale),
      const DeepCollectionEquality().hash(onInteractionEnd),
      const DeepCollectionEquality().hash(onInteractionStart),
      const DeepCollectionEquality().hash(onInteractionUpdate),
      const DeepCollectionEquality().hash(panEnabled),
      const DeepCollectionEquality().hash(scaleEnabled));

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
      final ZacValue<double>? maxScale,
      final ZacValue<double>? minScale,
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
  ZacValue<double>? get maxScale;
  @override
  ZacValue<double>? get minScale;
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
