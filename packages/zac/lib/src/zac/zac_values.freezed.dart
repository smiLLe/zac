// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'zac_values.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ZacValueConsume<TValue> _$ZacValueConsumeFromJson<TValue>(
    Map<String, dynamic> json) {
  switch (json['converter']) {
    case 'z:1:SharedValue':
      return _ZacValueConsumeSimple<TValue>.fromJson(json);
    case 'z:1:SharedValue.watch':
      return _ZacValueConsumeWatch<TValue>.fromJson(json);
    case 'z:1:SharedValue.read':
      return _ZacValueConsumeRead<TValue>.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'converter', 'ZacValueConsume',
          'Invalid union type "${json['converter']}"!');
  }
}

/// @nodoc
mixin _$ZacValueConsume<TValue> {
  ZacTransformers? get transformer => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ZacValueConsumeSimple<TValue> value) simple,
    required TResult Function(_ZacValueConsumeWatch<TValue> value) watch,
    required TResult Function(_ZacValueConsumeRead<TValue> value) read,
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_ZacValueConsumeSimple<TValue> extends _ZacValueConsumeSimple<TValue> {
  _$_ZacValueConsumeSimple(
      {required this.value, this.transformer, final String? $type})
      : $type = $type ?? 'z:1:SharedValue',
        super._();

  factory _$_ZacValueConsumeSimple.fromJson(Map<String, dynamic> json) =>
      _$$_ZacValueConsumeSimpleFromJson(json);

  @override
  final Object? value;
  @override
  final ZacTransformers? transformer;

  @JsonKey(name: 'converter')
  final String $type;

  @override
  String toString() {
    return 'ZacValueConsume<$TValue>.simple(value: $value, transformer: $transformer)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ZacValueConsumeSimple<TValue> &&
            const DeepCollectionEquality().equals(other.value, value) &&
            const DeepCollectionEquality()
                .equals(other.transformer, transformer));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(value),
      const DeepCollectionEquality().hash(transformer));

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ZacValueConsumeSimple<TValue> value) simple,
    required TResult Function(_ZacValueConsumeWatch<TValue> value) watch,
    required TResult Function(_ZacValueConsumeRead<TValue> value) read,
  }) {
    return simple(this);
  }
}

abstract class _ZacValueConsumeSimple<TValue> extends ZacValueConsume<TValue> {
  factory _ZacValueConsumeSimple(
      {required final Object? value,
      final ZacTransformers? transformer}) = _$_ZacValueConsumeSimple<TValue>;
  _ZacValueConsumeSimple._() : super._();

  factory _ZacValueConsumeSimple.fromJson(Map<String, dynamic> json) =
      _$_ZacValueConsumeSimple<TValue>.fromJson;

  Object? get value;
  @override
  ZacTransformers? get transformer;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_ZacValueConsumeWatch<TValue> extends _ZacValueConsumeWatch<TValue> {
  _$_ZacValueConsumeWatch(
      {required this.family,
      this.transformer,
      this.select,
      final String? $type})
      : $type = $type ?? 'z:1:SharedValue.watch',
        super._();

  factory _$_ZacValueConsumeWatch.fromJson(Map<String, dynamic> json) =>
      _$$_ZacValueConsumeWatchFromJson(json);

  @override
  final Object family;
  @override
  final ZacTransformers? transformer;
  @override
  final ZacTransformers? select;

  @JsonKey(name: 'converter')
  final String $type;

  @override
  String toString() {
    return 'ZacValueConsume<$TValue>.watch(family: $family, transformer: $transformer, select: $select)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ZacValueConsumeWatch<TValue> &&
            const DeepCollectionEquality().equals(other.family, family) &&
            const DeepCollectionEquality()
                .equals(other.transformer, transformer) &&
            const DeepCollectionEquality().equals(other.select, select));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(family),
      const DeepCollectionEquality().hash(transformer),
      const DeepCollectionEquality().hash(select));

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ZacValueConsumeSimple<TValue> value) simple,
    required TResult Function(_ZacValueConsumeWatch<TValue> value) watch,
    required TResult Function(_ZacValueConsumeRead<TValue> value) read,
  }) {
    return watch(this);
  }
}

abstract class _ZacValueConsumeWatch<TValue> extends ZacValueConsume<TValue> {
  factory _ZacValueConsumeWatch(
      {required final Object family,
      final ZacTransformers? transformer,
      final ZacTransformers? select}) = _$_ZacValueConsumeWatch<TValue>;
  _ZacValueConsumeWatch._() : super._();

