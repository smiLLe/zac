// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'navigator.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FlutterNavigatorState _$FlutterNavigatorStateFromJson(
    Map<String, dynamic> json) {
  switch (json['_converter']) {
    case 'f:1:NavigatorState.closest':
      return _ZacNavigatorStateClosest.fromJson(json);
    case 'f:1:NavigatorState.root':
      return _ZacNavigatorStateRoot.fromJson(json);
    case 'z:1:NavigatorState.consumeFromGlobalKey':
      return _ZacNavigatorStateConsumeFromGlobalKey.fromJson(json);
    case 'z:1:GlobalKeyNavigatorState':
      return _ZacNavigatorStateBuilder.fromJson(json);
    case 'z:1:GlobalKeyNavigatorState.transformToGlobalKey':
      return _ZacNavigatorStateTransformBuilder.fromJson(json);

    default:
      throw CheckedFromJsonException(
          json,
          '_converter',
          'FlutterNavigatorState',
          'Invalid union type "${json['_converter']}"!');
  }
}

/// @nodoc
mixin _$FlutterNavigatorState {
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ZacNavigatorStateClosest value) closest,
    required TResult Function(_ZacNavigatorStateRoot value) root,
    required TResult Function(_ZacNavigatorStateConsumeFromGlobalKey value)
        consumeFromGlobalKey,
    required TResult Function(_ZacNavigatorStateBuilder value) builder,
    required TResult Function(_ZacNavigatorStateTransformBuilder value)
        transform,
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_ZacNavigatorStateClosest extends _ZacNavigatorStateClosest {
  _$_ZacNavigatorStateClosest({final String? $type})
      : $type = $type ?? 'f:1:NavigatorState.closest',
        super._();

  factory _$_ZacNavigatorStateClosest.fromJson(Map<String, dynamic> json) =>
      _$$_ZacNavigatorStateClosestFromJson(json);

  @JsonKey(name: '_converter')
  final String $type;

  @override
  String toString() {
    return 'FlutterNavigatorState.closest()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ZacNavigatorStateClosest);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ZacNavigatorStateClosest value) closest,
    required TResult Function(_ZacNavigatorStateRoot value) root,
    required TResult Function(_ZacNavigatorStateConsumeFromGlobalKey value)
        consumeFromGlobalKey,
    required TResult Function(_ZacNavigatorStateBuilder value) builder,
    required TResult Function(_ZacNavigatorStateTransformBuilder value)
        transform,
  }) {
    return closest(this);
  }
}

abstract class _ZacNavigatorStateClosest extends FlutterNavigatorState {
  factory _ZacNavigatorStateClosest() = _$_ZacNavigatorStateClosest;
  _ZacNavigatorStateClosest._() : super._();

  factory _ZacNavigatorStateClosest.fromJson(Map<String, dynamic> json) =
      _$_ZacNavigatorStateClosest.fromJson;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_ZacNavigatorStateRoot extends _ZacNavigatorStateRoot {
  _$_ZacNavigatorStateRoot({final String? $type})
      : $type = $type ?? 'f:1:NavigatorState.root',
        super._();

  factory _$_ZacNavigatorStateRoot.fromJson(Map<String, dynamic> json) =>
      _$$_ZacNavigatorStateRootFromJson(json);

  @JsonKey(name: '_converter')
  final String $type;

  @override
  String toString() {
    return 'FlutterNavigatorState.root()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_ZacNavigatorStateRoot);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ZacNavigatorStateClosest value) closest,
    required TResult Function(_ZacNavigatorStateRoot value) root,
    required TResult Function(_ZacNavigatorStateConsumeFromGlobalKey value)
        consumeFromGlobalKey,
    required TResult Function(_ZacNavigatorStateBuilder value) builder,
    required TResult Function(_ZacNavigatorStateTransformBuilder value)
        transform,
  }) {
    return root(this);
  }
}

abstract class _ZacNavigatorStateRoot extends FlutterNavigatorState {
  factory _ZacNavigatorStateRoot() = _$_ZacNavigatorStateRoot;
  _ZacNavigatorStateRoot._() : super._();

  factory _ZacNavigatorStateRoot.fromJson(Map<String, dynamic> json) =
      _$_ZacNavigatorStateRoot.fromJson;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_ZacNavigatorStateConsumeFromGlobalKey
    extends _ZacNavigatorStateConsumeFromGlobalKey
    with ConsumeValue<GlobalKey<NavigatorState>> {
  _$_ZacNavigatorStateConsumeFromGlobalKey(
      {required this.name,
      this.consumeType,
      final List<SharedValueTransformer>? mapper,
      final String? $type})
      : _mapper = mapper,
        $type = $type ?? 'z:1:NavigatorState.consumeFromGlobalKey',
        super._();

  factory _$_ZacNavigatorStateConsumeFromGlobalKey.fromJson(
          Map<String, dynamic> json) =>
      _$$_ZacNavigatorStateConsumeFromGlobalKeyFromJson(json);

  @override
  final String name;
  @override
  final SharedValueConsumeType? consumeType;
  final List<SharedValueTransformer>? _mapper;
  @override
  List<SharedValueTransformer>? get mapper {
    final value = _mapper;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @JsonKey(name: '_converter')
  final String $type;

  @override
  String toString() {
    return 'FlutterNavigatorState.consumeFromGlobalKey(name: $name, consumeType: $consumeType, mapper: $mapper)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ZacNavigatorStateConsumeFromGlobalKey &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality()
                .equals(other.consumeType, consumeType) &&
            const DeepCollectionEquality().equals(other._mapper, _mapper));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(consumeType),
      const DeepCollectionEquality().hash(_mapper));

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ZacNavigatorStateClosest value) closest,
    required TResult Function(_ZacNavigatorStateRoot value) root,
    required TResult Function(_ZacNavigatorStateConsumeFromGlobalKey value)
        consumeFromGlobalKey,
    required TResult Function(_ZacNavigatorStateBuilder value) builder,
    required TResult Function(_ZacNavigatorStateTransformBuilder value)
        transform,
  }) {
    return consumeFromGlobalKey(this);
  }
}

