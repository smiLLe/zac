// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'any_value.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ZacInt _$ZacIntFromJson(Map<String, dynamic> json) {
  switch (json['_converter']) {
    case 'z:1:ZacInt':
      return ZacIntValue.fromJson(json);
    case 'z:1:ZacInt.consume':
      return ZacIntConsume.fromJson(json);

    default:
      throw CheckedFromJsonException(json, '_converter', 'ZacInt',
          'Invalid union type "${json['_converter']}"!');
  }
}

/// @nodoc
mixin _$ZacInt {
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(ZacIntValue value) $default, {
    required TResult Function(ZacIntConsume value) consume,
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$ZacIntValue extends ZacIntValue with ActualValue<int> {
  _$ZacIntValue(this.value, {final String? $type})
      : $type = $type ?? 'z:1:ZacInt',
        super._();

  factory _$ZacIntValue.fromJson(Map<String, dynamic> json) =>
      _$$ZacIntValueFromJson(json);

  @override
  final int value;

  @JsonKey(name: '_converter')
  final String $type;

  @override
  String toString() {
    return 'ZacInt(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ZacIntValue &&
            const DeepCollectionEquality().equals(other.value, value));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(value));

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(ZacIntValue value) $default, {
    required TResult Function(ZacIntConsume value) consume,
  }) {
    return $default(this);
  }
}

abstract class ZacIntValue extends ZacInt implements ActualValue<int> {
  factory ZacIntValue(final int value) = _$ZacIntValue;
  ZacIntValue._() : super._();

  factory ZacIntValue.fromJson(Map<String, dynamic> json) =
      _$ZacIntValue.fromJson;

  int get value;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$ZacIntConsume extends ZacIntConsume with ConsumeValue<int> {
  _$ZacIntConsume(
      {required this.family,
      this.consumeType,
      final List<ZacTransformer>? transformer,
      final String? $type})
      : _transformer = transformer,
        $type = $type ?? 'z:1:ZacInt.consume',
        super._();

  factory _$ZacIntConsume.fromJson(Map<String, dynamic> json) =>
      _$$ZacIntConsumeFromJson(json);

  @override
  final Object family;
  @override
  final SharedValueConsumeType? consumeType;
  final List<ZacTransformer>? _transformer;
  @override
  List<ZacTransformer>? get transformer {
    final value = _transformer;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @JsonKey(name: '_converter')
  final String $type;

  @override
  String toString() {
    return 'ZacInt.consume(family: $family, consumeType: $consumeType, transformer: $transformer)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ZacIntConsume &&
            const DeepCollectionEquality().equals(other.family, family) &&
            const DeepCollectionEquality()
                .equals(other.consumeType, consumeType) &&
            const DeepCollectionEquality()
                .equals(other._transformer, _transformer));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(family),
      const DeepCollectionEquality().hash(consumeType),
      const DeepCollectionEquality().hash(_transformer));

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(ZacIntValue value) $default, {
    required TResult Function(ZacIntConsume value) consume,
  }) {
    return consume(this);
  }
}

abstract class ZacIntConsume extends ZacInt implements ConsumeValue<int> {
  factory ZacIntConsume(
      {required final Object family,
      final SharedValueConsumeType? consumeType,
      final List<ZacTransformer>? transformer}) = _$ZacIntConsume;
  ZacIntConsume._() : super._();

  factory ZacIntConsume.fromJson(Map<String, dynamic> json) =
      _$ZacIntConsume.fromJson;

  Object get family;
  SharedValueConsumeType? get consumeType;
  List<ZacTransformer>? get transformer;
}

ZacDouble _$ZacDoubleFromJson(Map<String, dynamic> json) {
  switch (json['_converter']) {
    case 'z:1:ZacDouble':
      return ZacDoubleValue.fromJson(json);
    case 'z:1:ZacDouble.consume':
      return ZacDoubleConsume.fromJson(json);

    default:
      throw CheckedFromJsonException(json, '_converter', 'ZacDouble',
          'Invalid union type "${json['_converter']}"!');
  }
}

