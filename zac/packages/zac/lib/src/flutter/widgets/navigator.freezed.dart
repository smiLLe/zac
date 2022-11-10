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
  switch (json['converter']) {
    case 'f:1:NavigatorState.closest':
      return _ZacNavigatorStateClosest.fromJson(json);
    case 'f:1:NavigatorState.root':
      return _ZacNavigatorStateRoot.fromJson(json);
    case 'z:1:NavigatorState.shared':
      return _ZacNavigatorStateSharedValue.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'converter', 'FlutterNavigatorState',
          'Invalid union type "${json['converter']}"!');
  }
}

/// @nodoc
mixin _$FlutterNavigatorState {
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ZacNavigatorStateClosest value) closest,
    required TResult Function(_ZacNavigatorStateRoot value) root,
    required TResult Function(_ZacNavigatorStateSharedValue value) shared,
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

  @JsonKey(name: 'converter')
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
    required TResult Function(_ZacNavigatorStateSharedValue value) shared,
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

  @JsonKey(name: 'converter')
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
    required TResult Function(_ZacNavigatorStateSharedValue value) shared,
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
class _$_ZacNavigatorStateSharedValue extends _ZacNavigatorStateSharedValue {
  _$_ZacNavigatorStateSharedValue({required this.value, final String? $type})
      : $type = $type ?? 'z:1:NavigatorState.shared',
        super._();

  factory _$_ZacNavigatorStateSharedValue.fromJson(Map<String, dynamic> json) =>
      _$$_ZacNavigatorStateSharedValueFromJson(json);

  @override
  final ZacValue<FlutterGlobalKeyNavigatorState> value;

  @JsonKey(name: 'converter')
  final String $type;

  @override
  String toString() {
    return 'FlutterNavigatorState.shared(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ZacNavigatorStateSharedValue &&
            (identical(other.value, value) || other.value == value));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, value);

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ZacNavigatorStateClosest value) closest,
    required TResult Function(_ZacNavigatorStateRoot value) root,
    required TResult Function(_ZacNavigatorStateSharedValue value) shared,
  }) {
    return shared(this);
  }
}

abstract class _ZacNavigatorStateSharedValue extends FlutterNavigatorState {
  factory _ZacNavigatorStateSharedValue(
          {required final ZacValue<FlutterGlobalKeyNavigatorState> value}) =
      _$_ZacNavigatorStateSharedValue;
  _ZacNavigatorStateSharedValue._() : super._();

  factory _ZacNavigatorStateSharedValue.fromJson(Map<String, dynamic> json) =
      _$_ZacNavigatorStateSharedValue.fromJson;

  ZacValue<FlutterGlobalKeyNavigatorState> get value;
}

FlutterNavigator _$FlutterNavigatorFromJson(Map<String, dynamic> json) {
  return _FlutterNavigator.fromJson(json);
}

/// @nodoc
mixin _$FlutterNavigator {
  FlutterKey? get key => throw _privateConstructorUsedError;
  FlutterRouteFactory? get onGenerateRoute =>
      throw _privateConstructorUsedError;
  FlutterRouteFactory? get onUnknownRoute => throw _privateConstructorUsedError;
  ZacValue<String>? get initialRoute => throw _privateConstructorUsedError;
  ZacValue<bool>? get requestFocus => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_FlutterNavigator value) $default,
  ) =>
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
      this.requestFocus})
      : super._();

  factory _$_FlutterNavigator.fromJson(Map<String, dynamic> json) =>
      _$$_FlutterNavigatorFromJson(json);

  @override
  final FlutterKey? key;
  @override
  final FlutterRouteFactory? onGenerateRoute;
  @override
  final FlutterRouteFactory? onUnknownRoute;
  @override
  final ZacValue<String>? initialRoute;
  @override
  final ZacValue<bool>? requestFocus;

  @override
  String toString() {
    return 'FlutterNavigator(key: $key, onGenerateRoute: $onGenerateRoute, onUnknownRoute: $onUnknownRoute, initialRoute: $initialRoute, requestFocus: $requestFocus)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FlutterNavigator &&
            (identical(other.key, key) || other.key == key) &&
            (identical(other.onGenerateRoute, onGenerateRoute) ||
                other.onGenerateRoute == onGenerateRoute) &&
            (identical(other.onUnknownRoute, onUnknownRoute) ||
                other.onUnknownRoute == onUnknownRoute) &&
            (identical(other.initialRoute, initialRoute) ||
                other.initialRoute == initialRoute) &&
            (identical(other.requestFocus, requestFocus) ||
                other.requestFocus == requestFocus));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, key, onGenerateRoute,
      onUnknownRoute, initialRoute, requestFocus);

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_FlutterNavigator value) $default,
  ) {
    return $default(this);
  }
}

