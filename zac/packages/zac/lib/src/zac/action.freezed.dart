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
  void Function(ZacActionPayload, BuildContext, ZacContext) get execute =>
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
  $Res call(
      {void Function(ZacActionPayload, BuildContext, ZacContext) execute});
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
              as void Function(ZacActionPayload, BuildContext, ZacContext),
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
  $Res call(
      {void Function(ZacActionPayload, BuildContext, ZacContext) execute});
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
              as void Function(ZacActionPayload, BuildContext, ZacContext),
    ));
  }
}

/// @nodoc

class _$_ZacAction implements _ZacAction {
  _$_ZacAction(this.execute);

  @override
  final void Function(ZacActionPayload, BuildContext, ZacContext) execute;

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
  factory _ZacAction(
      final void Function(ZacActionPayload, BuildContext, ZacContext)
          execute) = _$_ZacAction;

  @override
  void Function(ZacActionPayload, BuildContext, ZacContext) get execute;
  @override
  @JsonKey(ignore: true)
  _$$_ZacActionCopyWith<_$_ZacAction> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ZacActionPayload {
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function(Object? value) param,
    required TResult Function(Object? first, Object? second) param2,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function()? $default, {
    TResult? Function(Object? value)? param,
    TResult? Function(Object? first, Object? second)? param2,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(Object? value)? param,
    TResult Function(Object? first, Object? second)? param2,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_ZacActionPayloadNone value) $default, {
    required TResult Function(_ZacActionPayloadParam value) param,
    required TResult Function(_ZacActionPayloadParam2 value) param2,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_ZacActionPayloadNone value)? $default, {
    TResult? Function(_ZacActionPayloadParam value)? param,
    TResult? Function(_ZacActionPayloadParam2 value)? param2,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_ZacActionPayloadNone value)? $default, {
    TResult Function(_ZacActionPayloadParam value)? param,
    TResult Function(_ZacActionPayloadParam2 value)? param2,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ZacActionPayloadCopyWith<$Res> {
  factory $ZacActionPayloadCopyWith(
          ZacActionPayload value, $Res Function(ZacActionPayload) then) =
      _$ZacActionPayloadCopyWithImpl<$Res, ZacActionPayload>;
}

/// @nodoc
class _$ZacActionPayloadCopyWithImpl<$Res, $Val extends ZacActionPayload>
    implements $ZacActionPayloadCopyWith<$Res> {
  _$ZacActionPayloadCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_ZacActionPayloadNoneCopyWith<$Res> {
  factory _$$_ZacActionPayloadNoneCopyWith(_$_ZacActionPayloadNone value,
          $Res Function(_$_ZacActionPayloadNone) then) =
      __$$_ZacActionPayloadNoneCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_ZacActionPayloadNoneCopyWithImpl<$Res>
    extends _$ZacActionPayloadCopyWithImpl<$Res, _$_ZacActionPayloadNone>
    implements _$$_ZacActionPayloadNoneCopyWith<$Res> {
  __$$_ZacActionPayloadNoneCopyWithImpl(_$_ZacActionPayloadNone _value,
      $Res Function(_$_ZacActionPayloadNone) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_ZacActionPayloadNone extends _ZacActionPayloadNone {
  const _$_ZacActionPayloadNone() : super._();

  @override
  String toString() {
    return 'ZacActionPayload()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_ZacActionPayloadNone);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function(Object? value) param,
    required TResult Function(Object? first, Object? second) param2,
  }) {
    return $default();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function()? $default, {
    TResult? Function(Object? value)? param,
    TResult? Function(Object? first, Object? second)? param2,
  }) {
    return $default?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(Object? value)? param,
    TResult Function(Object? first, Object? second)? param2,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_ZacActionPayloadNone value) $default, {
    required TResult Function(_ZacActionPayloadParam value) param,
    required TResult Function(_ZacActionPayloadParam2 value) param2,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_ZacActionPayloadNone value)? $default, {
    TResult? Function(_ZacActionPayloadParam value)? param,
    TResult? Function(_ZacActionPayloadParam2 value)? param2,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_ZacActionPayloadNone value)? $default, {
    TResult Function(_ZacActionPayloadParam value)? param,
    TResult Function(_ZacActionPayloadParam2 value)? param2,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class _ZacActionPayloadNone extends ZacActionPayload {
  const factory _ZacActionPayloadNone() = _$_ZacActionPayloadNone;
  const _ZacActionPayloadNone._() : super._();
}

/// @nodoc
abstract class _$$_ZacActionPayloadParamCopyWith<$Res> {
  factory _$$_ZacActionPayloadParamCopyWith(_$_ZacActionPayloadParam value,
          $Res Function(_$_ZacActionPayloadParam) then) =
      __$$_ZacActionPayloadParamCopyWithImpl<$Res>;
  @useResult
  $Res call({Object? value});
}

/// @nodoc
class __$$_ZacActionPayloadParamCopyWithImpl<$Res>
    extends _$ZacActionPayloadCopyWithImpl<$Res, _$_ZacActionPayloadParam>
    implements _$$_ZacActionPayloadParamCopyWith<$Res> {
  __$$_ZacActionPayloadParamCopyWithImpl(_$_ZacActionPayloadParam _value,
      $Res Function(_$_ZacActionPayloadParam) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = freezed,
  }) {
    return _then(_$_ZacActionPayloadParam(
      freezed == value ? _value.value : value,
    ));
  }
}

/// @nodoc

class _$_ZacActionPayloadParam extends _ZacActionPayloadParam {
  _$_ZacActionPayloadParam(this.value) : super._();

  @override
  final Object? value;

  @override
  String toString() {
    return 'ZacActionPayload.param(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ZacActionPayloadParam &&
            const DeepCollectionEquality().equals(other.value, value));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(value));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ZacActionPayloadParamCopyWith<_$_ZacActionPayloadParam> get copyWith =>
      __$$_ZacActionPayloadParamCopyWithImpl<_$_ZacActionPayloadParam>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function(Object? value) param,
    required TResult Function(Object? first, Object? second) param2,
  }) {
    return param(value);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function()? $default, {
    TResult? Function(Object? value)? param,
    TResult? Function(Object? first, Object? second)? param2,
  }) {
    return param?.call(value);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(Object? value)? param,
    TResult Function(Object? first, Object? second)? param2,
    required TResult orElse(),
  }) {
    if (param != null) {
      return param(value);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_ZacActionPayloadNone value) $default, {
    required TResult Function(_ZacActionPayloadParam value) param,
    required TResult Function(_ZacActionPayloadParam2 value) param2,
  }) {
    return param(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_ZacActionPayloadNone value)? $default, {
    TResult? Function(_ZacActionPayloadParam value)? param,
    TResult? Function(_ZacActionPayloadParam2 value)? param2,
  }) {
    return param?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_ZacActionPayloadNone value)? $default, {
    TResult Function(_ZacActionPayloadParam value)? param,
    TResult Function(_ZacActionPayloadParam2 value)? param2,
    required TResult orElse(),
  }) {
    if (param != null) {
      return param(this);
    }
    return orElse();
  }
}

abstract class _ZacActionPayloadParam extends ZacActionPayload {
  factory _ZacActionPayloadParam(final Object? value) =
      _$_ZacActionPayloadParam;
  _ZacActionPayloadParam._() : super._();

  Object? get value;
  @JsonKey(ignore: true)
  _$$_ZacActionPayloadParamCopyWith<_$_ZacActionPayloadParam> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ZacActionPayloadParam2CopyWith<$Res> {
  factory _$$_ZacActionPayloadParam2CopyWith(_$_ZacActionPayloadParam2 value,
          $Res Function(_$_ZacActionPayloadParam2) then) =
      __$$_ZacActionPayloadParam2CopyWithImpl<$Res>;
  @useResult
  $Res call({Object? first, Object? second});
}

/// @nodoc
class __$$_ZacActionPayloadParam2CopyWithImpl<$Res>
    extends _$ZacActionPayloadCopyWithImpl<$Res, _$_ZacActionPayloadParam2>
    implements _$$_ZacActionPayloadParam2CopyWith<$Res> {
  __$$_ZacActionPayloadParam2CopyWithImpl(_$_ZacActionPayloadParam2 _value,
      $Res Function(_$_ZacActionPayloadParam2) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? first = freezed,
    Object? second = freezed,
  }) {
    return _then(_$_ZacActionPayloadParam2(
      freezed == first ? _value.first : first,
      freezed == second ? _value.second : second,
    ));
  }
}

/// @nodoc

class _$_ZacActionPayloadParam2 extends _ZacActionPayloadParam2 {
  _$_ZacActionPayloadParam2(this.first, this.second) : super._();

  @override
  final Object? first;
  @override
  final Object? second;

  @override
  String toString() {
    return 'ZacActionPayload.param2(first: $first, second: $second)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ZacActionPayloadParam2 &&
            const DeepCollectionEquality().equals(other.first, first) &&
            const DeepCollectionEquality().equals(other.second, second));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(first),
      const DeepCollectionEquality().hash(second));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ZacActionPayloadParam2CopyWith<_$_ZacActionPayloadParam2> get copyWith =>
      __$$_ZacActionPayloadParam2CopyWithImpl<_$_ZacActionPayloadParam2>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function(Object? value) param,
    required TResult Function(Object? first, Object? second) param2,
  }) {
    return param2(first, second);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function()? $default, {
    TResult? Function(Object? value)? param,
    TResult? Function(Object? first, Object? second)? param2,
  }) {
    return param2?.call(first, second);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(Object? value)? param,
    TResult Function(Object? first, Object? second)? param2,
    required TResult orElse(),
  }) {
    if (param2 != null) {
      return param2(first, second);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_ZacActionPayloadNone value) $default, {
    required TResult Function(_ZacActionPayloadParam value) param,
    required TResult Function(_ZacActionPayloadParam2 value) param2,
  }) {
    return param2(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_ZacActionPayloadNone value)? $default, {
    TResult? Function(_ZacActionPayloadParam value)? param,
    TResult? Function(_ZacActionPayloadParam2 value)? param2,
  }) {
    return param2?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_ZacActionPayloadNone value)? $default, {
    TResult Function(_ZacActionPayloadParam value)? param,
    TResult Function(_ZacActionPayloadParam2 value)? param2,
    required TResult orElse(),
  }) {
    if (param2 != null) {
      return param2(this);
    }
    return orElse();
  }
}

