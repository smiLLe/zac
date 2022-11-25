// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'zac_value.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ZacInt _$ZacIntFromJson(Map<String, dynamic> json) {
  switch (json['converter']) {
    case 'z:1:int':
      return _ZacInt.fromJson(json);
    case 'z:1:int.consume':
      return _ZacIntConsumeSharedValue.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'converter', 'ZacInt',
          'Invalid union type "${json['converter']}"!');
  }
}

/// @nodoc
mixin _$ZacInt {
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_ZacInt value) $default, {
    required TResult Function(_ZacIntConsumeSharedValue value) consume,
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_ZacInt extends _ZacInt with ZacSimpleValue<int> {
  _$_ZacInt({required this.value, final String? $type})
      : $type = $type ?? 'z:1:int',
        super._();

  factory _$_ZacInt.fromJson(Map<String, dynamic> json) =>
      _$$_ZacIntFromJson(json);

  @override
  final int value;

  @JsonKey(name: 'converter')
  final String $type;

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
    TResult Function(_ZacInt value) $default, {
    required TResult Function(_ZacIntConsumeSharedValue value) consume,
  }) {
    return $default(this);
  }
}

abstract class _ZacInt extends ZacInt implements ZacSimpleValue<int> {
  factory _ZacInt({required final int value}) = _$_ZacInt;
  _ZacInt._() : super._();

  factory _ZacInt.fromJson(Map<String, dynamic> json) = _$_ZacInt.fromJson;

  int get value;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_ZacIntConsumeSharedValue extends _ZacIntConsumeSharedValue
    with ConsumeSharedValue<int> {
  _$_ZacIntConsumeSharedValue(
      {required this.family,
      this.transformer,
      this.select,
      this.forceConsume,
      final String? $type})
      : $type = $type ?? 'z:1:int.consume',
        super._();

  factory _$_ZacIntConsumeSharedValue.fromJson(Map<String, dynamic> json) =>
      _$$_ZacIntConsumeSharedValueFromJson(json);

  @override
  final Object family;
  @override
  final ZacTransformers? transformer;
  @override
  final ZacTransformers? select;
  @override
  final SharedValueConsumeType? forceConsume;

  @JsonKey(name: 'converter')
  final String $type;

  @override
  String toString() {
    return 'ZacInt.consume(family: $family, transformer: $transformer, select: $select, forceConsume: $forceConsume)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ZacIntConsumeSharedValue &&
            const DeepCollectionEquality().equals(other.family, family) &&
            (identical(other.transformer, transformer) ||
                other.transformer == transformer) &&
            (identical(other.select, select) || other.select == select) &&
            (identical(other.forceConsume, forceConsume) ||
                other.forceConsume == forceConsume));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(family),
      transformer,
      select,
      forceConsume);

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_ZacInt value) $default, {
    required TResult Function(_ZacIntConsumeSharedValue value) consume,
  }) {
    return consume(this);
  }
}

abstract class _ZacIntConsumeSharedValue extends ZacInt
    implements ConsumeSharedValue<int> {
  factory _ZacIntConsumeSharedValue(
          {required final Object family,
          final ZacTransformers? transformer,
          final ZacTransformers? select,
          final SharedValueConsumeType? forceConsume}) =
      _$_ZacIntConsumeSharedValue;
  _ZacIntConsumeSharedValue._() : super._();

  factory _ZacIntConsumeSharedValue.fromJson(Map<String, dynamic> json) =
      _$_ZacIntConsumeSharedValue.fromJson;

  Object get family;
  ZacTransformers? get transformer;
  ZacTransformers? get select;
  SharedValueConsumeType? get forceConsume;
}

ZacDouble _$ZacDoubleFromJson(Map<String, dynamic> json) {
  switch (json['converter']) {
    case 'z:1:double':
      return _ZacDouble.fromJson(json);
    case 'z:1:double.consume':
      return _ZacDoubleConsumeSharedValue.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'converter', 'ZacDouble',
          'Invalid union type "${json['converter']}"!');
  }
}

/// @nodoc
mixin _$ZacDouble {
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_ZacDouble value) $default, {
    required TResult Function(_ZacDoubleConsumeSharedValue value) consume,
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_ZacDouble extends _ZacDouble with ZacSimpleValue<double> {
  _$_ZacDouble({required this.value, final String? $type})
      : $type = $type ?? 'z:1:double',
        super._();

  factory _$_ZacDouble.fromJson(Map<String, dynamic> json) =>
      _$$_ZacDoubleFromJson(json);

  @override
  final double value;

  @JsonKey(name: 'converter')
  final String $type;

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
    TResult Function(_ZacDouble value) $default, {
    required TResult Function(_ZacDoubleConsumeSharedValue value) consume,
  }) {
    return $default(this);
  }
}

