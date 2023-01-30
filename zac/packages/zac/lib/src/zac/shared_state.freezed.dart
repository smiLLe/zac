// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'shared_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SharedState {
  String get family => throw _privateConstructorUsedError;
  Object? get value => throw _privateConstructorUsedError;
  void Function(Object? Function(Object?)) get update =>
      throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_SharedStateFamily value) $default,
  ) =>
      throw _privateConstructorUsedError;
}

/// @nodoc

class _$_SharedStateFamily implements _SharedStateFamily {
  _$_SharedStateFamily(
      {required this.family, required this.value, required this.update});

  @override
  final String family;
  @override
  final Object? value;
  @override
  final void Function(Object? Function(Object?)) update;

  @override
  String toString() {
    return 'SharedState(family: $family, value: $value, update: $update)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SharedStateFamily &&
            (identical(other.family, family) || other.family == family) &&
            const DeepCollectionEquality().equals(other.value, value) &&
            (identical(other.update, update) || other.update == update));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, family, const DeepCollectionEquality().hash(value), update);

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_SharedStateFamily value) $default,
  ) {
    return $default(this);
  }
}

abstract class _SharedStateFamily implements SharedState {
  factory _SharedStateFamily(
          {required final String family,
          required final Object? value,
          required final void Function(Object? Function(Object?)) update}) =
      _$_SharedStateFamily;

  @override
  String get family;
  @override
  Object? get value;
  @override
  void Function(Object? Function(Object?)) get update;
}

SharedStateConsumeType _$SharedStateConsumeTypeFromJson(
    Map<String, dynamic> json) {
  switch (json['builder']) {
    case 'z:1:SharedState.watch':
      return _Watch.fromJson(json);
    case 'z:1:SharedState.read':
      return _Read.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'builder', 'SharedStateConsumeType',
          'Invalid union type "${json['builder']}"!');
  }
}

/// @nodoc
mixin _$SharedStateConsumeType {
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Watch value) watch,
    required TResult Function(_Read value) read,
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_Watch implements _Watch {
  const _$_Watch({this.select, final String? $type})
      : $type = $type ?? 'z:1:SharedState.watch';

  factory _$_Watch.fromJson(Map<String, dynamic> json) =>
      _$$_WatchFromJson(json);

  @override
  final ZacBuilder<List<ZacTransform>>? select;

  @JsonKey(name: 'builder')
  final String $type;

  @override
  String toString() {
    return 'SharedStateConsumeType.watch(select: $select)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Watch &&
            (identical(other.select, select) || other.select == select));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, select);

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Watch value) watch,
    required TResult Function(_Read value) read,
  }) {
    return watch(this);
  }
}

abstract class _Watch implements SharedStateConsumeType {
  const factory _Watch({final ZacBuilder<List<ZacTransform>>? select}) =
      _$_Watch;

  factory _Watch.fromJson(Map<String, dynamic> json) = _$_Watch.fromJson;

  ZacBuilder<List<ZacTransform>>? get select;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_Read implements _Read {
  const _$_Read({final String? $type})
      : $type = $type ?? 'z:1:SharedState.read';

  factory _$_Read.fromJson(Map<String, dynamic> json) => _$$_ReadFromJson(json);

  @JsonKey(name: 'builder')
  final String $type;

  @override
  String toString() {
    return 'SharedStateConsumeType.read()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Read);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Watch value) watch,
    required TResult Function(_Read value) read,
  }) {
    return read(this);
  }
}

abstract class _Read implements SharedStateConsumeType {
  const factory _Read() = _$_Read;

  factory _Read.fromJson(Map<String, dynamic> json) = _$_Read.fromJson;
}

ZacSharedStateProvide _$ZacSharedStateProvideFromJson(
    Map<String, dynamic> json) {
  switch (json['builder']) {
    case 'z:1:SharedStateType:Value':
      return _ZacSharedStateProvideValue.fromJson(json);
    case 'z:1:SharedStateType:Builder':
      return _ZacSharedStateProvideBuilder.fromJson(json);
    case 'z:1:SharedStateType:Null':
      return _ZacSharedStateProvideNull.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'builder', 'ZacSharedStateProvide',
          'Invalid union type "${json['builder']}"!');
  }
}