abstract class _ZacActionPayloadParam2 extends ZacActionPayload {
  factory _ZacActionPayloadParam2(final Object? first, final Object? second) =
      _$_ZacActionPayloadParam2;
  _ZacActionPayloadParam2._() : super._();

  Object? get first;
  Object? get second;
  @JsonKey(ignore: true)
  _$$_ZacActionPayloadParam2CopyWith<_$_ZacActionPayloadParam2> get copyWith =>
      throw _privateConstructorUsedError;
}

ZacActionPayloadTransformer _$ZacActionPayloadTransformerFromJson(
    Map<String, dynamic> json) {
  switch (json['builder']) {
    case 'z:1:Transformer:ActionPayload.toList':
      return _ZacActionPayloadTransformerToList.fromJson(json);
    case 'z:1:Transformer:ActionPayload.toObject':
      return _ZacActionPayloadTransformerToObject.fromJson(json);

    default:
      throw CheckedFromJsonException(
          json,
          'builder',
          'ZacActionPayloadTransformer',
          'Invalid union type "${json['builder']}"!');
  }
}

/// @nodoc
mixin _$ZacActionPayloadTransformer {
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ZacActionPayloadTransformerToList value) toList,
    required TResult Function(_ZacActionPayloadTransformerToObject value)
        toObject,
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_ZacActionPayloadTransformerToList
    extends _ZacActionPayloadTransformerToList {
  _$_ZacActionPayloadTransformerToList({final String? $type})
      : $type = $type ?? 'z:1:Transformer:ActionPayload.toList',
        super._();

  factory _$_ZacActionPayloadTransformerToList.fromJson(
          Map<String, dynamic> json) =>
      _$$_ZacActionPayloadTransformerToListFromJson(json);

  @JsonKey(name: 'builder')
  final String $type;

  @override
  String toString() {
    return 'ZacActionPayloadTransformer.toList()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ZacActionPayloadTransformerToList);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ZacActionPayloadTransformerToList value) toList,
    required TResult Function(_ZacActionPayloadTransformerToObject value)
        toObject,
  }) {
    return toList(this);
  }
}