/// @nodoc
mixin _$ZacDouble {
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(ZacDoubleValue value) $default, {
    required TResult Function(ZacDoubleConsume value) consume,
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$ZacDoubleValue extends ZacDoubleValue with ActualValue<double> {
  _$ZacDoubleValue(this.value, {final String? $type})
      : $type = $type ?? 'z:1:ZacDouble',
        super._();

  factory _$ZacDoubleValue.fromJson(Map<String, dynamic> json) =>
      _$$ZacDoubleValueFromJson(json);

  @override
  final double value;

  @JsonKey(name: '_converter')
  final String $type;

  @override
  String toString() {
    return 'ZacDouble(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ZacDoubleValue &&
            const DeepCollectionEquality().equals(other.value, value));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(value));

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(ZacDoubleValue value) $default, {
    required TResult Function(ZacDoubleConsume value) consume,
  }) {
    return $default(this);
  }
}

abstract class ZacDoubleValue extends ZacDouble implements ActualValue<double> {
  factory ZacDoubleValue(final double value) = _$ZacDoubleValue;
  ZacDoubleValue._() : super._();

  factory ZacDoubleValue.fromJson(Map<String, dynamic> json) =
      _$ZacDoubleValue.fromJson;

  double get value;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$ZacDoubleConsume extends ZacDoubleConsume with ConsumeValue<double> {
  _$ZacDoubleConsume(
      {required this.family,
      this.consumeType,
      final List<ZacTransformer>? transformer,
      final String? $type})
      : _transformer = transformer,
        $type = $type ?? 'z:1:ZacDouble.consume',
        super._();

  factory _$ZacDoubleConsume.fromJson(Map<String, dynamic> json) =>
      _$$ZacDoubleConsumeFromJson(json);

  @override
  final Object family;
  @override
  final SharedValueConsumeType? consumeType;
  final List<ZacTransformer>? _transformer;
  @override
  List<ZacTransformer>? get transformer {
    final value = _transformer;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @JsonKey(name: '_converter')
  final String $type;

  @override
  String toString() {
    return 'ZacDouble.consume(family: $family, consumeType: $consumeType, transformer: $transformer)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ZacDoubleConsume &&
            const DeepCollectionEquality().equals(other.family, family) &&
            const DeepCollectionEquality()
                .equals(other.consumeType, consumeType) &&
            const DeepCollectionEquality()
                .equals(other._transformer, _transformer));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(family),
      const DeepCollectionEquality().hash(consumeType),
      const DeepCollectionEquality().hash(_transformer));

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(ZacDoubleValue value) $default, {
    required TResult Function(ZacDoubleConsume value) consume,
  }) {
    return consume(this);
  }
}

abstract class ZacDoubleConsume extends ZacDouble
    implements ConsumeValue<double> {
  factory ZacDoubleConsume(
      {required final Object family,
      final SharedValueConsumeType? consumeType,
      final List<ZacTransformer>? transformer}) = _$ZacDoubleConsume;
  ZacDoubleConsume._() : super._();

  factory ZacDoubleConsume.fromJson(Map<String, dynamic> json) =
      _$ZacDoubleConsume.fromJson;

  Object get family;
  SharedValueConsumeType? get consumeType;
  List<ZacTransformer>? get transformer;
}

ZacString _$ZacStringFromJson(Map<String, dynamic> json) {
  switch (json['_converter']) {
    case 'z:1:ZacString':
      return ZacStringValue.fromJson(json);
    case 'z:1:ZacString.consume':
      return ZacStringConsume.fromJson(json);

    default:
      throw CheckedFromJsonException(json, '_converter', 'ZacString',
          'Invalid union type "${json['_converter']}"!');
  }
}