abstract class _ZacNavigatorStateConsumeFromGlobalKey
    extends FlutterNavigatorState
    implements ConsumeValue<GlobalKey<NavigatorState>> {
  factory _ZacNavigatorStateConsumeFromGlobalKey(
          {required final String name,
          final SharedValueConsumeType? consumeType,
          final List<SharedValueTransformer>? mapper}) =
      _$_ZacNavigatorStateConsumeFromGlobalKey;
  _ZacNavigatorStateConsumeFromGlobalKey._() : super._();

  factory _ZacNavigatorStateConsumeFromGlobalKey.fromJson(
          Map<String, dynamic> json) =
      _$_ZacNavigatorStateConsumeFromGlobalKey.fromJson;

  String get name;
  SharedValueConsumeType? get consumeType;
  List<SharedValueTransformer>? get mapper;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_ZacNavigatorStateBuilder extends _ZacNavigatorStateBuilder {
  _$_ZacNavigatorStateBuilder({this.debugLabel, final String? $type})
      : $type = $type ?? 'z:1:GlobalKeyNavigatorState',
        super._();

  factory _$_ZacNavigatorStateBuilder.fromJson(Map<String, dynamic> json) =>
      _$$_ZacNavigatorStateBuilderFromJson(json);

  @override
  final String? debugLabel;

  @JsonKey(name: '_converter')
  final String $type;

  @override
  String toString() {
    return 'FlutterNavigatorState.builder(debugLabel: $debugLabel)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ZacNavigatorStateBuilder &&
            const DeepCollectionEquality()
                .equals(other.debugLabel, debugLabel));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(debugLabel));

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ZacNavigatorStateClosest value) closest,
    required TResult Function(_ZacNavigatorStateRoot value) root,
    required TResult Function(_ZacNavigatorStateConsumeFromGlobalKey value)
        consumeFromGlobalKey,
    required TResult Function(_ZacNavigatorStateBuilder value) builder,
    required TResult Function(_ZacNavigatorStateTransformBuilder value)
        transform,
  }) {
    return builder(this);
  }
}

abstract class _ZacNavigatorStateBuilder extends FlutterNavigatorState {
  factory _ZacNavigatorStateBuilder({final String? debugLabel}) =
      _$_ZacNavigatorStateBuilder;
  _ZacNavigatorStateBuilder._() : super._();

  factory _ZacNavigatorStateBuilder.fromJson(Map<String, dynamic> json) =
      _$_ZacNavigatorStateBuilder.fromJson;

  String? get debugLabel;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_ZacNavigatorStateTransformBuilder
    extends _ZacNavigatorStateTransformBuilder {
  _$_ZacNavigatorStateTransformBuilder({final String? $type})
      : $type = $type ?? 'z:1:GlobalKeyNavigatorState.transformToGlobalKey',
        super._();

  factory _$_ZacNavigatorStateTransformBuilder.fromJson(
          Map<String, dynamic> json) =>
      _$$_ZacNavigatorStateTransformBuilderFromJson(json);

  @JsonKey(name: '_converter')
  final String $type;

  @override
  String toString() {
    return 'FlutterNavigatorState.transform()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ZacNavigatorStateTransformBuilder);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ZacNavigatorStateClosest value) closest,
    required TResult Function(_ZacNavigatorStateRoot value) root,
    required TResult Function(_ZacNavigatorStateConsumeFromGlobalKey value)
        consumeFromGlobalKey,
    required TResult Function(_ZacNavigatorStateBuilder value) builder,
    required TResult Function(_ZacNavigatorStateTransformBuilder value)
        transform,
  }) {
    return transform(this);
  }
}

abstract class _ZacNavigatorStateTransformBuilder
    extends FlutterNavigatorState {
  factory _ZacNavigatorStateTransformBuilder() =
      _$_ZacNavigatorStateTransformBuilder;
  _ZacNavigatorStateTransformBuilder._() : super._();

  factory _ZacNavigatorStateTransformBuilder.fromJson(
          Map<String, dynamic> json) =
      _$_ZacNavigatorStateTransformBuilder.fromJson;
}

FlutterNavigator _$FlutterNavigatorFromJson(Map<String, dynamic> json) {
  switch (json['_converter']) {
    case 'f:1:Navigator':
      return _FlutterNavigator.fromJson(json);
    case 'f:1:Navigator.push':
      return _FlutterNavigatorPush.fromJson(json);
    case 'f:1:Navigator.pushNamed':
      return _FlutterNavigatorPushNamed.fromJson(json);
    case 'f:1:Navigator.pop':
      return _FlutterNavigatorPop.fromJson(json);
    case 'f:1:Navigator.maybePop':
      return _FlutterNavigatorMaybePop.fromJson(json);
    case 'f:1:Navigator.pushReplacement':
      return _FlutterNavigatorPushReplacement.fromJson(json);
    case 'f:1:Navigator.pushReplacementNamed':
      return _FlutterNavigatorPushReplacementNamed.fromJson(json);
    case 'z:1:Navigator.popUntilRouteName':
      return _FlutterNavigatorPopUntilRouteName.fromJson(json);

    default:
      throw CheckedFromJsonException(json, '_converter', 'FlutterNavigator',
          'Invalid union type "${json['_converter']}"!');
  }
}

