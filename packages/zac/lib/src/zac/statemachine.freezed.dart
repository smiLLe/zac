// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'statemachine.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SendPayload {
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_SendPayload value) $default, {
    required TResult Function(_SendPayloadNone value) none,
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc

class _$_SendPayload implements _SendPayload {
  _$_SendPayload(this.data);

  @override
  final Object? data;

  @override
  String toString() {
    return 'SendPayload(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SendPayload &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(data));

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_SendPayload value) $default, {
    required TResult Function(_SendPayloadNone value) none,
  }) {
    return $default(this);
  }
}

abstract class _SendPayload implements SendPayload {
  factory _SendPayload(final Object? data) = _$_SendPayload;

  Object? get data;
}

/// @nodoc

class _$_SendPayloadNone implements _SendPayloadNone {
  const _$_SendPayloadNone();

  @override
  String toString() {
    return 'SendPayload.none()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_SendPayloadNone);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_SendPayload value) $default, {
    required TResult Function(_SendPayloadNone value) none,
  }) {
    return none(this);
  }
}

abstract class _SendPayloadNone implements SendPayload {
  const factory _SendPayloadNone() = _$_SendPayloadNone;
}

StateNode _$StateNodeFromJson(Map<String, dynamic> json) {
  return _StateNode.fromJson(json);
}

/// @nodoc
mixin _$StateNode {
  String get state => throw _privateConstructorUsedError;
  List<Transition> get on => throw _privateConstructorUsedError;
  ZacActions? get actions => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_StateNode value) $default,
  ) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_StateNode implements _StateNode {
  _$_StateNode(
      {required this.state,
      final List<Transition> on = const <Transition>[],
      this.actions})
      : _on = on;

  factory _$_StateNode.fromJson(Map<String, dynamic> json) =>
      _$$_StateNodeFromJson(json);

  @override
  final String state;
  final List<Transition> _on;
  @override
  @JsonKey()
  List<Transition> get on {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_on);
  }

  @override
  final ZacActions? actions;

  @override
  String toString() {
    return 'StateNode(state: $state, on: $on, actions: $actions)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_StateNode &&
            const DeepCollectionEquality().equals(other.state, state) &&
            const DeepCollectionEquality().equals(other._on, _on) &&
            const DeepCollectionEquality().equals(other.actions, actions));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(state),
      const DeepCollectionEquality().hash(_on),
      const DeepCollectionEquality().hash(actions));

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_StateNode value) $default,
  ) {
    return $default(this);
  }
}

abstract class _StateNode implements StateNode {
  factory _StateNode(
      {required final String state,
      final List<Transition> on,
      final ZacActions? actions}) = _$_StateNode;

  factory _StateNode.fromJson(Map<String, dynamic> json) =
      _$_StateNode.fromJson;

  @override
  String get state;
  @override
  List<Transition> get on;
  @override
  ZacActions? get actions;
}

Transition _$TransitionFromJson(Map<String, dynamic> json) {
  return _Transition.fromJson(json);
}

/// @nodoc
mixin _$Transition {
  String get event => throw _privateConstructorUsedError;
  String get target => throw _privateConstructorUsedError;
  ZacActions? get actions => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_Transition value) $default,
  ) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_Transition implements _Transition {
  _$_Transition({required this.event, required this.target, this.actions});

  factory _$_Transition.fromJson(Map<String, dynamic> json) =>
      _$$_TransitionFromJson(json);

  @override
  final String event;
  @override
  final String target;
  @override
  final ZacActions? actions;

  @override
  String toString() {
    return 'Transition(event: $event, target: $target, actions: $actions)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Transition &&
            const DeepCollectionEquality().equals(other.event, event) &&
            const DeepCollectionEquality().equals(other.target, target) &&
            const DeepCollectionEquality().equals(other.actions, actions));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(event),
      const DeepCollectionEquality().hash(target),
      const DeepCollectionEquality().hash(actions));

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_Transition value) $default,
  ) {
    return $default(this);
  }
}

abstract class _Transition implements Transition {
  factory _Transition(
      {required final String event,
      required final String target,
      final ZacActions? actions}) = _$_Transition;

