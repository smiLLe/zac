// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'action.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ZacActionHelper {
  bool Function() get isActive => throw _privateConstructorUsedError;
  void Function(void Function()) get onBecomeInactive =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ZacActionHelperCopyWith<ZacActionHelper> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ZacActionHelperCopyWith<$Res> {
  factory $ZacActionHelperCopyWith(
          ZacActionHelper value, $Res Function(ZacActionHelper) then) =
      _$ZacActionHelperCopyWithImpl<$Res>;
  $Res call(
      {bool Function() isActive,
      void Function(void Function()) onBecomeInactive});
}

/// @nodoc
class _$ZacActionHelperCopyWithImpl<$Res>
    implements $ZacActionHelperCopyWith<$Res> {
  _$ZacActionHelperCopyWithImpl(this._value, this._then);

  final ZacActionHelper _value;
  // ignore: unused_field
  final $Res Function(ZacActionHelper) _then;

  @override
  $Res call({
    Object? isActive = freezed,
    Object? onBecomeInactive = freezed,
  }) {
    return _then(_value.copyWith(
      isActive: isActive == freezed
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool Function(),
      onBecomeInactive: onBecomeInactive == freezed
          ? _value.onBecomeInactive
          : onBecomeInactive // ignore: cast_nullable_to_non_nullable
              as void Function(void Function()),
    ));
  }
}

/// @nodoc
abstract class _$$_ZacActionHelperCopyWith<$Res>
    implements $ZacActionHelperCopyWith<$Res> {
  factory _$$_ZacActionHelperCopyWith(
          _$_ZacActionHelper value, $Res Function(_$_ZacActionHelper) then) =
      __$$_ZacActionHelperCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool Function() isActive,
      void Function(void Function()) onBecomeInactive});
}

/// @nodoc
class __$$_ZacActionHelperCopyWithImpl<$Res>
    extends _$ZacActionHelperCopyWithImpl<$Res>
    implements _$$_ZacActionHelperCopyWith<$Res> {
  __$$_ZacActionHelperCopyWithImpl(
      _$_ZacActionHelper _value, $Res Function(_$_ZacActionHelper) _then)
      : super(_value, (v) => _then(v as _$_ZacActionHelper));

  @override
  _$_ZacActionHelper get _value => super._value as _$_ZacActionHelper;

  @override
  $Res call({
    Object? isActive = freezed,
    Object? onBecomeInactive = freezed,
  }) {
    return _then(_$_ZacActionHelper(
      isActive: isActive == freezed
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool Function(),
      onBecomeInactive: onBecomeInactive == freezed
          ? _value.onBecomeInactive
          : onBecomeInactive // ignore: cast_nullable_to_non_nullable
              as void Function(void Function()),
    ));
  }
}

/// @nodoc

class _$_ZacActionHelper implements _ZacActionHelper {
  _$_ZacActionHelper({required this.isActive, required this.onBecomeInactive});

  @override
  final bool Function() isActive;
  @override
  final void Function(void Function()) onBecomeInactive;

  @override
  String toString() {
    return 'ZacActionHelper(isActive: $isActive, onBecomeInactive: $onBecomeInactive)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ZacActionHelper &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive) &&
            (identical(other.onBecomeInactive, onBecomeInactive) ||
                other.onBecomeInactive == onBecomeInactive));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isActive, onBecomeInactive);

  @JsonKey(ignore: true)
  @override
  _$$_ZacActionHelperCopyWith<_$_ZacActionHelper> get copyWith =>
      __$$_ZacActionHelperCopyWithImpl<_$_ZacActionHelper>(this, _$identity);
}

abstract class _ZacActionHelper implements ZacActionHelper {
  factory _ZacActionHelper(
          {required final bool Function() isActive,
          required final void Function(void Function()) onBecomeInactive}) =
      _$_ZacActionHelper;

  @override
  bool Function() get isActive;
  @override
  void Function(void Function()) get onBecomeInactive;
  @override
  @JsonKey(ignore: true)
  _$$_ZacActionHelperCopyWith<_$_ZacActionHelper> get copyWith =>
      throw _privateConstructorUsedError;
}

ZacUiActions _$ZacUiActionsFromJson(Map<String, dynamic> json) {
  return _ZacUiActions.fromJson(json);
}

/// @nodoc
mixin _$ZacUiActions {
  List<ZacBaseAction> get actions => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_ZacUiActions value) $default,
  ) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_ZacUiActions extends _ZacUiActions {
  _$_ZacUiActions(final List<ZacBaseAction> actions)
      : _actions = actions,
        super._();

  factory _$_ZacUiActions.fromJson(Map<String, dynamic> json) =>
      _$$_ZacUiActionsFromJson(json);

  final List<ZacBaseAction> _actions;
  @override
  List<ZacBaseAction> get actions {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_actions);
  }

  @override
  String toString() {
    return 'ZacUiActions(actions: $actions)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ZacUiActions &&
            const DeepCollectionEquality().equals(other._actions, _actions));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_actions));

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_ZacUiActions value) $default,
  ) {
    return $default(this);
  }
}

abstract class _ZacUiActions extends ZacUiActions {
  factory _ZacUiActions(final List<ZacBaseAction> actions) = _$_ZacUiActions;
  _ZacUiActions._() : super._();

  factory _ZacUiActions.fromJson(Map<String, dynamic> json) =
      _$_ZacUiActions.fromJson;

  @override
  List<ZacBaseAction> get actions;
}

ZacStateMachineActions _$ZacStateMachineActionsFromJson(
    Map<String, dynamic> json) {
  return _ZacStateMachineActions.fromJson(json);
}

