// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'foundation.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FlutterValueKey _$FlutterValueKeyFromJson(Map<String, dynamic> json) {
  switch (json['converter']) {
    case 'f:1:ValueKey':
      return _FlutterValueKey.fromJson(json);
    case 'z:1:ValueKey.consume':
      return _FlutterValueKeyConsumeSharedValue.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'converter', 'FlutterValueKey',
          'Invalid union type "${json['converter']}"!');
  }
}

/// @nodoc
mixin _$FlutterValueKey {
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_FlutterValueKey value) $default, {
    required TResult Function(_FlutterValueKeyConsumeSharedValue value) consume,
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_FlutterValueKey extends _FlutterValueKey {
  _$_FlutterValueKey(this.value, {final String? $type})
      : $type = $type ?? 'f:1:ValueKey',
        super._();

  factory _$_FlutterValueKey.fromJson(Map<String, dynamic> json) =>
      _$$_FlutterValueKeyFromJson(json);

  @override
  final String value;

  @JsonKey(name: 'converter')
  final String $type;

  @override
  String toString() {
    return 'FlutterValueKey(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FlutterValueKey &&
            (identical(other.value, value) || other.value == value));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, value);

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_FlutterValueKey value) $default, {
    required TResult Function(_FlutterValueKeyConsumeSharedValue value) consume,
  }) {
    return $default(this);
  }
}

abstract class _FlutterValueKey extends FlutterValueKey {
  factory _FlutterValueKey(final String value) = _$_FlutterValueKey;
  _FlutterValueKey._() : super._();

  factory _FlutterValueKey.fromJson(Map<String, dynamic> json) =
      _$_FlutterValueKey.fromJson;

  String get value;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_FlutterValueKeyConsumeSharedValue
    extends _FlutterValueKeyConsumeSharedValue
    with ConsumeSharedValue<ValueKey<String>> {
  _$_FlutterValueKeyConsumeSharedValue(
      {required this.family,
      this.transformer,
      this.select,
      this.forceConsume,
      final String? $type})
      : $type = $type ?? 'z:1:ValueKey.consume',
        super._();

  factory _$_FlutterValueKeyConsumeSharedValue.fromJson(
          Map<String, dynamic> json) =>
      _$$_FlutterValueKeyConsumeSharedValueFromJson(json);

  @override
  final Object family;
  @override
  final ZacTransformers? transformer;
  @override
  final ZacTransformers? select;
  @override
  final SharedValueConsumeType? forceConsume;

  @JsonKey(name: 'converter')
  final String $type;

  @override
  String toString() {
    return 'FlutterValueKey.consume(family: $family, transformer: $transformer, select: $select, forceConsume: $forceConsume)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FlutterValueKeyConsumeSharedValue &&
            const DeepCollectionEquality().equals(other.family, family) &&
            (identical(other.transformer, transformer) ||
                other.transformer == transformer) &&
            (identical(other.select, select) || other.select == select) &&
            (identical(other.forceConsume, forceConsume) ||
                other.forceConsume == forceConsume));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(family),
      transformer,
      select,
      forceConsume);

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_FlutterValueKey value) $default, {
    required TResult Function(_FlutterValueKeyConsumeSharedValue value) consume,
  }) {
    return consume(this);
  }
}

abstract class _FlutterValueKeyConsumeSharedValue extends FlutterValueKey
    implements ConsumeSharedValue<ValueKey<String>> {
  factory _FlutterValueKeyConsumeSharedValue(
          {required final Object family,
          final ZacTransformers? transformer,
          final ZacTransformers? select,
          final SharedValueConsumeType? forceConsume}) =
      _$_FlutterValueKeyConsumeSharedValue;
  _FlutterValueKeyConsumeSharedValue._() : super._();

  factory _FlutterValueKeyConsumeSharedValue.fromJson(
          Map<String, dynamic> json) =
      _$_FlutterValueKeyConsumeSharedValue.fromJson;

  Object get family;
  ZacTransformers? get transformer;
  ZacTransformers? get select;
  SharedValueConsumeType? get forceConsume;
}