  factory _ZacValueConsumeWatch.fromJson(Map<String, dynamic> json) =
      _$_ZacValueConsumeWatch<TValue>.fromJson;

  Object get family;
  @override
  ZacTransformers? get transformer;
  ZacTransformers? get select;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_ZacValueConsumeRead<TValue> extends _ZacValueConsumeRead<TValue> {
  _$_ZacValueConsumeRead(
      {required this.family, this.transformer, final String? $type})
      : $type = $type ?? 'z:1:SharedValue.read',
        super._();

  factory _$_ZacValueConsumeRead.fromJson(Map<String, dynamic> json) =>
      _$$_ZacValueConsumeReadFromJson(json);

  @override
  final Object family;
  @override
  final ZacTransformers? transformer;

  @JsonKey(name: 'converter')
  final String $type;

  @override
  String toString() {
    return 'ZacValueConsume<$TValue>.read(family: $family, transformer: $transformer)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ZacValueConsumeRead<TValue> &&
            const DeepCollectionEquality().equals(other.family, family) &&
            const DeepCollectionEquality()
                .equals(other.transformer, transformer));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(family),
      const DeepCollectionEquality().hash(transformer));

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ZacValueConsumeSimple<TValue> value) simple,
    required TResult Function(_ZacValueConsumeWatch<TValue> value) watch,
    required TResult Function(_ZacValueConsumeRead<TValue> value) read,
  }) {
    return read(this);
  }
}

abstract class _ZacValueConsumeRead<TValue> extends ZacValueConsume<TValue> {
  factory _ZacValueConsumeRead(
      {required final Object family,
      final ZacTransformers? transformer}) = _$_ZacValueConsumeRead<TValue>;
  _ZacValueConsumeRead._() : super._();

  factory _ZacValueConsumeRead.fromJson(Map<String, dynamic> json) =
      _$_ZacValueConsumeRead<TValue>.fromJson;

  Object get family;
  @override
  ZacTransformers? get transformer;
}

ZacInt _$ZacIntFromJson(Map<String, dynamic> json) {
  switch (json['converter']) {
    case 'z:1:ZacInt':
      return ZacIntValue.fromJson(json);
    case 'z:1:ZacInt.consume':
      return ZacIntConsume.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'converter', 'ZacInt',
          'Invalid union type "${json['converter']}"!');
  }
}

/// @nodoc
mixin _$ZacInt {
  ZacTransformers? get transformer => throw _privateConstructorUsedError;

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
  _$ZacIntValue(this.value, {this.transformer, final String? $type})
      : $type = $type ?? 'z:1:ZacInt',
        super._();

  factory _$ZacIntValue.fromJson(Map<String, dynamic> json) =>
      _$$ZacIntValueFromJson(json);

  @override
  final int value;
  @override
  final ZacTransformers? transformer;

  @JsonKey(name: 'converter')
  final String $type;

  @override
  String toString() {
    return 'ZacInt(value: $value, transformer: $transformer)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ZacIntValue &&
            const DeepCollectionEquality().equals(other.value, value) &&
            const DeepCollectionEquality()
                .equals(other.transformer, transformer));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(value),
      const DeepCollectionEquality().hash(transformer));

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
  factory ZacIntValue(final int value, {final ZacTransformers? transformer}) =
      _$ZacIntValue;
  ZacIntValue._() : super._();

  factory ZacIntValue.fromJson(Map<String, dynamic> json) =
      _$ZacIntValue.fromJson;

  int get value;
  @override
  ZacTransformers? get transformer;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$ZacIntConsume extends ZacIntConsume with ConsumeValue<int> {
  _$ZacIntConsume(this.family,
      {this.transformer,
      this.consumeType = const SharedValueConsumeType.watch(),
      final String? $type})
      : $type = $type ?? 'z:1:ZacInt.consume',
        super._();

  factory _$ZacIntConsume.fromJson(Map<String, dynamic> json) =>
      _$$ZacIntConsumeFromJson(json);

  @override
  final Object family;
  @override
  final ZacTransformers? transformer;
  @override
  @JsonKey()
  final SharedValueConsumeType consumeType;

  @JsonKey(name: 'converter')
  final String $type;

  @override
  String toString() {
    return 'ZacInt.consume(family: $family, transformer: $transformer, consumeType: $consumeType)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ZacIntConsume &&
            const DeepCollectionEquality().equals(other.family, family) &&
            const DeepCollectionEquality()
                .equals(other.transformer, transformer) &&
            const DeepCollectionEquality()
                .equals(other.consumeType, consumeType));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(family),
      const DeepCollectionEquality().hash(transformer),
      const DeepCollectionEquality().hash(consumeType));

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
  factory ZacIntConsume(final Object family,
      {final ZacTransformers? transformer,
      final SharedValueConsumeType consumeType}) = _$ZacIntConsume;
  ZacIntConsume._() : super._();

  factory ZacIntConsume.fromJson(Map<String, dynamic> json) =
      _$ZacIntConsume.fromJson;

  Object get family;
  @override
  ZacTransformers? get transformer;
  SharedValueConsumeType get consumeType;
}