/// @nodoc
mixin _$ZacSharedStateProvide {
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ZacSharedStateProvideValue value) value,
    required TResult Function(_ZacSharedStateProvideBuilder value) builder,
    required TResult Function(_ZacSharedStateProvideNull value) n,
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_ZacSharedStateProvideValue implements _ZacSharedStateProvideValue {
  _$_ZacSharedStateProvideValue(this.value, {final String? $type})
      : $type = $type ?? 'z:1:SharedStateType:Value';

  factory _$_ZacSharedStateProvideValue.fromJson(Map<String, dynamic> json) =>
      _$$_ZacSharedStateProvideValueFromJson(json);

  @override
  final Object value;

  @JsonKey(name: 'builder')
  final String $type;

  @override
  String toString() {
    return 'ZacSharedStateProvide.value(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ZacSharedStateProvideValue &&
            const DeepCollectionEquality().equals(other.value, value));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(value));

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ZacSharedStateProvideValue value) value,
    required TResult Function(_ZacSharedStateProvideBuilder value) builder,
    required TResult Function(_ZacSharedStateProvideNull value) n,
  }) {
    return value(this);
  }
}

abstract class _ZacSharedStateProvideValue implements ZacSharedStateProvide {
  factory _ZacSharedStateProvideValue(final Object value) =
      _$_ZacSharedStateProvideValue;

  factory _ZacSharedStateProvideValue.fromJson(Map<String, dynamic> json) =
      _$_ZacSharedStateProvideValue.fromJson;

  Object get value;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_ZacSharedStateProvideBuilder implements _ZacSharedStateProvideBuilder {
  _$_ZacSharedStateProvideBuilder(this.value, {final String? $type})
      : $type = $type ?? 'z:1:SharedStateType:Builder';

  factory _$_ZacSharedStateProvideBuilder.fromJson(Map<String, dynamic> json) =>
      _$$_ZacSharedStateProvideBuilderFromJson(json);

  @override
  final ZacBuilder<Object> value;

  @JsonKey(name: 'builder')
  final String $type;

  @override
  String toString() {
    return 'ZacSharedStateProvide.builder(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ZacSharedStateProvideBuilder &&
            (identical(other.value, value) || other.value == value));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, value);

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ZacSharedStateProvideValue value) value,
    required TResult Function(_ZacSharedStateProvideBuilder value) builder,
    required TResult Function(_ZacSharedStateProvideNull value) n,
  }) {
    return builder(this);
  }
}

abstract class _ZacSharedStateProvideBuilder implements ZacSharedStateProvide {
  factory _ZacSharedStateProvideBuilder(final ZacBuilder<Object> value) =
      _$_ZacSharedStateProvideBuilder;

  factory _ZacSharedStateProvideBuilder.fromJson(Map<String, dynamic> json) =
      _$_ZacSharedStateProvideBuilder.fromJson;

  ZacBuilder<Object> get value;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_ZacSharedStateProvideNull implements _ZacSharedStateProvideNull {
  _$_ZacSharedStateProvideNull({final String? $type})
      : $type = $type ?? 'z:1:SharedStateType:Null';

  factory _$_ZacSharedStateProvideNull.fromJson(Map<String, dynamic> json) =>
      _$$_ZacSharedStateProvideNullFromJson(json);

  @JsonKey(name: 'builder')
  final String $type;

  @override
  String toString() {
    return 'ZacSharedStateProvide.n()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ZacSharedStateProvideNull);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ZacSharedStateProvideValue value) value,
    required TResult Function(_ZacSharedStateProvideBuilder value) builder,
    required TResult Function(_ZacSharedStateProvideNull value) n,
  }) {
    return n(this);
  }
}

abstract class _ZacSharedStateProvideNull implements ZacSharedStateProvide {
  factory _ZacSharedStateProvideNull() = _$_ZacSharedStateProvideNull;

  factory _ZacSharedStateProvideNull.fromJson(Map<String, dynamic> json) =
      _$_ZacSharedStateProvideNull.fromJson;
}