/// @nodoc
mixin _$ZacString {
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(ZacStringValue value) $default, {
    required TResult Function(ZacStringConsume value) consume,
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$ZacStringValue extends ZacStringValue with ActualValue<String> {
  _$ZacStringValue(this.value, {final String? $type})
      : $type = $type ?? 'z:1:ZacString',
        super._();

  factory _$ZacStringValue.fromJson(Map<String, dynamic> json) =>
      _$$ZacStringValueFromJson(json);

  @override
  final String value;

  @JsonKey(name: '_converter')
  final String $type;

  @override
  String toString() {
    return 'ZacString(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ZacStringValue &&
            const DeepCollectionEquality().equals(other.value, value));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(value));

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(ZacStringValue value) $default, {
    required TResult Function(ZacStringConsume value) consume,
  }) {
    return $default(this);
  }
}

abstract class ZacStringValue extends ZacString implements ActualValue<String> {
  factory ZacStringValue(final String value) = _$ZacStringValue;
  ZacStringValue._() : super._();

  factory ZacStringValue.fromJson(Map<String, dynamic> json) =
      _$ZacStringValue.fromJson;

  String get value;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$ZacStringConsume extends ZacStringConsume with ConsumeValue<String> {
  _$ZacStringConsume(
      {required this.family,
      this.consumeType,
      final List<ZacTransformer>? transformer,
      final String? $type})
      : _transformer = transformer,
        $type = $type ?? 'z:1:ZacString.consume',
        super._();

  factory _$ZacStringConsume.fromJson(Map<String, dynamic> json) =>
      _$$ZacStringConsumeFromJson(json);

  @override
  final Object family;
  @override
  final SharedValueConsumeType? consumeType;
  final List<ZacTransformer>? _transformer;
  @override
  List<ZacTransformer>? get transformer {
    final value = _transformer;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @JsonKey(name: '_converter')
  final String $type;

  @override
  String toString() {
    return 'ZacString.consume(family: $family, consumeType: $consumeType, transformer: $transformer)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ZacStringConsume &&
            const DeepCollectionEquality().equals(other.family, family) &&
            const DeepCollectionEquality()
                .equals(other.consumeType, consumeType) &&
            const DeepCollectionEquality()
                .equals(other._transformer, _transformer));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(family),
      const DeepCollectionEquality().hash(consumeType),
      const DeepCollectionEquality().hash(_transformer));

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(ZacStringValue value) $default, {
    required TResult Function(ZacStringConsume value) consume,
  }) {
    return consume(this);
  }
}

abstract class ZacStringConsume extends ZacString
    implements ConsumeValue<String> {
  factory ZacStringConsume(
      {required final Object family,
      final SharedValueConsumeType? consumeType,
      final List<ZacTransformer>? transformer}) = _$ZacStringConsume;
  ZacStringConsume._() : super._();

  factory ZacStringConsume.fromJson(Map<String, dynamic> json) =
      _$ZacStringConsume.fromJson;

  Object get family;
  SharedValueConsumeType? get consumeType;
  List<ZacTransformer>? get transformer;
}

ZacBool _$ZacBoolFromJson(Map<String, dynamic> json) {
  switch (json['_converter']) {
    case 'z:1:ZacBool':
      return ZacBoolValue.fromJson(json);
    case 'z:1:ZacBool.consume':
      return ZacBoolConsume.fromJson(json);

    default:
      throw CheckedFromJsonException(json, '_converter', 'ZacBool',
          'Invalid union type "${json['_converter']}"!');
  }
}

/// @nodoc
mixin _$ZacBool {
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(ZacBoolValue value) $default, {
    required TResult Function(ZacBoolConsume value) consume,
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$ZacBoolValue extends ZacBoolValue with ActualValue<bool> {
  _$ZacBoolValue(this.value, {final String? $type})
      : $type = $type ?? 'z:1:ZacBool',
        super._();

  factory _$ZacBoolValue.fromJson(Map<String, dynamic> json) =>
      _$$ZacBoolValueFromJson(json);

  @override
  final bool value;

  @JsonKey(name: '_converter')
  final String $type;

  @override
  String toString() {
    return 'ZacBool(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ZacBoolValue &&
            const DeepCollectionEquality().equals(other.value, value));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(value));

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(ZacBoolValue value) $default, {
    required TResult Function(ZacBoolConsume value) consume,
  }) {
    return $default(this);
  }
}

