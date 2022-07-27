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
      return _AnyNavigatorStateClosest.fromJson(json);
    case 'f:1:NavigatorState.root':
      return _AnyNavigatorStateRoot.fromJson(json);
    case 'z:1:NavigatorState.consumeFromGlobalKey':
      return _AnyNavigatorStateConsumeFromGlobalKey.fromJson(json);
    case 'z:1:GlobalKeyNavigatorState':
      return _AnyNavigatorStateBuilder.fromJson(json);
    case 'z:1:GlobalKeyNavigatorState.transformToGlobalKey':
      return _AnyNavigatorStateTransformBuilder.fromJson(json);

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
    required TResult Function(_AnyNavigatorStateClosest value) closest,
    required TResult Function(_AnyNavigatorStateRoot value) root,
    required TResult Function(_AnyNavigatorStateConsumeFromGlobalKey value)
        consumeFromGlobalKey,
    required TResult Function(_AnyNavigatorStateBuilder value) builder,
    required TResult Function(_AnyNavigatorStateTransformBuilder value)
        transform,
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_AnyNavigatorStateClosest extends _AnyNavigatorStateClosest {
  _$_AnyNavigatorStateClosest({final String? $type})
      : $type = $type ?? 'f:1:NavigatorState.closest',
        super._();

  factory _$_AnyNavigatorStateClosest.fromJson(Map<String, dynamic> json) =>
      _$$_AnyNavigatorStateClosestFromJson(json);

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
            other is _$_AnyNavigatorStateClosest);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AnyNavigatorStateClosest value) closest,
    required TResult Function(_AnyNavigatorStateRoot value) root,
    required TResult Function(_AnyNavigatorStateConsumeFromGlobalKey value)
        consumeFromGlobalKey,
    required TResult Function(_AnyNavigatorStateBuilder value) builder,
    required TResult Function(_AnyNavigatorStateTransformBuilder value)
        transform,
  }) {
    return closest(this);
  }
}

abstract class _AnyNavigatorStateClosest extends FlutterNavigatorState {
  factory _AnyNavigatorStateClosest() = _$_AnyNavigatorStateClosest;
  _AnyNavigatorStateClosest._() : super._();

  factory _AnyNavigatorStateClosest.fromJson(Map<String, dynamic> json) =
      _$_AnyNavigatorStateClosest.fromJson;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_AnyNavigatorStateRoot extends _AnyNavigatorStateRoot {
  _$_AnyNavigatorStateRoot({final String? $type})
      : $type = $type ?? 'f:1:NavigatorState.root',
        super._();

  factory _$_AnyNavigatorStateRoot.fromJson(Map<String, dynamic> json) =>
      _$$_AnyNavigatorStateRootFromJson(json);

  @JsonKey(name: '_converter')
  final String $type;

  @override
  String toString() {
    return 'FlutterNavigatorState.root()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_AnyNavigatorStateRoot);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AnyNavigatorStateClosest value) closest,
    required TResult Function(_AnyNavigatorStateRoot value) root,
    required TResult Function(_AnyNavigatorStateConsumeFromGlobalKey value)
        consumeFromGlobalKey,
    required TResult Function(_AnyNavigatorStateBuilder value) builder,
    required TResult Function(_AnyNavigatorStateTransformBuilder value)
        transform,
  }) {
    return root(this);
  }
}

abstract class _AnyNavigatorStateRoot extends FlutterNavigatorState {
  factory _AnyNavigatorStateRoot() = _$_AnyNavigatorStateRoot;
  _AnyNavigatorStateRoot._() : super._();