ZacDouble _$ZacDoubleFromJson(Map<String, dynamic> json) {
  switch (json['converter']) {
    case 'z:1:ZacDouble':
      return ZacDoubleValue.fromJson(json);
    case 'z:1:ZacDouble.consume':
      return ZacDoubleConsume.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'converter', 'ZacDouble',
          'Invalid union type "${json['converter']}"!');
  }
}

/// @nodoc
mixin _$ZacDouble {
  ZacTransformers? get transformer => throw _privateConstructorUsedError;

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
  _$ZacDoubleValue(this.value, {this.transformer, final String? $type})
      : $type = $type ?? 'z:1:ZacDouble',
        super._();

  factory _$ZacDoubleValue.fromJson(Map<String, dynamic> json) =>
      _$$ZacDoubleValueFromJson(json);

  @override
  final double value;
  @override
  final ZacTransformers? transformer;

  @JsonKey(name: 'converter')
  final String $type;

  @override
  String toString() {
    return 'ZacDouble(value: $value, transformer: $transformer)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ZacDoubleValue &&
            const DeepCollectionEquality().equals(other.value, value) &&
            const DeepCollectionEquality()
                .equals(other.transformer, transformer));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(value),
      const DeepCollectionEquality().hash(transformer));

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
  factory ZacDoubleValue(final double value,
      {final ZacTransformers? transformer}) = _$ZacDoubleValue;
  ZacDoubleValue._() : super._();

  factory ZacDoubleValue.fromJson(Map<String, dynamic> json) =
      _$ZacDoubleValue.fromJson;

  double get value;
  @override
  ZacTransformers? get transformer;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$ZacDoubleConsume extends ZacDoubleConsume with ConsumeValue<double> {
  _$ZacDoubleConsume(this.family,
      {this.transformer,
      this.consumeType = const SharedValueConsumeType.watch(),
      final String? $type})
      : $type = $type ?? 'z:1:ZacDouble.consume',
        super._();

  factory _$ZacDoubleConsume.fromJson(Map<String, dynamic> json) =>
      _$$ZacDoubleConsumeFromJson(json);

  @override
  final Object family;
  @override
  final ZacTransformers? transformer;
  @override
  @JsonKey()
  final SharedValueConsumeType consumeType;

  @JsonKey(name: 'converter')
  final String $type;

  @override
  String toString() {
    return 'ZacDouble.consume(family: $family, transformer: $transformer, consumeType: $consumeType)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ZacDoubleConsume &&
            const DeepCollectionEquality().equals(other.family, family) &&
            const DeepCollectionEquality()
                .equals(other.transformer, transformer) &&
            const DeepCollectionEquality()
                .equals(other.consumeType, consumeType));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(family),
      const DeepCollectionEquality().hash(transformer),
      const DeepCollectionEquality().hash(consumeType));

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
  factory ZacDoubleConsume(final Object family,
      {final ZacTransformers? transformer,
      final SharedValueConsumeType consumeType}) = _$ZacDoubleConsume;
  ZacDoubleConsume._() : super._();

  factory ZacDoubleConsume.fromJson(Map<String, dynamic> json) =
      _$ZacDoubleConsume.fromJson;

  Object get family;
  @override
  ZacTransformers? get transformer;
  SharedValueConsumeType get consumeType;
}