abstract class _ZacDouble extends ZacDouble implements ZacSimpleValue<double> {
  factory _ZacDouble({required final double value}) = _$_ZacDouble;
  _ZacDouble._() : super._();

  factory _ZacDouble.fromJson(Map<String, dynamic> json) =
      _$_ZacDouble.fromJson;

  double get value;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_ZacDoubleConsumeSharedValue extends _ZacDoubleConsumeSharedValue
    with ConsumeSharedValue<double> {
  _$_ZacDoubleConsumeSharedValue(
      {required this.family,
      this.transformer,
      this.select,
      this.forceConsume,
      final String? $type})
      : $type = $type ?? 'z:1:double.consume',
        super._();

  factory _$_ZacDoubleConsumeSharedValue.fromJson(Map<String, dynamic> json) =>
      _$$_ZacDoubleConsumeSharedValueFromJson(json);

  @override
  final Object family;
  @override
  final ZacTransformers? transformer;
  @override
  final ZacTransformers? select;
  @override
  final SharedValueConsumeType? forceConsume;

  @JsonKey(name: 'converter')
  final String $type;

  @override
  String toString() {
    return 'ZacDouble.consume(family: $family, transformer: $transformer, select: $select, forceConsume: $forceConsume)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ZacDoubleConsumeSharedValue &&
            const DeepCollectionEquality().equals(other.family, family) &&
            (identical(other.transformer, transformer) ||
                other.transformer == transformer) &&
            (identical(other.select, select) || other.select == select) &&
            (identical(other.forceConsume, forceConsume) ||
                other.forceConsume == forceConsume));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(family),
      transformer,
      select,
      forceConsume);

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_ZacDouble value) $default, {
    required TResult Function(_ZacDoubleConsumeSharedValue value) consume,
  }) {
    return consume(this);
  }
}

abstract class _ZacDoubleConsumeSharedValue extends ZacDouble
    implements ConsumeSharedValue<double> {
  factory _ZacDoubleConsumeSharedValue(
          {required final Object family,
          final ZacTransformers? transformer,
          final ZacTransformers? select,
          final SharedValueConsumeType? forceConsume}) =
      _$_ZacDoubleConsumeSharedValue;
  _ZacDoubleConsumeSharedValue._() : super._();

  factory _ZacDoubleConsumeSharedValue.fromJson(Map<String, dynamic> json) =
      _$_ZacDoubleConsumeSharedValue.fromJson;

  Object get family;
  ZacTransformers? get transformer;
  ZacTransformers? get select;
  SharedValueConsumeType? get forceConsume;
}

ZacNum _$ZacNumFromJson(Map<String, dynamic> json) {
  switch (json['converter']) {
    case 'z:1:num':
      return _ZacNum.fromJson(json);
    case 'z:1:num.consume':
      return _ZacNumConsumeSharedValue.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'converter', 'ZacNum',
          'Invalid union type "${json['converter']}"!');
  }
}

/// @nodoc
mixin _$ZacNum {
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_ZacNum value) $default, {
    required TResult Function(_ZacNumConsumeSharedValue value) consume,
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_ZacNum extends _ZacNum with ZacSimpleValue<num> {
  _$_ZacNum({required this.value, final String? $type})
      : $type = $type ?? 'z:1:num',
        super._();

  factory _$_ZacNum.fromJson(Map<String, dynamic> json) =>
      _$$_ZacNumFromJson(json);

  @override
  final num value;

  @JsonKey(name: 'converter')
  final String $type;

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
    TResult Function(_ZacNum value) $default, {
    required TResult Function(_ZacNumConsumeSharedValue value) consume,
  }) {
    return $default(this);
  }
}

abstract class _ZacNum extends ZacNum implements ZacSimpleValue<num> {
  factory _ZacNum({required final num value}) = _$_ZacNum;
  _ZacNum._() : super._();

  factory _ZacNum.fromJson(Map<String, dynamic> json) = _$_ZacNum.fromJson;