/// @nodoc
mixin _$ZacStateMachineActions {
  List<ZacBaseAction> get actions => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_ZacStateMachineActions value) $default,
  ) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_ZacStateMachineActions extends _ZacStateMachineActions {
  _$_ZacStateMachineActions(final List<ZacBaseAction> actions)
      : _actions = actions,
        super._();

  factory _$_ZacStateMachineActions.fromJson(Map<String, dynamic> json) =>
      _$$_ZacStateMachineActionsFromJson(json);

  final List<ZacBaseAction> _actions;
  @override
  List<ZacBaseAction> get actions {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_actions);
  }

  @override
  String toString() {
    return 'ZacStateMachineActions(actions: $actions)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ZacStateMachineActions &&
            const DeepCollectionEquality().equals(other._actions, _actions));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_actions));

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_ZacStateMachineActions value) $default,
  ) {
    return $default(this);
  }
}

abstract class _ZacStateMachineActions extends ZacStateMachineActions {
  factory _ZacStateMachineActions(final List<ZacBaseAction> actions) =
      _$_ZacStateMachineActions;
  _ZacStateMachineActions._() : super._();

  factory _ZacStateMachineActions.fromJson(Map<String, dynamic> json) =
      _$_ZacStateMachineActions.fromJson;

  @override
  List<ZacBaseAction> get actions;
}

ZacExecuteActionsBuilder _$ZacExecuteActionsBuilderFromJson(
    Map<String, dynamic> json) {
  switch (json['_converter']) {
    case 'z:1:ExecuteActions.once':
      return _ZacExecuteActionsBuilderOnce.fromJson(json);
    case 'z:1:ExecuteActions.listen':
      return _ZacExecuteActionsBuilderListen.fromJson(json);

    default:
      throw CheckedFromJsonException(
          json,
          '_converter',
          'ZacExecuteActionsBuilder',
          'Invalid union type "${json['_converter']}"!');
  }
}

/// @nodoc
mixin _$ZacExecuteActionsBuilder {
  ZacUiActions get actions => throw _privateConstructorUsedError;
  ZacWidget? get child => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ZacExecuteActionsBuilderOnce value) once,
    required TResult Function(_ZacExecuteActionsBuilderListen value) listen,
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_ZacExecuteActionsBuilderOnce extends _ZacExecuteActionsBuilderOnce {
  _$_ZacExecuteActionsBuilderOnce(
      {required this.actions, this.child, final String? $type})
      : $type = $type ?? 'z:1:ExecuteActions.once',
        super._();

  factory _$_ZacExecuteActionsBuilderOnce.fromJson(Map<String, dynamic> json) =>
      _$$_ZacExecuteActionsBuilderOnceFromJson(json);

  @override
  final ZacUiActions actions;
  @override
  final ZacWidget? child;

  @JsonKey(name: '_converter')
  final String $type;

  @override
  String toString() {
    return 'ZacExecuteActionsBuilder.once(actions: $actions, child: $child)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ZacExecuteActionsBuilderOnce &&
            const DeepCollectionEquality().equals(other.actions, actions) &&
            const DeepCollectionEquality().equals(other.child, child));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(actions),
      const DeepCollectionEquality().hash(child));

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ZacExecuteActionsBuilderOnce value) once,
    required TResult Function(_ZacExecuteActionsBuilderListen value) listen,
  }) {
    return once(this);
  }
}

abstract class _ZacExecuteActionsBuilderOnce extends ZacExecuteActionsBuilder {
  factory _ZacExecuteActionsBuilderOnce(
      {required final ZacUiActions actions,
      final ZacWidget? child}) = _$_ZacExecuteActionsBuilderOnce;
  _ZacExecuteActionsBuilderOnce._() : super._();

  factory _ZacExecuteActionsBuilderOnce.fromJson(Map<String, dynamic> json) =
      _$_ZacExecuteActionsBuilderOnce.fromJson;

  @override
  ZacUiActions get actions;
  @override
  ZacWidget? get child;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_ZacExecuteActionsBuilderListen
    extends _ZacExecuteActionsBuilderListen {
  _$_ZacExecuteActionsBuilderListen(
      {required this.actions,
      required this.family,
      this.child,
      final String? $type})
      : $type = $type ?? 'z:1:ExecuteActions.listen',
        super._();

  factory _$_ZacExecuteActionsBuilderListen.fromJson(
          Map<String, dynamic> json) =>
      _$$_ZacExecuteActionsBuilderListenFromJson(json);

  @override
  final ZacUiActions actions;
  @override
  final Object family;
  @override
  final ZacWidget? child;

  @JsonKey(name: '_converter')
  final String $type;

  @override
  String toString() {
    return 'ZacExecuteActionsBuilder.listen(actions: $actions, family: $family, child: $child)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ZacExecuteActionsBuilderListen &&
            const DeepCollectionEquality().equals(other.actions, actions) &&
            const DeepCollectionEquality().equals(other.family, family) &&
            const DeepCollectionEquality().equals(other.child, child));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(actions),
      const DeepCollectionEquality().hash(family),
      const DeepCollectionEquality().hash(child));

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ZacExecuteActionsBuilderOnce value) once,
    required TResult Function(_ZacExecuteActionsBuilderListen value) listen,
  }) {
    return listen(this);
  }
}

abstract class _ZacExecuteActionsBuilderListen
    extends ZacExecuteActionsBuilder {
  factory _ZacExecuteActionsBuilderListen(
      {required final ZacUiActions actions,
      required final Object family,
      final ZacWidget? child}) = _$_ZacExecuteActionsBuilderListen;
  _ZacExecuteActionsBuilderListen._() : super._();

  factory _ZacExecuteActionsBuilderListen.fromJson(Map<String, dynamic> json) =
      _$_ZacExecuteActionsBuilderListen.fromJson;

  @override
  ZacUiActions get actions;
  Object get family;
  @override
  ZacWidget? get child;
}
