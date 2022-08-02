// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'refresh_indicator.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FlutterRefreshIndicator _$FlutterRefreshIndicatorFromJson(
    Map<String, dynamic> json) {
  return _FlutterRefreshIndicator.fromJson(json);
}

/// @nodoc
mixin _$FlutterRefreshIndicator {
  FlutterKey? get key => throw _privateConstructorUsedError;
  ZacWidget get child => throw _privateConstructorUsedError;
  ZacDouble? get displacement => throw _privateConstructorUsedError;
  ZacDouble? get edgeOffset => throw _privateConstructorUsedError;
  ZacActions get onRefresh => throw _privateConstructorUsedError;
  FlutterColor? get color => throw _privateConstructorUsedError;
  FlutterColor? get backgroundColor =>
      throw _privateConstructorUsedError; // ScrollNotificationPredicate notificationPredicate = defaultScrollNotificationPredicate,
  ZacString? get semanticsLabel => throw _privateConstructorUsedError;
  ZacString? get semanticsValue => throw _privateConstructorUsedError;
  ZacDouble? get strokeWidth => throw _privateConstructorUsedError;
  FlutterRefreshIndicatorTriggerMode? get triggerMode =>
      throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_FlutterRefreshIndicator value) $default,
  ) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_FlutterRefreshIndicator extends _FlutterRefreshIndicator {
  _$_FlutterRefreshIndicator(
      {this.key,
      required this.child,
      this.displacement,
      this.edgeOffset,
      required this.onRefresh,
      this.color,
      this.backgroundColor,
      this.semanticsLabel,
      this.semanticsValue,
      this.strokeWidth,
      this.triggerMode})
      : super._();

  factory _$_FlutterRefreshIndicator.fromJson(Map<String, dynamic> json) =>
      _$$_FlutterRefreshIndicatorFromJson(json);

  @override
  final FlutterKey? key;
  @override
  final ZacWidget child;
  @override
  final ZacDouble? displacement;
  @override
  final ZacDouble? edgeOffset;
  @override
  final ZacActions onRefresh;
  @override
  final FlutterColor? color;
  @override
  final FlutterColor? backgroundColor;
// ScrollNotificationPredicate notificationPredicate = defaultScrollNotificationPredicate,
  @override
  final ZacString? semanticsLabel;
  @override
  final ZacString? semanticsValue;
  @override
  final ZacDouble? strokeWidth;
  @override
  final FlutterRefreshIndicatorTriggerMode? triggerMode;

  @override
  String toString() {
    return 'FlutterRefreshIndicator(key: $key, child: $child, displacement: $displacement, edgeOffset: $edgeOffset, onRefresh: $onRefresh, color: $color, backgroundColor: $backgroundColor, semanticsLabel: $semanticsLabel, semanticsValue: $semanticsValue, strokeWidth: $strokeWidth, triggerMode: $triggerMode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FlutterRefreshIndicator &&
            const DeepCollectionEquality().equals(other.key, key) &&
            const DeepCollectionEquality().equals(other.child, child) &&
            const DeepCollectionEquality()
                .equals(other.displacement, displacement) &&
            const DeepCollectionEquality()
                .equals(other.edgeOffset, edgeOffset) &&
            const DeepCollectionEquality().equals(other.onRefresh, onRefresh) &&
            const DeepCollectionEquality().equals(other.color, color) &&
            const DeepCollectionEquality()
                .equals(other.backgroundColor, backgroundColor) &&
            const DeepCollectionEquality()
                .equals(other.semanticsLabel, semanticsLabel) &&
            const DeepCollectionEquality()
                .equals(other.semanticsValue, semanticsValue) &&
            const DeepCollectionEquality()
                .equals(other.strokeWidth, strokeWidth) &&
            const DeepCollectionEquality()
                .equals(other.triggerMode, triggerMode));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(key),
      const DeepCollectionEquality().hash(child),
      const DeepCollectionEquality().hash(displacement),
      const DeepCollectionEquality().hash(edgeOffset),
      const DeepCollectionEquality().hash(onRefresh),
      const DeepCollectionEquality().hash(color),
      const DeepCollectionEquality().hash(backgroundColor),
      const DeepCollectionEquality().hash(semanticsLabel),
      const DeepCollectionEquality().hash(semanticsValue),
      const DeepCollectionEquality().hash(strokeWidth),
      const DeepCollectionEquality().hash(triggerMode));

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_FlutterRefreshIndicator value) $default,
  ) {
    return $default(this);
  }
}

abstract class _FlutterRefreshIndicator extends FlutterRefreshIndicator {
  factory _FlutterRefreshIndicator(
          {final FlutterKey? key,
          required final ZacWidget child,
          final ZacDouble? displacement,
          final ZacDouble? edgeOffset,
          required final ZacActions onRefresh,
          final FlutterColor? color,
          final FlutterColor? backgroundColor,
          final ZacString? semanticsLabel,
          final ZacString? semanticsValue,
          final ZacDouble? strokeWidth,
          final FlutterRefreshIndicatorTriggerMode? triggerMode}) =
      _$_FlutterRefreshIndicator;
  _FlutterRefreshIndicator._() : super._();