abstract class ZacBoolValue extends ZacBool implements ActualValue<bool> {
  factory ZacBoolValue(final bool value) = _$ZacBoolValue;
  ZacBoolValue._() : super._();

  factory ZacBoolValue.fromJson(Map<String, dynamic> json) =
      _$ZacBoolValue.fromJson;

  bool get value;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$ZacBoolConsume extends ZacBoolConsume with ConsumeValue<bool> {
  _$ZacBoolConsume(
      {required this.family,
      this.consumeType,
      final List<ZacTransformer>? transformer,
      final String? $type})
      : _transformer = transformer,
        $type = $type ?? 'z:1:ZacBool.consume',
        super._();

  factory _$ZacBoolConsume.fromJson(Map<String, dynamic> json) =>
      _$$ZacBoolConsumeFromJson(json);

  @override
  final Object family;
  @override
  final SharedValueConsumeType? consumeType;
  final List<ZacTransformer>? _transformer;
  @override
  List<ZacTransformer>? get transformer {
    final value = _transformer;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @JsonKey(name: '_converter')
  final String $type;

  @override
  String toString() {
    return 'ZacBool.consume(family: $family, consumeType: $consumeType, transformer: $transformer)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ZacBoolConsume &&
            const DeepCollectionEquality().equals(other.family, family) &&
            const DeepCollectionEquality()
                .equals(other.consumeType, consumeType) &&
            const DeepCollectionEquality()
                .equals(other._transformer, _transformer));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(family),
      const DeepCollectionEquality().hash(consumeType),
      const DeepCollectionEquality().hash(_transformer));

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(ZacBoolValue value) $default, {
    required TResult Function(ZacBoolConsume value) consume,
  }) {
    return consume(this);
  }
}

abstract class ZacBoolConsume extends ZacBool implements ConsumeValue<bool> {
  factory ZacBoolConsume(
      {required final Object family,
      final SharedValueConsumeType? consumeType,
      final List<ZacTransformer>? transformer}) = _$ZacBoolConsume;
  ZacBoolConsume._() : super._();

  factory ZacBoolConsume.fromJson(Map<String, dynamic> json) =
      _$ZacBoolConsume.fromJson;

  Object get family;
  SharedValueConsumeType? get consumeType;
  List<ZacTransformer>? get transformer;
}

ZacMap _$ZacMapFromJson(Map<String, dynamic> json) {
  switch (json['_converter']) {
    case 'z:1:ZacMap':
      return ZacMapValue.fromJson(json);
    case 'z:1:ZacMap.consume':
      return ZacMapConsume.fromJson(json);

    default:
      throw CheckedFromJsonException(json, '_converter', 'ZacMap',
          'Invalid union type "${json['_converter']}"!');
  }
}

/// @nodoc
mixin _$ZacMap {
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(ZacMapValue value) $default, {
    required TResult Function(ZacMapConsume value) consume,
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$ZacMapValue extends ZacMapValue with ActualValue<Map<String, dynamic>> {
  _$ZacMapValue(final Map<String, dynamic> value, {final String? $type})
      : _value = value,
        $type = $type ?? 'z:1:ZacMap',
        super._();

  factory _$ZacMapValue.fromJson(Map<String, dynamic> json) =>
      _$$ZacMapValueFromJson(json);

  final Map<String, dynamic> _value;
  @override
  Map<String, dynamic> get value {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_value);
  }

  @JsonKey(name: '_converter')
  final String $type;

  @override
  String toString() {
    return 'ZacMap(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ZacMapValue &&
            const DeepCollectionEquality().equals(other._value, _value));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_value));

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(ZacMapValue value) $default, {
    required TResult Function(ZacMapConsume value) consume,
  }) {
    return $default(this);
  }
}