ZacSharedStateProvider _$ZacSharedStateProviderFromJson(
    Map<String, dynamic> json) {
  return _ZacSharedStateProvider.fromJson(json);
}

/// @nodoc
mixin _$ZacSharedStateProvider {
  Map<String, ZacSharedStateProvide> get states =>
      throw _privateConstructorUsedError;
  ZacBuilder<Widget> get child => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_ZacSharedStateProvider value) $default,
  ) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_ZacSharedStateProvider extends _ZacSharedStateProvider {
  _$_ZacSharedStateProvider(
      {required final Map<String, ZacSharedStateProvide> states,
      required this.child})
      : _states = states,
        super._();

  factory _$_ZacSharedStateProvider.fromJson(Map<String, dynamic> json) =>
      _$$_ZacSharedStateProviderFromJson(json);

  final Map<String, ZacSharedStateProvide> _states;
  @override
  Map<String, ZacSharedStateProvide> get states {
    if (_states is EqualUnmodifiableMapView) return _states;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_states);
  }

  @override
  final ZacBuilder<Widget> child;

  @override
  String toString() {
    return 'ZacSharedStateProvider(states: $states, child: $child)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ZacSharedStateProvider &&
            const DeepCollectionEquality().equals(other._states, _states) &&
            (identical(other.child, child) || other.child == child));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_states), child);

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_ZacSharedStateProvider value) $default,
  ) {
    return $default(this);
  }
}

abstract class _ZacSharedStateProvider extends ZacSharedStateProvider {
  factory _ZacSharedStateProvider(
      {required final Map<String, ZacSharedStateProvide> states,
      required final ZacBuilder<Widget> child}) = _$_ZacSharedStateProvider;
  _ZacSharedStateProvider._() : super._();

  factory _ZacSharedStateProvider.fromJson(Map<String, dynamic> json) =
      _$_ZacSharedStateProvider.fromJson;

  @override
  Map<String, ZacSharedStateProvide> get states;
  @override
  ZacBuilder<Widget> get child;
}

SharedStateConsume<T> _$SharedStateConsumeFromJson<T>(
    Map<String, dynamic> json) {
  return _SharedStateConsume<T>.fromJson(json);
}

/// @nodoc
mixin _$SharedStateConsume<T> {
  String get family => throw _privateConstructorUsedError;
  SharedStateConsumeType? get consume => throw _privateConstructorUsedError;
  ZacBuilder<List<ZacTransform>?>? get transformer =>
      throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_SharedStateConsume<T> value) $default,
  ) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_SharedStateConsume<T> extends _SharedStateConsume<T> {
  _$_SharedStateConsume({required this.family, this.consume, this.transformer})
      : super._();

  factory _$_SharedStateConsume.fromJson(Map<String, dynamic> json) =>
      _$$_SharedStateConsumeFromJson(json);

  @override
  final String family;
  @override
  final SharedStateConsumeType? consume;
  @override
  final ZacBuilder<List<ZacTransform>?>? transformer;

  @override
  String toString() {
    return 'SharedStateConsume<$T>(family: $family, consume: $consume, transformer: $transformer)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SharedStateConsume<T> &&
            (identical(other.family, family) || other.family == family) &&
            (identical(other.consume, consume) || other.consume == consume) &&
            (identical(other.transformer, transformer) ||
                other.transformer == transformer));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, family, consume, transformer);

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_SharedStateConsume<T> value) $default,
  ) {
    return $default(this);
  }
}

abstract class _SharedStateConsume<T> extends SharedStateConsume<T> {
  factory _SharedStateConsume(
          {required final String family,
          final SharedStateConsumeType? consume,
          final ZacBuilder<List<ZacTransform>?>? transformer}) =
      _$_SharedStateConsume<T>;
  _SharedStateConsume._() : super._();

  factory _SharedStateConsume.fromJson(Map<String, dynamic> json) =
      _$_SharedStateConsume<T>.fromJson;

  @override
  String get family;
  @override
  SharedStateConsumeType? get consume;
  @override
  ZacBuilder<List<ZacTransform>?>? get transformer;
}