ZacString _$ZacStringFromJson(Map<String, dynamic> json) {
  switch (json['converter']) {
    case 'z:1:ZacString':
      return ZacStringValue.fromJson(json);
    case 'z:1:ZacString.consume':
      return ZacStringConsume.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'converter', 'ZacString',
          'Invalid union type "${json['converter']}"!');
  }
}

/// @nodoc
mixin _$ZacString {
  ZacTransformers? get transformer => throw _privateConstructorUsedError;

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
  _$ZacStringValue(this.value, {this.transformer, final String? $type})
      : $type = $type ?? 'z:1:ZacString',
        super._();

  factory _$ZacStringValue.fromJson(Map<String, dynamic> json) =>
      _$$ZacStringValueFromJson(json);

  @override
  final String value;
  @override
  final ZacTransformers? transformer;

  @JsonKey(name: 'converter')
  final String $type;

  @override
  String toString() {
    return 'ZacString(value: $value, transformer: $transformer)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ZacStringValue &&
            const DeepCollectionEquality().equals(other.value, value) &&
            const DeepCollectionEquality()
                .equals(other.transformer, transformer));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(value),
      const DeepCollectionEquality().hash(transformer));

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
  factory ZacStringValue(final String value,
      {final ZacTransformers? transformer}) = _$ZacStringValue;
  ZacStringValue._() : super._();

  factory ZacStringValue.fromJson(Map<String, dynamic> json) =
      _$ZacStringValue.fromJson;

  String get value;
  @override
  ZacTransformers? get transformer;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$ZacStringConsume extends ZacStringConsume with ConsumeValue<String> {
  _$ZacStringConsume(this.family,
      {this.transformer,
      this.consumeType = const SharedValueConsumeType.watch(),
      final String? $type})
      : $type = $type ?? 'z:1:ZacString.consume',
        super._();

  factory _$ZacStringConsume.fromJson(Map<String, dynamic> json) =>
      _$$ZacStringConsumeFromJson(json);

  @override
  final Object family;
  @override
  final ZacTransformers? transformer;
  @override
  @JsonKey()
  final SharedValueConsumeType consumeType;

  @JsonKey(name: 'converter')
  final String $type;

  @override
  String toString() {
    return 'ZacString.consume(family: $family, transformer: $transformer, consumeType: $consumeType)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ZacStringConsume &&
            const DeepCollectionEquality().equals(other.family, family) &&
            const DeepCollectionEquality()
                .equals(other.transformer, transformer) &&
            const DeepCollectionEquality()
                .equals(other.consumeType, consumeType));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(family),
      const DeepCollectionEquality().hash(transformer),
      const DeepCollectionEquality().hash(consumeType));

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
  factory ZacStringConsume(final Object family,
      {final ZacTransformers? transformer,
      final SharedValueConsumeType consumeType}) = _$ZacStringConsume;
  ZacStringConsume._() : super._();

  factory ZacStringConsume.fromJson(Map<String, dynamic> json) =
      _$ZacStringConsume.fromJson;

  Object get family;
  @override
  ZacTransformers? get transformer;
  SharedValueConsumeType get consumeType;
}

ZacBool _$ZacBoolFromJson(Map<String, dynamic> json) {
  switch (json['converter']) {
    case 'z:1:ZacBool':
      return ZacBoolValue.fromJson(json);
    case 'z:1:ZacBool.consume':
      return ZacBoolConsume.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'converter', 'ZacBool',
          'Invalid union type "${json['converter']}"!');
  }
}