abstract class ZacMapValue extends ZacMap
    implements ActualValue<Map<String, dynamic>> {
  factory ZacMapValue(final Map<String, dynamic> value) = _$ZacMapValue;
  ZacMapValue._() : super._();

  factory ZacMapValue.fromJson(Map<String, dynamic> json) =
      _$ZacMapValue.fromJson;

  Map<String, dynamic> get value;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$ZacMapConsume extends ZacMapConsume
    with ConsumeValue<Map<String, dynamic>> {
  _$ZacMapConsume(
      {required this.family,
      this.consumeType,
      final List<ZacTransformer>? transformer,
      final String? $type})
      : _transformer = transformer,
        $type = $type ?? 'z:1:ZacMap.consume',
        super._();

  factory _$ZacMapConsume.fromJson(Map<String, dynamic> json) =>
      _$$ZacMapConsumeFromJson(json);

  @override
  final Object family;
  @override
  final SharedValueConsumeType? consumeType;
  final List<ZacTransformer>? _transformer;
  @override
  List<ZacTransformer>? get transformer {
    final value = _transformer;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @JsonKey(name: '_converter')
  final String $type;

  @override
  String toString() {
    return 'ZacMap.consume(family: $family, consumeType: $consumeType, transformer: $transformer)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ZacMapConsume &&
            const DeepCollectionEquality().equals(other.family, family) &&
            const DeepCollectionEquality()
                .equals(other.consumeType, consumeType) &&
            const DeepCollectionEquality()
                .equals(other._transformer, _transformer));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(family),
      const DeepCollectionEquality().hash(consumeType),
      const DeepCollectionEquality().hash(_transformer));

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(ZacMapValue value) $default, {
    required TResult Function(ZacMapConsume value) consume,
  }) {
    return consume(this);
  }
}

abstract class ZacMapConsume extends ZacMap
    implements ConsumeValue<Map<String, dynamic>> {
  factory ZacMapConsume(
      {required final Object family,
      final SharedValueConsumeType? consumeType,
      final List<ZacTransformer>? transformer}) = _$ZacMapConsume;
  ZacMapConsume._() : super._();

  factory ZacMapConsume.fromJson(Map<String, dynamic> json) =
      _$ZacMapConsume.fromJson;

  Object get family;
  SharedValueConsumeType? get consumeType;
  List<ZacTransformer>? get transformer;
}

ZacList _$ZacListFromJson(Map<String, dynamic> json) {
  switch (json['_converter']) {
    case 'z:1:ZacList':
      return ZacListValue.fromJson(json);
    case 'z:1:ZacList.consume':
      return ZacListConsume.fromJson(json);

    default:
      throw CheckedFromJsonException(json, '_converter', 'ZacList',
          'Invalid union type "${json['_converter']}"!');
  }
}

/// @nodoc
mixin _$ZacList {
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(ZacListValue value) $default, {
    required TResult Function(ZacListConsume value) consume,
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$ZacListValue extends ZacListValue with ActualValue<List<dynamic>> {
  _$ZacListValue(final List<dynamic> value, {final String? $type})
      : _value = value,
        $type = $type ?? 'z:1:ZacList',
        super._();

  factory _$ZacListValue.fromJson(Map<String, dynamic> json) =>
      _$$ZacListValueFromJson(json);

  final List<dynamic> _value;
  @override
  List<dynamic> get value {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_value);
  }

  @JsonKey(name: '_converter')
  final String $type;

  @override
  String toString() {
    return 'ZacList(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ZacListValue &&
            const DeepCollectionEquality().equals(other._value, _value));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_value));

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(ZacListValue value) $default, {
    required TResult Function(ZacListConsume value) consume,
  }) {
    return $default(this);
  }
}