  num get value;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_ZacNumConsumeSharedValue extends _ZacNumConsumeSharedValue
    with ConsumeSharedValue<num> {
  _$_ZacNumConsumeSharedValue(
      {required this.family,
      this.transformer,
      this.select,
      this.forceConsume,
      final String? $type})
      : $type = $type ?? 'z:1:num.consume',
        super._();

  factory _$_ZacNumConsumeSharedValue.fromJson(Map<String, dynamic> json) =>
      _$$_ZacNumConsumeSharedValueFromJson(json);

  @override
  final Object family;
  @override
  final ZacTransformers? transformer;
  @override
  final ZacTransformers? select;
  @override
  final SharedValueConsumeType? forceConsume;

  @JsonKey(name: 'converter')
  final String $type;

  @override
  String toString() {
    return 'ZacNum.consume(family: $family, transformer: $transformer, select: $select, forceConsume: $forceConsume)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ZacNumConsumeSharedValue &&
            const DeepCollectionEquality().equals(other.family, family) &&
            (identical(other.transformer, transformer) ||
                other.transformer == transformer) &&
            (identical(other.select, select) || other.select == select) &&
            (identical(other.forceConsume, forceConsume) ||
                other.forceConsume == forceConsume));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(family),
      transformer,
      select,
      forceConsume);

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_ZacNum value) $default, {
    required TResult Function(_ZacNumConsumeSharedValue value) consume,
  }) {
    return consume(this);
  }
}

abstract class _ZacNumConsumeSharedValue extends ZacNum
    implements ConsumeSharedValue<num> {
  factory _ZacNumConsumeSharedValue(
          {required final Object family,
          final ZacTransformers? transformer,
          final ZacTransformers? select,
          final SharedValueConsumeType? forceConsume}) =
      _$_ZacNumConsumeSharedValue;
  _ZacNumConsumeSharedValue._() : super._();

  factory _ZacNumConsumeSharedValue.fromJson(Map<String, dynamic> json) =
      _$_ZacNumConsumeSharedValue.fromJson;

  Object get family;
  ZacTransformers? get transformer;
  ZacTransformers? get select;
  SharedValueConsumeType? get forceConsume;
}

ZacString _$ZacStringFromJson(Map<String, dynamic> json) {
  switch (json['converter']) {
    case 'z:1:String':
      return _ZacString.fromJson(json);
    case 'z:1:String.consume':
      return _ZacStringConsumeSharedValue.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'converter', 'ZacString',
          'Invalid union type "${json['converter']}"!');
  }
}

/// @nodoc
mixin _$ZacString {
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_ZacString value) $default, {
    required TResult Function(_ZacStringConsumeSharedValue value) consume,
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_ZacString extends _ZacString with ZacSimpleValue<String> {
  _$_ZacString({required this.value, final String? $type})
      : $type = $type ?? 'z:1:String',
        super._();

  factory _$_ZacString.fromJson(Map<String, dynamic> json) =>
      _$$_ZacStringFromJson(json);

  @override
  final String value;

  @JsonKey(name: 'converter')
  final String $type;

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
    TResult Function(_ZacString value) $default, {
    required TResult Function(_ZacStringConsumeSharedValue value) consume,
  }) {
    return $default(this);
  }
}

abstract class _ZacString extends ZacString implements ZacSimpleValue<String> {
  factory _ZacString({required final String value}) = _$_ZacString;
  _ZacString._() : super._();

  factory _ZacString.fromJson(Map<String, dynamic> json) =
      _$_ZacString.fromJson;

  String get value;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_ZacStringConsumeSharedValue extends _ZacStringConsumeSharedValue
    with ConsumeSharedValue<String> {
  _$_ZacStringConsumeSharedValue(
      {required this.family,
      this.transformer,
      this.select,
      this.forceConsume,
      final String? $type})
      : $type = $type ?? 'z:1:String.consume',
        super._();

  factory _$_ZacStringConsumeSharedValue.fromJson(Map<String, dynamic> json) =>
      _$$_ZacStringConsumeSharedValueFromJson(json);

  @override
  final Object family;
  @override
  final ZacTransformers? transformer;
  @override
  final ZacTransformers? select;
  @override
  final SharedValueConsumeType? forceConsume;

  @JsonKey(name: 'converter')
  final String $type;

  @override
  String toString() {
    return 'ZacString.consume(family: $family, transformer: $transformer, select: $select, forceConsume: $forceConsume)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ZacStringConsumeSharedValue &&
            const DeepCollectionEquality().equals(other.family, family) &&
            (identical(other.transformer, transformer) ||
                other.transformer == transformer) &&
            (identical(other.select, select) || other.select == select) &&
            (identical(other.forceConsume, forceConsume) ||
                other.forceConsume == forceConsume));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(family),
      transformer,
      select,
      forceConsume);

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_ZacString value) $default, {
    required TResult Function(_ZacStringConsumeSharedValue value) consume,
  }) {
    return consume(this);
  }
}