  factory _Transition.fromJson(Map<String, dynamic> json) =
      _$_Transition.fromJson;

  @override
  String get event;
  @override
  String get target;
  @override
  ZacActions? get actions;
}

StateMachineActions _$StateMachineActionsFromJson(Map<String, dynamic> json) {
  switch (json['_converter']) {
    case 'z:1:StateMachine:Action.send':
      return _StateMachineActionsSend.fromJson(json);
    case 'z:1:StateMachine:Action.updateContext':
      return _StateMachineActionsUpdateContext.fromJson(json);
    case 'z:1:StateMachine:Action.setState':
      return _StateMachineActionsSetState.fromJson(json);

    default:
      throw CheckedFromJsonException(json, '_converter', 'StateMachineActions',
          'Invalid union type "${json['_converter']}"!');
  }
}

/// @nodoc
mixin _$StateMachineActions {
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_StateMachineActionsSend value) send,
    required TResult Function(_StateMachineActionsUpdateContext value)
        updateContext,
    required TResult Function(_StateMachineActionsSetState value) setState,
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_StateMachineActionsSend extends _StateMachineActionsSend {
  _$_StateMachineActionsSend(
      {required this.family,
      required this.event,
      this.payload,
      final String? $type})
      : $type = $type ?? 'z:1:StateMachine:Action.send',
        super._();

  factory _$_StateMachineActionsSend.fromJson(Map<String, dynamic> json) =>
      _$$_StateMachineActionsSendFromJson(json);

  @override
  final Object family;
  @override
  final ZacString event;

  /// Optional payload which will be available as [kBagStateMachineSendPayload]
  /// and [kBagPayload].
  /// A payload send by an action will still be available
  /// through [kBagActionPayload].
  @override
  final ZacObject? payload;

  @JsonKey(name: '_converter')
  final String $type;

  @override
  String toString() {
    return 'StateMachineActions.send(family: $family, event: $event, payload: $payload)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_StateMachineActionsSend &&
            const DeepCollectionEquality().equals(other.family, family) &&
            const DeepCollectionEquality().equals(other.event, event) &&
            const DeepCollectionEquality().equals(other.payload, payload));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(family),
      const DeepCollectionEquality().hash(event),
      const DeepCollectionEquality().hash(payload));

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_StateMachineActionsSend value) send,
    required TResult Function(_StateMachineActionsUpdateContext value)
        updateContext,
    required TResult Function(_StateMachineActionsSetState value) setState,
  }) {
    return send(this);
  }
}

abstract class _StateMachineActionsSend extends StateMachineActions {
  factory _StateMachineActionsSend(
      {required final Object family,
      required final ZacString event,
      final ZacObject? payload}) = _$_StateMachineActionsSend;
  _StateMachineActionsSend._() : super._();

  factory _StateMachineActionsSend.fromJson(Map<String, dynamic> json) =
      _$_StateMachineActionsSend.fromJson;

  Object get family;
  ZacString get event;

  /// Optional payload which will be available as [kBagStateMachineSendPayload]
  /// and [kBagPayload].
  /// A payload send by an action will still be available
  /// through [kBagActionPayload].
  ZacObject? get payload;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_StateMachineActionsUpdateContext
    extends _StateMachineActionsUpdateContext {
  _$_StateMachineActionsUpdateContext(
      {required this.transformer, final String? $type})
      : $type = $type ?? 'z:1:StateMachine:Action.updateContext',
        super._();

  factory _$_StateMachineActionsUpdateContext.fromJson(
          Map<String, dynamic> json) =>
      _$$_StateMachineActionsUpdateContextFromJson(json);

  @override
  final ZacTransformers transformer;

  @JsonKey(name: '_converter')
  final String $type;

  @override
  String toString() {
    return 'StateMachineActions.updateContext(transformer: $transformer)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_StateMachineActionsUpdateContext &&
            const DeepCollectionEquality()
                .equals(other.transformer, transformer));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(transformer));

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_StateMachineActionsSend value) send,
    required TResult Function(_StateMachineActionsUpdateContext value)
        updateContext,
    required TResult Function(_StateMachineActionsSetState value) setState,
  }) {
    return updateContext(this);
  }
}