FlutterGlobalKeyNavigatorState _$FlutterGlobalKeyNavigatorStateFromJson(
    Map<String, dynamic> json) {
  return _FlutterGlobalKeyNavigatorState.fromJson(json);
}

/// @nodoc
mixin _$FlutterGlobalKeyNavigatorState {
  Object get family => throw _privateConstructorUsedError;
  ZacTransformers? get transformer => throw _privateConstructorUsedError;
  ZacTransformers? get select => throw _privateConstructorUsedError;
  SharedValueConsumeType? get forceConsume =>
      throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FlutterGlobalKeyNavigatorState value) consume,
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_FlutterGlobalKeyNavigatorState extends _FlutterGlobalKeyNavigatorState
    with ConsumeSharedValue<GlobalKey<NavigatorState>> {
  _$_FlutterGlobalKeyNavigatorState(
      {required this.family, this.transformer, this.select, this.forceConsume})
      : super._();

  factory _$_FlutterGlobalKeyNavigatorState.fromJson(
          Map<String, dynamic> json) =>
      _$$_FlutterGlobalKeyNavigatorStateFromJson(json);

  @override
  final Object family;
  @override
  final ZacTransformers? transformer;
  @override
  final ZacTransformers? select;
  @override
  final SharedValueConsumeType? forceConsume;

  @override
  String toString() {
    return 'FlutterGlobalKeyNavigatorState.consume(family: $family, transformer: $transformer, select: $select, forceConsume: $forceConsume)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FlutterGlobalKeyNavigatorState &&
            const DeepCollectionEquality().equals(other.family, family) &&
            (identical(other.transformer, transformer) ||
                other.transformer == transformer) &&
            (identical(other.select, select) || other.select == select) &&
            (identical(other.forceConsume, forceConsume) ||
                other.forceConsume == forceConsume));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(family),
      transformer,
      select,
      forceConsume);

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FlutterGlobalKeyNavigatorState value) consume,
  }) {
    return consume(this);
  }
}

abstract class _FlutterGlobalKeyNavigatorState
    extends FlutterGlobalKeyNavigatorState
    implements ConsumeSharedValue<GlobalKey<NavigatorState>> {
  factory _FlutterGlobalKeyNavigatorState(
          {required final Object family,
          final ZacTransformers? transformer,
          final ZacTransformers? select,
          final SharedValueConsumeType? forceConsume}) =
      _$_FlutterGlobalKeyNavigatorState;
  _FlutterGlobalKeyNavigatorState._() : super._();

  factory _FlutterGlobalKeyNavigatorState.fromJson(Map<String, dynamic> json) =
      _$_FlutterGlobalKeyNavigatorState.fromJson;

  @override
  Object get family;
  @override
  ZacTransformers? get transformer;
  @override
  ZacTransformers? get select;
  @override
  SharedValueConsumeType? get forceConsume;
}

FlutterGlobalKeyScaffoldMessengerState
    _$FlutterGlobalKeyScaffoldMessengerStateFromJson(
        Map<String, dynamic> json) {
  return _FlutterGlobalKeyScaffoldMessengerState.fromJson(json);
}

