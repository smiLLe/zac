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

FlutterNavigator _$FlutterNavigatorFromJson(Map<String, dynamic> json) {
  return _FlutterNavigator.fromJson(json);
}

/// @nodoc
mixin _$FlutterNavigator {
  FlutterKey? get key => throw _privateConstructorUsedError;
  FlutterRouteFactory? get onGenerateRoute =>
      throw _privateConstructorUsedError;
  FlutterRouteFactory? get onUnknownRoute => throw _privateConstructorUsedError;
  ZacString? get initialRoute => throw _privateConstructorUsedError;
  ZacBool? get requestFocus => throw _privateConstructorUsedError;

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
  final ZacString? initialRoute;
  @override
  final ZacBool? requestFocus;

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
      final ZacString? initialRoute,
      final ZacBool? requestFocus}) = _$_FlutterNavigator;
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
  ZacString? get initialRoute;
  @override
  ZacBool? get requestFocus;
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
  GetFlutterNavigatorState? get navigatorState =>
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
  final GetFlutterNavigatorState? navigatorState;

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
          final GetFlutterNavigatorState? navigatorState}) =
      _$_FlutterNavigatorActionsPush;
  _FlutterNavigatorActionsPush._() : super._();

  factory _FlutterNavigatorActionsPush.fromJson(Map<String, dynamic> json) =
      _$_FlutterNavigatorActionsPush.fromJson;

  FlutterRoute get route;
  @override
  GetFlutterNavigatorState? get navigatorState;
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
  final ZacString routeName;
  @override
  final Object? arguments;
  @override
  final GetFlutterNavigatorState? navigatorState;

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
          {required final ZacString routeName,
          final Object? arguments,
          final GetFlutterNavigatorState? navigatorState}) =
      _$_FlutterNavigatorActionsPushNamed;
  _FlutterNavigatorActionsPushNamed._() : super._();

  factory _FlutterNavigatorActionsPushNamed.fromJson(
      Map<String, dynamic> json) = _$_FlutterNavigatorActionsPushNamed.fromJson;

  ZacString get routeName;
  Object? get arguments;
  @override
  GetFlutterNavigatorState? get navigatorState;
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
  final GetFlutterNavigatorState? navigatorState;

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
          final GetFlutterNavigatorState? navigatorState}) =
      _$_FlutterNavigatorActionsPop;
  _FlutterNavigatorActionsPop._() : super._();

  factory _FlutterNavigatorActionsPop.fromJson(Map<String, dynamic> json) =
      _$_FlutterNavigatorActionsPop.fromJson;

  ZacActions? get actions;
  @override
  GetFlutterNavigatorState? get navigatorState;
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
  final GetFlutterNavigatorState? navigatorState;

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
          final GetFlutterNavigatorState? navigatorState}) =
      _$_FlutterNavigatorActionsMaybePop;
  _FlutterNavigatorActionsMaybePop._() : super._();

  factory _FlutterNavigatorActionsMaybePop.fromJson(Map<String, dynamic> json) =
      _$_FlutterNavigatorActionsMaybePop.fromJson;

  ZacActions? get actions;
  @override
  GetFlutterNavigatorState? get navigatorState;
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
  final GetFlutterNavigatorState? navigatorState;

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
          final GetFlutterNavigatorState? navigatorState}) =
      _$_FlutterNavigatorActionsPushReplacement;
  _FlutterNavigatorActionsPushReplacement._() : super._();

  factory _FlutterNavigatorActionsPushReplacement.fromJson(
          Map<String, dynamic> json) =
      _$_FlutterNavigatorActionsPushReplacement.fromJson;

  FlutterRoute get route;
  ZacActions? get result;
  @override
  GetFlutterNavigatorState? get navigatorState;
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
  final ZacString routeName;
  @override
  final Object? arguments;
  @override
  final GetFlutterNavigatorState? navigatorState;
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
          {required final ZacString routeName,
          final Object? arguments,
          final GetFlutterNavigatorState? navigatorState,
          final ZacActions? result}) =
      _$_FlutterNavigatorActionsPushReplacementNamed;
  _FlutterNavigatorActionsPushReplacementNamed._() : super._();

  factory _FlutterNavigatorActionsPushReplacementNamed.fromJson(
          Map<String, dynamic> json) =
      _$_FlutterNavigatorActionsPushReplacementNamed.fromJson;

  ZacString get routeName;
  Object? get arguments;
  @override
  GetFlutterNavigatorState? get navigatorState;
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
  final FlutterWidget child;
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
      {required final FlutterWidget child,
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
  FlutterWidget get child;
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