/// @nodoc
mixin _$FlutterNavigator {
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_FlutterNavigator value) $default, {
    required TResult Function(_FlutterNavigatorPush value) push,
    required TResult Function(_FlutterNavigatorPushNamed value) pushNamed,
    required TResult Function(_FlutterNavigatorPop value) pop,
    required TResult Function(_FlutterNavigatorMaybePop value) maybePop,
    required TResult Function(_FlutterNavigatorPushReplacement value)
        pushReplacement,
    required TResult Function(_FlutterNavigatorPushReplacementNamed value)
        pushReplacementNamed,
    required TResult Function(_FlutterNavigatorPopUntilRouteName value)
        popUntilRouteName,
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_FlutterNavigator extends _FlutterNavigator {
  _$_FlutterNavigator(
      {this.key,
      this.onGenerateRoute,
      this.onUnknownRoute,
      this.initialRoute,
      this.requestFocus,
      final String? $type})
      : $type = $type ?? 'f:1:Navigator',
        super._();

  factory _$_FlutterNavigator.fromJson(Map<String, dynamic> json) =>
      _$$_FlutterNavigatorFromJson(json);

  @override
  final FlutterKey? key;
  @override
  final FlutterRouteFactory? onGenerateRoute;
  @override
  final FlutterRouteFactory? onUnknownRoute;
  @override
  final ZacString? initialRoute;
  @override
  final ZacBool? requestFocus;

  @JsonKey(name: '_converter')
  final String $type;

  @override
  String toString() {
    return 'FlutterNavigator(key: $key, onGenerateRoute: $onGenerateRoute, onUnknownRoute: $onUnknownRoute, initialRoute: $initialRoute, requestFocus: $requestFocus)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FlutterNavigator &&
            const DeepCollectionEquality().equals(other.key, key) &&
            const DeepCollectionEquality()
                .equals(other.onGenerateRoute, onGenerateRoute) &&
            const DeepCollectionEquality()
                .equals(other.onUnknownRoute, onUnknownRoute) &&
            const DeepCollectionEquality()
                .equals(other.initialRoute, initialRoute) &&
            const DeepCollectionEquality()
                .equals(other.requestFocus, requestFocus));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(key),
      const DeepCollectionEquality().hash(onGenerateRoute),
      const DeepCollectionEquality().hash(onUnknownRoute),
      const DeepCollectionEquality().hash(initialRoute),
      const DeepCollectionEquality().hash(requestFocus));

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_FlutterNavigator value) $default, {
    required TResult Function(_FlutterNavigatorPush value) push,
    required TResult Function(_FlutterNavigatorPushNamed value) pushNamed,
    required TResult Function(_FlutterNavigatorPop value) pop,
    required TResult Function(_FlutterNavigatorMaybePop value) maybePop,
    required TResult Function(_FlutterNavigatorPushReplacement value)
        pushReplacement,
    required TResult Function(_FlutterNavigatorPushReplacementNamed value)
        pushReplacementNamed,
    required TResult Function(_FlutterNavigatorPopUntilRouteName value)
        popUntilRouteName,
  }) {
    return $default(this);
  }
}

abstract class _FlutterNavigator extends FlutterNavigator {
  factory _FlutterNavigator(
      {final FlutterKey? key,
      final FlutterRouteFactory? onGenerateRoute,
      final FlutterRouteFactory? onUnknownRoute,
      final ZacString? initialRoute,
      final ZacBool? requestFocus}) = _$_FlutterNavigator;
  _FlutterNavigator._() : super._();

  factory _FlutterNavigator.fromJson(Map<String, dynamic> json) =
      _$_FlutterNavigator.fromJson;

  FlutterKey? get key;
  FlutterRouteFactory? get onGenerateRoute;
  FlutterRouteFactory? get onUnknownRoute;
  ZacString? get initialRoute;
  ZacBool? get requestFocus;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_FlutterNavigatorPush extends _FlutterNavigatorPush {
  _$_FlutterNavigatorPush(
      {required this.route, this.navigatorState, final String? $type})
      : $type = $type ?? 'f:1:Navigator.push',
        super._();

  factory _$_FlutterNavigatorPush.fromJson(Map<String, dynamic> json) =>
      _$$_FlutterNavigatorPushFromJson(json);

  @override
  final FlutterRoute route;
  @override
  final ZacNavigatorState? navigatorState;

  @JsonKey(name: '_converter')
  final String $type;

  @override
  String toString() {
    return 'FlutterNavigator.push(route: $route, navigatorState: $navigatorState)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FlutterNavigatorPush &&
            const DeepCollectionEquality().equals(other.route, route) &&
            const DeepCollectionEquality()
                .equals(other.navigatorState, navigatorState));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(route),
      const DeepCollectionEquality().hash(navigatorState));

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_FlutterNavigator value) $default, {
    required TResult Function(_FlutterNavigatorPush value) push,
    required TResult Function(_FlutterNavigatorPushNamed value) pushNamed,
    required TResult Function(_FlutterNavigatorPop value) pop,
    required TResult Function(_FlutterNavigatorMaybePop value) maybePop,
    required TResult Function(_FlutterNavigatorPushReplacement value)
        pushReplacement,
    required TResult Function(_FlutterNavigatorPushReplacementNamed value)
        pushReplacementNamed,
    required TResult Function(_FlutterNavigatorPopUntilRouteName value)
        popUntilRouteName,
  }) {
    return push(this);
  }
}

abstract class _FlutterNavigatorPush extends FlutterNavigator {
  factory _FlutterNavigatorPush(
      {required final FlutterRoute route,
      final ZacNavigatorState? navigatorState}) = _$_FlutterNavigatorPush;
  _FlutterNavigatorPush._() : super._();