abstract class _FlutterNavigator extends FlutterNavigator {
  factory _FlutterNavigator(
      {final FlutterKey? key,
      final FlutterRouteFactory? onGenerateRoute,
      final FlutterRouteFactory? onUnknownRoute,
      final ZacValue<String>? initialRoute,
      final ZacValue<bool>? requestFocus}) = _$_FlutterNavigator;
  _FlutterNavigator._() : super._();

  factory _FlutterNavigator.fromJson(Map<String, dynamic> json) =
      _$_FlutterNavigator.fromJson;

  @override
  FlutterKey? get key;
  @override
  FlutterRouteFactory? get onGenerateRoute;
  @override
  FlutterRouteFactory? get onUnknownRoute;
  @override
  ZacValue<String>? get initialRoute;
  @override
  ZacValue<bool>? get requestFocus;
}

FlutterNavigatorActions _$FlutterNavigatorActionsFromJson(
    Map<String, dynamic> json) {
  switch (json['converter']) {
    case 'f:1:Navigator.push':
      return _FlutterNavigatorActionsPush.fromJson(json);
    case 'f:1:Navigator.pushNamed':
      return _FlutterNavigatorActionsPushNamed.fromJson(json);
    case 'f:1:Navigator.pop':
      return _FlutterNavigatorActionsPop.fromJson(json);
    case 'f:1:Navigator.maybePop':
      return _FlutterNavigatorActionsMaybePop.fromJson(json);
    case 'f:1:Navigator.pushReplacement':
      return _FlutterNavigatorActionsPushReplacement.fromJson(json);
    case 'f:1:Navigator.pushReplacementNamed':
      return _FlutterNavigatorActionsPushReplacementNamed.fromJson(json);

    default:
      throw CheckedFromJsonException(
          json,
          'converter',
          'FlutterNavigatorActions',
          'Invalid union type "${json['converter']}"!');
  }
}

/// @nodoc
mixin _$FlutterNavigatorActions {
  FlutterNavigatorState? get navigatorState =>
      throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FlutterNavigatorActionsPush value) push,
    required TResult Function(_FlutterNavigatorActionsPushNamed value)
        pushNamed,
    required TResult Function(_FlutterNavigatorActionsPop value) pop,
    required TResult Function(_FlutterNavigatorActionsMaybePop value) maybePop,
    required TResult Function(_FlutterNavigatorActionsPushReplacement value)
        pushReplacement,
    required TResult Function(
            _FlutterNavigatorActionsPushReplacementNamed value)
        pushReplacementNamed,
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_FlutterNavigatorActionsPush extends _FlutterNavigatorActionsPush {
  _$_FlutterNavigatorActionsPush(
      {required this.route, this.navigatorState, final String? $type})
      : $type = $type ?? 'f:1:Navigator.push',
        super._();

  factory _$_FlutterNavigatorActionsPush.fromJson(Map<String, dynamic> json) =>
      _$$_FlutterNavigatorActionsPushFromJson(json);

  @override
  final FlutterRoute route;
  @override
  final FlutterNavigatorState? navigatorState;

  @JsonKey(name: 'converter')
  final String $type;

  @override
  String toString() {
    return 'FlutterNavigatorActions.push(route: $route, navigatorState: $navigatorState)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FlutterNavigatorActionsPush &&
            (identical(other.route, route) || other.route == route) &&
            (identical(other.navigatorState, navigatorState) ||
                other.navigatorState == navigatorState));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, route, navigatorState);

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FlutterNavigatorActionsPush value) push,
    required TResult Function(_FlutterNavigatorActionsPushNamed value)
        pushNamed,
    required TResult Function(_FlutterNavigatorActionsPop value) pop,
    required TResult Function(_FlutterNavigatorActionsMaybePop value) maybePop,
    required TResult Function(_FlutterNavigatorActionsPushReplacement value)
        pushReplacement,
    required TResult Function(
            _FlutterNavigatorActionsPushReplacementNamed value)
        pushReplacementNamed,
  }) {
    return push(this);
  }
}