/// @nodoc
mixin _$ZacBool {
  ZacTransformers? get transformer => throw _privateConstructorUsedError;

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
  _$ZacBoolValue(this.value, {this.transformer, final String? $type})
      : $type = $type ?? 'z:1:ZacBool',
        super._();

  factory _$ZacBoolValue.fromJson(Map<String, dynamic> json) =>
      _$$ZacBoolValueFromJson(json);

  @override
  final bool value;
  @override
  final ZacTransformers? transformer;

  @JsonKey(name: 'converter')
  final String $type;

  @override
  String toString() {
    return 'ZacBool(value: $value, transformer: $transformer)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ZacBoolValue &&
            const DeepCollectionEquality().equals(other.value, value) &&
            const DeepCollectionEquality()
                .equals(other.transformer, transformer));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(value),
      const DeepCollectionEquality().hash(transformer));

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
  factory ZacBoolValue(final bool value, {final ZacTransformers? transformer}) =
      _$ZacBoolValue;
  ZacBoolValue._() : super._();

  factory ZacBoolValue.fromJson(Map<String, dynamic> json) =
      _$ZacBoolValue.fromJson;

  bool get value;
  @override
  ZacTransformers? get transformer;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$ZacBoolConsume extends ZacBoolConsume with ConsumeValue<bool> {
  _$ZacBoolConsume(this.family,
      {this.transformer,
      this.consumeType = const SharedValueConsumeType.watch(),
      final String? $type})
      : $type = $type ?? 'z:1:ZacBool.consume',
        super._();

  factory _$ZacBoolConsume.fromJson(Map<String, dynamic> json) =>
      _$$ZacBoolConsumeFromJson(json);

  @override
  final Object family;
  @override
  final ZacTransformers? transformer;
  @override
  @JsonKey()
  final SharedValueConsumeType consumeType;

  @JsonKey(name: 'converter')
  final String $type;

  @override
  String toString() {
    return 'ZacBool.consume(family: $family, transformer: $transformer, consumeType: $consumeType)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ZacBoolConsume &&
            const DeepCollectionEquality().equals(other.family, family) &&
            const DeepCollectionEquality()
                .equals(other.transformer, transformer) &&
            const DeepCollectionEquality()
                .equals(other.consumeType, consumeType));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(family),
      const DeepCollectionEquality().hash(transformer),
      const DeepCollectionEquality().hash(consumeType));

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
  factory ZacBoolConsume(final Object family,
      {final ZacTransformers? transformer,
      final SharedValueConsumeType consumeType}) = _$ZacBoolConsume;
  ZacBoolConsume._() : super._();

  factory ZacBoolConsume.fromJson(Map<String, dynamic> json) =
      _$ZacBoolConsume.fromJson;

  Object get family;
  @override
  ZacTransformers? get transformer;
  SharedValueConsumeType get consumeType;
}

ZacMap _$ZacMapFromJson(Map<String, dynamic> json) {
  switch (json['converter']) {
    case 'z:1:ZacMap':
      return ZacMapValue.fromJson(json);
    case 'z:1:ZacMap.consume':
      return ZacMapConsume.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'converter', 'ZacMap',
          'Invalid union type "${json['converter']}"!');
  }
}

/// @nodoc
mixin _$ZacMap {
  ZacTransformers? get transformer => throw _privateConstructorUsedError;

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
  _$ZacMapValue(final Map<String, dynamic> value,
      {this.transformer, final String? $type})
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

  @override
  final ZacTransformers? transformer;

  @JsonKey(name: 'converter')
  final String $type;

  @override
  String toString() {
    return 'ZacMap(value: $value, transformer: $transformer)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ZacMapValue &&
            const DeepCollectionEquality().equals(other._value, _value) &&
            const DeepCollectionEquality()
                .equals(other.transformer, transformer));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_value),
      const DeepCollectionEquality().hash(transformer));

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
  factory ZacMapValue(final Map<String, dynamic> value,
      {final ZacTransformers? transformer}) = _$ZacMapValue;
  ZacMapValue._() : super._();

  factory ZacMapValue.fromJson(Map<String, dynamic> json) =
      _$ZacMapValue.fromJson;

  Map<String, dynamic> get value;
  @override
  ZacTransformers? get transformer;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$ZacMapConsume extends ZacMapConsume
    with ConsumeValue<Map<String, dynamic>> {
  _$ZacMapConsume(this.family,
      {this.transformer,
      this.consumeType = const SharedValueConsumeType.watch(),
      final String? $type})
      : $type = $type ?? 'z:1:ZacMap.consume',
        super._();

  factory _$ZacMapConsume.fromJson(Map<String, dynamic> json) =>
      _$$ZacMapConsumeFromJson(json);

  @override
  final Object family;
  @override
  final ZacTransformers? transformer;
  @override
  @JsonKey()
  final SharedValueConsumeType consumeType;

  @JsonKey(name: 'converter')
  final String $type;

  @override
  String toString() {
    return 'ZacMap.consume(family: $family, transformer: $transformer, consumeType: $consumeType)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ZacMapConsume &&
            const DeepCollectionEquality().equals(other.family, family) &&
            const DeepCollectionEquality()
                .equals(other.transformer, transformer) &&
            const DeepCollectionEquality()
                .equals(other.consumeType, consumeType));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(family),
      const DeepCollectionEquality().hash(transformer),
      const DeepCollectionEquality().hash(consumeType));

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
  factory ZacMapConsume(final Object family,
      {final ZacTransformers? transformer,
      final SharedValueConsumeType consumeType}) = _$ZacMapConsume;
  ZacMapConsume._() : super._();

  factory ZacMapConsume.fromJson(Map<String, dynamic> json) =
      _$ZacMapConsume.fromJson;

  Object get family;
  @override
  ZacTransformers? get transformer;
  SharedValueConsumeType get consumeType;
}