abstract class ZacListValue extends ZacList
    implements ActualValue<List<dynamic>> {
  factory ZacListValue(final List<dynamic> value) = _$ZacListValue;
  ZacListValue._() : super._();

  factory ZacListValue.fromJson(Map<String, dynamic> json) =
      _$ZacListValue.fromJson;

  List<dynamic> get value;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$ZacListConsume extends ZacListConsume with ConsumeValue<List<dynamic>> {
  _$ZacListConsume(
      {required this.family,
      this.consumeType,
      final List<ZacTransformer>? transformer,
      final String? $type})
      : _transformer = transformer,
        $type = $type ?? 'z:1:ZacList.consume',
        super._();

  factory _$ZacListConsume.fromJson(Map<String, dynamic> json) =>
      _$$ZacListConsumeFromJson(json);

  @override
  final Object family;
  @override
  final SharedValueConsumeType? consumeType;
  final List<ZacTransformer>? _transformer;
  @override
  List<ZacTransformer>? get transformer {
    final value = _transformer;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @JsonKey(name: '_converter')
  final String $type;

  @override
  String toString() {
    return 'ZacList.consume(family: $family, consumeType: $consumeType, transformer: $transformer)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ZacListConsume &&
            const DeepCollectionEquality().equals(other.family, family) &&
            const DeepCollectionEquality()
                .equals(other.consumeType, consumeType) &&
            const DeepCollectionEquality()
                .equals(other._transformer, _transformer));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(family),
      const DeepCollectionEquality().hash(consumeType),
      const DeepCollectionEquality().hash(_transformer));

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(ZacListValue value) $default, {
    required TResult Function(ZacListConsume value) consume,
  }) {
    return consume(this);
  }
}

abstract class ZacListConsume extends ZacList
    implements ConsumeValue<List<dynamic>> {
  factory ZacListConsume(
      {required final Object family,
      final SharedValueConsumeType? consumeType,
      final List<ZacTransformer>? transformer}) = _$ZacListConsume;
  ZacListConsume._() : super._();

  factory ZacListConsume.fromJson(Map<String, dynamic> json) =
      _$ZacListConsume.fromJson;

  Object get family;
  SharedValueConsumeType? get consumeType;
  List<ZacTransformer>? get transformer;
}

ZacObject _$ZacObjectFromJson(Map<String, dynamic> json) {
  switch (json['_converter']) {
    case 'z:1:ZacObject':
      return ZacObjectValue.fromJson(json);
    case 'z:1:ZacObject.consume':
      return ZacObjectConsume.fromJson(json);

    default:
      throw CheckedFromJsonException(json, '_converter', 'ZacObject',
          'Invalid union type "${json['_converter']}"!');
  }
}

/// @nodoc
mixin _$ZacObject {
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(ZacObjectValue value) $default, {
    required TResult Function(ZacObjectConsume value) consume,
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$ZacObjectValue extends ZacObjectValue with ActualValue<Object> {
  _$ZacObjectValue(this.value, {final String? $type})
      : $type = $type ?? 'z:1:ZacObject',
        super._();

  factory _$ZacObjectValue.fromJson(Map<String, dynamic> json) =>
      _$$ZacObjectValueFromJson(json);

  @override
  final Object value;

  @JsonKey(name: '_converter')
  final String $type;

  @override
  String toString() {
    return 'ZacObject(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ZacObjectValue &&
            const DeepCollectionEquality().equals(other.value, value));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(value));

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(ZacObjectValue value) $default, {
    required TResult Function(ZacObjectConsume value) consume,
  }) {
    return $default(this);
  }
}

abstract class ZacObjectValue extends ZacObject implements ActualValue<Object> {
  factory ZacObjectValue(final Object value) = _$ZacObjectValue;
  ZacObjectValue._() : super._();

  factory ZacObjectValue.fromJson(Map<String, dynamic> json) =
      _$ZacObjectValue.fromJson;

  Object get value;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$ZacObjectConsume extends ZacObjectConsume with ConsumeValue<Object> {
  _$ZacObjectConsume(
      {required this.family,
      this.consumeType,
      final List<ZacTransformer>? transformer,
      final String? $type})
      : _transformer = transformer,
        $type = $type ?? 'z:1:ZacObject.consume',
        super._();

  factory _$ZacObjectConsume.fromJson(Map<String, dynamic> json) =>
      _$$ZacObjectConsumeFromJson(json);

  @override
  final Object family;
  @override
  final SharedValueConsumeType? consumeType;
  final List<ZacTransformer>? _transformer;
  @override
  List<ZacTransformer>? get transformer {
    final value = _transformer;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @JsonKey(name: '_converter')
  final String $type;

  @override
  String toString() {
    return 'ZacObject.consume(family: $family, consumeType: $consumeType, transformer: $transformer)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ZacObjectConsume &&
            const DeepCollectionEquality().equals(other.family, family) &&
            const DeepCollectionEquality()
                .equals(other.consumeType, consumeType) &&
            const DeepCollectionEquality()
                .equals(other._transformer, _transformer));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(family),
      const DeepCollectionEquality().hash(consumeType),
      const DeepCollectionEquality().hash(_transformer));

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(ZacObjectValue value) $default, {
    required TResult Function(ZacObjectConsume value) consume,
  }) {
    return consume(this);
  }
}

