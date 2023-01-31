// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'zac_value.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ZacValueActions _$ZacValueActionsFromJson(Map<String, dynamic> json) {
  return _ZacValueActionsAsPayload.fromJson(json);
}

/// @nodoc
mixin _$ZacValueActions {
  ZacBuilder<Object?> get value => throw _privateConstructorUsedError;
  ZacBuilder<List<ZacAction>> get actions => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ZacValueActionsAsPayload value) asPayload,
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_ZacValueActionsAsPayload extends _ZacValueActionsAsPayload {
  _$_ZacValueActionsAsPayload({required this.value, required this.actions})
      : super._();

  factory _$_ZacValueActionsAsPayload.fromJson(Map<String, dynamic> json) =>
      _$$_ZacValueActionsAsPayloadFromJson(json);

  @override
  final ZacBuilder<Object?> value;
  @override
  final ZacBuilder<List<ZacAction>> actions;

  @override
  String toString() {
    return 'ZacValueActions.asPayload(value: $value, actions: $actions)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ZacValueActionsAsPayload &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.actions, actions) || other.actions == actions));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, value, actions);

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ZacValueActionsAsPayload value) asPayload,
  }) {
    return asPayload(this);
  }
}

abstract class _ZacValueActionsAsPayload extends ZacValueActions {
  factory _ZacValueActionsAsPayload(
          {required final ZacBuilder<Object?> value,
          required final ZacBuilder<List<ZacAction>> actions}) =
      _$_ZacValueActionsAsPayload;
  _ZacValueActionsAsPayload._() : super._();

  factory _ZacValueActionsAsPayload.fromJson(Map<String, dynamic> json) =
      _$_ZacValueActionsAsPayload.fromJson;

  @override
  ZacBuilder<Object?> get value;
  @override
  ZacBuilder<List<ZacAction>> get actions;
}

ZacNum _$ZacNumFromJson(Map<String, dynamic> json) {
  return _ZacNum.fromJson(json);
}

/// @nodoc
mixin _$ZacNum {
  num get value => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_ZacNum value) $default,
  ) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_ZacNum extends _ZacNum {
  _$_ZacNum(this.value) : super._();

  factory _$_ZacNum.fromJson(Map<String, dynamic> json) =>
      _$$_ZacNumFromJson(json);

  @override
  final num value;

  @override
  String toString() {
    return 'ZacNum(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ZacNum &&
            (identical(other.value, value) || other.value == value));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, value);

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_ZacNum value) $default,
  ) {
    return $default(this);
  }
}

abstract class _ZacNum extends ZacNum {
  factory _ZacNum(final num value) = _$_ZacNum;
  _ZacNum._() : super._();

  factory _ZacNum.fromJson(Map<String, dynamic> json) = _$_ZacNum.fromJson;

  @override
  num get value;
}

ZacInt _$ZacIntFromJson(Map<String, dynamic> json) {
  return _ZacInt.fromJson(json);
}

/// @nodoc
mixin _$ZacInt {
  int get value => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_ZacInt value) $default,
  ) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_ZacInt extends _ZacInt {
  _$_ZacInt(this.value) : super._();

  factory _$_ZacInt.fromJson(Map<String, dynamic> json) =>
      _$$_ZacIntFromJson(json);

  @override
  final int value;

  @override
  String toString() {
    return 'ZacInt(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ZacInt &&
            (identical(other.value, value) || other.value == value));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, value);

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_ZacInt value) $default,
  ) {
    return $default(this);
  }
}

abstract class _ZacInt extends ZacInt {
  factory _ZacInt(final int value) = _$_ZacInt;
  _ZacInt._() : super._();

  factory _ZacInt.fromJson(Map<String, dynamic> json) = _$_ZacInt.fromJson;

  @override
  int get value;
}

ZacDouble _$ZacDoubleFromJson(Map<String, dynamic> json) {
  return _ZacDouble.fromJson(json);
}

/// @nodoc
mixin _$ZacDouble {
  double get value => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_ZacDouble value) $default,
  ) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_ZacDouble extends _ZacDouble {
  _$_ZacDouble(this.value) : super._();

  factory _$_ZacDouble.fromJson(Map<String, dynamic> json) =>
      _$$_ZacDoubleFromJson(json);

  @override
  final double value;

  @override
  String toString() {
    return 'ZacDouble(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ZacDouble &&
            (identical(other.value, value) || other.value == value));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, value);

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_ZacDouble value) $default,
  ) {
    return $default(this);
  }
}

abstract class _ZacDouble extends ZacDouble {
  factory _ZacDouble(final double value) = _$_ZacDouble;
  _ZacDouble._() : super._();

  factory _ZacDouble.fromJson(Map<String, dynamic> json) =
      _$_ZacDouble.fromJson;

  @override
  double get value;
}

ZacString _$ZacStringFromJson(Map<String, dynamic> json) {
  return _ZacString.fromJson(json);
}