  factory _FlutterNavigatorPush.fromJson(Map<String, dynamic> json) =
      _$_FlutterNavigatorPush.fromJson;

  FlutterRoute get route;
  ZacNavigatorState? get navigatorState;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_FlutterNavigatorPushNamed extends _FlutterNavigatorPushNamed {
  _$_FlutterNavigatorPushNamed(
      {required this.routeName,
      this.arguments,
      this.navigatorState,
      final String? $type})
      : $type = $type ?? 'f:1:Navigator.pushNamed',
        super._();

  factory _$_FlutterNavigatorPushNamed.fromJson(Map<String, dynamic> json) =>
      _$$_FlutterNavigatorPushNamedFromJson(json);

  @override
  final ZacString routeName;
  @override
  final Object? arguments;
  @override
  final ZacNavigatorState? navigatorState;

  @JsonKey(name: '_converter')
  final String $type;

  @override
  String toString() {
    return 'FlutterNavigator.pushNamed(routeName: $routeName, arguments: $arguments, navigatorState: $navigatorState)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FlutterNavigatorPushNamed &&
            const DeepCollectionEquality().equals(other.routeName, routeName) &&
            const DeepCollectionEquality().equals(other.arguments, arguments) &&
            const DeepCollectionEquality()
                .equals(other.navigatorState, navigatorState));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(routeName),
      const DeepCollectionEquality().hash(arguments),
      const DeepCollectionEquality().hash(navigatorState));

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_FlutterNavigator value) $default, {
    required TResult Function(_FlutterNavigatorPush value) push,
    required TResult Function(_FlutterNavigatorPushNamed value) pushNamed,
    required TResult Function(_FlutterNavigatorPop value) pop,
    required TResult Function(_FlutterNavigatorMaybePop value) maybePop,
    required TResult Function(_FlutterNavigatorPushReplacement value)
        pushReplacement,
    required TResult Function(_FlutterNavigatorPushReplacementNamed value)
        pushReplacementNamed,
    required TResult Function(_FlutterNavigatorPopUntilRouteName value)
        popUntilRouteName,
  }) {
    return pushNamed(this);
  }
}

abstract class _FlutterNavigatorPushNamed extends FlutterNavigator {
  factory _FlutterNavigatorPushNamed(
      {required final ZacString routeName,
      final Object? arguments,
      final ZacNavigatorState? navigatorState}) = _$_FlutterNavigatorPushNamed;
  _FlutterNavigatorPushNamed._() : super._();

  factory _FlutterNavigatorPushNamed.fromJson(Map<String, dynamic> json) =
      _$_FlutterNavigatorPushNamed.fromJson;

  ZacString get routeName;
  Object? get arguments;
  ZacNavigatorState? get navigatorState;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_FlutterNavigatorPop extends _FlutterNavigatorPop {
  _$_FlutterNavigatorPop(
      {this.actions, this.navigatorState, final String? $type})
      : $type = $type ?? 'f:1:Navigator.pop',
        super._();

  factory _$_FlutterNavigatorPop.fromJson(Map<String, dynamic> json) =>
      _$$_FlutterNavigatorPopFromJson(json);

  @override
  final ZacActions? actions;
  @override
  final ZacNavigatorState? navigatorState;

  @JsonKey(name: '_converter')
  final String $type;

  @override
  String toString() {
    return 'FlutterNavigator.pop(actions: $actions, navigatorState: $navigatorState)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FlutterNavigatorPop &&
            const DeepCollectionEquality().equals(other.actions, actions) &&
            const DeepCollectionEquality()
                .equals(other.navigatorState, navigatorState));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(actions),
      const DeepCollectionEquality().hash(navigatorState));

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_FlutterNavigator value) $default, {
    required TResult Function(_FlutterNavigatorPush value) push,
    required TResult Function(_FlutterNavigatorPushNamed value) pushNamed,
    required TResult Function(_FlutterNavigatorPop value) pop,
    required TResult Function(_FlutterNavigatorMaybePop value) maybePop,
    required TResult Function(_FlutterNavigatorPushReplacement value)
        pushReplacement,
    required TResult Function(_FlutterNavigatorPushReplacementNamed value)
        pushReplacementNamed,
    required TResult Function(_FlutterNavigatorPopUntilRouteName value)
        popUntilRouteName,
  }) {
    return pop(this);
  }
}

abstract class _FlutterNavigatorPop extends FlutterNavigator {
  factory _FlutterNavigatorPop(
      {final ZacActions? actions,
      final ZacNavigatorState? navigatorState}) = _$_FlutterNavigatorPop;
  _FlutterNavigatorPop._() : super._();

  factory _FlutterNavigatorPop.fromJson(Map<String, dynamic> json) =
      _$_FlutterNavigatorPop.fromJson;