abstract class _FlutterNavigatorActionsPush extends FlutterNavigatorActions {
  factory _FlutterNavigatorActionsPush(
          {required final FlutterRoute route,
          final FlutterNavigatorState? navigatorState}) =
      _$_FlutterNavigatorActionsPush;
  _FlutterNavigatorActionsPush._() : super._();

  factory _FlutterNavigatorActionsPush.fromJson(Map<String, dynamic> json) =
      _$_FlutterNavigatorActionsPush.fromJson;

  FlutterRoute get route;
  @override
  FlutterNavigatorState? get navigatorState;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_FlutterNavigatorActionsPushNamed
    extends _FlutterNavigatorActionsPushNamed {
  _$_FlutterNavigatorActionsPushNamed(
      {required this.routeName,
      this.arguments,
      this.navigatorState,
      final String? $type})
      : $type = $type ?? 'f:1:Navigator.pushNamed',
        super._();

  factory _$_FlutterNavigatorActionsPushNamed.fromJson(
          Map<String, dynamic> json) =>
      _$$_FlutterNavigatorActionsPushNamedFromJson(json);

  @override
  final ZacValue<String> routeName;
  @override
  final Object? arguments;
  @override
  final FlutterNavigatorState? navigatorState;

  @JsonKey(name: 'converter')
  final String $type;

  @override
  String toString() {
    return 'FlutterNavigatorActions.pushNamed(routeName: $routeName, arguments: $arguments, navigatorState: $navigatorState)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FlutterNavigatorActionsPushNamed &&
            (identical(other.routeName, routeName) ||
                other.routeName == routeName) &&
            const DeepCollectionEquality().equals(other.arguments, arguments) &&
            (identical(other.navigatorState, navigatorState) ||
                other.navigatorState == navigatorState));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, routeName,
      const DeepCollectionEquality().hash(arguments), navigatorState);

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FlutterNavigatorActionsPush value) push,
    required TResult Function(_FlutterNavigatorActionsPushNamed value)
        pushNamed,
    required TResult Function(_FlutterNavigatorActionsPop value) pop,
    required TResult Function(_FlutterNavigatorActionsMaybePop value) maybePop,
    required TResult Function(_FlutterNavigatorActionsPushReplacement value)
        pushReplacement,
    required TResult Function(
            _FlutterNavigatorActionsPushReplacementNamed value)
        pushReplacementNamed,
  }) {
    return pushNamed(this);
  }
}

abstract class _FlutterNavigatorActionsPushNamed
    extends FlutterNavigatorActions {
  factory _FlutterNavigatorActionsPushNamed(
          {required final ZacValue<String> routeName,
          final Object? arguments,
          final FlutterNavigatorState? navigatorState}) =
      _$_FlutterNavigatorActionsPushNamed;
  _FlutterNavigatorActionsPushNamed._() : super._();

  factory _FlutterNavigatorActionsPushNamed.fromJson(
      Map<String, dynamic> json) = _$_FlutterNavigatorActionsPushNamed.fromJson;

  ZacValue<String> get routeName;
  Object? get arguments;
  @override
  FlutterNavigatorState? get navigatorState;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_FlutterNavigatorActionsPop extends _FlutterNavigatorActionsPop {
  _$_FlutterNavigatorActionsPop(
      {this.actions, this.navigatorState, final String? $type})
      : $type = $type ?? 'f:1:Navigator.pop',
        super._();

  factory _$_FlutterNavigatorActionsPop.fromJson(Map<String, dynamic> json) =>
      _$$_FlutterNavigatorActionsPopFromJson(json);

  @override
  final ZacActions? actions;
  @override
  final FlutterNavigatorState? navigatorState;

  @JsonKey(name: 'converter')
  final String $type;

  @override
  String toString() {
    return 'FlutterNavigatorActions.pop(actions: $actions, navigatorState: $navigatorState)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FlutterNavigatorActionsPop &&
            (identical(other.actions, actions) || other.actions == actions) &&
            (identical(other.navigatorState, navigatorState) ||
                other.navigatorState == navigatorState));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, actions, navigatorState);

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FlutterNavigatorActionsPush value) push,
    required TResult Function(_FlutterNavigatorActionsPushNamed value)
        pushNamed,
    required TResult Function(_FlutterNavigatorActionsPop value) pop,
    required TResult Function(_FlutterNavigatorActionsMaybePop value) maybePop,
    required TResult Function(_FlutterNavigatorActionsPushReplacement value)
        pushReplacement,
    required TResult Function(
            _FlutterNavigatorActionsPushReplacementNamed value)
        pushReplacementNamed,
  }) {
    return pop(this);
  }
}