abstract class _StateMachineActionsUpdateContext extends StateMachineActions {
  factory _StateMachineActionsUpdateContext(
          {required final ZacTransformers transformer}) =
      _$_StateMachineActionsUpdateContext;
  _StateMachineActionsUpdateContext._() : super._();

  factory _StateMachineActionsUpdateContext.fromJson(
      Map<String, dynamic> json) = _$_StateMachineActionsUpdateContext.fromJson;

  ZacTransformers get transformer;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_StateMachineActionsSetState extends _StateMachineActionsSetState {
  _$_StateMachineActionsSetState(this.state, {final String? $type})
      : $type = $type ?? 'z:1:StateMachine:Action.setState',
        super._();

  factory _$_StateMachineActionsSetState.fromJson(Map<String, dynamic> json) =>
      _$$_StateMachineActionsSetStateFromJson(json);

  @override
  final String state;

  @JsonKey(name: '_converter')
  final String $type;

  @override
  String toString() {
    return 'StateMachineActions.setState(state: $state)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_StateMachineActionsSetState &&
            const DeepCollectionEquality().equals(other.state, state));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(state));

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_StateMachineActionsSend value) send,
    required TResult Function(_StateMachineActionsUpdateContext value)
        updateContext,
    required TResult Function(_StateMachineActionsSetState value) setState,
  }) {
    return setState(this);
  }
}

abstract class _StateMachineActionsSetState extends StateMachineActions {
  factory _StateMachineActionsSetState(final String state) =
      _$_StateMachineActionsSetState;
  _StateMachineActionsSetState._() : super._();

  factory _StateMachineActionsSetState.fromJson(Map<String, dynamic> json) =
      _$_StateMachineActionsSetState.fromJson;

  String get state;
}

StateMachineProviderBuilder _$StateMachineProviderBuilderFromJson(
    Map<String, dynamic> json) {
  return _StateMachineProviderBuilder.fromJson(json);
}

/// @nodoc
mixin _$StateMachineProviderBuilder {
  FlutterKey? get key => throw _privateConstructorUsedError;
  ZacString get initialState => throw _privateConstructorUsedError;
  List<StateNode> get states => throw _privateConstructorUsedError;
  ZacString get family => throw _privateConstructorUsedError;
  FlutterWidget get child => throw _privateConstructorUsedError;
  ZacObject? get initialContext => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_StateMachineProviderBuilder value) $default,
  ) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_StateMachineProviderBuilder extends _StateMachineProviderBuilder {
  _$_StateMachineProviderBuilder(
      {this.key,
      required this.initialState,
      required final List<StateNode> states,
      required this.family,
      required this.child,
      this.initialContext})
      : _states = states,
        super._();

  factory _$_StateMachineProviderBuilder.fromJson(Map<String, dynamic> json) =>
      _$$_StateMachineProviderBuilderFromJson(json);

  @override
  final FlutterKey? key;
  @override
  final ZacString initialState;
  final List<StateNode> _states;
  @override
  List<StateNode> get states {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_states);
  }

  @override
  final ZacString family;
  @override
  final FlutterWidget child;
  @override
  final ZacObject? initialContext;

  @override
  String toString() {
    return 'StateMachineProviderBuilder(key: $key, initialState: $initialState, states: $states, family: $family, child: $child, initialContext: $initialContext)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_StateMachineProviderBuilder &&
            const DeepCollectionEquality().equals(other.key, key) &&
            const DeepCollectionEquality()
                .equals(other.initialState, initialState) &&
            const DeepCollectionEquality().equals(other._states, _states) &&
            const DeepCollectionEquality().equals(other.family, family) &&
            const DeepCollectionEquality().equals(other.child, child) &&
            const DeepCollectionEquality()
                .equals(other.initialContext, initialContext));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(key),
      const DeepCollectionEquality().hash(initialState),
      const DeepCollectionEquality().hash(_states),
      const DeepCollectionEquality().hash(family),
      const DeepCollectionEquality().hash(child),
      const DeepCollectionEquality().hash(initialContext));

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_StateMachineProviderBuilder value) $default,
  ) {
    return $default(this);
  }
}