  factory _FlutterRefreshIndicator.fromJson(Map<String, dynamic> json) =
      _$_FlutterRefreshIndicator.fromJson;

  @override
  FlutterKey? get key;
  @override
  ZacWidget get child;
  @override
  ZacDouble? get displacement;
  @override
  ZacDouble? get edgeOffset;
  @override
  ZacActions get onRefresh;
  @override
  FlutterColor? get color;
  @override
  FlutterColor? get backgroundColor;
  @override // ScrollNotificationPredicate notificationPredicate = defaultScrollNotificationPredicate,
  ZacString? get semanticsLabel;
  @override
  ZacString? get semanticsValue;
  @override
  ZacDouble? get strokeWidth;
  @override
  FlutterRefreshIndicatorTriggerMode? get triggerMode;
}

FlutterRefreshIndicatorTriggerMode _$FlutterRefreshIndicatorTriggerModeFromJson(
    Map<String, dynamic> json) {
  switch (json['_converter']) {
    case 'f:1:RefreshIndicatorTriggerMode.onEdge':
      return _FlutterRefreshIndicatorTriggerModeonEdge.fromJson(json);
    case 'f:1:RefreshIndicatorTriggerMode.anywhere':
      return _FlutterRefreshIndicatorTriggerModeanywhere.fromJson(json);

    default:
      throw CheckedFromJsonException(
          json,
          '_converter',
          'FlutterRefreshIndicatorTriggerMode',
          'Invalid union type "${json['_converter']}"!');
  }
}

/// @nodoc
mixin _$FlutterRefreshIndicatorTriggerMode {
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FlutterRefreshIndicatorTriggerModeonEdge value)
        onEdge,
    required TResult Function(_FlutterRefreshIndicatorTriggerModeanywhere value)
        anywhere,
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_FlutterRefreshIndicatorTriggerModeonEdge
    extends _FlutterRefreshIndicatorTriggerModeonEdge {
  _$_FlutterRefreshIndicatorTriggerModeonEdge({final String? $type})
      : $type = $type ?? 'f:1:RefreshIndicatorTriggerMode.onEdge',
        super._();

  factory _$_FlutterRefreshIndicatorTriggerModeonEdge.fromJson(
          Map<String, dynamic> json) =>
      _$$_FlutterRefreshIndicatorTriggerModeonEdgeFromJson(json);

  @JsonKey(name: '_converter')
  final String $type;

  @override
  String toString() {
    return 'FlutterRefreshIndicatorTriggerMode.onEdge()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FlutterRefreshIndicatorTriggerModeonEdge);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FlutterRefreshIndicatorTriggerModeonEdge value)
        onEdge,
    required TResult Function(_FlutterRefreshIndicatorTriggerModeanywhere value)
        anywhere,
  }) {
    return onEdge(this);
  }
}

abstract class _FlutterRefreshIndicatorTriggerModeonEdge
    extends FlutterRefreshIndicatorTriggerMode {
  factory _FlutterRefreshIndicatorTriggerModeonEdge() =
      _$_FlutterRefreshIndicatorTriggerModeonEdge;
  _FlutterRefreshIndicatorTriggerModeonEdge._() : super._();

  factory _FlutterRefreshIndicatorTriggerModeonEdge.fromJson(
          Map<String, dynamic> json) =
      _$_FlutterRefreshIndicatorTriggerModeonEdge.fromJson;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_FlutterRefreshIndicatorTriggerModeanywhere
    extends _FlutterRefreshIndicatorTriggerModeanywhere {
  _$_FlutterRefreshIndicatorTriggerModeanywhere({final String? $type})
      : $type = $type ?? 'f:1:RefreshIndicatorTriggerMode.anywhere',
        super._();

  factory _$_FlutterRefreshIndicatorTriggerModeanywhere.fromJson(
          Map<String, dynamic> json) =>
      _$$_FlutterRefreshIndicatorTriggerModeanywhereFromJson(json);

  @JsonKey(name: '_converter')
  final String $type;

  @override
  String toString() {
    return 'FlutterRefreshIndicatorTriggerMode.anywhere()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FlutterRefreshIndicatorTriggerModeanywhere);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FlutterRefreshIndicatorTriggerModeonEdge value)
        onEdge,
    required TResult Function(_FlutterRefreshIndicatorTriggerModeanywhere value)
        anywhere,
  }) {
    return anywhere(this);
  }
}

abstract class _FlutterRefreshIndicatorTriggerModeanywhere
    extends FlutterRefreshIndicatorTriggerMode {
  factory _FlutterRefreshIndicatorTriggerModeanywhere() =
      _$_FlutterRefreshIndicatorTriggerModeanywhere;
  _FlutterRefreshIndicatorTriggerModeanywhere._() : super._();

  factory _FlutterRefreshIndicatorTriggerModeanywhere.fromJson(
          Map<String, dynamic> json) =
      _$_FlutterRefreshIndicatorTriggerModeanywhere.fromJson;
}