abstract class ZacObjectConsume extends ZacObject
    implements ConsumeValue<Object> {
  factory ZacObjectConsume(
      {required final Object family,
      final SharedValueConsumeType? consumeType,
      final List<ZacTransformer>? transformer}) = _$ZacObjectConsume;
  ZacObjectConsume._() : super._();

  factory ZacObjectConsume.fromJson(Map<String, dynamic> json) =
      _$ZacObjectConsume.fromJson;

  Object get family;
  SharedValueConsumeType? get consumeType;
  List<ZacTransformer>? get transformer;
}

ListOfZacWidget _$ListOfZacWidgetFromJson(Map<String, dynamic> json) {
  switch (json['_converter']) {
    case 'z:1:ListOfZacWidget':
      return ListOfZacWidgetValue.fromJson(json);
    case 'z:1:ListOfZacWidget.consume':
      return ListOfZacWidgetConsume.fromJson(json);

    default:
      throw CheckedFromJsonException(json, '_converter', 'ListOfZacWidget',
          'Invalid union type "${json['_converter']}"!');
  }
}

/// @nodoc
mixin _$ListOfZacWidget {
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(ListOfZacWidgetValue value) $default, {
    required TResult Function(ListOfZacWidgetConsume value) consume,
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$ListOfZacWidgetValue extends ListOfZacWidgetValue
    with ActualValue<List<ZacWidget>> {
  _$ListOfZacWidgetValue(final List<ZacWidget> value, {final String? $type})
      : _value = value,
        $type = $type ?? 'z:1:ListOfZacWidget',
        super._();

  factory _$ListOfZacWidgetValue.fromJson(Map<String, dynamic> json) =>
      _$$ListOfZacWidgetValueFromJson(json);

  final List<ZacWidget> _value;
  @override
  List<ZacWidget> get value {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_value);
  }

  @JsonKey(name: '_converter')
  final String $type;

  @override
  String toString() {
    return 'ListOfZacWidget(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ListOfZacWidgetValue &&
            const DeepCollectionEquality().equals(other._value, _value));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_value));

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(ListOfZacWidgetValue value) $default, {
    required TResult Function(ListOfZacWidgetConsume value) consume,
  }) {
    return $default(this);
  }
}

abstract class ListOfZacWidgetValue extends ListOfZacWidget
    implements ActualValue<List<ZacWidget>> {
  factory ListOfZacWidgetValue(final List<ZacWidget> value) =
      _$ListOfZacWidgetValue;
  ListOfZacWidgetValue._() : super._();

  factory ListOfZacWidgetValue.fromJson(Map<String, dynamic> json) =
      _$ListOfZacWidgetValue.fromJson;

  List<ZacWidget> get value;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$ListOfZacWidgetConsume extends ListOfZacWidgetConsume
    with ConsumeValueList<ZacWidget> {
  _$ListOfZacWidgetConsume(
      {required this.family,
      this.consumeType,
      final List<ZacTransformer>? transformer,
      final String? $type})
      : _transformer = transformer,
        $type = $type ?? 'z:1:ListOfZacWidget.consume',
        super._();

  factory _$ListOfZacWidgetConsume.fromJson(Map<String, dynamic> json) =>
      _$$ListOfZacWidgetConsumeFromJson(json);

  @override
  final Object family;
  @override
  final SharedValueConsumeType? consumeType;
  final List<ZacTransformer>? _transformer;
  @override
  List<ZacTransformer>? get transformer {
    final value = _transformer;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @JsonKey(name: '_converter')
  final String $type;

  @override
  String toString() {
    return 'ListOfZacWidget.consume(family: $family, consumeType: $consumeType, transformer: $transformer)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ListOfZacWidgetConsume &&
            const DeepCollectionEquality().equals(other.family, family) &&
            const DeepCollectionEquality()
                .equals(other.consumeType, consumeType) &&
            const DeepCollectionEquality()
                .equals(other._transformer, _transformer));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(family),
      const DeepCollectionEquality().hash(consumeType),
      const DeepCollectionEquality().hash(_transformer));

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(ListOfZacWidgetValue value) $default, {
    required TResult Function(ListOfZacWidgetConsume value) consume,
  }) {
    return consume(this);
  }
}

