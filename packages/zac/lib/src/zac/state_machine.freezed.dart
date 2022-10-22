// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'state_machine.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ZacTransition _$ZacTransitionFromJson(Map<String, dynamic> json) {
  return _ZacTransition.fromJson(json);
}

/// @nodoc
mixin _$ZacTransition {
  String get event => throw _privateConstructorUsedError;
  String get target => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_ZacTransition value) $default,
  ) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_ZacTransition implements _ZacTransition {
  _$_ZacTransition({required this.event, required this.target});

  factory _$_ZacTransition.fromJson(Map<String, dynamic> json) =>
      _$$_ZacTransitionFromJson(json);

  @override
  final String event;
  @override
  final String target;

  @override
  String toString() {
    return 'ZacTransition(event: $event, target: $target)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ZacTransition &&
            const DeepCollectionEquality().equals(other.event, event) &&
            const DeepCollectionEquality().equals(other.target, target));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(event),
      const DeepCollectionEquality().hash(target));

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_ZacTransition value) $default,
  ) {
    return $default(this);
  }
}

abstract class _ZacTransition implements ZacTransition {
  factory _ZacTransition(
      {required final String event,
      required final String target}) = _$_ZacTransition;

  factory _ZacTransition.fromJson(Map<String, dynamic> json) =
      _$_ZacTransition.fromJson;

  @override
  String get event;
  @override
  String get target;
}

ZacStateConfig _$ZacStateConfigFromJson(Map<String, dynamic> json) {
  return _ZacStateConfig.fromJson(json);
}

/// @nodoc
mixin _$ZacStateConfig {
  FlutterWidget get widget => throw _privateConstructorUsedError;
  List<ZacTransition> get on => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_ZacStateConfig value) $default,
  ) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_ZacStateConfig implements _ZacStateConfig {
  _$_ZacStateConfig(
      {required this.widget,
      final List<ZacTransition> on = const <ZacTransition>[]})
      : _on = on;

  factory _$_ZacStateConfig.fromJson(Map<String, dynamic> json) =>
      _$$_ZacStateConfigFromJson(json);

  @override
  final FlutterWidget widget;
  final List<ZacTransition> _on;
  @override
  @JsonKey()
  List<ZacTransition> get on {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_on);
  }

  @override
  String toString() {
    return 'ZacStateConfig(widget: $widget, on: $on)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ZacStateConfig &&
            const DeepCollectionEquality().equals(other.widget, widget) &&
            const DeepCollectionEquality().equals(other._on, _on));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(widget),
      const DeepCollectionEquality().hash(_on));

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_ZacStateConfig value) $default,
  ) {
    return $default(this);
  }
}

abstract class _ZacStateConfig implements ZacStateConfig {
  factory _ZacStateConfig(
      {required final FlutterWidget widget,
      final List<ZacTransition> on}) = _$_ZacStateConfig;

  factory _ZacStateConfig.fromJson(Map<String, dynamic> json) =
      _$_ZacStateConfig.fromJson;

  @override
  FlutterWidget get widget;
  @override
  List<ZacTransition> get on;
}