  ZacActions? get actions;
  ZacNavigatorState? get navigatorState;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_FlutterNavigatorMaybePop extends _FlutterNavigatorMaybePop {
  _$_FlutterNavigatorMaybePop(
      {this.actions, this.navigatorState, final String? $type})
      : $type = $type ?? 'f:1:Navigator.maybePop',
        super._();

  factory _$_FlutterNavigatorMaybePop.fromJson(Map<String, dynamic> json) =>
      _$$_FlutterNavigatorMaybePopFromJson(json);

  @override
  final ZacActions? actions;
  @override
  final ZacNavigatorState? navigatorState;

  @JsonKey(name: '_converter')
  final String $type;

  @override
  String toString() {
    return 'FlutterNavigator.maybePop(actions: $actions, navigatorState: $navigatorState)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FlutterNavigatorMaybePop &&
            const DeepCollectionEquality().equals(other.actions, actions) &&
            const DeepCollectionEquality()
                .equals(other.navigatorState, navigatorState));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(actions),
      const DeepCollectionEquality().hash(navigatorState));

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_FlutterNavigator value) $default, {
    required TResult Function(_FlutterNavigatorPush value) push,
    required TResult Function(_FlutterNavigatorPushNamed value) pushNamed,
    required TResult Function(_FlutterNavigatorPop value) pop,
    required TResult Function(_FlutterNavigatorMaybePop value) maybePop,
    required TResult Function(_FlutterNavigatorPushReplacement value)
        pushReplacement,
    required TResult Function(_FlutterNavigatorPushReplacementNamed value)
        pushReplacementNamed,
    required TResult Function(_FlutterNavigatorPopUntilRouteName value)
        popUntilRouteName,
  }) {
    return maybePop(this);
  }
}

abstract class _FlutterNavigatorMaybePop extends FlutterNavigator {
  factory _FlutterNavigatorMaybePop(
      {final ZacActions? actions,
      final ZacNavigatorState? navigatorState}) = _$_FlutterNavigatorMaybePop;
  _FlutterNavigatorMaybePop._() : super._();

  factory _FlutterNavigatorMaybePop.fromJson(Map<String, dynamic> json) =
      _$_FlutterNavigatorMaybePop.fromJson;

  ZacActions? get actions;
  ZacNavigatorState? get navigatorState;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_FlutterNavigatorPushReplacement
    extends _FlutterNavigatorPushReplacement {
  _$_FlutterNavigatorPushReplacement(
      {required this.route,
      this.result,
      this.navigatorState,
      final String? $type})
      : $type = $type ?? 'f:1:Navigator.pushReplacement',
        super._();

  factory _$_FlutterNavigatorPushReplacement.fromJson(
          Map<String, dynamic> json) =>
      _$$_FlutterNavigatorPushReplacementFromJson(json);

  @override
  final FlutterRoute route;
  @override
  final ZacActions? result;
  @override
  final ZacNavigatorState? navigatorState;

  @JsonKey(name: '_converter')
  final String $type;

  @override
  String toString() {
    return 'FlutterNavigator.pushReplacement(route: $route, result: $result, navigatorState: $navigatorState)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FlutterNavigatorPushReplacement &&
            const DeepCollectionEquality().equals(other.route, route) &&
            const DeepCollectionEquality().equals(other.result, result) &&
            const DeepCollectionEquality()
                .equals(other.navigatorState, navigatorState));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(route),
      const DeepCollectionEquality().hash(result),
      const DeepCollectionEquality().hash(navigatorState));

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_FlutterNavigator value) $default, {
    required TResult Function(_FlutterNavigatorPush value) push,
    required TResult Function(_FlutterNavigatorPushNamed value) pushNamed,
    required TResult Function(_FlutterNavigatorPop value) pop,
    required TResult Function(_FlutterNavigatorMaybePop value) maybePop,
    required TResult Function(_FlutterNavigatorPushReplacement value)
        pushReplacement,
    required TResult Function(_FlutterNavigatorPushReplacementNamed value)
        pushReplacementNamed,
    required TResult Function(_FlutterNavigatorPopUntilRouteName value)
        popUntilRouteName,
  }) {
    return pushReplacement(this);
  }
}

abstract class _FlutterNavigatorPushReplacement extends FlutterNavigator {
  factory _FlutterNavigatorPushReplacement(
          {required final FlutterRoute route,
          final ZacActions? result,
          final ZacNavigatorState? navigatorState}) =
      _$_FlutterNavigatorPushReplacement;
  _FlutterNavigatorPushReplacement._() : super._();

  factory _FlutterNavigatorPushReplacement.fromJson(Map<String, dynamic> json) =
      _$_FlutterNavigatorPushReplacement.fromJson;

  FlutterRoute get route;
  ZacActions? get result;
  ZacNavigatorState? get navigatorState;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_FlutterNavigatorPushReplacementNamed
    extends _FlutterNavigatorPushReplacementNamed {
  _$_FlutterNavigatorPushReplacementNamed(
      {required this.routeName,
      this.arguments,
      this.navigatorState,
      this.result,
      final String? $type})
      : $type = $type ?? 'f:1:Navigator.pushReplacementNamed',
        super._();

  factory _$_FlutterNavigatorPushReplacementNamed.fromJson(
          Map<String, dynamic> json) =>
      _$$_FlutterNavigatorPushReplacementNamedFromJson(json);

  @override
  final ZacString routeName;
  @override
  final Object? arguments;
  @override
  final ZacNavigatorState? navigatorState;
  @override
  final ZacActions? result;

  @JsonKey(name: '_converter')
  final String $type;

  @override
  String toString() {
    return 'FlutterNavigator.pushReplacementNamed(routeName: $routeName, arguments: $arguments, navigatorState: $navigatorState, result: $result)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FlutterNavigatorPushReplacementNamed &&
            const DeepCollectionEquality().equals(other.routeName, routeName) &&
            const DeepCollectionEquality().equals(other.arguments, arguments) &&
            const DeepCollectionEquality()
                .equals(other.navigatorState, navigatorState) &&
            const DeepCollectionEquality().equals(other.result, result));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(routeName),
      const DeepCollectionEquality().hash(arguments),
      const DeepCollectionEquality().hash(navigatorState),
      const DeepCollectionEquality().hash(result));

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_FlutterNavigator value) $default, {
    required TResult Function(_FlutterNavigatorPush value) push,
    required TResult Function(_FlutterNavigatorPushNamed value) pushNamed,
    required TResult Function(_FlutterNavigatorPop value) pop,
    required TResult Function(_FlutterNavigatorMaybePop value) maybePop,
    required TResult Function(_FlutterNavigatorPushReplacement value)
        pushReplacement,
    required TResult Function(_FlutterNavigatorPushReplacementNamed value)
        pushReplacementNamed,
    required TResult Function(_FlutterNavigatorPopUntilRouteName value)
        popUntilRouteName,
  }) {
    return pushReplacementNamed(this);
  }
}