abstract class _ZacStringConsumeSharedValue extends ZacString
    implements ConsumeSharedValue<String> {
  factory _ZacStringConsumeSharedValue(
          {required final Object family,
          final ZacTransformers? transformer,
          final ZacTransformers? select,
          final SharedValueConsumeType? forceConsume}) =
      _$_ZacStringConsumeSharedValue;
  _ZacStringConsumeSharedValue._() : super._();

  factory _ZacStringConsumeSharedValue.fromJson(Map<String, dynamic> json) =
      _$_ZacStringConsumeSharedValue.fromJson;

  Object get family;
  ZacTransformers? get transformer;
  ZacTransformers? get select;
  SharedValueConsumeType? get forceConsume;
}

ZacBool _$ZacBoolFromJson(Map<String, dynamic> json) {
  switch (json['converter']) {
    case 'z:1:bool':
      return _ZacBool.fromJson(json);
    case 'z:1:bool.consume':
      return _ZacBoolConsumeSharedValue.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'converter', 'ZacBool',
          'Invalid union type "${json['converter']}"!');
  }
}

/// @nodoc
mixin _$ZacBool {
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_ZacBool value) $default, {
    required TResult Function(_ZacBoolConsumeSharedValue value) consume,
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_ZacBool extends _ZacBool with ZacSimpleValue<bool> {
  _$_ZacBool({required this.value, final String? $type})
      : $type = $type ?? 'z:1:bool',
        super._();

  factory _$_ZacBool.fromJson(Map<String, dynamic> json) =>
      _$$_ZacBoolFromJson(json);

  @override
  final bool value;

  @JsonKey(name: 'converter')
  final String $type;

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
    TResult Function(_ZacBool value) $default, {
    required TResult Function(_ZacBoolConsumeSharedValue value) consume,
  }) {
    return $default(this);
  }
}

abstract class _ZacBool extends ZacBool implements ZacSimpleValue<bool> {
  factory _ZacBool({required final bool value}) = _$_ZacBool;
  _ZacBool._() : super._();

  factory _ZacBool.fromJson(Map<String, dynamic> json) = _$_ZacBool.fromJson;

  bool get value;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_ZacBoolConsumeSharedValue extends _ZacBoolConsumeSharedValue
    with ConsumeSharedValue<bool> {
  _$_ZacBoolConsumeSharedValue(
      {required this.family,
      this.transformer,
      this.select,
      this.forceConsume,
      final String? $type})
      : $type = $type ?? 'z:1:bool.consume',
        super._();

  factory _$_ZacBoolConsumeSharedValue.fromJson(Map<String, dynamic> json) =>
      _$$_ZacBoolConsumeSharedValueFromJson(json);

  @override
  final Object family;
  @override
  final ZacTransformers? transformer;
  @override
  final ZacTransformers? select;
  @override
  final SharedValueConsumeType? forceConsume;

  @JsonKey(name: 'converter')
  final String $type;

  @override
  String toString() {
    return 'ZacBool.consume(family: $family, transformer: $transformer, select: $select, forceConsume: $forceConsume)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ZacBoolConsumeSharedValue &&
            const DeepCollectionEquality().equals(other.family, family) &&
            (identical(other.transformer, transformer) ||
                other.transformer == transformer) &&
            (identical(other.select, select) || other.select == select) &&
            (identical(other.forceConsume, forceConsume) ||
                other.forceConsume == forceConsume));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(family),
      transformer,
      select,
      forceConsume);

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_ZacBool value) $default, {
    required TResult Function(_ZacBoolConsumeSharedValue value) consume,
  }) {
    return consume(this);
  }
}

abstract class _ZacBoolConsumeSharedValue extends ZacBool
    implements ConsumeSharedValue<bool> {
  factory _ZacBoolConsumeSharedValue(
          {required final Object family,
          final ZacTransformers? transformer,
          final ZacTransformers? select,
          final SharedValueConsumeType? forceConsume}) =
      _$_ZacBoolConsumeSharedValue;
  _ZacBoolConsumeSharedValue._() : super._();

  factory _ZacBoolConsumeSharedValue.fromJson(Map<String, dynamic> json) =
      _$_ZacBoolConsumeSharedValue.fromJson;

  Object get family;
  ZacTransformers? get transformer;
  ZacTransformers? get select;
  SharedValueConsumeType? get forceConsume;
}

