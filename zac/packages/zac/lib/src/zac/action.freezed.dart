// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'action.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ZacAction {
  void Function(BuildContext, ZacContext) get execute =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ZacActionCopyWith<ZacAction> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ZacActionCopyWith<$Res> {
  factory $ZacActionCopyWith(ZacAction value, $Res Function(ZacAction) then) =
      _$ZacActionCopyWithImpl<$Res, ZacAction>;
  @useResult
  $Res call({void Function(BuildContext, ZacContext) execute});
}

/// @nodoc
class _$ZacActionCopyWithImpl<$Res, $Val extends ZacAction>
    implements $ZacActionCopyWith<$Res> {
  _$ZacActionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? execute = null,
  }) {
    return _then(_value.copyWith(
      execute: null == execute
          ? _value.execute
          : execute // ignore: cast_nullable_to_non_nullable
              as void Function(BuildContext, ZacContext),
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ZacActionCopyWith<$Res> implements $ZacActionCopyWith<$Res> {
  factory _$$_ZacActionCopyWith(
          _$_ZacAction value, $Res Function(_$_ZacAction) then) =
      __$$_ZacActionCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({void Function(BuildContext, ZacContext) execute});
}

/// @nodoc
class __$$_ZacActionCopyWithImpl<$Res>
    extends _$ZacActionCopyWithImpl<$Res, _$_ZacAction>
    implements _$$_ZacActionCopyWith<$Res> {
  __$$_ZacActionCopyWithImpl(
      _$_ZacAction _value, $Res Function(_$_ZacAction) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? execute = null,
  }) {
    return _then(_$_ZacAction(
      null == execute
          ? _value.execute
          : execute // ignore: cast_nullable_to_non_nullable
              as void Function(BuildContext, ZacContext),
    ));
  }
}

/// @nodoc

class _$_ZacAction implements _ZacAction {
  _$_ZacAction(this.execute);

  @override
  final void Function(BuildContext, ZacContext) execute;

  @override
  String toString() {
    return 'ZacAction(execute: $execute)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ZacAction &&
            (identical(other.execute, execute) || other.execute == execute));
  }

  @override
  int get hashCode => Object.hash(runtimeType, execute);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ZacActionCopyWith<_$_ZacAction> get copyWith =>
      __$$_ZacActionCopyWithImpl<_$_ZacAction>(this, _$identity);
}

abstract class _ZacAction implements ZacAction {
  factory _ZacAction(final void Function(BuildContext, ZacContext) execute) =
      _$_ZacAction;

  @override
  void Function(BuildContext, ZacContext) get execute;
  @override
  @JsonKey(ignore: true)
  _$$_ZacActionCopyWith<_$_ZacAction> get copyWith =>
      throw _privateConstructorUsedError;
}

ZacExecuteActionsBuilder _$ZacExecuteActionsBuilderFromJson(
    Map<String, dynamic> json) {
  return _ZacExecuteActionsBuilderOnce.fromJson(json);
}

/// @nodoc
mixin _$ZacExecuteActionsBuilder {
  ZacBuilder<List<ZacAction>> get actions => throw _privateConstructorUsedError;
  ZacBuilder<Widget>? get child => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ZacExecuteActionsBuilderOnce value) once,
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_ZacExecuteActionsBuilderOnce extends _ZacExecuteActionsBuilderOnce {
  _$_ZacExecuteActionsBuilderOnce({required this.actions, this.child})
      : super._();

  factory _$_ZacExecuteActionsBuilderOnce.fromJson(Map<String, dynamic> json) =>
      _$$_ZacExecuteActionsBuilderOnceFromJson(json);

  @override
  final ZacBuilder<List<ZacAction>> actions;
  @override
  final ZacBuilder<Widget>? child;

  @override
  String toString() {
    return 'ZacExecuteActionsBuilder.once(actions: $actions, child: $child)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ZacExecuteActionsBuilderOnce &&
            (identical(other.actions, actions) || other.actions == actions) &&
            (identical(other.child, child) || other.child == child));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, actions, child);

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ZacExecuteActionsBuilderOnce value) once,
  }) {
    return once(this);
  }
}