abstract class _FlutterNavigatorPushReplacementNamed extends FlutterNavigator {
  factory _FlutterNavigatorPushReplacementNamed(
      {required final ZacString routeName,
      final Object? arguments,
      final ZacNavigatorState? navigatorState,
      final ZacActions? result}) = _$_FlutterNavigatorPushReplacementNamed;
  _FlutterNavigatorPushReplacementNamed._() : super._();

  factory _FlutterNavigatorPushReplacementNamed.fromJson(
          Map<String, dynamic> json) =
      _$_FlutterNavigatorPushReplacementNamed.fromJson;

  ZacString get routeName;
  Object? get arguments;
  ZacNavigatorState? get navigatorState;
  ZacActions? get result;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_FlutterNavigatorPopUntilRouteName
    extends _FlutterNavigatorPopUntilRouteName {
  _$_FlutterNavigatorPopUntilRouteName(
      {required this.routeName, this.navigatorState, final String? $type})
      : $type = $type ?? 'z:1:Navigator.popUntilRouteName',
        super._();

  factory _$_FlutterNavigatorPopUntilRouteName.fromJson(
          Map<String, dynamic> json) =>
      _$$_FlutterNavigatorPopUntilRouteNameFromJson(json);

  @override
  final ZacString routeName;
  @override
  final ZacNavigatorState? navigatorState;

  @JsonKey(name: '_converter')
  final String $type;

  @override
  String toString() {
    return 'FlutterNavigator.popUntilRouteName(routeName: $routeName, navigatorState: $navigatorState)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FlutterNavigatorPopUntilRouteName &&
            const DeepCollectionEquality().equals(other.routeName, routeName) &&
            const DeepCollectionEquality()
                .equals(other.navigatorState, navigatorState));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(routeName),
      const DeepCollectionEquality().hash(navigatorState));

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_FlutterNavigator value) $default, {
    required TResult Function(_FlutterNavigatorPush value) push,
    required TResult Function(_FlutterNavigatorPushNamed value) pushNamed,
    required TResult Function(_FlutterNavigatorPop value) pop,
    required TResult Function(_FlutterNavigatorMaybePop value) maybePop,
    required TResult Function(_FlutterNavigatorPushReplacement value)
        pushReplacement,
    required TResult Function(_FlutterNavigatorPushReplacementNamed value)
        pushReplacementNamed,
    required TResult Function(_FlutterNavigatorPopUntilRouteName value)
        popUntilRouteName,
  }) {
    return popUntilRouteName(this);
  }
}

abstract class _FlutterNavigatorPopUntilRouteName extends FlutterNavigator {
  factory _FlutterNavigatorPopUntilRouteName(
          {required final ZacString routeName,
          final ZacNavigatorState? navigatorState}) =
      _$_FlutterNavigatorPopUntilRouteName;
  _FlutterNavigatorPopUntilRouteName._() : super._();

  factory _FlutterNavigatorPopUntilRouteName.fromJson(
          Map<String, dynamic> json) =
      _$_FlutterNavigatorPopUntilRouteName.fromJson;

  ZacString get routeName;
  ZacNavigatorState? get navigatorState;
}

RouteFactorySingleRoute _$RouteFactorySingleRouteFromJson(
    Map<String, dynamic> json) {
  return _RouteFactorySingleRoute.fromJson(json);
}

/// @nodoc
mixin _$RouteFactorySingleRoute {
  RouteFactoryRouteConfig get routeConfig => throw _privateConstructorUsedError;
  String? get provideArgsNamePrefix => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_RouteFactorySingleRoute value) $default,
  ) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_RouteFactorySingleRoute extends _RouteFactorySingleRoute {
  _$_RouteFactorySingleRoute(
      {required this.routeConfig, this.provideArgsNamePrefix})
      : super._();

  factory _$_RouteFactorySingleRoute.fromJson(Map<String, dynamic> json) =>
      _$$_RouteFactorySingleRouteFromJson(json);

  @override
  final RouteFactoryRouteConfig routeConfig;
  @override
  final String? provideArgsNamePrefix;

  @override
  String toString() {
    return 'RouteFactorySingleRoute(routeConfig: $routeConfig, provideArgsNamePrefix: $provideArgsNamePrefix)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RouteFactorySingleRoute &&
            const DeepCollectionEquality()
                .equals(other.routeConfig, routeConfig) &&
            const DeepCollectionEquality()
                .equals(other.provideArgsNamePrefix, provideArgsNamePrefix));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(routeConfig),
      const DeepCollectionEquality().hash(provideArgsNamePrefix));

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_RouteFactorySingleRoute value) $default,
  ) {
    return $default(this);
  }
}

abstract class _RouteFactorySingleRoute extends RouteFactorySingleRoute {
  factory _RouteFactorySingleRoute(
      {required final RouteFactoryRouteConfig routeConfig,
      final String? provideArgsNamePrefix}) = _$_RouteFactorySingleRoute;
  _RouteFactorySingleRoute._() : super._();

  factory _RouteFactorySingleRoute.fromJson(Map<String, dynamic> json) =
      _$_RouteFactorySingleRoute.fromJson;