ZacObject _$ZacObjectFromJson(Map<String, dynamic> json) {
  switch (json['converter']) {
    case 'z:1:Object':
      return _ZacObject.fromJson(json);
    case 'z:1:Object.consume':
      return _ZacObjectConsumeSharedValue.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'converter', 'ZacObject',
          'Invalid union type "${json['converter']}"!');
  }
}

/// @nodoc
mixin _$ZacObject {
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_ZacObject value) $default, {
    required TResult Function(_ZacObjectConsumeSharedValue value) consume,
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_ZacObject extends _ZacObject with ZacSimpleValue<Object> {
  _$_ZacObject({required this.value, final String? $type})
      : $type = $type ?? 'z:1:Object',
        super._();

  factory _$_ZacObject.fromJson(Map<String, dynamic> json) =>
      _$$_ZacObjectFromJson(json);

  @override
  final Object value;

  @JsonKey(name: 'converter')
  final String $type;

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
    TResult Function(_ZacObject value) $default, {
    required TResult Function(_ZacObjectConsumeSharedValue value) consume,
  }) {
    return $default(this);
  }
}

abstract class _ZacObject extends ZacObject implements ZacSimpleValue<Object> {
  factory _ZacObject({required final Object value}) = _$_ZacObject;
  _ZacObject._() : super._();

  factory _ZacObject.fromJson(Map<String, dynamic> json) =
      _$_ZacObject.fromJson;

  Object get value;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_ZacObjectConsumeSharedValue extends _ZacObjectConsumeSharedValue
    with ConsumeSharedValue<Object> {
  _$_ZacObjectConsumeSharedValue(
      {required this.family,
      this.transformer,
      this.select,
      this.forceConsume,
      final String? $type})
      : $type = $type ?? 'z:1:Object.consume',
        super._();

  factory _$_ZacObjectConsumeSharedValue.fromJson(Map<String, dynamic> json) =>
      _$$_ZacObjectConsumeSharedValueFromJson(json);

  @override
  final Object family;
  @override
  final ZacTransformers? transformer;
  @override
  final ZacTransformers? select;
  @override
  final SharedValueConsumeType? forceConsume;

  @JsonKey(name: 'converter')
  final String $type;

  @override
  String toString() {
    return 'ZacObject.consume(family: $family, transformer: $transformer, select: $select, forceConsume: $forceConsume)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ZacObjectConsumeSharedValue &&
            const DeepCollectionEquality().equals(other.family, family) &&
            (identical(other.transformer, transformer) ||
                other.transformer == transformer) &&
            (identical(other.select, select) || other.select == select) &&
            (identical(other.forceConsume, forceConsume) ||
                other.forceConsume == forceConsume));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(family),
      transformer,
      select,
      forceConsume);

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_ZacObject value) $default, {
    required TResult Function(_ZacObjectConsumeSharedValue value) consume,
  }) {
    return consume(this);
  }
}

abstract class _ZacObjectConsumeSharedValue extends ZacObject
    implements ConsumeSharedValue<Object> {
  factory _ZacObjectConsumeSharedValue(
          {required final Object family,
          final ZacTransformers? transformer,
          final ZacTransformers? select,
          final SharedValueConsumeType? forceConsume}) =
      _$_ZacObjectConsumeSharedValue;
  _ZacObjectConsumeSharedValue._() : super._();

  factory _ZacObjectConsumeSharedValue.fromJson(Map<String, dynamic> json) =
      _$_ZacObjectConsumeSharedValue.fromJson;

  Object get family;
  ZacTransformers? get transformer;
  ZacTransformers? get select;
  SharedValueConsumeType? get forceConsume;
}

ZacFlutterWidget _$ZacFlutterWidgetFromJson(Map<String, dynamic> json) {
  switch (json['converter']) {
    case 'z:1:FlutterWidget':
      return _ZacFlutterWidget.fromJson(json);
    case 'z:1:FlutterWidget.consume':
      return _ZacFlutterWidgetConsumeSharedValue.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'converter', 'ZacFlutterWidget',
          'Invalid union type "${json['converter']}"!');
  }
}