/// @nodoc
mixin _$ZacStateMachine {
  Map<String, ZacStateConfig> get states => throw _privateConstructorUsedError;
  String get state => throw _privateConstructorUsedError;
  Object? get context => throw _privateConstructorUsedError;
  void Function(String, Object?) get send => throw _privateConstructorUsedError;
  void Function(String, Object?) get trySend =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ZacStateMachineCopyWith<ZacStateMachine> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ZacStateMachineCopyWith<$Res> {
  factory $ZacStateMachineCopyWith(
          ZacStateMachine value, $Res Function(ZacStateMachine) then) =
      _$ZacStateMachineCopyWithImpl<$Res>;
  $Res call(
      {Map<String, ZacStateConfig> states,
      String state,
      Object? context,
      void Function(String, Object?) send,
      void Function(String, Object?) trySend});
}

/// @nodoc
class _$ZacStateMachineCopyWithImpl<$Res>
    implements $ZacStateMachineCopyWith<$Res> {
  _$ZacStateMachineCopyWithImpl(this._value, this._then);

  final ZacStateMachine _value;
  // ignore: unused_field
  final $Res Function(ZacStateMachine) _then;

  @override
  $Res call({
    Object? states = freezed,
    Object? state = freezed,
    Object? context = freezed,
    Object? send = freezed,
    Object? trySend = freezed,
  }) {
    return _then(_value.copyWith(
      states: states == freezed
          ? _value.states
          : states // ignore: cast_nullable_to_non_nullable
              as Map<String, ZacStateConfig>,
      state: state == freezed
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as String,
      context: context == freezed ? _value.context : context,
      send: send == freezed
          ? _value.send
          : send // ignore: cast_nullable_to_non_nullable
              as void Function(String, Object?),
      trySend: trySend == freezed
          ? _value.trySend
          : trySend // ignore: cast_nullable_to_non_nullable
              as void Function(String, Object?),
    ));
  }
}

/// @nodoc
abstract class _$$_ZacStateMachineCopyWith<$Res>
    implements $ZacStateMachineCopyWith<$Res> {
  factory _$$_ZacStateMachineCopyWith(
          _$_ZacStateMachine value, $Res Function(_$_ZacStateMachine) then) =
      __$$_ZacStateMachineCopyWithImpl<$Res>;
  @override
  $Res call(
      {Map<String, ZacStateConfig> states,
      String state,
      Object? context,
      void Function(String, Object?) send,
      void Function(String, Object?) trySend});
}

/// @nodoc
class __$$_ZacStateMachineCopyWithImpl<$Res>
    extends _$ZacStateMachineCopyWithImpl<$Res>
    implements _$$_ZacStateMachineCopyWith<$Res> {
  __$$_ZacStateMachineCopyWithImpl(
      _$_ZacStateMachine _value, $Res Function(_$_ZacStateMachine) _then)
      : super(_value, (v) => _then(v as _$_ZacStateMachine));

  @override
  _$_ZacStateMachine get _value => super._value as _$_ZacStateMachine;

  @override
  $Res call({
    Object? states = freezed,
    Object? state = freezed,
    Object? context = freezed,
    Object? send = freezed,
    Object? trySend = freezed,
  }) {
    return _then(_$_ZacStateMachine(
      states: states == freezed
          ? _value._states
          : states // ignore: cast_nullable_to_non_nullable
              as Map<String, ZacStateConfig>,
      state: state == freezed
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as String,
      context: context == freezed ? _value.context : context,
      send: send == freezed
          ? _value.send
          : send // ignore: cast_nullable_to_non_nullable
              as void Function(String, Object?),
      trySend: trySend == freezed
          ? _value.trySend
          : trySend // ignore: cast_nullable_to_non_nullable
              as void Function(String, Object?),
    ));
  }
}

/// @nodoc

class _$_ZacStateMachine extends _ZacStateMachine {
  _$_ZacStateMachine(
      {required final Map<String, ZacStateConfig> states,
      required this.state,
      required this.context,
      required this.send,
      required this.trySend})
      : _states = states,
        super._();

  final Map<String, ZacStateConfig> _states;
  @override
  Map<String, ZacStateConfig> get states {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_states);
  }

  @override
  final String state;
  @override
  final Object? context;
  @override
  final void Function(String, Object?) send;
  @override
  final void Function(String, Object?) trySend;

  @override
  String toString() {
    return 'ZacStateMachine(states: $states, state: $state, context: $context, send: $send, trySend: $trySend)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ZacStateMachine &&
            const DeepCollectionEquality().equals(other._states, _states) &&
            const DeepCollectionEquality().equals(other.state, state) &&
            const DeepCollectionEquality().equals(other.context, context) &&
            (identical(other.send, send) || other.send == send) &&
            (identical(other.trySend, trySend) || other.trySend == trySend));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_states),
      const DeepCollectionEquality().hash(state),
      const DeepCollectionEquality().hash(context),
      send,
      trySend);

  @JsonKey(ignore: true)
  @override
  _$$_ZacStateMachineCopyWith<_$_ZacStateMachine> get copyWith =>
      __$$_ZacStateMachineCopyWithImpl<_$_ZacStateMachine>(this, _$identity);
}