  @override
  RouteFactoryRouteConfig get routeConfig;
  @override
  String? get provideArgsNamePrefix;
}

RouteFactoryFromRoutes _$RouteFactoryFromRoutesFromJson(
    Map<String, dynamic> json) {
  return _RouteFactoryFromRoutes.fromJson(json);
}

/// @nodoc
mixin _$RouteFactoryFromRoutes {
  Map<String, RouteFactoryRouteConfig> get routes =>
      throw _privateConstructorUsedError;
  String? get provideArgsNamePrefix => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_RouteFactoryFromRoutes value) $default,
  ) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_RouteFactoryFromRoutes extends _RouteFactoryFromRoutes {
  _$_RouteFactoryFromRoutes(
      {required final Map<String, RouteFactoryRouteConfig> routes,
      this.provideArgsNamePrefix})
      : _routes = routes,
        super._();

  factory _$_RouteFactoryFromRoutes.fromJson(Map<String, dynamic> json) =>
      _$$_RouteFactoryFromRoutesFromJson(json);

  final Map<String, RouteFactoryRouteConfig> _routes;
  @override
  Map<String, RouteFactoryRouteConfig> get routes {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_routes);
  }

  @override
  final String? provideArgsNamePrefix;

  @override
  String toString() {
    return 'RouteFactoryFromRoutes(routes: $routes, provideArgsNamePrefix: $provideArgsNamePrefix)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RouteFactoryFromRoutes &&
            const DeepCollectionEquality().equals(other._routes, _routes) &&
            const DeepCollectionEquality()
                .equals(other.provideArgsNamePrefix, provideArgsNamePrefix));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_routes),
      const DeepCollectionEquality().hash(provideArgsNamePrefix));

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_RouteFactoryFromRoutes value) $default,
  ) {
    return $default(this);
  }
}

abstract class _RouteFactoryFromRoutes extends RouteFactoryFromRoutes {
  factory _RouteFactoryFromRoutes(
      {required final Map<String, RouteFactoryRouteConfig> routes,
      final String? provideArgsNamePrefix}) = _$_RouteFactoryFromRoutes;
  _RouteFactoryFromRoutes._() : super._();

  factory _RouteFactoryFromRoutes.fromJson(Map<String, dynamic> json) =
      _$_RouteFactoryFromRoutes.fromJson;

  @override
  Map<String, RouteFactoryRouteConfig> get routes;
  @override
  String? get provideArgsNamePrefix;
}

RouteFactoryRouteConfig _$RouteFactoryRouteConfigFromJson(
    Map<String, dynamic> json) {
  return _RouteFactoryConfig.fromJson(json);
}

/// @nodoc
mixin _$RouteFactoryRouteConfig {
  FlutterRoute get route => throw _privateConstructorUsedError;
  ZacString? get provideArgsName => throw _privateConstructorUsedError;
  List<SharedValueTransformer>? get transform =>
      throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_RouteFactoryConfig value) $default,
  ) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_RouteFactoryConfig extends _RouteFactoryConfig {
  _$_RouteFactoryConfig(
      {required this.route,
      this.provideArgsName,
      final List<SharedValueTransformer>? transform})
      : _transform = transform,
        super._();

  factory _$_RouteFactoryConfig.fromJson(Map<String, dynamic> json) =>
      _$$_RouteFactoryConfigFromJson(json);

  @override
  final FlutterRoute route;
  @override
  final ZacString? provideArgsName;
  final List<SharedValueTransformer>? _transform;
  @override
  List<SharedValueTransformer>? get transform {
    final value = _transform;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'RouteFactoryRouteConfig(route: $route, provideArgsName: $provideArgsName, transform: $transform)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RouteFactoryConfig &&
            const DeepCollectionEquality().equals(other.route, route) &&
            const DeepCollectionEquality()
                .equals(other.provideArgsName, provideArgsName) &&
            const DeepCollectionEquality()
                .equals(other._transform, _transform));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(route),
      const DeepCollectionEquality().hash(provideArgsName),
      const DeepCollectionEquality().hash(_transform));

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_RouteFactoryConfig value) $default,
  ) {
    return $default(this);
  }
}

abstract class _RouteFactoryConfig extends RouteFactoryRouteConfig {
  factory _RouteFactoryConfig(
      {required final FlutterRoute route,
      final ZacString? provideArgsName,
      final List<SharedValueTransformer>? transform}) = _$_RouteFactoryConfig;
  _RouteFactoryConfig._() : super._();

  factory _RouteFactoryConfig.fromJson(Map<String, dynamic> json) =
      _$_RouteFactoryConfig.fromJson;

  @override
  FlutterRoute get route;
  @override
  ZacString? get provideArgsName;
  @override
  List<SharedValueTransformer>? get transform;
}

FlutterPageRouteBuilder _$FlutterPageRouteBuilderFromJson(
    Map<String, dynamic> json) {
  return _FlutterPageRouteBuilder.fromJson(json);
}