/// @nodoc
mixin _$ZacFlutterWidget {
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_ZacFlutterWidget value) $default, {
    required TResult Function(_ZacFlutterWidgetConsumeSharedValue value)
        consume,
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_ZacFlutterWidget extends _ZacFlutterWidget
    with ZacSimpleValue<FlutterWidget> {
  _$_ZacFlutterWidget({required this.value, final String? $type})
      : $type = $type ?? 'z:1:FlutterWidget',
        super._();

  factory _$_ZacFlutterWidget.fromJson(Map<String, dynamic> json) =>
      _$$_ZacFlutterWidgetFromJson(json);

  @override
  final FlutterWidget value;

  @JsonKey(name: 'converter')
  final String $type;

  @override
  String toString() {
    return 'ZacFlutterWidget(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ZacFlutterWidget &&
            (identical(other.value, value) || other.value == value));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, value);

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_ZacFlutterWidget value) $default, {
    required TResult Function(_ZacFlutterWidgetConsumeSharedValue value)
        consume,
  }) {
    return $default(this);
  }
}

abstract class _ZacFlutterWidget extends ZacFlutterWidget
    implements ZacSimpleValue<FlutterWidget> {
  factory _ZacFlutterWidget({required final FlutterWidget value}) =
      _$_ZacFlutterWidget;
  _ZacFlutterWidget._() : super._();

  factory _ZacFlutterWidget.fromJson(Map<String, dynamic> json) =
      _$_ZacFlutterWidget.fromJson;

  FlutterWidget get value;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_ZacFlutterWidgetConsumeSharedValue
    extends _ZacFlutterWidgetConsumeSharedValue
    with ConsumeSharedValue<FlutterWidget> {
  _$_ZacFlutterWidgetConsumeSharedValue(
      {required this.family,
      this.transformer,
      this.select,
      this.forceConsume,
      final String? $type})
      : $type = $type ?? 'z:1:FlutterWidget.consume',
        super._();

  factory _$_ZacFlutterWidgetConsumeSharedValue.fromJson(
          Map<String, dynamic> json) =>
      _$$_ZacFlutterWidgetConsumeSharedValueFromJson(json);

  @override
  final Object family;
  @override
  final ZacTransformers? transformer;
  @override
  final ZacTransformers? select;
  @override
  final SharedValueConsumeType? forceConsume;

  @JsonKey(name: 'converter')
  final String $type;

  @override
  String toString() {
    return 'ZacFlutterWidget.consume(family: $family, transformer: $transformer, select: $select, forceConsume: $forceConsume)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ZacFlutterWidgetConsumeSharedValue &&
            const DeepCollectionEquality().equals(other.family, family) &&
            (identical(other.transformer, transformer) ||
                other.transformer == transformer) &&
            (identical(other.select, select) || other.select == select) &&
            (identical(other.forceConsume, forceConsume) ||
                other.forceConsume == forceConsume));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(family),
      transformer,
      select,
      forceConsume);

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_ZacFlutterWidget value) $default, {
    required TResult Function(_ZacFlutterWidgetConsumeSharedValue value)
        consume,
  }) {
    return consume(this);
  }
}

abstract class _ZacFlutterWidgetConsumeSharedValue extends ZacFlutterWidget
    implements ConsumeSharedValue<FlutterWidget> {
  factory _ZacFlutterWidgetConsumeSharedValue(
          {required final Object family,
          final ZacTransformers? transformer,
          final ZacTransformers? select,
          final SharedValueConsumeType? forceConsume}) =
      _$_ZacFlutterWidgetConsumeSharedValue;
  _ZacFlutterWidgetConsumeSharedValue._() : super._();

  factory _ZacFlutterWidgetConsumeSharedValue.fromJson(
          Map<String, dynamic> json) =
      _$_ZacFlutterWidgetConsumeSharedValue.fromJson;

  Object get family;
  ZacTransformers? get transformer;
  ZacTransformers? get select;
  SharedValueConsumeType? get forceConsume;
}

ZacDateTime _$ZacDateTimeFromJson(Map<String, dynamic> json) {
  switch (json['converter']) {
    case 'z:1:DateTime':
      return _ZacDateTime.fromJson(json);
    case 'z:1:DateTime.consume':
      return _ZacDateTimeSharedValue.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'converter', 'ZacDateTime',
          'Invalid union type "${json['converter']}"!');
  }
}