abstract class _ZacActionPayloadTransformerToList
    extends ZacActionPayloadTransformer {
  factory _ZacActionPayloadTransformerToList() =
      _$_ZacActionPayloadTransformerToList;
  _ZacActionPayloadTransformerToList._() : super._();

  factory _ZacActionPayloadTransformerToList.fromJson(
          Map<String, dynamic> json) =
      _$_ZacActionPayloadTransformerToList.fromJson;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_ZacActionPayloadTransformerToObject
    extends _ZacActionPayloadTransformerToObject {
  _$_ZacActionPayloadTransformerToObject({final String? $type})
      : $type = $type ?? 'z:1:Transformer:ActionPayload.toObject',
        super._();

  factory _$_ZacActionPayloadTransformerToObject.fromJson(
          Map<String, dynamic> json) =>
      _$$_ZacActionPayloadTransformerToObjectFromJson(json);

  @JsonKey(name: 'builder')
  final String $type;

  @override
  String toString() {
    return 'ZacActionPayloadTransformer.toObject()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ZacActionPayloadTransformerToObject);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ZacActionPayloadTransformerToList value) toList,
    required TResult Function(_ZacActionPayloadTransformerToObject value)
        toObject,
  }) {
    return toObject(this);
  }
}

abstract class _ZacActionPayloadTransformerToObject
    extends ZacActionPayloadTransformer {
  factory _ZacActionPayloadTransformerToObject() =
      _$_ZacActionPayloadTransformerToObject;
  _ZacActionPayloadTransformerToObject._() : super._();

  factory _ZacActionPayloadTransformerToObject.fromJson(
          Map<String, dynamic> json) =
      _$_ZacActionPayloadTransformerToObject.fromJson;
}