SharedStateActions _$SharedStateActionsFromJson(Map<String, dynamic> json) {
  switch (json['builder']) {
    case 'z:1:SharedState.update':
      return _SharedStateActionsUpdate.fromJson(json);
    case 'z:1:SharedState.transformCurrentValue':
      return _SharedStateActionsTransformCurrentValue.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'builder', 'SharedStateActions',
          'Invalid union type "${json['builder']}"!');
  }
}

/// @nodoc
mixin _$SharedStateActions {
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SharedStateActionsUpdate value) update,
    required TResult Function(_SharedStateActionsTransformCurrentValue value)
        transformCurrentValue,
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_SharedStateActionsUpdate extends _SharedStateActionsUpdate {
  _$_SharedStateActionsUpdate(
      {required final Map<String, ZacSharedStateProvide> states,
      final String? $type})
      : _states = states,
        $type = $type ?? 'z:1:SharedState.update',
        super._();

  factory _$_SharedStateActionsUpdate.fromJson(Map<String, dynamic> json) =>
      _$$_SharedStateActionsUpdateFromJson(json);

  final Map<String, ZacSharedStateProvide> _states;
  @override
  Map<String, ZacSharedStateProvide> get states {
    if (_states is EqualUnmodifiableMapView) return _states;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_states);
  }

  @JsonKey(name: 'builder')
  final String $type;

  @override
  String toString() {
    return 'SharedStateActions.update(states: $states)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SharedStateActionsUpdate &&
            const DeepCollectionEquality().equals(other._states, _states));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_states));

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SharedStateActionsUpdate value) update,
    required TResult Function(_SharedStateActionsTransformCurrentValue value)
        transformCurrentValue,
  }) {
    return update(this);
  }
}

abstract class _SharedStateActionsUpdate extends SharedStateActions {
  factory _SharedStateActionsUpdate(
          {required final Map<String, ZacSharedStateProvide> states}) =
      _$_SharedStateActionsUpdate;
  _SharedStateActionsUpdate._() : super._();

  factory _SharedStateActionsUpdate.fromJson(Map<String, dynamic> json) =
      _$_SharedStateActionsUpdate.fromJson;

  Map<String, ZacSharedStateProvide> get states;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_SharedStateActionsTransformCurrentValue
    extends _SharedStateActionsTransformCurrentValue {
  _$_SharedStateActionsTransformCurrentValue(
      {required this.family, required this.transformer, final String? $type})
      : $type = $type ?? 'z:1:SharedState.transformCurrentValue',
        super._();

  factory _$_SharedStateActionsTransformCurrentValue.fromJson(
          Map<String, dynamic> json) =>
      _$$_SharedStateActionsTransformCurrentValueFromJson(json);

  @override
  final String family;
  @override
  final ZacBuilder<List<ZacTransform>> transformer;

  @JsonKey(name: 'builder')
  final String $type;

  @override
  String toString() {
    return 'SharedStateActions.transformCurrentValue(family: $family, transformer: $transformer)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SharedStateActionsTransformCurrentValue &&
            (identical(other.family, family) || other.family == family) &&
            (identical(other.transformer, transformer) ||
                other.transformer == transformer));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, family, transformer);

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SharedStateActionsUpdate value) update,
    required TResult Function(_SharedStateActionsTransformCurrentValue value)
        transformCurrentValue,
  }) {
    return transformCurrentValue(this);
  }
}

abstract class _SharedStateActionsTransformCurrentValue
    extends SharedStateActions {
  factory _SharedStateActionsTransformCurrentValue(
          {required final String family,
          required final ZacBuilder<List<ZacTransform>> transformer}) =
      _$_SharedStateActionsTransformCurrentValue;
  _SharedStateActionsTransformCurrentValue._() : super._();

  factory _SharedStateActionsTransformCurrentValue.fromJson(
          Map<String, dynamic> json) =
      _$_SharedStateActionsTransformCurrentValue.fromJson;

  String get family;
  ZacBuilder<List<ZacTransform>> get transformer;
}