/// @nodoc
mixin _$ZacDateTime {
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_ZacDateTime value) $default, {
    required TResult Function(_ZacDateTimeSharedValue value) consume,
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_ZacDateTime extends _ZacDateTime with ZacSimpleValue<DateTime> {
  _$_ZacDateTime({required this.value, final String? $type})
      : $type = $type ?? 'z:1:DateTime',
        super._();

  factory _$_ZacDateTime.fromJson(Map<String, dynamic> json) =>
      _$$_ZacDateTimeFromJson(json);

  @override
  final DateTime value;

  @JsonKey(name: 'converter')
  final String $type;

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
    TResult Function(_ZacDateTime value) $default, {
    required TResult Function(_ZacDateTimeSharedValue value) consume,
  }) {
    return $default(this);
  }
}

abstract class _ZacDateTime extends ZacDateTime
    implements ZacSimpleValue<DateTime> {
  factory _ZacDateTime({required final DateTime value}) = _$_ZacDateTime;
  _ZacDateTime._() : super._();

  factory _ZacDateTime.fromJson(Map<String, dynamic> json) =
      _$_ZacDateTime.fromJson;

  DateTime get value;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_ZacDateTimeSharedValue extends _ZacDateTimeSharedValue
    with ConsumeSharedValue<DateTime> {
  _$_ZacDateTimeSharedValue(
      {required this.family,
      this.transformer,
      this.select,
      this.forceConsume,
      final String? $type})
      : $type = $type ?? 'z:1:DateTime.consume',
        super._();

  factory _$_ZacDateTimeSharedValue.fromJson(Map<String, dynamic> json) =>
      _$$_ZacDateTimeSharedValueFromJson(json);

  @override
  final Object family;
  @override
  final ZacTransformers? transformer;
  @override
  final ZacTransformers? select;
  @override
  final SharedValueConsumeType? forceConsume;

  @JsonKey(name: 'converter')
  final String $type;

  @override
  String toString() {
    return 'ZacDateTime.consume(family: $family, transformer: $transformer, select: $select, forceConsume: $forceConsume)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ZacDateTimeSharedValue &&
            const DeepCollectionEquality().equals(other.family, family) &&
            (identical(other.transformer, transformer) ||
                other.transformer == transformer) &&
            (identical(other.select, select) || other.select == select) &&
            (identical(other.forceConsume, forceConsume) ||
                other.forceConsume == forceConsume));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(family),
      transformer,
      select,
      forceConsume);

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_ZacDateTime value) $default, {
    required TResult Function(_ZacDateTimeSharedValue value) consume,
  }) {
    return consume(this);
  }
}

abstract class _ZacDateTimeSharedValue extends ZacDateTime
    implements ConsumeSharedValue<DateTime> {
  factory _ZacDateTimeSharedValue(
      {required final Object family,
      final ZacTransformers? transformer,
      final ZacTransformers? select,
      final SharedValueConsumeType? forceConsume}) = _$_ZacDateTimeSharedValue;
  _ZacDateTimeSharedValue._() : super._();

  factory _ZacDateTimeSharedValue.fromJson(Map<String, dynamic> json) =
      _$_ZacDateTimeSharedValue.fromJson;

  Object get family;
  ZacTransformers? get transformer;
  ZacTransformers? get select;
  SharedValueConsumeType? get forceConsume;
}

ZacListOfFlutterWidget _$ZacListOfFlutterWidgetFromJson(
    Map<String, dynamic> json) {
  switch (json['converter']) {
    case 'z:1:List<FlutterWidget>':
      return _ZacListOfFlutterWidget.fromJson(json);
    case 'z:1:List<FlutterWidget>.consume':
      return _ZacListOfFlutterWidgetSharedValue.fromJson(json);

    default:
      throw CheckedFromJsonException(
          json,
          'converter',
          'ZacListOfFlutterWidget',
          'Invalid union type "${json['converter']}"!');
  }
}

/// @nodoc
mixin _$ZacListOfFlutterWidget {
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_ZacListOfFlutterWidget value) $default, {
    required TResult Function(_ZacListOfFlutterWidgetSharedValue value) consume,
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_ZacListOfFlutterWidget extends _ZacListOfFlutterWidget
    with ZacSimpleValueList<FlutterWidget> {
  _$_ZacListOfFlutterWidget(
      {required final List<FlutterWidget> items, final String? $type})
      : _items = items,
        $type = $type ?? 'z:1:List<FlutterWidget>',
        super._();

  factory _$_ZacListOfFlutterWidget.fromJson(Map<String, dynamic> json) =>
      _$$_ZacListOfFlutterWidgetFromJson(json);

  final List<FlutterWidget> _items;
  @override
  List<FlutterWidget> get items {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @JsonKey(name: 'converter')
  final String $type;

  @override
  String toString() {
    return 'ZacListOfFlutterWidget(items: $items)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ZacListOfFlutterWidget &&
            const DeepCollectionEquality().equals(other._items, _items));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_items));

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_ZacListOfFlutterWidget value) $default, {
    required TResult Function(_ZacListOfFlutterWidgetSharedValue value) consume,
  }) {
    return $default(this);
  }
}