ZacExecuteActionsBuilder _$ZacExecuteActionsBuilderFromJson(
    Map<String, dynamic> json) {
  switch (json['builder']) {
    case 'z:1:ExecuteActions.once':
      return _ZacExecuteActionsBuilderOnce.fromJson(json);
    case 'z:1:ExecuteActions.listen':
      return _ZacExecuteActionsBuilderListen.fromJson(json);

    default:
      throw CheckedFromJsonException(
          json,
          'builder',
          'ZacExecuteActionsBuilder',
          'Invalid union type "${json['builder']}"!');
  }
}

/// @nodoc
mixin _$ZacExecuteActionsBuilder {
  ZacListBuilder<ZacAction, List<ZacAction>> get actions =>
      throw _privateConstructorUsedError;
  ZacBuilder<Widget>? get child => throw _privateConstructorUsedError;

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
  final ZacListBuilder<ZacAction, List<ZacAction>> actions;
  @override
  final ZacBuilder<Widget>? child;

  @JsonKey(name: 'builder')
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
    required TResult Function(_ZacExecuteActionsBuilderListen value) listen,
  }) {
    return once(this);
  }
}

abstract class _ZacExecuteActionsBuilderOnce extends ZacExecuteActionsBuilder {
  factory _ZacExecuteActionsBuilderOnce(
      {required final ZacListBuilder<ZacAction, List<ZacAction>> actions,
      final ZacBuilder<Widget>? child}) = _$_ZacExecuteActionsBuilderOnce;
  _ZacExecuteActionsBuilderOnce._() : super._();