abstract class _FlutterNavigatorActionsPop extends FlutterNavigatorActions {
  factory _FlutterNavigatorActionsPop(
          {final ZacActions? actions,
          final FlutterNavigatorState? navigatorState}) =
      _$_FlutterNavigatorActionsPop;
  _FlutterNavigatorActionsPop._() : super._();

  factory _FlutterNavigatorActionsPop.fromJson(Map<String, dynamic> json) =
      _$_FlutterNavigatorActionsPop.fromJson;

  ZacActions? get actions;
  @override
  FlutterNavigatorState? get navigatorState;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_FlutterNavigatorActionsMaybePop
    extends _FlutterNavigatorActionsMaybePop {
  _$_FlutterNavigatorActionsMaybePop(
      {this.actions, this.navigatorState, final String? $type})
      : $type = $type ?? 'f:1:Navigator.maybePop',
        super._();

  factory _$_FlutterNavigatorActionsMaybePop.fromJson(
          Map<String, dynamic> json) =>
      _$$_FlutterNavigatorActionsMaybePopFromJson(json);

  @override
  final ZacActions? actions;
  @override
  final FlutterNavigatorState? navigatorState;

  @JsonKey(name: 'converter')
  final String $type;

  @override
  String toString() {
    return 'FlutterNavigatorActions.maybePop(actions: $actions, navigatorState: $navigatorState)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FlutterNavigatorActionsMaybePop &&
            (identical(other.actions, actions) || other.actions == actions) &&
            (identical(other.navigatorState, navigatorState) ||
                other.navigatorState == navigatorState));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, actions, navigatorState);

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FlutterNavigatorActionsPush value) push,
    required TResult Function(_FlutterNavigatorActionsPushNamed value)
        pushNamed,
    required TResult Function(_FlutterNavigatorActionsPop value) pop,
    required TResult Function(_FlutterNavigatorActionsMaybePop value) maybePop,
    required TResult Function(_FlutterNavigatorActionsPushReplacement value)
        pushReplacement,
    required TResult Function(
            _FlutterNavigatorActionsPushReplacementNamed value)
        pushReplacementNamed,
  }) {
    return maybePop(this);
  }
}

abstract class _FlutterNavigatorActionsMaybePop
    extends FlutterNavigatorActions {
  factory _FlutterNavigatorActionsMaybePop(
          {final ZacActions? actions,
          final FlutterNavigatorState? navigatorState}) =
      _$_FlutterNavigatorActionsMaybePop;
  _FlutterNavigatorActionsMaybePop._() : super._();

  factory _FlutterNavigatorActionsMaybePop.fromJson(Map<String, dynamic> json) =
      _$_FlutterNavigatorActionsMaybePop.fromJson;

  ZacActions? get actions;
  @override
  FlutterNavigatorState? get navigatorState;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_FlutterNavigatorActionsPushReplacement
    extends _FlutterNavigatorActionsPushReplacement {
  _$_FlutterNavigatorActionsPushReplacement(
      {required this.route,
      this.result,
      this.navigatorState,
      final String? $type})
      : $type = $type ?? 'f:1:Navigator.pushReplacement',
        super._();

  factory _$_FlutterNavigatorActionsPushReplacement.fromJson(
          Map<String, dynamic> json) =>
      _$$_FlutterNavigatorActionsPushReplacementFromJson(json);

  @override
  final FlutterRoute route;
  @override
  final ZacActions? result;
  @override
  final FlutterNavigatorState? navigatorState;

  @JsonKey(name: 'converter')
  final String $type;

  @override
  String toString() {
    return 'FlutterNavigatorActions.pushReplacement(route: $route, result: $result, navigatorState: $navigatorState)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FlutterNavigatorActionsPushReplacement &&
            (identical(other.route, route) || other.route == route) &&
            (identical(other.result, result) || other.result == result) &&
            (identical(other.navigatorState, navigatorState) ||
                other.navigatorState == navigatorState));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, route, result, navigatorState);

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FlutterNavigatorActionsPush value) push,
    required TResult Function(_FlutterNavigatorActionsPushNamed value)
        pushNamed,
    required TResult Function(_FlutterNavigatorActionsPop value) pop,
    required TResult Function(_FlutterNavigatorActionsMaybePop value) maybePop,
    required TResult Function(_FlutterNavigatorActionsPushReplacement value)
        pushReplacement,
    required TResult Function(
            _FlutterNavigatorActionsPushReplacementNamed value)
        pushReplacementNamed,
  }) {
    return pushReplacement(this);
  }
}