/// @nodoc
mixin _$ZacString {
  String get value => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_ZacString value) $default,
  ) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_ZacString extends _ZacString {
  _$_ZacString(this.value) : super._();

  factory _$_ZacString.fromJson(Map<String, dynamic> json) =>
      _$$_ZacStringFromJson(json);

  @override
  final String value;

  @override
  String toString() {
    return 'ZacString(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ZacString &&
            (identical(other.value, value) || other.value == value));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, value);

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_ZacString value) $default,
  ) {
    return $default(this);
  }
}

abstract class _ZacString extends ZacString {
  factory _ZacString(final String value) = _$_ZacString;
  _ZacString._() : super._();

  factory _ZacString.fromJson(Map<String, dynamic> json) =
      _$_ZacString.fromJson;

  @override
  String get value;
}

ZacBool _$ZacBoolFromJson(Map<String, dynamic> json) {
  return _ZacBool.fromJson(json);
}

/// @nodoc
mixin _$ZacBool {
  bool get value => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_ZacBool value) $default,
  ) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_ZacBool extends _ZacBool {
  _$_ZacBool(this.value) : super._();

  factory _$_ZacBool.fromJson(Map<String, dynamic> json) =>
      _$$_ZacBoolFromJson(json);

  @override
  final bool value;

  @override
  String toString() {
    return 'ZacBool(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ZacBool &&
            (identical(other.value, value) || other.value == value));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, value);

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_ZacBool value) $default,
  ) {
    return $default(this);
  }
}

abstract class _ZacBool extends ZacBool {
  factory _ZacBool(final bool value) = _$_ZacBool;
  _ZacBool._() : super._();

  factory _ZacBool.fromJson(Map<String, dynamic> json) = _$_ZacBool.fromJson;

  @override
  bool get value;
}

ZacObject _$ZacObjectFromJson(Map<String, dynamic> json) {
  return _ZacObject.fromJson(json);
}

/// @nodoc
mixin _$ZacObject {
  Object get value => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_ZacObject value) $default,
  ) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_ZacObject extends _ZacObject {
  _$_ZacObject(this.value) : super._();

  factory _$_ZacObject.fromJson(Map<String, dynamic> json) =>
      _$$_ZacObjectFromJson(json);

  @override
  final Object value;

  @override
  String toString() {
    return 'ZacObject(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ZacObject &&
            const DeepCollectionEquality().equals(other.value, value));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(value));

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_ZacObject value) $default,
  ) {
    return $default(this);
  }
}

abstract class _ZacObject extends ZacObject {
  factory _ZacObject(final Object value) = _$_ZacObject;
  _ZacObject._() : super._();

  factory _ZacObject.fromJson(Map<String, dynamic> json) =
      _$_ZacObject.fromJson;

  @override
  Object get value;
}

ZacDateTime _$ZacDateTimeFromJson(Map<String, dynamic> json) {
  return _ZacDateTime.fromJson(json);
}

/// @nodoc
mixin _$ZacDateTime {
  DateTime get value => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_ZacDateTime value) $default,
  ) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_ZacDateTime extends _ZacDateTime {
  _$_ZacDateTime(this.value) : super._();

  factory _$_ZacDateTime.fromJson(Map<String, dynamic> json) =>
      _$$_ZacDateTimeFromJson(json);

  @override
  final DateTime value;

  @override
  String toString() {
    return 'ZacDateTime(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ZacDateTime &&
            (identical(other.value, value) || other.value == value));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, value);

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_ZacDateTime value) $default,
  ) {
    return $default(this);
  }
}

abstract class _ZacDateTime extends ZacDateTime {
  factory _ZacDateTime(final DateTime value) = _$_ZacDateTime;
  _ZacDateTime._() : super._();

  factory _ZacDateTime.fromJson(Map<String, dynamic> json) =
      _$_ZacDateTime.fromJson;

  @override
  DateTime get value;
}

ZacListOfWidgets _$ZacListOfWidgetsFromJson(Map<String, dynamic> json) {
  return _ZacListOfWidgets.fromJson(json);
}

/// @nodoc
mixin _$ZacListOfWidgets {
  List<ZacBuilder<Widget>> get value => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_ZacListOfWidgets value) $default,
  ) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_ZacListOfWidgets extends _ZacListOfWidgets {
  _$_ZacListOfWidgets(final List<ZacBuilder<Widget>> value)
      : _value = value,
        super._();

  factory _$_ZacListOfWidgets.fromJson(Map<String, dynamic> json) =>
      _$$_ZacListOfWidgetsFromJson(json);

  final List<ZacBuilder<Widget>> _value;
  @override
  List<ZacBuilder<Widget>> get value {
    if (_value is EqualUnmodifiableListView) return _value;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_value);
  }

  @override
  String toString() {
    return 'ZacListOfWidgets(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ZacListOfWidgets &&
            const DeepCollectionEquality().equals(other._value, _value));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_value));

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_ZacListOfWidgets value) $default,
  ) {
    return $default(this);
  }
}

abstract class _ZacListOfWidgets extends ZacListOfWidgets {
  factory _ZacListOfWidgets(final List<ZacBuilder<Widget>> value) =
      _$_ZacListOfWidgets;
  _ZacListOfWidgets._() : super._();