/// @nodoc
mixin _$FlutterGlobalKeyScaffoldMessengerState {
  Object get family => throw _privateConstructorUsedError;
  ZacTransformers? get transformer => throw _privateConstructorUsedError;
  ZacTransformers? get select => throw _privateConstructorUsedError;
  SharedValueConsumeType? get forceConsume =>
      throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FlutterGlobalKeyScaffoldMessengerState value)
        consume,
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_FlutterGlobalKeyScaffoldMessengerState
    extends _FlutterGlobalKeyScaffoldMessengerState
    with ConsumeSharedValue<GlobalKey<ScaffoldMessengerState>> {
  _$_FlutterGlobalKeyScaffoldMessengerState(
      {required this.family, this.transformer, this.select, this.forceConsume})
      : super._();

  factory _$_FlutterGlobalKeyScaffoldMessengerState.fromJson(
          Map<String, dynamic> json) =>
      _$$_FlutterGlobalKeyScaffoldMessengerStateFromJson(json);

  @override
  final Object family;
  @override
  final ZacTransformers? transformer;
  @override
  final ZacTransformers? select;
  @override
  final SharedValueConsumeType? forceConsume;

  @override
  String toString() {
    return 'FlutterGlobalKeyScaffoldMessengerState.consume(family: $family, transformer: $transformer, select: $select, forceConsume: $forceConsume)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FlutterGlobalKeyScaffoldMessengerState &&
            const DeepCollectionEquality().equals(other.family, family) &&
            (identical(other.transformer, transformer) ||
                other.transformer == transformer) &&
            (identical(other.select, select) || other.select == select) &&
            (identical(other.forceConsume, forceConsume) ||
                other.forceConsume == forceConsume));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(family),
      transformer,
      select,
      forceConsume);

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FlutterGlobalKeyScaffoldMessengerState value)
        consume,
  }) {
    return consume(this);
  }
}

abstract class _FlutterGlobalKeyScaffoldMessengerState
    extends FlutterGlobalKeyScaffoldMessengerState
    implements ConsumeSharedValue<GlobalKey<ScaffoldMessengerState>> {
  factory _FlutterGlobalKeyScaffoldMessengerState(
          {required final Object family,
          final ZacTransformers? transformer,
          final ZacTransformers? select,
          final SharedValueConsumeType? forceConsume}) =
      _$_FlutterGlobalKeyScaffoldMessengerState;
  _FlutterGlobalKeyScaffoldMessengerState._() : super._();

  factory _FlutterGlobalKeyScaffoldMessengerState.fromJson(
          Map<String, dynamic> json) =
      _$_FlutterGlobalKeyScaffoldMessengerState.fromJson;

  @override
  Object get family;
  @override
  ZacTransformers? get transformer;
  @override
  ZacTransformers? get select;
  @override
  SharedValueConsumeType? get forceConsume;
}

ZacProvideFlutterKey _$ZacProvideFlutterKeyFromJson(Map<String, dynamic> json) {
  switch (json['converter']) {
    case 'z:1:ProvideKey:GlobalKey<NavigatorState>':
      return _ZacProvideFlutterKeyGlobalNavigatorState.fromJson(json);
    case 'z:1:ProvideKey:GlobalKey<ScaffoldMessengerState>':
      return _ZacProvideFlutterKeyGlobalKeyScaffoldMessengerState.fromJson(
          json);

    default:
      throw CheckedFromJsonException(json, 'converter', 'ZacProvideFlutterKey',
          'Invalid union type "${json['converter']}"!');
  }
}

/// @nodoc
mixin _$ZacProvideFlutterKey {
  ZacFlutterWidget get child => throw _privateConstructorUsedError;
  Object get family => throw _privateConstructorUsedError;
  String? get debugLabel => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ZacProvideFlutterKeyGlobalNavigatorState value)
        navigatorState,
    required TResult Function(
            _ZacProvideFlutterKeyGlobalKeyScaffoldMessengerState value)
        scaffoldMessengerState,
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_ZacProvideFlutterKeyGlobalNavigatorState
    extends _ZacProvideFlutterKeyGlobalNavigatorState {
  _$_ZacProvideFlutterKeyGlobalNavigatorState(
      {required this.child,
      required this.family,
      this.debugLabel,
      final String? $type})
      : $type = $type ?? 'z:1:ProvideKey:GlobalKey<NavigatorState>',
        super._();

  factory _$_ZacProvideFlutterKeyGlobalNavigatorState.fromJson(
          Map<String, dynamic> json) =>
      _$$_ZacProvideFlutterKeyGlobalNavigatorStateFromJson(json);

  @override
  final ZacFlutterWidget child;
  @override
  final Object family;
  @override
  final String? debugLabel;

  @JsonKey(name: 'converter')
  final String $type;

  @override
  String toString() {
    return 'ZacProvideFlutterKey.navigatorState(child: $child, family: $family, debugLabel: $debugLabel)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ZacProvideFlutterKeyGlobalNavigatorState &&
            (identical(other.child, child) || other.child == child) &&
            const DeepCollectionEquality().equals(other.family, family) &&
            (identical(other.debugLabel, debugLabel) ||
                other.debugLabel == debugLabel));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, child,
      const DeepCollectionEquality().hash(family), debugLabel);

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ZacProvideFlutterKeyGlobalNavigatorState value)
        navigatorState,
    required TResult Function(
            _ZacProvideFlutterKeyGlobalKeyScaffoldMessengerState value)
        scaffoldMessengerState,
  }) {
    return navigatorState(this);
  }
}

