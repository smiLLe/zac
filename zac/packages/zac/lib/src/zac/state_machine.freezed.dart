// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'state_machine.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ZacStateMachineTransition _$ZacStateMachineTransitionFromJson(
    Map<String, dynamic> json) {
  return _ZacStateMachineTransition.fromJson(json);
}

/// @nodoc
mixin _$ZacStateMachineTransition {
  String get event => throw _privateConstructorUsedError;
  String get target => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_ZacStateMachineTransition value) $default,
  ) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_ZacStateMachineTransition implements _ZacStateMachineTransition {
  _$_ZacStateMachineTransition({required this.event, required this.target});

  factory _$_ZacStateMachineTransition.fromJson(Map<String, dynamic> json) =>
      _$$_ZacStateMachineTransitionFromJson(json);

  @override
  final String event;
  @override
  final String target;

  @override
  String toString() {
    return 'ZacStateMachineTransition(event: $event, target: $target)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ZacStateMachineTransition &&
            (identical(other.event, event) || other.event == event) &&
            (identical(other.target, target) || other.target == target));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, event, target);

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_ZacStateMachineTransition value) $default,
  ) {
    return $default(this);
  }
}

abstract class _ZacStateMachineTransition implements ZacStateMachineTransition {
  factory _ZacStateMachineTransition(
      {required final String event,
      required final String target}) = _$_ZacStateMachineTransition;

  factory _ZacStateMachineTransition.fromJson(Map<String, dynamic> json) =
      _$_ZacStateMachineTransition.fromJson;

  @override
  String get event;
  @override
  String get target;
}

ZacStateMachineStateConfig _$ZacStateMachineStateConfigFromJson(
    Map<String, dynamic> json) {
  return _ZacStateMachineStateConfig.fromJson(json);
}

/// @nodoc
mixin _$ZacStateMachineStateConfig {
  List<ZacStateMachineTransition> get on => throw _privateConstructorUsedError;
  ZacBuilder<Widget>? get widget => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_ZacStateMachineStateConfig value) $default,
  ) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_ZacStateMachineStateConfig extends _ZacStateMachineStateConfig {
  _$_ZacStateMachineStateConfig(
      {final List<ZacStateMachineTransition> on =
          const <ZacStateMachineTransition>[],
      this.widget})
      : _on = on,
        super._();

  factory _$_ZacStateMachineStateConfig.fromJson(Map<String, dynamic> json) =>
      _$$_ZacStateMachineStateConfigFromJson(json);

  final List<ZacStateMachineTransition> _on;
  @override
  @JsonKey()
  List<ZacStateMachineTransition> get on {
    if (_on is EqualUnmodifiableListView) return _on;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_on);
  }

  @override
  final ZacBuilder<Widget>? widget;

  @override
  String toString() {
    return 'ZacStateMachineStateConfig(on: $on, widget: $widget)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ZacStateMachineStateConfig &&
            const DeepCollectionEquality().equals(other._on, _on) &&
            (identical(other.widget, widget) || other.widget == widget));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_on), widget);

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_ZacStateMachineStateConfig value) $default,
  ) {
    return $default(this);
  }
}

abstract class _ZacStateMachineStateConfig extends ZacStateMachineStateConfig {
  factory _ZacStateMachineStateConfig(
      {final List<ZacStateMachineTransition> on,
      final ZacBuilder<Widget>? widget}) = _$_ZacStateMachineStateConfig;
  _ZacStateMachineStateConfig._() : super._();

  factory _ZacStateMachineStateConfig.fromJson(Map<String, dynamic> json) =
      _$_ZacStateMachineStateConfig.fromJson;

  @override
  List<ZacStateMachineTransition> get on;
  @override
  ZacBuilder<Widget>? get widget;
}

ZacStateMachineConfig _$ZacStateMachineConfigFromJson(
    Map<String, dynamic> json) {
  return _ZacStateMachineConfig.fromJson(json);
}

