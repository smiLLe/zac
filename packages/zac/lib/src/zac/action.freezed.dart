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

ActionPayload _$ActionPayloadFromJson(Map<String, dynamic> json) {
  switch (json['_converter']) {
    case 'none':
      return _ActionPayloadNone.fromJson(json);
    case 'withData':
      return _ActionPayloadWithData.fromJson(json);

    default:
      throw CheckedFromJsonException(json, '_converter', 'ActionPayload',
          'Invalid union type "${json['_converter']}"!');
  }
}

/// @nodoc
mixin _$ActionPayload {
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ActionPayloadNone value) none,
    required TResult Function(_ActionPayloadWithData value) withData,
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_ActionPayloadNone implements _ActionPayloadNone {
  const _$_ActionPayloadNone({final String? $type}) : $type = $type ?? 'none';

  factory _$_ActionPayloadNone.fromJson(Map<String, dynamic> json) =>
      _$$_ActionPayloadNoneFromJson(json);

  @JsonKey(name: '_converter')
  final String $type;

  @override
  String toString() {
    return 'ActionPayload.none()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_ActionPayloadNone);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ActionPayloadNone value) none,
    required TResult Function(_ActionPayloadWithData value) withData,
  }) {
    return none(this);
  }
}

abstract class _ActionPayloadNone implements ActionPayload {
  const factory _ActionPayloadNone() = _$_ActionPayloadNone;

  factory _ActionPayloadNone.fromJson(Map<String, dynamic> json) =
      _$_ActionPayloadNone.fromJson;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_ActionPayloadWithData implements _ActionPayloadWithData {
  _$_ActionPayloadWithData(this.data, {final String? $type})
      : $type = $type ?? 'withData';

  factory _$_ActionPayloadWithData.fromJson(Map<String, dynamic> json) =>
      _$$_ActionPayloadWithDataFromJson(json);

  @override
  final Object? data;

  @JsonKey(name: '_converter')
  final String $type;

  @override
  String toString() {
    return 'ActionPayload.withData(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ActionPayloadWithData &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(data));

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ActionPayloadNone value) none,
    required TResult Function(_ActionPayloadWithData value) withData,
  }) {
    return withData(this);
  }
}

abstract class _ActionPayloadWithData implements ActionPayload {
  factory _ActionPayloadWithData(final Object? data) = _$_ActionPayloadWithData;

  factory _ActionPayloadWithData.fromJson(Map<String, dynamic> json) =
      _$_ActionPayloadWithData.fromJson;

  Object? get data;
}

ZacActions _$ZacActionsFromJson(Map<String, dynamic> json) {
  return _ZacActions.fromJson(json);
}

/// @nodoc
mixin _$ZacActions {
  List<ZacAction> get actions => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_ZacActions value) $default,
  ) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_ZacActions extends _ZacActions {
  _$_ZacActions(final List<ZacAction> actions)
      : _actions = actions,
        super._();

  factory _$_ZacActions.fromJson(Map<String, dynamic> json) =>
      _$$_ZacActionsFromJson(json);

  final List<ZacAction> _actions;
  @override
  List<ZacAction> get actions {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_actions);
  }

  @override
  String toString() {
    return 'ZacActions(actions: $actions)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ZacActions &&
            const DeepCollectionEquality().equals(other._actions, _actions));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_actions));

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_ZacActions value) $default,
  ) {
    return $default(this);
  }
}

abstract class _ZacActions extends ZacActions {
  factory _ZacActions(final List<ZacAction> actions) = _$_ZacActions;
  _ZacActions._() : super._();

  factory _ZacActions.fromJson(Map<String, dynamic> json) =
      _$_ZacActions.fromJson;

  @override
  List<ZacAction> get actions;
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
  ZacActions get actions => throw _privateConstructorUsedError;
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
  final ZacActions actions;
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
      {required final ZacActions actions,
      final ZacWidget? child}) = _$_ZacExecuteActionsBuilderOnce;
  _ZacExecuteActionsBuilderOnce._() : super._();

  factory _ZacExecuteActionsBuilderOnce.fromJson(Map<String, dynamic> json) =
      _$_ZacExecuteActionsBuilderOnce.fromJson;

  @override
  ZacActions get actions;
  @override
  ZacWidget? get child;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_ZacExecuteActionsBuilderListen
    extends _ZacExecuteActionsBuilderListen {
  _$_ZacExecuteActionsBuilderListen(
      {required this.actions,
      required this.name,
      this.child,
      final String? $type})
      : $type = $type ?? 'z:1:ExecuteActions.listen',
        super._();

  factory _$_ZacExecuteActionsBuilderListen.fromJson(
          Map<String, dynamic> json) =>
      _$$_ZacExecuteActionsBuilderListenFromJson(json);

  @override
  final ZacActions actions;
  @override
  final ZacString name;
  @override
  final ZacWidget? child;

  @JsonKey(name: '_converter')
  final String $type;

  @override
  String toString() {
    return 'ZacExecuteActionsBuilder.listen(actions: $actions, name: $name, child: $child)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ZacExecuteActionsBuilderListen &&
            const DeepCollectionEquality().equals(other.actions, actions) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.child, child));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(actions),
      const DeepCollectionEquality().hash(name),
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
      {required final ZacActions actions,
      required final ZacString name,
      final ZacWidget? child}) = _$_ZacExecuteActionsBuilderListen;
  _ZacExecuteActionsBuilderListen._() : super._();

  factory _ZacExecuteActionsBuilderListen.fromJson(Map<String, dynamic> json) =
      _$_ZacExecuteActionsBuilderListen.fromJson;

  @override
  ZacActions get actions;
  ZacString get name;
  @override
  ZacWidget? get child;
}