  factory _AnyNavigatorStateRoot.fromJson(Map<String, dynamic> json) =
      _$_AnyNavigatorStateRoot.fromJson;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_AnyNavigatorStateConsumeFromGlobalKey
    extends _AnyNavigatorStateConsumeFromGlobalKey
    with ConsumeValue<GlobalKey<NavigatorState>> {
  _$_AnyNavigatorStateConsumeFromGlobalKey(
      {required this.name,
      this.consumeType,
      final List<SharedValueTransformer>? mapper,
      final String? $type})
      : _mapper = mapper,
        $type = $type ?? 'z:1:NavigatorState.consumeFromGlobalKey',
        super._();

  factory _$_AnyNavigatorStateConsumeFromGlobalKey.fromJson(
          Map<String, dynamic> json) =>
      _$$_AnyNavigatorStateConsumeFromGlobalKeyFromJson(json);

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
            other is _$_AnyNavigatorStateConsumeFromGlobalKey &&
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
    required TResult Function(_AnyNavigatorStateClosest value) closest,
    required TResult Function(_AnyNavigatorStateRoot value) root,
    required TResult Function(_AnyNavigatorStateConsumeFromGlobalKey value)
        consumeFromGlobalKey,
    required TResult Function(_AnyNavigatorStateBuilder value) builder,
    required TResult Function(_AnyNavigatorStateTransformBuilder value)
        transform,
  }) {
    return consumeFromGlobalKey(this);
  }
}

abstract class _AnyNavigatorStateConsumeFromGlobalKey
    extends FlutterNavigatorState
    implements ConsumeValue<GlobalKey<NavigatorState>> {
  factory _AnyNavigatorStateConsumeFromGlobalKey(
          {required final String name,
          final SharedValueConsumeType? consumeType,
          final List<SharedValueTransformer>? mapper}) =
      _$_AnyNavigatorStateConsumeFromGlobalKey;
  _AnyNavigatorStateConsumeFromGlobalKey._() : super._();

  factory _AnyNavigatorStateConsumeFromGlobalKey.fromJson(
          Map<String, dynamic> json) =
      _$_AnyNavigatorStateConsumeFromGlobalKey.fromJson;

  String get name;
  SharedValueConsumeType? get consumeType;
  List<SharedValueTransformer>? get mapper;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_AnyNavigatorStateBuilder extends _AnyNavigatorStateBuilder {
  _$_AnyNavigatorStateBuilder({this.debugLabel, final String? $type})
      : $type = $type ?? 'z:1:GlobalKeyNavigatorState',
        super._();

  factory _$_AnyNavigatorStateBuilder.fromJson(Map<String, dynamic> json) =>
      _$$_AnyNavigatorStateBuilderFromJson(json);

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
            other is _$_AnyNavigatorStateBuilder &&
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
    required TResult Function(_AnyNavigatorStateClosest value) closest,
    required TResult Function(_AnyNavigatorStateRoot value) root,
    required TResult Function(_AnyNavigatorStateConsumeFromGlobalKey value)
        consumeFromGlobalKey,
    required TResult Function(_AnyNavigatorStateBuilder value) builder,
    required TResult Function(_AnyNavigatorStateTransformBuilder value)
        transform,
  }) {
    return builder(this);
  }
}

abstract class _AnyNavigatorStateBuilder extends FlutterNavigatorState {
  factory _AnyNavigatorStateBuilder({final String? debugLabel}) =
      _$_AnyNavigatorStateBuilder;
  _AnyNavigatorStateBuilder._() : super._();

  factory _AnyNavigatorStateBuilder.fromJson(Map<String, dynamic> json) =
      _$_AnyNavigatorStateBuilder.fromJson;

  String? get debugLabel;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_AnyNavigatorStateTransformBuilder
    extends _AnyNavigatorStateTransformBuilder {
  _$_AnyNavigatorStateTransformBuilder({final String? $type})
      : $type = $type ?? 'z:1:GlobalKeyNavigatorState.transformToGlobalKey',
        super._();

  factory _$_AnyNavigatorStateTransformBuilder.fromJson(
          Map<String, dynamic> json) =>
      _$$_AnyNavigatorStateTransformBuilderFromJson(json);

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
            other is _$_AnyNavigatorStateTransformBuilder);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_AnyNavigatorStateClosest value) closest,
    required TResult Function(_AnyNavigatorStateRoot value) root,
    required TResult Function(_AnyNavigatorStateConsumeFromGlobalKey value)
        consumeFromGlobalKey,
    required TResult Function(_AnyNavigatorStateBuilder value) builder,
    required TResult Function(_AnyNavigatorStateTransformBuilder value)
        transform,
  }) {
    return transform(this);
  }
}