/// @nodoc
mixin _$ZacStateMachineConfig {
  Map<String, ZacStateMachineStateConfig> get states =>
      throw _privateConstructorUsedError;
  String get initialState => throw _privateConstructorUsedError;
  ZacBuilder<Widget>? get initialWidget => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_ZacStateMachineConfig value) $default,
  ) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_ZacStateMachineConfig extends _ZacStateMachineConfig {
  _$_ZacStateMachineConfig(
      {required final Map<String, ZacStateMachineStateConfig> states,
      required this.initialState,
      this.initialWidget})
      : _states = states,
        super._();

  factory _$_ZacStateMachineConfig.fromJson(Map<String, dynamic> json) =>
      _$$_ZacStateMachineConfigFromJson(json);

  final Map<String, ZacStateMachineStateConfig> _states;
  @override
  Map<String, ZacStateMachineStateConfig> get states {
    if (_states is EqualUnmodifiableMapView) return _states;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_states);
  }

  @override
  final String initialState;
  @override
  final ZacBuilder<Widget>? initialWidget;

  @override
  String toString() {
    return 'ZacStateMachineConfig(states: $states, initialState: $initialState, initialWidget: $initialWidget)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ZacStateMachineConfig &&
            const DeepCollectionEquality().equals(other._states, _states) &&
            (identical(other.initialState, initialState) ||
                other.initialState == initialState) &&
            (identical(other.initialWidget, initialWidget) ||
                other.initialWidget == initialWidget));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_states),
      initialState,
      initialWidget);

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_ZacStateMachineConfig value) $default,
  ) {
    return $default(this);
  }
}

abstract class _ZacStateMachineConfig extends ZacStateMachineConfig {
  factory _ZacStateMachineConfig(
      {required final Map<String, ZacStateMachineStateConfig> states,
      required final String initialState,
      final ZacBuilder<Widget>? initialWidget}) = _$_ZacStateMachineConfig;
  _ZacStateMachineConfig._() : super._();

  factory _ZacStateMachineConfig.fromJson(Map<String, dynamic> json) =
      _$_ZacStateMachineConfig.fromJson;

  @override
  Map<String, ZacStateMachineStateConfig> get states;
  @override
  String get initialState;
  @override
  ZacBuilder<Widget>? get initialWidget;
}