abstract class _FlutterNavigatorActionsPushReplacement
    extends FlutterNavigatorActions {
  factory _FlutterNavigatorActionsPushReplacement(
          {required final FlutterRoute route,
          final ZacActions? result,
          final FlutterNavigatorState? navigatorState}) =
      _$_FlutterNavigatorActionsPushReplacement;
  _FlutterNavigatorActionsPushReplacement._() : super._();

  factory _FlutterNavigatorActionsPushReplacement.fromJson(
          Map<String, dynamic> json) =
      _$_FlutterNavigatorActionsPushReplacement.fromJson;

  FlutterRoute get route;
  ZacActions? get result;
  @override
  FlutterNavigatorState? get navigatorState;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_FlutterNavigatorActionsPushReplacementNamed
    extends _FlutterNavigatorActionsPushReplacementNamed {
  _$_FlutterNavigatorActionsPushReplacementNamed(
      {required this.routeName,
      this.arguments,
      this.navigatorState,
      this.result,
      final String? $type})
      : $type = $type ?? 'f:1:Navigator.pushReplacementNamed',
        super._();

  factory _$_FlutterNavigatorActionsPushReplacementNamed.fromJson(
          Map<String, dynamic> json) =>
      _$$_FlutterNavigatorActionsPushReplacementNamedFromJson(json);

  @override
  final ZacValue<String> routeName;
  @override
  final Object? arguments;
  @override
  final FlutterNavigatorState? navigatorState;
  @override
  final ZacActions? result;

  @JsonKey(name: 'converter')
  final String $type;

  @override
  String toString() {
    return 'FlutterNavigatorActions.pushReplacementNamed(routeName: $routeName, arguments: $arguments, navigatorState: $navigatorState, result: $result)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FlutterNavigatorActionsPushReplacementNamed &&
            (identical(other.routeName, routeName) ||
                other.routeName == routeName) &&
            const DeepCollectionEquality().equals(other.arguments, arguments) &&
            (identical(other.navigatorState, navigatorState) ||
                other.navigatorState == navigatorState) &&
            (identical(other.result, result) || other.result == result));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, routeName,
      const DeepCollectionEquality().hash(arguments), navigatorState, result);

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FlutterNavigatorActionsPush value) push,
    required TResult Function(_FlutterNavigatorActionsPushNamed value)
        pushNamed,
    required TResult Function(_FlutterNavigatorActionsPop value) pop,
    required TResult Function(_FlutterNavigatorActionsMaybePop value) maybePop,
    required TResult Function(_FlutterNavigatorActionsPushReplacement value)
        pushReplacement,
    required TResult Function(
            _FlutterNavigatorActionsPushReplacementNamed value)
        pushReplacementNamed,
  }) {
    return pushReplacementNamed(this);
  }
}

abstract class _FlutterNavigatorActionsPushReplacementNamed
    extends FlutterNavigatorActions {
  factory _FlutterNavigatorActionsPushReplacementNamed(
          {required final ZacValue<String> routeName,
          final Object? arguments,
          final FlutterNavigatorState? navigatorState,
          final ZacActions? result}) =
      _$_FlutterNavigatorActionsPushReplacementNamed;
  _FlutterNavigatorActionsPushReplacementNamed._() : super._();

  factory _FlutterNavigatorActionsPushReplacementNamed.fromJson(
          Map<String, dynamic> json) =
      _$_FlutterNavigatorActionsPushReplacementNamed.fromJson;

  ZacValue<String> get routeName;
  Object? get arguments;
  @override
  FlutterNavigatorState? get navigatorState;
  ZacActions? get result;
}

FlutterPageRouteBuilder _$FlutterPageRouteBuilderFromJson(
    Map<String, dynamic> json) {
  return _FlutterPageRouteBuilder.fromJson(json);
}