abstract class _ZacProvideFlutterKeyGlobalNavigatorState
    extends ZacProvideFlutterKey {
  factory _ZacProvideFlutterKeyGlobalNavigatorState(
      {required final ZacFlutterWidget child,
      required final Object family,
      final String? debugLabel}) = _$_ZacProvideFlutterKeyGlobalNavigatorState;
  _ZacProvideFlutterKeyGlobalNavigatorState._() : super._();

  factory _ZacProvideFlutterKeyGlobalNavigatorState.fromJson(
          Map<String, dynamic> json) =
      _$_ZacProvideFlutterKeyGlobalNavigatorState.fromJson;

  @override
  ZacFlutterWidget get child;
  @override
  Object get family;
  @override
  String? get debugLabel;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_ZacProvideFlutterKeyGlobalKeyScaffoldMessengerState
    extends _ZacProvideFlutterKeyGlobalKeyScaffoldMessengerState {
  _$_ZacProvideFlutterKeyGlobalKeyScaffoldMessengerState(
      {required this.child,
      required this.family,
      this.debugLabel,
      final String? $type})
      : $type = $type ?? 'z:1:ProvideKey:GlobalKey<ScaffoldMessengerState>',
        super._();

  factory _$_ZacProvideFlutterKeyGlobalKeyScaffoldMessengerState.fromJson(
          Map<String, dynamic> json) =>
      _$$_ZacProvideFlutterKeyGlobalKeyScaffoldMessengerStateFromJson(json);

  @override
  final ZacFlutterWidget child;
  @override
  final Object family;
  @override
  final String? debugLabel;

  @JsonKey(name: 'converter')
  final String $type;

  @override
  String toString() {
    return 'ZacProvideFlutterKey.scaffoldMessengerState(child: $child, family: $family, debugLabel: $debugLabel)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ZacProvideFlutterKeyGlobalKeyScaffoldMessengerState &&
            (identical(other.child, child) || other.child == child) &&
            const DeepCollectionEquality().equals(other.family, family) &&
            (identical(other.debugLabel, debugLabel) ||
                other.debugLabel == debugLabel));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, child,
      const DeepCollectionEquality().hash(family), debugLabel);

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ZacProvideFlutterKeyGlobalNavigatorState value)
        navigatorState,
    required TResult Function(
            _ZacProvideFlutterKeyGlobalKeyScaffoldMessengerState value)
        scaffoldMessengerState,
  }) {
    return scaffoldMessengerState(this);
  }
}

abstract class _ZacProvideFlutterKeyGlobalKeyScaffoldMessengerState
    extends ZacProvideFlutterKey {
  factory _ZacProvideFlutterKeyGlobalKeyScaffoldMessengerState(
          {required final ZacFlutterWidget child,
          required final Object family,
          final String? debugLabel}) =
      _$_ZacProvideFlutterKeyGlobalKeyScaffoldMessengerState;
  _ZacProvideFlutterKeyGlobalKeyScaffoldMessengerState._() : super._();

  factory _ZacProvideFlutterKeyGlobalKeyScaffoldMessengerState.fromJson(
          Map<String, dynamic> json) =
      _$_ZacProvideFlutterKeyGlobalKeyScaffoldMessengerState.fromJson;

  @override
  ZacFlutterWidget get child;
  @override
  Object get family;
  @override
  String? get debugLabel;
}