/// @nodoc
mixin _$ZacStateMachine {
  String get family => throw _privateConstructorUsedError;
  Idle get initial => throw _privateConstructorUsedError;
  Running get running => throw _privateConstructorUsedError;
  void Function(String, ZacBuilder<Widget>?) get send =>
      throw _privateConstructorUsedError;
  void Function(String, ZacBuilder<Widget>?) get trySend =>
      throw _privateConstructorUsedError;
  bool Function() get isActive => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ZacStateMachineCopyWith<ZacStateMachine> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ZacStateMachineCopyWith<$Res> {
  factory $ZacStateMachineCopyWith(
          ZacStateMachine value, $Res Function(ZacStateMachine) then) =
      _$ZacStateMachineCopyWithImpl<$Res, ZacStateMachine>;
  @useResult
  $Res call(
      {String family,
      Idle initial,
      Running running,
      void Function(String, ZacBuilder<Widget>?) send,
      void Function(String, ZacBuilder<Widget>?) trySend,
      bool Function() isActive});

  $IdleCopyWith<$Res> get initial;
  $RunningCopyWith<$Res> get running;
}

/// @nodoc
class _$ZacStateMachineCopyWithImpl<$Res, $Val extends ZacStateMachine>
    implements $ZacStateMachineCopyWith<$Res> {
  _$ZacStateMachineCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? family = null,
    Object? initial = null,
    Object? running = null,
    Object? send = null,
    Object? trySend = null,
    Object? isActive = null,
  }) {
    return _then(_value.copyWith(
      family: null == family
          ? _value.family
          : family // ignore: cast_nullable_to_non_nullable
              as String,
      initial: null == initial
          ? _value.initial
          : initial // ignore: cast_nullable_to_non_nullable
              as Idle,
      running: null == running
          ? _value.running
          : running // ignore: cast_nullable_to_non_nullable
              as Running,
      send: null == send
          ? _value.send
          : send // ignore: cast_nullable_to_non_nullable
              as void Function(String, ZacBuilder<Widget>?),
      trySend: null == trySend
          ? _value.trySend
          : trySend // ignore: cast_nullable_to_non_nullable
              as void Function(String, ZacBuilder<Widget>?),
      isActive: null == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool Function(),
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $IdleCopyWith<$Res> get initial {
    return $IdleCopyWith<$Res>(_value.initial, (value) {
      return _then(_value.copyWith(initial: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $RunningCopyWith<$Res> get running {
    return $RunningCopyWith<$Res>(_value.running, (value) {
      return _then(_value.copyWith(running: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_ZacStateMachineCopyWith<$Res>
    implements $ZacStateMachineCopyWith<$Res> {
  factory _$$_ZacStateMachineCopyWith(
          _$_ZacStateMachine value, $Res Function(_$_ZacStateMachine) then) =
      __$$_ZacStateMachineCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String family,
      Idle initial,
      Running running,
      void Function(String, ZacBuilder<Widget>?) send,
      void Function(String, ZacBuilder<Widget>?) trySend,
      bool Function() isActive});

  @override
  $IdleCopyWith<$Res> get initial;
  @override
  $RunningCopyWith<$Res> get running;
}

/// @nodoc
class __$$_ZacStateMachineCopyWithImpl<$Res>
    extends _$ZacStateMachineCopyWithImpl<$Res, _$_ZacStateMachine>
    implements _$$_ZacStateMachineCopyWith<$Res> {
  __$$_ZacStateMachineCopyWithImpl(
      _$_ZacStateMachine _value, $Res Function(_$_ZacStateMachine) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? family = null,
    Object? initial = null,
    Object? running = null,
    Object? send = null,
    Object? trySend = null,
    Object? isActive = null,
  }) {
    return _then(_$_ZacStateMachine(
      family: null == family
          ? _value.family
          : family // ignore: cast_nullable_to_non_nullable
              as String,
      initial: null == initial
          ? _value.initial
          : initial // ignore: cast_nullable_to_non_nullable
              as Idle,
      running: null == running
          ? _value.running
          : running // ignore: cast_nullable_to_non_nullable
              as Running,
      send: null == send
          ? _value.send
          : send // ignore: cast_nullable_to_non_nullable
              as void Function(String, ZacBuilder<Widget>?),
      trySend: null == trySend
          ? _value.trySend
          : trySend // ignore: cast_nullable_to_non_nullable
              as void Function(String, ZacBuilder<Widget>?),
      isActive: null == isActive
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool Function(),
    ));
  }
}

/// @nodoc

class _$_ZacStateMachine extends _ZacStateMachine {
  _$_ZacStateMachine(
      {required this.family,
      required this.initial,
      required this.running,
      required this.send,
      required this.trySend,
      required this.isActive})
      : super._();

  @override
  final String family;
  @override
  final Idle initial;
  @override
  final Running running;
  @override
  final void Function(String, ZacBuilder<Widget>?) send;
  @override
  final void Function(String, ZacBuilder<Widget>?) trySend;
  @override
  final bool Function() isActive;

  @override
  String toString() {
    return 'ZacStateMachine(family: $family, initial: $initial, running: $running, send: $send, trySend: $trySend, isActive: $isActive)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ZacStateMachine &&
            (identical(other.family, family) || other.family == family) &&
            (identical(other.initial, initial) || other.initial == initial) &&
            (identical(other.running, running) || other.running == running) &&
            (identical(other.send, send) || other.send == send) &&
            (identical(other.trySend, trySend) || other.trySend == trySend) &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, family, initial, running, send, trySend, isActive);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ZacStateMachineCopyWith<_$_ZacStateMachine> get copyWith =>
      __$$_ZacStateMachineCopyWithImpl<_$_ZacStateMachine>(this, _$identity);
}

abstract class _ZacStateMachine extends ZacStateMachine {
  factory _ZacStateMachine(
      {required final String family,
      required final Idle initial,
      required final Running running,
      required final void Function(String, ZacBuilder<Widget>?) send,
      required final void Function(String, ZacBuilder<Widget>?) trySend,
      required final bool Function() isActive}) = _$_ZacStateMachine;
  _ZacStateMachine._() : super._();

  @override
  String get family;
  @override
  Idle get initial;
  @override
  Running get running;
  @override
  void Function(String, ZacBuilder<Widget>?) get send;
  @override
  void Function(String, ZacBuilder<Widget>?) get trySend;
  @override
  bool Function() get isActive;
  @override
  @JsonKey(ignore: true)
  _$$_ZacStateMachineCopyWith<_$_ZacStateMachine> get copyWith =>
      throw _privateConstructorUsedError;
}

ZacStateMachineProvider _$ZacStateMachineProviderFromJson(
    Map<String, dynamic> json) {
  return _ZacStateMachineProvider.fromJson(json);
}

/// @nodoc
mixin _$ZacStateMachineProvider {
  Map<String, ZacStateMachineConfig> get machines =>
      throw _privateConstructorUsedError;
  ZacBuilder<Widget> get child => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_ZacStateMachineProvider value) $default,
  ) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_ZacStateMachineProvider extends _ZacStateMachineProvider {
  _$_ZacStateMachineProvider(
      {required final Map<String, ZacStateMachineConfig> machines,
      required this.child})
      : _machines = machines,
        super._();

  factory _$_ZacStateMachineProvider.fromJson(Map<String, dynamic> json) =>
      _$$_ZacStateMachineProviderFromJson(json);

  final Map<String, ZacStateMachineConfig> _machines;
  @override
  Map<String, ZacStateMachineConfig> get machines {
    if (_machines is EqualUnmodifiableMapView) return _machines;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_machines);
  }

  @override
  final ZacBuilder<Widget> child;

  @override
  String toString() {
    return 'ZacStateMachineProvider(machines: $machines, child: $child)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ZacStateMachineProvider &&
            const DeepCollectionEquality().equals(other._machines, _machines) &&
            (identical(other.child, child) || other.child == child));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_machines), child);

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_ZacStateMachineProvider value) $default,
  ) {
    return $default(this);
  }
}

abstract class _ZacStateMachineProvider extends ZacStateMachineProvider {
  factory _ZacStateMachineProvider(
      {required final Map<String, ZacStateMachineConfig> machines,
      required final ZacBuilder<Widget> child}) = _$_ZacStateMachineProvider;
  _ZacStateMachineProvider._() : super._();

  factory _ZacStateMachineProvider.fromJson(Map<String, dynamic> json) =
      _$_ZacStateMachineProvider.fromJson;

  @override
  Map<String, ZacStateMachineConfig> get machines;
  @override
  ZacBuilder<Widget> get child;
}

ZacStateMachineBuild _$ZacStateMachineBuildFromJson(Map<String, dynamic> json) {
  return _ZacStateMachineBuild.fromJson(json);
}

/// @nodoc
mixin _$ZacStateMachineBuild {
  String get family => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_ZacStateMachineBuild value) $default,
  ) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_ZacStateMachineBuild extends _ZacStateMachineBuild {
  _$_ZacStateMachineBuild({required this.family}) : super._();

  factory _$_ZacStateMachineBuild.fromJson(Map<String, dynamic> json) =>
      _$$_ZacStateMachineBuildFromJson(json);

  @override
  final String family;

  @override
  String toString() {
    return 'ZacStateMachineBuild(family: $family)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ZacStateMachineBuild &&
            (identical(other.family, family) || other.family == family));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, family);

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_ZacStateMachineBuild value) $default,
  ) {
    return $default(this);
  }
}