abstract class ListOfZacWidgetConsume extends ListOfZacWidget
    implements ConsumeValueList<ZacWidget> {
  factory ListOfZacWidgetConsume(
      {required final Object family,
      final SharedValueConsumeType? consumeType,
      final List<ZacTransformer>? transformer}) = _$ListOfZacWidgetConsume;
  ListOfZacWidgetConsume._() : super._();

  factory ListOfZacWidgetConsume.fromJson(Map<String, dynamic> json) =
      _$ListOfZacWidgetConsume.fromJson;

  Object get family;
  SharedValueConsumeType? get consumeType;
  List<ZacTransformer>? get transformer;
}

ZacWidgetConsumerBuilder _$ZacWidgetConsumerBuilderFromJson(
    Map<String, dynamic> json) {
  return _ZacWidgetConsumerBuilder.fromJson(json);
}

/// @nodoc
mixin _$ZacWidgetConsumerBuilder {
  Object get family => throw _privateConstructorUsedError;
  SharedValueConsumeType? get consumeType => throw _privateConstructorUsedError;
  List<ZacTransformer>? get transformer => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_ZacWidgetConsumerBuilder value) $default,
  ) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_ZacWidgetConsumerBuilder extends _ZacWidgetConsumerBuilder
    with ConsumeValue<ZacWidget> {
  _$_ZacWidgetConsumerBuilder(
      {required this.family,
      this.consumeType,
      final List<ZacTransformer>? transformer})
      : _transformer = transformer,
        super._();

  factory _$_ZacWidgetConsumerBuilder.fromJson(Map<String, dynamic> json) =>
      _$$_ZacWidgetConsumerBuilderFromJson(json);

  @override
  final Object family;
  @override
  final SharedValueConsumeType? consumeType;
  final List<ZacTransformer>? _transformer;
  @override
  List<ZacTransformer>? get transformer {
    final value = _transformer;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'ZacWidgetConsumerBuilder(family: $family, consumeType: $consumeType, transformer: $transformer)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ZacWidgetConsumerBuilder &&
            const DeepCollectionEquality().equals(other.family, family) &&
            const DeepCollectionEquality()
                .equals(other.consumeType, consumeType) &&
            const DeepCollectionEquality()
                .equals(other._transformer, _transformer));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(family),
      const DeepCollectionEquality().hash(consumeType),
      const DeepCollectionEquality().hash(_transformer));

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_ZacWidgetConsumerBuilder value) $default,
  ) {
    return $default(this);
  }
}

abstract class _ZacWidgetConsumerBuilder extends ZacWidgetConsumerBuilder
    implements ConsumeValue<ZacWidget> {
  factory _ZacWidgetConsumerBuilder(
      {required final Object family,
      final SharedValueConsumeType? consumeType,
      final List<ZacTransformer>? transformer}) = _$_ZacWidgetConsumerBuilder;
  _ZacWidgetConsumerBuilder._() : super._();

  factory _ZacWidgetConsumerBuilder.fromJson(Map<String, dynamic> json) =
      _$_ZacWidgetConsumerBuilder.fromJson;

  @override
  Object get family;
  @override
  SharedValueConsumeType? get consumeType;
  @override
  List<ZacTransformer>? get transformer;
}