ZacList _$ZacListFromJson(Map<String, dynamic> json) {
  switch (json['converter']) {
    case 'z:1:ZacList':
      return ZacListValue.fromJson(json);
    case 'z:1:ZacList.consume':
      return ZacListConsume.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'converter', 'ZacList',
          'Invalid union type "${json['converter']}"!');
  }
}

/// @nodoc
mixin _$ZacList {
  ZacTransformers? get transformer => throw _privateConstructorUsedError;

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
  _$ZacListValue(final List<dynamic> value,
      {this.transformer, final String? $type})
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

  @override
  final ZacTransformers? transformer;

  @JsonKey(name: 'converter')
  final String $type;

  @override
  String toString() {
    return 'ZacList(value: $value, transformer: $transformer)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ZacListValue &&
            const DeepCollectionEquality().equals(other._value, _value) &&
            const DeepCollectionEquality()
                .equals(other.transformer, transformer));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_value),
      const DeepCollectionEquality().hash(transformer));

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
  factory ZacListValue(final List<dynamic> value,
      {final ZacTransformers? transformer}) = _$ZacListValue;
  ZacListValue._() : super._();

  factory ZacListValue.fromJson(Map<String, dynamic> json) =
      _$ZacListValue.fromJson;

  List<dynamic> get value;
  @override
  ZacTransformers? get transformer;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$ZacListConsume extends ZacListConsume with ConsumeValue<List<dynamic>> {
  _$ZacListConsume(this.family,
      {this.transformer,
      this.consumeType = const SharedValueConsumeType.watch(),
      final String? $type})
      : $type = $type ?? 'z:1:ZacList.consume',
        super._();

  factory _$ZacListConsume.fromJson(Map<String, dynamic> json) =>
      _$$ZacListConsumeFromJson(json);

  @override
  final Object family;
  @override
  final ZacTransformers? transformer;
  @override
  @JsonKey()
  final SharedValueConsumeType consumeType;

  @JsonKey(name: 'converter')
  final String $type;

  @override
  String toString() {
    return 'ZacList.consume(family: $family, transformer: $transformer, consumeType: $consumeType)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ZacListConsume &&
            const DeepCollectionEquality().equals(other.family, family) &&
            const DeepCollectionEquality()
                .equals(other.transformer, transformer) &&
            const DeepCollectionEquality()
                .equals(other.consumeType, consumeType));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(family),
      const DeepCollectionEquality().hash(transformer),
      const DeepCollectionEquality().hash(consumeType));

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
  factory ZacListConsume(final Object family,
      {final ZacTransformers? transformer,
      final SharedValueConsumeType consumeType}) = _$ZacListConsume;
  ZacListConsume._() : super._();

  factory ZacListConsume.fromJson(Map<String, dynamic> json) =
      _$ZacListConsume.fromJson;

  Object get family;
  @override
  ZacTransformers? get transformer;
  SharedValueConsumeType get consumeType;
}

ZacObject _$ZacObjectFromJson(Map<String, dynamic> json) {
  switch (json['converter']) {
    case 'z:1:ZacObject':
      return ZacObjectValue.fromJson(json);
    case 'z:1:ZacObject.consume':
      return ZacObjectConsume.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'converter', 'ZacObject',
          'Invalid union type "${json['converter']}"!');
  }
}