  factory _ZacListOfWidgets.fromJson(Map<String, dynamic> json) =
      _$_ZacListOfWidgets.fromJson;

  @override
  List<ZacBuilder<Widget>> get value;
}

ZacMapOfWidgets _$ZacMapOfWidgetsFromJson(Map<String, dynamic> json) {
  return _ZacMapOfWidgets.fromJson(json);
}

/// @nodoc
mixin _$ZacMapOfWidgets {
  Map<String, ZacBuilder<Widget>> get value =>
      throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_ZacMapOfWidgets value) $default,
  ) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_ZacMapOfWidgets extends _ZacMapOfWidgets {
  _$_ZacMapOfWidgets(final Map<String, ZacBuilder<Widget>> value)
      : _value = value,
        super._();

  factory _$_ZacMapOfWidgets.fromJson(Map<String, dynamic> json) =>
      _$$_ZacMapOfWidgetsFromJson(json);

  final Map<String, ZacBuilder<Widget>> _value;
  @override
  Map<String, ZacBuilder<Widget>> get value {
    if (_value is EqualUnmodifiableMapView) return _value;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_value);
  }

  @override
  String toString() {
    return 'ZacMapOfWidgets(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ZacMapOfWidgets &&
            const DeepCollectionEquality().equals(other._value, _value));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_value));

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_ZacMapOfWidgets value) $default,
  ) {
    return $default(this);
  }
}

abstract class _ZacMapOfWidgets extends ZacMapOfWidgets {
  factory _ZacMapOfWidgets(final Map<String, ZacBuilder<Widget>> value) =
      _$_ZacMapOfWidgets;
  _ZacMapOfWidgets._() : super._();

  factory _ZacMapOfWidgets.fromJson(Map<String, dynamic> json) =
      _$_ZacMapOfWidgets.fromJson;

  @override
  Map<String, ZacBuilder<Widget>> get value;
}

ZacListOfActions _$ZacListOfActionsFromJson(Map<String, dynamic> json) {
  return _ZacListOfActions.fromJson(json);
}

/// @nodoc
mixin _$ZacListOfActions {
  List<ZacBuilder<ZacAction>> get value => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_ZacListOfActions value) $default,
  ) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_ZacListOfActions extends _ZacListOfActions {
  _$_ZacListOfActions(final List<ZacBuilder<ZacAction>> value)
      : _value = value,
        super._();

  factory _$_ZacListOfActions.fromJson(Map<String, dynamic> json) =>
      _$$_ZacListOfActionsFromJson(json);

  final List<ZacBuilder<ZacAction>> _value;
  @override
  List<ZacBuilder<ZacAction>> get value {
    if (_value is EqualUnmodifiableListView) return _value;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_value);
  }

  @override
  String toString() {
    return 'ZacListOfActions(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ZacListOfActions &&
            const DeepCollectionEquality().equals(other._value, _value));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_value));

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_ZacListOfActions value) $default,
  ) {
    return $default(this);
  }
}

abstract class _ZacListOfActions extends ZacListOfActions {
  factory _ZacListOfActions(final List<ZacBuilder<ZacAction>> value) =
      _$_ZacListOfActions;
  _ZacListOfActions._() : super._();

  factory _ZacListOfActions.fromJson(Map<String, dynamic> json) =
      _$_ZacListOfActions.fromJson;

  @override
  List<ZacBuilder<ZacAction>> get value;
}

ZacListOfTransformers _$ZacListOfTransformersFromJson(
    Map<String, dynamic> json) {
  return _ZacListOfTransformers.fromJson(json);
}

/// @nodoc
mixin _$ZacListOfTransformers {
  List<ZacBuilder<ZacTransform>> get value =>
      throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_ZacListOfTransformers value) $default,
  ) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_ZacListOfTransformers extends _ZacListOfTransformers {
  _$_ZacListOfTransformers(final List<ZacBuilder<ZacTransform>> value)
      : _value = value,
        super._();

  factory _$_ZacListOfTransformers.fromJson(Map<String, dynamic> json) =>
      _$$_ZacListOfTransformersFromJson(json);

  final List<ZacBuilder<ZacTransform>> _value;
  @override
  List<ZacBuilder<ZacTransform>> get value {
    if (_value is EqualUnmodifiableListView) return _value;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_value);
  }

  @override
  String toString() {
    return 'ZacListOfTransformers(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ZacListOfTransformers &&
            const DeepCollectionEquality().equals(other._value, _value));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_value));

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_ZacListOfTransformers value) $default,
  ) {
    return $default(this);
  }
}

abstract class _ZacListOfTransformers extends ZacListOfTransformers {
  factory _ZacListOfTransformers(final List<ZacBuilder<ZacTransform>> value) =
      _$_ZacListOfTransformers;
  _ZacListOfTransformers._() : super._();

  factory _ZacListOfTransformers.fromJson(Map<String, dynamic> json) =
      _$_ZacListOfTransformers.fromJson;

  @override
  List<ZacBuilder<ZacTransform>> get value;
}