  factory _ZacExecuteActionsBuilderOnce.fromJson(Map<String, dynamic> json) =
      _$_ZacExecuteActionsBuilderOnce.fromJson;

  @override
  ZacListBuilder<ZacAction, List<ZacAction>> get actions;
  @override
  ZacBuilder<Widget>? get child;
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
  final ZacListBuilder<ZacAction, List<ZacAction>> actions;
  @override
  final String family;
  @override
  final ZacBuilder<Widget>? child;

  @JsonKey(name: 'builder')
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
            (identical(other.actions, actions) || other.actions == actions) &&
            (identical(other.family, family) || other.family == family) &&
            (identical(other.child, child) || other.child == child));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, actions, family, child);

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
      {required final ZacListBuilder<ZacAction, List<ZacAction>> actions,
      required final String family,
      final ZacBuilder<Widget>? child}) = _$_ZacExecuteActionsBuilderListen;
  _ZacExecuteActionsBuilderListen._() : super._();

  factory _ZacExecuteActionsBuilderListen.fromJson(Map<String, dynamic> json) =
      _$_ZacExecuteActionsBuilderListen.fromJson;

  @override
  ZacListBuilder<ZacAction, List<ZacAction>> get actions;
  String get family;
  @override
  ZacBuilder<Widget>? get child;
}

ZacControlFlowAction _$ZacControlFlowActionFromJson(Map<String, dynamic> json) {
  return _ZacControlFlowActionIf.fromJson(json);
}

/// @nodoc
mixin _$ZacControlFlowAction {
  ZacListBuilder<ZacTransform, List<ZacTransform>> get condition =>
      throw _privateConstructorUsedError;
  ZacListBuilder<ZacAction, List<ZacAction>> get ifTrue =>
      throw _privateConstructorUsedError;
  ZacListBuilder<ZacAction, List<ZacAction>>? get ifFalse =>
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
      {required this.condition, required this.ifTrue, this.ifFalse})
      : super._();

  factory _$_ZacControlFlowActionIf.fromJson(Map<String, dynamic> json) =>
      _$$_ZacControlFlowActionIfFromJson(json);

  @override
  final ZacListBuilder<ZacTransform, List<ZacTransform>> condition;
  @override
  final ZacListBuilder<ZacAction, List<ZacAction>> ifTrue;
  @override
  final ZacListBuilder<ZacAction, List<ZacAction>>? ifFalse;

  @override
  String toString() {
    return 'ZacControlFlowAction.ifCond(condition: $condition, ifTrue: $ifTrue, ifFalse: $ifFalse)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ZacControlFlowActionIf &&
            (identical(other.condition, condition) ||
                other.condition == condition) &&
            (identical(other.ifTrue, ifTrue) || other.ifTrue == ifTrue) &&
            (identical(other.ifFalse, ifFalse) || other.ifFalse == ifFalse));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, condition, ifTrue, ifFalse);

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
          {required final ZacListBuilder<ZacTransform, List<ZacTransform>>
              condition,
          required final ZacListBuilder<ZacAction, List<ZacAction>> ifTrue,
          final ZacListBuilder<ZacAction, List<ZacAction>>? ifFalse}) =
      _$_ZacControlFlowActionIf;
  _ZacControlFlowActionIf._() : super._();

  factory _ZacControlFlowActionIf.fromJson(Map<String, dynamic> json) =
      _$_ZacControlFlowActionIf.fromJson;

  @override
  ZacListBuilder<ZacTransform, List<ZacTransform>> get condition;
  @override
  ZacListBuilder<ZacAction, List<ZacAction>> get ifTrue;
  @override
  ZacListBuilder<ZacAction, List<ZacAction>>? get ifFalse;
}