abstract class _ZacStateMachine extends ZacStateMachine {
  factory _ZacStateMachine(
          {required final Map<String, ZacStateConfig> states,
          required final String state,
          required final Object? context,
          required final void Function(String, Object?) send,
          required final void Function(String, Object?) trySend}) =
      _$_ZacStateMachine;
  _ZacStateMachine._() : super._();

  @override
  Map<String, ZacStateConfig> get states;
  @override
  String get state;
  @override
  Object? get context;
  @override
  void Function(String, Object?) get send;
  @override
  void Function(String, Object?) get trySend;
  @override
  @JsonKey(ignore: true)
  _$$_ZacStateMachineCopyWith<_$_ZacStateMachine> get copyWith =>
      throw _privateConstructorUsedError;
}

ZacStateMachineProviderBuilder _$ZacStateMachineProviderBuilderFromJson(
    Map<String, dynamic> json) {
  return _ZacStateMachineProviderBuilder.fromJson(json);
}

/// @nodoc
mixin _$ZacStateMachineProviderBuilder {
  FlutterKey? get key => throw _privateConstructorUsedError;
  ZacValue<String> get family => throw _privateConstructorUsedError;
  ZacValue<String> get initialState => throw _privateConstructorUsedError;
  Map<String, ZacStateConfig> get states => throw _privateConstructorUsedError;
  FlutterWidget get child => throw _privateConstructorUsedError;
  ZacObject? get initialContext => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_ZacStateMachineProviderBuilder value) $default,
  ) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_ZacStateMachineProviderBuilder
    extends _ZacStateMachineProviderBuilder {
  _$_ZacStateMachineProviderBuilder(
      {this.key,
      required this.family,
      required this.initialState,
      required final Map<String, ZacStateConfig> states,
      required this.child,
      this.initialContext})
      : _states = states,
        super._();

  factory _$_ZacStateMachineProviderBuilder.fromJson(
          Map<String, dynamic> json) =>
      _$$_ZacStateMachineProviderBuilderFromJson(json);

  @override
  final FlutterKey? key;
  @override
  final ZacValue<String> family;
  @override
  final ZacValue<String> initialState;
  final Map<String, ZacStateConfig> _states;
  @override
  Map<String, ZacStateConfig> get states {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_states);
  }

  @override
  final FlutterWidget child;
  @override
  final ZacObject? initialContext;

  @override
  String toString() {
    return 'ZacStateMachineProviderBuilder(key: $key, family: $family, initialState: $initialState, states: $states, child: $child, initialContext: $initialContext)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ZacStateMachineProviderBuilder &&
            const DeepCollectionEquality().equals(other.key, key) &&
            const DeepCollectionEquality().equals(other.family, family) &&
            const DeepCollectionEquality()
                .equals(other.initialState, initialState) &&
            const DeepCollectionEquality().equals(other._states, _states) &&
            const DeepCollectionEquality().equals(other.child, child) &&
            const DeepCollectionEquality()
                .equals(other.initialContext, initialContext));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(key),
      const DeepCollectionEquality().hash(family),
      const DeepCollectionEquality().hash(initialState),
      const DeepCollectionEquality().hash(_states),
      const DeepCollectionEquality().hash(child),
      const DeepCollectionEquality().hash(initialContext));

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_ZacStateMachineProviderBuilder value) $default,
  ) {
    return $default(this);
  }
}