abstract class _AnyNavigatorStateTransformBuilder
    extends FlutterNavigatorState {
  factory _AnyNavigatorStateTransformBuilder() =
      _$_AnyNavigatorStateTransformBuilder;
  _AnyNavigatorStateTransformBuilder._() : super._();

  factory _AnyNavigatorStateTransformBuilder.fromJson(
          Map<String, dynamic> json) =
      _$_AnyNavigatorStateTransformBuilder.fromJson;
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
  final AnyNavigatorState? navigatorState;

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
      final AnyNavigatorState? navigatorState}) = _$_FlutterNavigatorPush;
  _FlutterNavigatorPush._() : super._();

  factory _FlutterNavigatorPush.fromJson(Map<String, dynamic> json) =
      _$_FlutterNavigatorPush.fromJson;

  FlutterRoute get route;
  AnyNavigatorState? get navigatorState;
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
  final AnyNavigatorState? navigatorState;

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
      final AnyNavigatorState? navigatorState}) = _$_FlutterNavigatorPushNamed;
  _FlutterNavigatorPushNamed._() : super._();

  factory _FlutterNavigatorPushNamed.fromJson(Map<String, dynamic> json) =
      _$_FlutterNavigatorPushNamed.fromJson;

  ZacString get routeName;
  Object? get arguments;
  AnyNavigatorState? get navigatorState;
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
  final AnyActions? actions;
  @override
  final AnyNavigatorState? navigatorState;

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
      {final AnyActions? actions,
      final AnyNavigatorState? navigatorState}) = _$_FlutterNavigatorPop;
  _FlutterNavigatorPop._() : super._();

  factory _FlutterNavigatorPop.fromJson(Map<String, dynamic> json) =
      _$_FlutterNavigatorPop.fromJson;

  AnyActions? get actions;
  AnyNavigatorState? get navigatorState;
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
  final AnyActions? actions;
  @override
  final AnyNavigatorState? navigatorState;

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
      {final AnyActions? actions,
      final AnyNavigatorState? navigatorState}) = _$_FlutterNavigatorMaybePop;
  _FlutterNavigatorMaybePop._() : super._();

  factory _FlutterNavigatorMaybePop.fromJson(Map<String, dynamic> json) =
      _$_FlutterNavigatorMaybePop.fromJson;

  AnyActions? get actions;
  AnyNavigatorState? get navigatorState;
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
  final AnyActions? result;
  @override
  final AnyNavigatorState? navigatorState;

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
          final AnyActions? result,
          final AnyNavigatorState? navigatorState}) =
      _$_FlutterNavigatorPushReplacement;
  _FlutterNavigatorPushReplacement._() : super._();

  factory _FlutterNavigatorPushReplacement.fromJson(Map<String, dynamic> json) =
      _$_FlutterNavigatorPushReplacement.fromJson;

  FlutterRoute get route;
  AnyActions? get result;
  AnyNavigatorState? get navigatorState;
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
  final AnyNavigatorState? navigatorState;
  @override
  final AnyActions? result;

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
      final AnyNavigatorState? navigatorState,
      final AnyActions? result}) = _$_FlutterNavigatorPushReplacementNamed;
  _FlutterNavigatorPushReplacementNamed._() : super._();

  factory _FlutterNavigatorPushReplacementNamed.fromJson(
          Map<String, dynamic> json) =
      _$_FlutterNavigatorPushReplacementNamed.fromJson;

  ZacString get routeName;
  Object? get arguments;
  AnyNavigatorState? get navigatorState;
  AnyActions? get result;
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
  final AnyNavigatorState? navigatorState;

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
          final AnyNavigatorState? navigatorState}) =
      _$_FlutterNavigatorPopUntilRouteName;
  _FlutterNavigatorPopUntilRouteName._() : super._();

  factory _FlutterNavigatorPopUntilRouteName.fromJson(
          Map<String, dynamic> json) =
      _$_FlutterNavigatorPopUntilRouteName.fromJson;

  ZacString get routeName;
  AnyNavigatorState? get navigatorState;
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