/// @nodoc
mixin _$FlutterPageRouteBuilder {
  FlutterWidget get child => throw _privateConstructorUsedError;
  FlutterRouteSettings? get settings =>
      throw _privateConstructorUsedError; //     RouteTransitionsBuilder transitionsBuilder = _defaultTransitionsBuilder,
// Duration transitionDuration = const Duration(milliseconds: 300),
// Duration reverseTransitionDuration = const Duration(milliseconds: 300),
  ZacValue<bool>? get opaque => throw _privateConstructorUsedError;
  ZacValue<bool>? get barrierDismissible => throw _privateConstructorUsedError;
  FlutterColor? get barrierColor => throw _privateConstructorUsedError;
  ZacValue<String>? get barrierLabel => throw _privateConstructorUsedError;
  ZacValue<bool>? get maintainState => throw _privateConstructorUsedError;
  ZacValue<bool>? get fullscreenDialog => throw _privateConstructorUsedError;

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
  final FlutterWidget child;
  @override
  final FlutterRouteSettings? settings;
//     RouteTransitionsBuilder transitionsBuilder = _defaultTransitionsBuilder,
// Duration transitionDuration = const Duration(milliseconds: 300),
// Duration reverseTransitionDuration = const Duration(milliseconds: 300),
  @override
  final ZacValue<bool>? opaque;
  @override
  final ZacValue<bool>? barrierDismissible;
  @override
  final FlutterColor? barrierColor;
  @override
  final ZacValue<String>? barrierLabel;
  @override
  final ZacValue<bool>? maintainState;
  @override
  final ZacValue<bool>? fullscreenDialog;

  @override
  String toString() {
    return 'FlutterPageRouteBuilder(child: $child, settings: $settings, opaque: $opaque, barrierDismissible: $barrierDismissible, barrierColor: $barrierColor, barrierLabel: $barrierLabel, maintainState: $maintainState, fullscreenDialog: $fullscreenDialog)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FlutterPageRouteBuilder &&
            (identical(other.child, child) || other.child == child) &&
            (identical(other.settings, settings) ||
                other.settings == settings) &&
            (identical(other.opaque, opaque) || other.opaque == opaque) &&
            (identical(other.barrierDismissible, barrierDismissible) ||
                other.barrierDismissible == barrierDismissible) &&
            (identical(other.barrierColor, barrierColor) ||
                other.barrierColor == barrierColor) &&
            (identical(other.barrierLabel, barrierLabel) ||
                other.barrierLabel == barrierLabel) &&
            (identical(other.maintainState, maintainState) ||
                other.maintainState == maintainState) &&
            (identical(other.fullscreenDialog, fullscreenDialog) ||
                other.fullscreenDialog == fullscreenDialog));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      child,
      settings,
      opaque,
      barrierDismissible,
      barrierColor,
      barrierLabel,
      maintainState,
      fullscreenDialog);

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
      {required final FlutterWidget child,
      final FlutterRouteSettings? settings,
      final ZacValue<bool>? opaque,
      final ZacValue<bool>? barrierDismissible,
      final FlutterColor? barrierColor,
      final ZacValue<String>? barrierLabel,
      final ZacValue<bool>? maintainState,
      final ZacValue<bool>? fullscreenDialog}) = _$_FlutterPageRouteBuilder;
  _FlutterPageRouteBuilder._() : super._();

  factory _FlutterPageRouteBuilder.fromJson(Map<String, dynamic> json) =
      _$_FlutterPageRouteBuilder.fromJson;

  @override
  FlutterWidget get child;
  @override
  FlutterRouteSettings? get settings;
  @override //     RouteTransitionsBuilder transitionsBuilder = _defaultTransitionsBuilder,
// Duration transitionDuration = const Duration(milliseconds: 300),
// Duration reverseTransitionDuration = const Duration(milliseconds: 300),
  ZacValue<bool>? get opaque;
  @override
  ZacValue<bool>? get barrierDismissible;
  @override
  FlutterColor? get barrierColor;
  @override
  ZacValue<String>? get barrierLabel;
  @override
  ZacValue<bool>? get maintainState;
  @override
  ZacValue<bool>? get fullscreenDialog;
}

FlutterRouteSettings _$FlutterRouteSettingsFromJson(Map<String, dynamic> json) {
  return _FlutterRouteSettings.fromJson(json);
}

/// @nodoc
mixin _$FlutterRouteSettings {
  ZacValue<String>? get name => throw _privateConstructorUsedError;
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
  final ZacValue<String>? name;
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
            (identical(other.name, name) || other.name == name) &&
            const DeepCollectionEquality().equals(other.arguments, arguments));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, name, const DeepCollectionEquality().hash(arguments));

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
      {final ZacValue<String>? name,
      final Object? arguments}) = _$_FlutterRouteSettings;
  _FlutterRouteSettings._() : super._();

  factory _FlutterRouteSettings.fromJson(Map<String, dynamic> json) =
      _$_FlutterRouteSettings.fromJson;

  @override
  ZacValue<String>? get name;
  @override
  Object? get arguments;
}