abstract class _ZacStateMachineProviderBuilder
    extends ZacStateMachineProviderBuilder {
  factory _ZacStateMachineProviderBuilder(
      {final FlutterKey? key,
      required final ZacValue<String> family,
      required final ZacValue<String> initialState,
      required final Map<String, ZacStateConfig> states,
      required final FlutterWidget child,
      final ZacObject? initialContext}) = _$_ZacStateMachineProviderBuilder;
  _ZacStateMachineProviderBuilder._() : super._();

  factory _ZacStateMachineProviderBuilder.fromJson(Map<String, dynamic> json) =
      _$_ZacStateMachineProviderBuilder.fromJson;

  @override
  FlutterKey? get key;
  @override
  ZacValue<String> get family;
  @override
  ZacValue<String> get initialState;
  @override
  Map<String, ZacStateConfig> get states;
  @override
  FlutterWidget get child;
  @override
  ZacObject? get initialContext;
}

ZacStateMachineBuildStateBuilder _$ZacStateMachineBuildStateBuilderFromJson(
    Map<String, dynamic> json) {
  return _ZacStateMachineBuildStateBuilder.fromJson(json);
}

/// @nodoc
mixin _$ZacStateMachineBuildStateBuilder {
  FlutterKey? get key => throw _privateConstructorUsedError;
  ZacValue<String> get family => throw _privateConstructorUsedError;
  List<String> get states => throw _privateConstructorUsedError;
  FlutterWidget? get unmappedStateWidget => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_ZacStateMachineBuildStateBuilder value) $default,
  ) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_ZacStateMachineBuildStateBuilder
    extends _ZacStateMachineBuildStateBuilder {
  _$_ZacStateMachineBuildStateBuilder(
      {this.key,
      required this.family,
      required final List<String> states,
      this.unmappedStateWidget})
      : _states = states,
        super._();

  factory _$_ZacStateMachineBuildStateBuilder.fromJson(
          Map<String, dynamic> json) =>
      _$$_ZacStateMachineBuildStateBuilderFromJson(json);

  @override
  final FlutterKey? key;
  @override
  final ZacValue<String> family;
  final List<String> _states;
  @override
  List<String> get states {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_states);
  }

  @override
  final FlutterWidget? unmappedStateWidget;

  @override
  String toString() {
    return 'ZacStateMachineBuildStateBuilder(key: $key, family: $family, states: $states, unmappedStateWidget: $unmappedStateWidget)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ZacStateMachineBuildStateBuilder &&
            const DeepCollectionEquality().equals(other.key, key) &&
            const DeepCollectionEquality().equals(other.family, family) &&
            const DeepCollectionEquality().equals(other._states, _states) &&
            const DeepCollectionEquality()
                .equals(other.unmappedStateWidget, unmappedStateWidget));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(key),
      const DeepCollectionEquality().hash(family),
      const DeepCollectionEquality().hash(_states),
      const DeepCollectionEquality().hash(unmappedStateWidget));

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_ZacStateMachineBuildStateBuilder value) $default,
  ) {
    return $default(this);
  }
}

abstract class _ZacStateMachineBuildStateBuilder
    extends ZacStateMachineBuildStateBuilder {
  factory _ZacStateMachineBuildStateBuilder(
          {final FlutterKey? key,
          required final ZacValue<String> family,
          required final List<String> states,
          final FlutterWidget? unmappedStateWidget}) =
      _$_ZacStateMachineBuildStateBuilder;
  _ZacStateMachineBuildStateBuilder._() : super._();

  factory _ZacStateMachineBuildStateBuilder.fromJson(
      Map<String, dynamic> json) = _$_ZacStateMachineBuildStateBuilder.fromJson;

  @override
  FlutterKey? get key;
  @override
  ZacValue<String> get family;
  @override
  List<String> get states;
  @override
  FlutterWidget? get unmappedStateWidget;
}