abstract class _ZacExecuteActionsBuilderOnce extends ZacExecuteActionsBuilder {
  factory _ZacExecuteActionsBuilderOnce(
      {required final ZacBuilder<List<ZacAction>> actions,
      final ZacBuilder<Widget>? child}) = _$_ZacExecuteActionsBuilderOnce;
  _ZacExecuteActionsBuilderOnce._() : super._();

  factory _ZacExecuteActionsBuilderOnce.fromJson(Map<String, dynamic> json) =
      _$_ZacExecuteActionsBuilderOnce.fromJson;

  @override
  ZacBuilder<List<ZacAction>> get actions;
  @override
  ZacBuilder<Widget>? get child;
}

ZacControlFlowAction _$ZacControlFlowActionFromJson(Map<String, dynamic> json) {
  return _ZacControlFlowActionIf.fromJson(json);
}

/// @nodoc
mixin _$ZacControlFlowAction {
  ZacBuilder<Object?> get conditionValue => throw _privateConstructorUsedError;
  ZacBuilder<List<ZacTransform>> get condition =>
      throw _privateConstructorUsedError;
  ZacBuilder<List<ZacAction>> get ifTrue => throw _privateConstructorUsedError;
  ZacBuilder<List<ZacAction>>? get ifFalse =>
      throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ZacControlFlowActionIf value) ifCond,
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_ZacControlFlowActionIf extends _ZacControlFlowActionIf {
  _$_ZacControlFlowActionIf(
      {required this.conditionValue,
      required this.condition,
      required this.ifTrue,
      this.ifFalse})
      : super._();

  factory _$_ZacControlFlowActionIf.fromJson(Map<String, dynamic> json) =>
      _$$_ZacControlFlowActionIfFromJson(json);

  @override
  final ZacBuilder<Object?> conditionValue;
  @override
  final ZacBuilder<List<ZacTransform>> condition;
  @override
  final ZacBuilder<List<ZacAction>> ifTrue;
  @override
  final ZacBuilder<List<ZacAction>>? ifFalse;

  @override
  String toString() {
    return 'ZacControlFlowAction.ifCond(conditionValue: $conditionValue, condition: $condition, ifTrue: $ifTrue, ifFalse: $ifFalse)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ZacControlFlowActionIf &&
            (identical(other.conditionValue, conditionValue) ||
                other.conditionValue == conditionValue) &&
            (identical(other.condition, condition) ||
                other.condition == condition) &&
            (identical(other.ifTrue, ifTrue) || other.ifTrue == ifTrue) &&
            (identical(other.ifFalse, ifFalse) || other.ifFalse == ifFalse));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, conditionValue, condition, ifTrue, ifFalse);

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ZacControlFlowActionIf value) ifCond,
  }) {
    return ifCond(this);
  }
}

abstract class _ZacControlFlowActionIf extends ZacControlFlowAction {
  factory _ZacControlFlowActionIf(
      {required final ZacBuilder<Object?> conditionValue,
      required final ZacBuilder<List<ZacTransform>> condition,
      required final ZacBuilder<List<ZacAction>> ifTrue,
      final ZacBuilder<List<ZacAction>>? ifFalse}) = _$_ZacControlFlowActionIf;
  _ZacControlFlowActionIf._() : super._();

  factory _ZacControlFlowActionIf.fromJson(Map<String, dynamic> json) =
      _$_ZacControlFlowActionIf.fromJson;

  @override
  ZacBuilder<Object?> get conditionValue;
  @override
  ZacBuilder<List<ZacTransform>> get condition;
  @override
  ZacBuilder<List<ZacAction>> get ifTrue;
  @override
  ZacBuilder<List<ZacAction>>? get ifFalse;
}