abstract class _ZacStateMachineBuild extends ZacStateMachineBuild {
  factory _ZacStateMachineBuild({required final String family}) =
      _$_ZacStateMachineBuild;
  _ZacStateMachineBuild._() : super._();

  factory _ZacStateMachineBuild.fromJson(Map<String, dynamic> json) =
      _$_ZacStateMachineBuild.fromJson;

  @override
  String get family;
}

ZacStateMachineActions _$ZacStateMachineActionsFromJson(
    Map<String, dynamic> json) {
  switch (json['builder']) {
    case 'z:1:StateMachine:Action.send':
      return _ZacStateMachineActionsSend.fromJson(json);
    case 'z:1:StateMachine:Action.trySend':
      return _ZacStateMachineActionsTrySend.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'builder', 'ZacStateMachineActions',
          'Invalid union type "${json['builder']}"!');
  }
}

/// @nodoc
mixin _$ZacStateMachineActions {
  String get family => throw _privateConstructorUsedError;
  String get event => throw _privateConstructorUsedError;

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
  final String family;
  @override
  final String event;

  @JsonKey(name: 'builder')
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
            (identical(other.family, family) || other.family == family) &&
            (identical(other.event, event) || other.event == event));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, family, event);

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
      {required final String family,
      required final String event}) = _$_ZacStateMachineActionsSend;
  _ZacStateMachineActionsSend._() : super._();

  factory _ZacStateMachineActionsSend.fromJson(Map<String, dynamic> json) =
      _$_ZacStateMachineActionsSend.fromJson;

  @override
  String get family;
  @override
  String get event;
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
  final String family;
  @override
  final String event;

  @JsonKey(name: 'builder')
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
            (identical(other.family, family) || other.family == family) &&
            (identical(other.event, event) || other.event == event));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, family, event);

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
      {required final String family,
      required final String event}) = _$_ZacStateMachineActionsTrySend;
  _ZacStateMachineActionsTrySend._() : super._();

  factory _ZacStateMachineActionsTrySend.fromJson(Map<String, dynamic> json) =
      _$_ZacStateMachineActionsTrySend.fromJson;

  @override
  String get family;
  @override
  String get event;
}