ZacStateMachineActions _$ZacStateMachineActionsFromJson(
    Map<String, dynamic> json) {
  switch (json['converter']) {
    case 'z:1:StateMachine:Action.send':
      return _ZacStateMachineActionsSend.fromJson(json);
    case 'z:1:StateMachine:Action.trySend':
      return _ZacStateMachineActionsTrySend.fromJson(json);

    default:
      throw CheckedFromJsonException(
          json,
          'converter',
          'ZacStateMachineActions',
          'Invalid union type "${json['converter']}"!');
  }
}

/// @nodoc
mixin _$ZacStateMachineActions {
  Object get family => throw _privateConstructorUsedError;
  ZacValue<String> get event => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ZacStateMachineActionsSend value) send,
    required TResult Function(_ZacStateMachineActionsTrySend value) trySend,
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_ZacStateMachineActionsSend extends _ZacStateMachineActionsSend {
  _$_ZacStateMachineActionsSend(
      {required this.family, required this.event, final String? $type})
      : $type = $type ?? 'z:1:StateMachine:Action.send',
        super._();

  factory _$_ZacStateMachineActionsSend.fromJson(Map<String, dynamic> json) =>
      _$$_ZacStateMachineActionsSendFromJson(json);

  @override
  final Object family;
  @override
  final ZacValue<String> event;

  @JsonKey(name: 'converter')
  final String $type;

  @override
  String toString() {
    return 'ZacStateMachineActions.send(family: $family, event: $event)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ZacStateMachineActionsSend &&
            const DeepCollectionEquality().equals(other.family, family) &&
            const DeepCollectionEquality().equals(other.event, event));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(family),
      const DeepCollectionEquality().hash(event));

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ZacStateMachineActionsSend value) send,
    required TResult Function(_ZacStateMachineActionsTrySend value) trySend,
  }) {
    return send(this);
  }
}

abstract class _ZacStateMachineActionsSend extends ZacStateMachineActions {
  factory _ZacStateMachineActionsSend(
      {required final Object family,
      required final ZacValue<String> event}) = _$_ZacStateMachineActionsSend;
  _ZacStateMachineActionsSend._() : super._();

  factory _ZacStateMachineActionsSend.fromJson(Map<String, dynamic> json) =
      _$_ZacStateMachineActionsSend.fromJson;

  @override
  Object get family;
  @override
  ZacValue<String> get event;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_ZacStateMachineActionsTrySend extends _ZacStateMachineActionsTrySend {
  _$_ZacStateMachineActionsTrySend(
      {required this.family, required this.event, final String? $type})
      : $type = $type ?? 'z:1:StateMachine:Action.trySend',
        super._();

  factory _$_ZacStateMachineActionsTrySend.fromJson(
          Map<String, dynamic> json) =>
      _$$_ZacStateMachineActionsTrySendFromJson(json);

  @override
  final Object family;
  @override
  final ZacValue<String> event;

  @JsonKey(name: 'converter')
  final String $type;

  @override
  String toString() {
    return 'ZacStateMachineActions.trySend(family: $family, event: $event)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ZacStateMachineActionsTrySend &&
            const DeepCollectionEquality().equals(other.family, family) &&
            const DeepCollectionEquality().equals(other.event, event));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(family),
      const DeepCollectionEquality().hash(event));

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ZacStateMachineActionsSend value) send,
    required TResult Function(_ZacStateMachineActionsTrySend value) trySend,
  }) {
    return trySend(this);
  }
}

abstract class _ZacStateMachineActionsTrySend extends ZacStateMachineActions {
  factory _ZacStateMachineActionsTrySend(
          {required final Object family,
          required final ZacValue<String> event}) =
      _$_ZacStateMachineActionsTrySend;
  _ZacStateMachineActionsTrySend._() : super._();

  factory _ZacStateMachineActionsTrySend.fromJson(Map<String, dynamic> json) =
      _$_ZacStateMachineActionsTrySend.fromJson;

  @override
  Object get family;
  @override
  ZacValue<String> get event;
}