abstract class _ZacListOfFlutterWidget extends ZacListOfFlutterWidget
    implements ZacSimpleValueList<FlutterWidget> {
  factory _ZacListOfFlutterWidget({required final List<FlutterWidget> items}) =
      _$_ZacListOfFlutterWidget;
  _ZacListOfFlutterWidget._() : super._();

  factory _ZacListOfFlutterWidget.fromJson(Map<String, dynamic> json) =
      _$_ZacListOfFlutterWidget.fromJson;

  List<FlutterWidget> get items;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_ZacListOfFlutterWidgetSharedValue
    extends _ZacListOfFlutterWidgetSharedValue
    with ConsumeSharedValueList<FlutterWidget> {
  _$_ZacListOfFlutterWidgetSharedValue(
      {required this.family,
      this.transformer,
      this.itemTransformer,
      this.select,
      this.forceConsume,
      final String? $type})
      : $type = $type ?? 'z:1:List<FlutterWidget>.consume',
        super._();

  factory _$_ZacListOfFlutterWidgetSharedValue.fromJson(
          Map<String, dynamic> json) =>
      _$$_ZacListOfFlutterWidgetSharedValueFromJson(json);

  @override
  final Object family;
  @override
  final ZacTransformers? transformer;
  @override
  final ZacTransformers? itemTransformer;
  @override
  final ZacTransformers? select;
  @override
  final SharedValueConsumeType? forceConsume;

  @JsonKey(name: 'converter')
  final String $type;

  @override
  String toString() {
    return 'ZacListOfFlutterWidget.consume(family: $family, transformer: $transformer, itemTransformer: $itemTransformer, select: $select, forceConsume: $forceConsume)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ZacListOfFlutterWidgetSharedValue &&
            const DeepCollectionEquality().equals(other.family, family) &&
            (identical(other.transformer, transformer) ||
                other.transformer == transformer) &&
            (identical(other.itemTransformer, itemTransformer) ||
                other.itemTransformer == itemTransformer) &&
            (identical(other.select, select) || other.select == select) &&
            (identical(other.forceConsume, forceConsume) ||
                other.forceConsume == forceConsume));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(family),
      transformer,
      itemTransformer,
      select,
      forceConsume);

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_ZacListOfFlutterWidget value) $default, {
    required TResult Function(_ZacListOfFlutterWidgetSharedValue value) consume,
  }) {
    return consume(this);
  }
}

abstract class _ZacListOfFlutterWidgetSharedValue extends ZacListOfFlutterWidget
    implements ConsumeSharedValueList<FlutterWidget> {
  factory _ZacListOfFlutterWidgetSharedValue(
          {required final Object family,
          final ZacTransformers? transformer,
          final ZacTransformers? itemTransformer,
          final ZacTransformers? select,
          final SharedValueConsumeType? forceConsume}) =
      _$_ZacListOfFlutterWidgetSharedValue;
  _ZacListOfFlutterWidgetSharedValue._() : super._();

  factory _ZacListOfFlutterWidgetSharedValue.fromJson(
          Map<String, dynamic> json) =
      _$_ZacListOfFlutterWidgetSharedValue.fromJson;

  Object get family;
  ZacTransformers? get transformer;
  ZacTransformers? get itemTransformer;
  ZacTransformers? get select;
  SharedValueConsumeType? get forceConsume;
}

ZacValueActions _$ZacValueActionsFromJson(Map<String, dynamic> json) {
  return _ZacValueActionsAsPayload.fromJson(json);
}

/// @nodoc
mixin _$ZacValueActions {
  ZacObject get value => throw _privateConstructorUsedError;
  ZacActions get actions => throw _privateConstructorUsedError;

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
  final ZacObject value;
  @override
  final ZacActions actions;

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
      {required final ZacObject value,
      required final ZacActions actions}) = _$_ZacValueActionsAsPayload;
  _ZacValueActionsAsPayload._() : super._();

  factory _ZacValueActionsAsPayload.fromJson(Map<String, dynamic> json) =
      _$_ZacValueActionsAsPayload.fromJson;

  @override
  ZacObject get value;
  @override
  ZacActions get actions;
}
