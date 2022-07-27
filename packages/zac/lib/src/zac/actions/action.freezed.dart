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

AnyActions _$AnyActionsFromJson(Map<String, dynamic> json) {
  return _AnyActions.fromJson(json);
}

/// @nodoc
mixin _$AnyActions {
  List<AnyAction> get actions => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_AnyActions value) $default,
  ) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_AnyActions extends _AnyActions {
  _$_AnyActions(final List<AnyAction> actions)
      : _actions = actions,
        super._();

  factory _$_AnyActions.fromJson(Map<String, dynamic> json) =>
      _$$_AnyActionsFromJson(json);

  final List<AnyAction> _actions;
  @override
  List<AnyAction> get actions {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_actions);
  }

  @override
  String toString() {
    return 'AnyActions(actions: $actions)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AnyActions &&
            const DeepCollectionEquality().equals(other._actions, _actions));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_actions));

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_AnyActions value) $default,
  ) {
    return $default(this);
  }
}

abstract class _AnyActions extends AnyActions {
  factory _AnyActions(final List<AnyAction> actions) = _$_AnyActions;
  _AnyActions._() : super._();

  factory _AnyActions.fromJson(Map<String, dynamic> json) =
      _$_AnyActions.fromJson;

  @override
  List<AnyAction> get actions;
}

ExecuteActionsBuilder _$ExecuteActionsBuilderFromJson(
    Map<String, dynamic> json) {
  return _ExecuteActionsWidgetBuilder.fromJson(json);
}

/// @nodoc
mixin _$ExecuteActionsBuilder {
  FlutterKey? get key => throw _privateConstructorUsedError;
  AnyActions get actions => throw _privateConstructorUsedError;
  ZacWidget? get child => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_ExecuteActionsWidgetBuilder value) $default,
  ) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_ExecuteActionsWidgetBuilder extends _ExecuteActionsWidgetBuilder {
  _$_ExecuteActionsWidgetBuilder({this.key, required this.actions, this.child})
      : super._();

  factory _$_ExecuteActionsWidgetBuilder.fromJson(Map<String, dynamic> json) =>
      _$$_ExecuteActionsWidgetBuilderFromJson(json);

  @override
  final FlutterKey? key;
  @override
  final AnyActions actions;
  @override
  final ZacWidget? child;

  @override
  String toString() {
    return 'ExecuteActionsBuilder(key: $key, actions: $actions, child: $child)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ExecuteActionsWidgetBuilder &&
            const DeepCollectionEquality().equals(other.key, key) &&
            const DeepCollectionEquality().equals(other.actions, actions) &&
            const DeepCollectionEquality().equals(other.child, child));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(key),
      const DeepCollectionEquality().hash(actions),
      const DeepCollectionEquality().hash(child));

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_ExecuteActionsWidgetBuilder value) $default,
  ) {
    return $default(this);
  }
}

abstract class _ExecuteActionsWidgetBuilder extends ExecuteActionsBuilder {
  factory _ExecuteActionsWidgetBuilder(
      {final FlutterKey? key,
      required final AnyActions actions,
      final ZacWidget? child}) = _$_ExecuteActionsWidgetBuilder;
  _ExecuteActionsWidgetBuilder._() : super._();

  factory _ExecuteActionsWidgetBuilder.fromJson(Map<String, dynamic> json) =
      _$_ExecuteActionsWidgetBuilder.fromJson;

  @override
  FlutterKey? get key;
  @override
  AnyActions get actions;
  @override
  ZacWidget? get child;
}