/// @nodoc
mixin _$ZacObject {
  ZacTransformers? get transformer => throw _privateConstructorUsedError;

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
  _$ZacObjectValue(this.value, {this.transformer, final String? $type})
      : $type = $type ?? 'z:1:ZacObject',
        super._();

  factory _$ZacObjectValue.fromJson(Map<String, dynamic> json) =>
      _$$ZacObjectValueFromJson(json);

  @override
  final Object value;
  @override
  final ZacTransformers? transformer;

  @JsonKey(name: 'converter')
  final String $type;

  @override
  String toString() {
    return 'ZacObject(value: $value, transformer: $transformer)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ZacObjectValue &&
            const DeepCollectionEquality().equals(other.value, value) &&
            const DeepCollectionEquality()
                .equals(other.transformer, transformer));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(value),
      const DeepCollectionEquality().hash(transformer));

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
  factory ZacObjectValue(final Object value,
      {final ZacTransformers? transformer}) = _$ZacObjectValue;
  ZacObjectValue._() : super._();

  factory ZacObjectValue.fromJson(Map<String, dynamic> json) =
      _$ZacObjectValue.fromJson;

  Object get value;
  @override
  ZacTransformers? get transformer;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$ZacObjectConsume extends ZacObjectConsume with ConsumeValue<Object> {
  _$ZacObjectConsume(this.family,
      {this.transformer,
      this.consumeType = const SharedValueConsumeType.watch(),
      final String? $type})
      : $type = $type ?? 'z:1:ZacObject.consume',
        super._();

  factory _$ZacObjectConsume.fromJson(Map<String, dynamic> json) =>
      _$$ZacObjectConsumeFromJson(json);

  @override
  final Object family;
  @override
  final ZacTransformers? transformer;
  @override
  @JsonKey()
  final SharedValueConsumeType consumeType;

  @JsonKey(name: 'converter')
  final String $type;

  @override
  String toString() {
    return 'ZacObject.consume(family: $family, transformer: $transformer, consumeType: $consumeType)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ZacObjectConsume &&
            const DeepCollectionEquality().equals(other.family, family) &&
            const DeepCollectionEquality()
                .equals(other.transformer, transformer) &&
            const DeepCollectionEquality()
                .equals(other.consumeType, consumeType));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(family),
      const DeepCollectionEquality().hash(transformer),
      const DeepCollectionEquality().hash(consumeType));

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
  factory ZacObjectConsume(final Object family,
      {final ZacTransformers? transformer,
      final SharedValueConsumeType consumeType}) = _$ZacObjectConsume;
  ZacObjectConsume._() : super._();

  factory ZacObjectConsume.fromJson(Map<String, dynamic> json) =
      _$ZacObjectConsume.fromJson;

  Object get family;
  @override
  ZacTransformers? get transformer;
  SharedValueConsumeType get consumeType;
}

ListOfZacWidget _$ListOfZacWidgetFromJson(Map<String, dynamic> json) {
  switch (json['converter']) {
    case 'z:1:ListOfZacWidget':
      return ListOfZacWidgetValue.fromJson(json);
    case 'z:1:ListOfZacWidget.consume':
      return ListOfZacWidgetConsume.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'converter', 'ListOfZacWidget',
          'Invalid union type "${json['converter']}"!');
  }
}