abstract class _StateMachineProviderBuilder
    extends StateMachineProviderBuilder {
  factory _StateMachineProviderBuilder(
      {final FlutterKey? key,
      required final ZacString initialState,
      required final List<StateNode> states,
      required final ZacString family,
      required final FlutterWidget child,
      final ZacObject? initialContext}) = _$_StateMachineProviderBuilder;
  _StateMachineProviderBuilder._() : super._();

  factory _StateMachineProviderBuilder.fromJson(Map<String, dynamic> json) =
      _$_StateMachineProviderBuilder.fromJson;

  @override
  FlutterKey? get key;
  @override
  ZacString get initialState;
  @override
  List<StateNode> get states;
  @override
  ZacString get family;
  @override
  FlutterWidget get child;
  @override
  ZacObject? get initialContext;
}

/// @nodoc
mixin _$CurrentState {
  String get state => throw _privateConstructorUsedError;
  Object? get context => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $CurrentStateCopyWith<CurrentState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CurrentStateCopyWith<$Res> {
  factory $CurrentStateCopyWith(
          CurrentState value, $Res Function(CurrentState) then) =
      _$CurrentStateCopyWithImpl<$Res>;
  $Res call({String state, Object? context});
}

/// @nodoc
class _$CurrentStateCopyWithImpl<$Res> implements $CurrentStateCopyWith<$Res> {
  _$CurrentStateCopyWithImpl(this._value, this._then);

  final CurrentState _value;
  // ignore: unused_field
  final $Res Function(CurrentState) _then;

  @override
  $Res call({
    Object? state = freezed,
    Object? context = freezed,
  }) {
    return _then(_value.copyWith(
      state: state == freezed
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as String,
      context: context == freezed ? _value.context : context,
    ));
  }
}

/// @nodoc
abstract class _$$_CurrentStateCopyWith<$Res>
    implements $CurrentStateCopyWith<$Res> {
  factory _$$_CurrentStateCopyWith(
          _$_CurrentState value, $Res Function(_$_CurrentState) then) =
      __$$_CurrentStateCopyWithImpl<$Res>;
  @override
  $Res call({String state, Object? context});
}

/// @nodoc
class __$$_CurrentStateCopyWithImpl<$Res>
    extends _$CurrentStateCopyWithImpl<$Res>
    implements _$$_CurrentStateCopyWith<$Res> {
  __$$_CurrentStateCopyWithImpl(
      _$_CurrentState _value, $Res Function(_$_CurrentState) _then)
      : super(_value, (v) => _then(v as _$_CurrentState));

  @override
  _$_CurrentState get _value => super._value as _$_CurrentState;

  @override
  $Res call({
    Object? state = freezed,
    Object? context = freezed,
  }) {
    return _then(_$_CurrentState(
      state: state == freezed
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as String,
      context: context == freezed ? _value.context : context,
    ));
  }
}

/// @nodoc

class _$_CurrentState implements _CurrentState {
  _$_CurrentState({required this.state, required this.context});

  @override
  final String state;
  @override
  final Object? context;

  @override
  String toString() {
    return 'CurrentState(state: $state, context: $context)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_CurrentState &&
            const DeepCollectionEquality().equals(other.state, state) &&
            const DeepCollectionEquality().equals(other.context, context));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(state),
      const DeepCollectionEquality().hash(context));

  @JsonKey(ignore: true)
  @override
  _$$_CurrentStateCopyWith<_$_CurrentState> get copyWith =>
      __$$_CurrentStateCopyWithImpl<_$_CurrentState>(this, _$identity);
}

abstract class _CurrentState implements CurrentState {
  factory _CurrentState(
      {required final String state,
      required final Object? context}) = _$_CurrentState;

  @override
  String get state;
  @override
  Object? get context;
  @override
  @JsonKey(ignore: true)
  _$$_CurrentStateCopyWith<_$_CurrentState> get copyWith =>
      throw _privateConstructorUsedError;
}