/// @nodoc
mixin _$FlutterPageRouteBuilder {
  ZacWidget get child => throw _privateConstructorUsedError;
  FlutterRouteSettings? get settings =>
      throw _privateConstructorUsedError; //     RouteTransitionsBuilder transitionsBuilder = _defaultTransitionsBuilder,
// Duration transitionDuration = const Duration(milliseconds: 300),
// Duration reverseTransitionDuration = const Duration(milliseconds: 300),
  ZacBool? get opaque => throw _privateConstructorUsedError;
  ZacBool? get barrierDismissible => throw _privateConstructorUsedError;
  FlutterColor? get barrierColor => throw _privateConstructorUsedError;
  ZacString? get barrierLabel => throw _privateConstructorUsedError;
  ZacBool? get maintainState => throw _privateConstructorUsedError;
  ZacBool? get fullscreenDialog => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_FlutterPageRouteBuilder value) $default,
  ) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_FlutterPageRouteBuilder extends _FlutterPageRouteBuilder {
  _$_FlutterPageRouteBuilder(
      {required this.child,
      this.settings,
      this.opaque,
      this.barrierDismissible,
      this.barrierColor,
      this.barrierLabel,
      this.maintainState,
      this.fullscreenDialog})
      : super._();

  factory _$_FlutterPageRouteBuilder.fromJson(Map<String, dynamic> json) =>
      _$$_FlutterPageRouteBuilderFromJson(json);

  @override
  final ZacWidget child;
  @override
  final FlutterRouteSettings? settings;
//     RouteTransitionsBuilder transitionsBuilder = _defaultTransitionsBuilder,
// Duration transitionDuration = const Duration(milliseconds: 300),
// Duration reverseTransitionDuration = const Duration(milliseconds: 300),
  @override
  final ZacBool? opaque;
  @override
  final ZacBool? barrierDismissible;
  @override
  final FlutterColor? barrierColor;
  @override
  final ZacString? barrierLabel;
  @override
  final ZacBool? maintainState;
  @override
  final ZacBool? fullscreenDialog;

  @override
  String toString() {
    return 'FlutterPageRouteBuilder(child: $child, settings: $settings, opaque: $opaque, barrierDismissible: $barrierDismissible, barrierColor: $barrierColor, barrierLabel: $barrierLabel, maintainState: $maintainState, fullscreenDialog: $fullscreenDialog)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FlutterPageRouteBuilder &&
            const DeepCollectionEquality().equals(other.child, child) &&
            const DeepCollectionEquality().equals(other.settings, settings) &&
            const DeepCollectionEquality().equals(other.opaque, opaque) &&
            const DeepCollectionEquality()
                .equals(other.barrierDismissible, barrierDismissible) &&
            const DeepCollectionEquality()
                .equals(other.barrierColor, barrierColor) &&
            const DeepCollectionEquality()
                .equals(other.barrierLabel, barrierLabel) &&
            const DeepCollectionEquality()
                .equals(other.maintainState, maintainState) &&
            const DeepCollectionEquality()
                .equals(other.fullscreenDialog, fullscreenDialog));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(child),
      const DeepCollectionEquality().hash(settings),
      const DeepCollectionEquality().hash(opaque),
      const DeepCollectionEquality().hash(barrierDismissible),
      const DeepCollectionEquality().hash(barrierColor),
      const DeepCollectionEquality().hash(barrierLabel),
      const DeepCollectionEquality().hash(maintainState),
      const DeepCollectionEquality().hash(fullscreenDialog));

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_FlutterPageRouteBuilder value) $default,
  ) {
    return $default(this);
  }
}

abstract class _FlutterPageRouteBuilder extends FlutterPageRouteBuilder {
  factory _FlutterPageRouteBuilder(
      {required final ZacWidget child,
      final FlutterRouteSettings? settings,
      final ZacBool? opaque,
      final ZacBool? barrierDismissible,
      final FlutterColor? barrierColor,
      final ZacString? barrierLabel,
      final ZacBool? maintainState,
      final ZacBool? fullscreenDialog}) = _$_FlutterPageRouteBuilder;
  _FlutterPageRouteBuilder._() : super._();

  factory _FlutterPageRouteBuilder.fromJson(Map<String, dynamic> json) =
      _$_FlutterPageRouteBuilder.fromJson;

  @override
  ZacWidget get child;
  @override
  FlutterRouteSettings? get settings;
  @override //     RouteTransitionsBuilder transitionsBuilder = _defaultTransitionsBuilder,
// Duration transitionDuration = const Duration(milliseconds: 300),
// Duration reverseTransitionDuration = const Duration(milliseconds: 300),
  ZacBool? get opaque;
  @override
  ZacBool? get barrierDismissible;
  @override
  FlutterColor? get barrierColor;
  @override
  ZacString? get barrierLabel;
  @override
  ZacBool? get maintainState;
  @override
  ZacBool? get fullscreenDialog;
}

FlutterRouteSettings _$FlutterRouteSettingsFromJson(Map<String, dynamic> json) {
  return _FlutterRouteSettings.fromJson(json);
}

/// @nodoc
mixin _$FlutterRouteSettings {
  ZacString? get name => throw _privateConstructorUsedError;
  Object? get arguments => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_FlutterRouteSettings value) $default,
  ) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_FlutterRouteSettings extends _FlutterRouteSettings {
  _$_FlutterRouteSettings({this.name, this.arguments}) : super._();

  factory _$_FlutterRouteSettings.fromJson(Map<String, dynamic> json) =>
      _$$_FlutterRouteSettingsFromJson(json);

  @override
  final ZacString? name;
  @override
  final Object? arguments;

  @override
  String toString() {
    return 'FlutterRouteSettings(name: $name, arguments: $arguments)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FlutterRouteSettings &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.arguments, arguments));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(arguments));

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_FlutterRouteSettings value) $default,
  ) {
    return $default(this);
  }
}

abstract class _FlutterRouteSettings extends FlutterRouteSettings {
  factory _FlutterRouteSettings(
      {final ZacString? name,
      final Object? arguments}) = _$_FlutterRouteSettings;
  _FlutterRouteSettings._() : super._();

  factory _FlutterRouteSettings.fromJson(Map<String, dynamic> json) =
      _$_FlutterRouteSettings.fromJson;

  @override
  ZacString? get name;
  @override
  Object? get arguments;
}