/// @nodoc
mixin _$ListOfZacWidget {
  ZacTransformers? get transformer => throw _privateConstructorUsedError;

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
    with ActualValue<List<FlutterWidget>> {
  _$ListOfZacWidgetValue(final List<FlutterWidget> value,
      {this.transformer, final String? $type})
      : _value = value,
        $type = $type ?? 'z:1:ListOfZacWidget',
        super._();

  factory _$ListOfZacWidgetValue.fromJson(Map<String, dynamic> json) =>
      _$$ListOfZacWidgetValueFromJson(json);

  final List<FlutterWidget> _value;
  @override
  List<FlutterWidget> get value {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_value);
  }

  @override
  final ZacTransformers? transformer;

  @JsonKey(name: 'converter')
  final String $type;

  @override
  String toString() {
    return 'ListOfZacWidget(value: $value, transformer: $transformer)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ListOfZacWidgetValue &&
            const DeepCollectionEquality().equals(other._value, _value) &&
            const DeepCollectionEquality()
                .equals(other.transformer, transformer));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_value),
      const DeepCollectionEquality().hash(transformer));

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
    implements ActualValue<List<FlutterWidget>> {
  factory ListOfZacWidgetValue(final List<FlutterWidget> value,
      {final ZacTransformers? transformer}) = _$ListOfZacWidgetValue;
  ListOfZacWidgetValue._() : super._();

  factory ListOfZacWidgetValue.fromJson(Map<String, dynamic> json) =
      _$ListOfZacWidgetValue.fromJson;

  List<FlutterWidget> get value;
  @override
  ZacTransformers? get transformer;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$ListOfZacWidgetConsume extends ListOfZacWidgetConsume
    with ConsumeValueList<FlutterWidget> {
  _$ListOfZacWidgetConsume(this.family,
      {this.transformer,
      this.consumeType = const SharedValueConsumeType.watch(),
      final String? $type})
      : $type = $type ?? 'z:1:ListOfZacWidget.consume',
        super._();

  factory _$ListOfZacWidgetConsume.fromJson(Map<String, dynamic> json) =>
      _$$ListOfZacWidgetConsumeFromJson(json);

  @override
  final Object family;
  @override
  final ZacTransformers? transformer;
  @override
  @JsonKey()
  final SharedValueConsumeType consumeType;

  @JsonKey(name: 'converter')
  final String $type;

  @override
  String toString() {
    return 'ListOfZacWidget.consume(family: $family, transformer: $transformer, consumeType: $consumeType)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ListOfZacWidgetConsume &&
            const DeepCollectionEquality().equals(other.family, family) &&
            const DeepCollectionEquality()
                .equals(other.transformer, transformer) &&
            const DeepCollectionEquality()
                .equals(other.consumeType, consumeType));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(family),
      const DeepCollectionEquality().hash(transformer),
      const DeepCollectionEquality().hash(consumeType));

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
    implements ConsumeValueList<FlutterWidget> {
  factory ListOfZacWidgetConsume(final Object family,
      {final ZacTransformers? transformer,
      final SharedValueConsumeType consumeType}) = _$ListOfZacWidgetConsume;
  ListOfZacWidgetConsume._() : super._();

  factory ListOfZacWidgetConsume.fromJson(Map<String, dynamic> json) =
      _$ListOfZacWidgetConsume.fromJson;

  Object get family;
  @override
  ZacTransformers? get transformer;
  SharedValueConsumeType get consumeType;
}

ZacWidgetConsumerBuilder _$ZacWidgetConsumerBuilderFromJson(
    Map<String, dynamic> json) {
  return _ZacWidgetConsumerBuilder.fromJson(json);
}

/// @nodoc
mixin _$ZacWidgetConsumerBuilder {
  Object get family => throw _privateConstructorUsedError;
  ZacTransformers? get transformer => throw _privateConstructorUsedError;
  SharedValueConsumeType get consumeType => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_ZacWidgetConsumerBuilder value) $default,
  ) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_ZacWidgetConsumerBuilder extends _ZacWidgetConsumerBuilder
    with ConsumeValue<FlutterWidget> {
  _$_ZacWidgetConsumerBuilder(this.family,
      {this.transformer,
      this.consumeType = const SharedValueConsumeType.watch()})
      : super._();

  factory _$_ZacWidgetConsumerBuilder.fromJson(Map<String, dynamic> json) =>
      _$$_ZacWidgetConsumerBuilderFromJson(json);

  @override
  final Object family;
  @override
  final ZacTransformers? transformer;
  @override
  @JsonKey()
  final SharedValueConsumeType consumeType;

  @override
  String toString() {
    return 'ZacWidgetConsumerBuilder(family: $family, transformer: $transformer, consumeType: $consumeType)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ZacWidgetConsumerBuilder &&
            const DeepCollectionEquality().equals(other.family, family) &&
            const DeepCollectionEquality()
                .equals(other.transformer, transformer) &&
            const DeepCollectionEquality()
                .equals(other.consumeType, consumeType));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(family),
      const DeepCollectionEquality().hash(transformer),
      const DeepCollectionEquality().hash(consumeType));

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_ZacWidgetConsumerBuilder value) $default,
  ) {
    return $default(this);
  }
}

abstract class _ZacWidgetConsumerBuilder extends ZacWidgetConsumerBuilder
    implements ConsumeValue<FlutterWidget> {
  factory _ZacWidgetConsumerBuilder(final Object family,
      {final ZacTransformers? transformer,
      final SharedValueConsumeType consumeType}) = _$_ZacWidgetConsumerBuilder;
  _ZacWidgetConsumerBuilder._() : super._();

  factory _ZacWidgetConsumerBuilder.fromJson(Map<String, dynamic> json) =
      _$_ZacWidgetConsumerBuilder.fromJson;

  @override
  Object get family;
  @override
  ZacTransformers? get transformer;
  @override
  SharedValueConsumeType get consumeType;
}
