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
    case 'z:1:int.transformable':
      return _ZacIntTransformable.fromJson(json);
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
    required TResult Function(_ZacIntTransformable value) transformable,
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
    required TResult Function(_ZacIntTransformable value) transformable,
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
class _$_ZacIntTransformable extends _ZacIntTransformable
    with ZacValueTranformable<int> {
  _$_ZacIntTransformable(
      {required this.value, required this.transformer, final String? $type})
      : $type = $type ?? 'z:1:int.transformable',
        super._();

  factory _$_ZacIntTransformable.fromJson(Map<String, dynamic> json) =>
      _$$_ZacIntTransformableFromJson(json);

  @override
  final Object value;
  @override
  final ZacTransformers transformer;

  @JsonKey(name: 'converter')
  final String $type;

  @override
  String toString() {
    return 'ZacInt.transformable(value: $value, transformer: $transformer)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ZacIntTransformable &&
            const DeepCollectionEquality().equals(other.value, value) &&
            (identical(other.transformer, transformer) ||
                other.transformer == transformer));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(value), transformer);

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_ZacInt value) $default, {
    required TResult Function(_ZacIntTransformable value) transformable,
    required TResult Function(_ZacIntConsumeSharedValue value) consume,
  }) {
    return transformable(this);
  }
}

abstract class _ZacIntTransformable extends ZacInt
    implements ZacValueTranformable<int> {
  factory _ZacIntTransformable(
      {required final Object value,
      required final ZacTransformers transformer}) = _$_ZacIntTransformable;
  _ZacIntTransformable._() : super._();

  factory _ZacIntTransformable.fromJson(Map<String, dynamic> json) =
      _$_ZacIntTransformable.fromJson;

  Object get value;
  ZacTransformers get transformer;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_ZacIntConsumeSharedValue extends _ZacIntConsumeSharedValue
    with SharedValueConsume<int> {
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
    required TResult Function(_ZacIntTransformable value) transformable,
    required TResult Function(_ZacIntConsumeSharedValue value) consume,
  }) {
    return consume(this);
  }
}

abstract class _ZacIntConsumeSharedValue extends ZacInt
    implements SharedValueConsume<int> {
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
    case 'z:1:double.transformable':
      return _ZacDoubleTransformable.fromJson(json);
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
    required TResult Function(_ZacDoubleTransformable value) transformable,
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
    required TResult Function(_ZacDoubleTransformable value) transformable,
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
class _$_ZacDoubleTransformable extends _ZacDoubleTransformable
    with ZacValueTranformable<double> {
  _$_ZacDoubleTransformable(
      {required this.value, required this.transformer, final String? $type})
      : $type = $type ?? 'z:1:double.transformable',
        super._();

  factory _$_ZacDoubleTransformable.fromJson(Map<String, dynamic> json) =>
      _$$_ZacDoubleTransformableFromJson(json);

  @override
  final Object value;
  @override
  final ZacTransformers transformer;

  @JsonKey(name: 'converter')
  final String $type;

  @override
  String toString() {
    return 'ZacDouble.transformable(value: $value, transformer: $transformer)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ZacDoubleTransformable &&
            const DeepCollectionEquality().equals(other.value, value) &&
            (identical(other.transformer, transformer) ||
                other.transformer == transformer));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(value), transformer);

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_ZacDouble value) $default, {
    required TResult Function(_ZacDoubleTransformable value) transformable,
    required TResult Function(_ZacDoubleConsumeSharedValue value) consume,
  }) {
    return transformable(this);
  }
}

abstract class _ZacDoubleTransformable extends ZacDouble
    implements ZacValueTranformable<double> {
  factory _ZacDoubleTransformable(
      {required final Object value,
      required final ZacTransformers transformer}) = _$_ZacDoubleTransformable;
  _ZacDoubleTransformable._() : super._();

  factory _ZacDoubleTransformable.fromJson(Map<String, dynamic> json) =
      _$_ZacDoubleTransformable.fromJson;

  Object get value;
  ZacTransformers get transformer;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_ZacDoubleConsumeSharedValue extends _ZacDoubleConsumeSharedValue
    with SharedValueConsume<double> {
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
    required TResult Function(_ZacDoubleTransformable value) transformable,
    required TResult Function(_ZacDoubleConsumeSharedValue value) consume,
  }) {
    return consume(this);
  }
}

abstract class _ZacDoubleConsumeSharedValue extends ZacDouble
    implements SharedValueConsume<double> {
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
    case 'z:1:num.transformable':
      return _ZacNumTransformable.fromJson(json);
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
    required TResult Function(_ZacNumTransformable value) transformable,
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
    required TResult Function(_ZacNumTransformable value) transformable,
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
class _$_ZacNumTransformable extends _ZacNumTransformable
    with ZacValueTranformable<num> {
  _$_ZacNumTransformable(
      {required this.value, required this.transformer, final String? $type})
      : $type = $type ?? 'z:1:num.transformable',
        super._();

  factory _$_ZacNumTransformable.fromJson(Map<String, dynamic> json) =>
      _$$_ZacNumTransformableFromJson(json);

  @override
  final Object value;
  @override
  final ZacTransformers transformer;

  @JsonKey(name: 'converter')
  final String $type;

  @override
  String toString() {
    return 'ZacNum.transformable(value: $value, transformer: $transformer)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ZacNumTransformable &&
            const DeepCollectionEquality().equals(other.value, value) &&
            (identical(other.transformer, transformer) ||
                other.transformer == transformer));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(value), transformer);

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_ZacNum value) $default, {
    required TResult Function(_ZacNumTransformable value) transformable,
    required TResult Function(_ZacNumConsumeSharedValue value) consume,
  }) {
    return transformable(this);
  }
}

abstract class _ZacNumTransformable extends ZacNum
    implements ZacValueTranformable<num> {
  factory _ZacNumTransformable(
      {required final Object value,
      required final ZacTransformers transformer}) = _$_ZacNumTransformable;
  _ZacNumTransformable._() : super._();

  factory _ZacNumTransformable.fromJson(Map<String, dynamic> json) =
      _$_ZacNumTransformable.fromJson;

  Object get value;
  ZacTransformers get transformer;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_ZacNumConsumeSharedValue extends _ZacNumConsumeSharedValue
    with SharedValueConsume<num> {
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
    required TResult Function(_ZacNumTransformable value) transformable,
    required TResult Function(_ZacNumConsumeSharedValue value) consume,
  }) {
    return consume(this);
  }
}

abstract class _ZacNumConsumeSharedValue extends ZacNum
    implements SharedValueConsume<num> {
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
    case 'z:1:String.transformable':
      return _ZacStringTransformable.fromJson(json);
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
    required TResult Function(_ZacStringTransformable value) transformable,
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
    required TResult Function(_ZacStringTransformable value) transformable,
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
class _$_ZacStringTransformable extends _ZacStringTransformable
    with ZacValueTranformable<String> {
  _$_ZacStringTransformable(
      {required this.value, required this.transformer, final String? $type})
      : $type = $type ?? 'z:1:String.transformable',
        super._();

  factory _$_ZacStringTransformable.fromJson(Map<String, dynamic> json) =>
      _$$_ZacStringTransformableFromJson(json);

  @override
  final Object value;
  @override
  final ZacTransformers transformer;

  @JsonKey(name: 'converter')
  final String $type;

  @override
  String toString() {
    return 'ZacString.transformable(value: $value, transformer: $transformer)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ZacStringTransformable &&
            const DeepCollectionEquality().equals(other.value, value) &&
            (identical(other.transformer, transformer) ||
                other.transformer == transformer));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(value), transformer);

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_ZacString value) $default, {
    required TResult Function(_ZacStringTransformable value) transformable,
    required TResult Function(_ZacStringConsumeSharedValue value) consume,
  }) {
    return transformable(this);
  }
}

abstract class _ZacStringTransformable extends ZacString
    implements ZacValueTranformable<String> {
  factory _ZacStringTransformable(
      {required final Object value,
      required final ZacTransformers transformer}) = _$_ZacStringTransformable;
  _ZacStringTransformable._() : super._();

  factory _ZacStringTransformable.fromJson(Map<String, dynamic> json) =
      _$_ZacStringTransformable.fromJson;

  Object get value;
  ZacTransformers get transformer;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_ZacStringConsumeSharedValue extends _ZacStringConsumeSharedValue
    with SharedValueConsume<String> {
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
    required TResult Function(_ZacStringTransformable value) transformable,
    required TResult Function(_ZacStringConsumeSharedValue value) consume,
  }) {
    return consume(this);
  }
}

abstract class _ZacStringConsumeSharedValue extends ZacString
    implements SharedValueConsume<String> {
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
    case 'z:1:bool.transformable':
      return _ZacBoolTransformable.fromJson(json);
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
    required TResult Function(_ZacBoolTransformable value) transformable,
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
    required TResult Function(_ZacBoolTransformable value) transformable,
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
class _$_ZacBoolTransformable extends _ZacBoolTransformable
    with ZacValueTranformable<bool> {
  _$_ZacBoolTransformable(
      {required this.value, required this.transformer, final String? $type})
      : $type = $type ?? 'z:1:bool.transformable',
        super._();

  factory _$_ZacBoolTransformable.fromJson(Map<String, dynamic> json) =>
      _$$_ZacBoolTransformableFromJson(json);

  @override
  final Object value;
  @override
  final ZacTransformers transformer;

  @JsonKey(name: 'converter')
  final String $type;

  @override
  String toString() {
    return 'ZacBool.transformable(value: $value, transformer: $transformer)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ZacBoolTransformable &&
            const DeepCollectionEquality().equals(other.value, value) &&
            (identical(other.transformer, transformer) ||
                other.transformer == transformer));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(value), transformer);

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_ZacBool value) $default, {
    required TResult Function(_ZacBoolTransformable value) transformable,
    required TResult Function(_ZacBoolConsumeSharedValue value) consume,
  }) {
    return transformable(this);
  }
}

abstract class _ZacBoolTransformable extends ZacBool
    implements ZacValueTranformable<bool> {
  factory _ZacBoolTransformable(
      {required final Object value,
      required final ZacTransformers transformer}) = _$_ZacBoolTransformable;
  _ZacBoolTransformable._() : super._();

  factory _ZacBoolTransformable.fromJson(Map<String, dynamic> json) =
      _$_ZacBoolTransformable.fromJson;

  Object get value;
  ZacTransformers get transformer;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_ZacBoolConsumeSharedValue extends _ZacBoolConsumeSharedValue
    with SharedValueConsume<bool> {
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
    required TResult Function(_ZacBoolTransformable value) transformable,
    required TResult Function(_ZacBoolConsumeSharedValue value) consume,
  }) {
    return consume(this);
  }
}

abstract class _ZacBoolConsumeSharedValue extends ZacBool
    implements SharedValueConsume<bool> {
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

ZacDateTime _$ZacDateTimeFromJson(Map<String, dynamic> json) {
  switch (json['converter']) {
    case 'z:1:DateTime':
      return _ZacDateTime.fromJson(json);
    case 'z:1:DateTime.transformable':
      return _ZacDateTimeTransformable.fromJson(json);
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
    required TResult Function(_ZacDateTimeTransformable value) transformable,
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
    required TResult Function(_ZacDateTimeTransformable value) transformable,
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
class _$_ZacDateTimeTransformable extends _ZacDateTimeTransformable
    with ZacValueTranformable<DateTime> {
  _$_ZacDateTimeTransformable(
      {required this.value, required this.transformer, final String? $type})
      : $type = $type ?? 'z:1:DateTime.transformable',
        super._();

  factory _$_ZacDateTimeTransformable.fromJson(Map<String, dynamic> json) =>
      _$$_ZacDateTimeTransformableFromJson(json);

  @override
  final Object value;
  @override
  final ZacTransformers transformer;

  @JsonKey(name: 'converter')
  final String $type;

  @override
  String toString() {
    return 'ZacDateTime.transformable(value: $value, transformer: $transformer)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ZacDateTimeTransformable &&
            const DeepCollectionEquality().equals(other.value, value) &&
            (identical(other.transformer, transformer) ||
                other.transformer == transformer));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(value), transformer);

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_ZacDateTime value) $default, {
    required TResult Function(_ZacDateTimeTransformable value) transformable,
    required TResult Function(_ZacDateTimeSharedValue value) consume,
  }) {
    return transformable(this);
  }
}

abstract class _ZacDateTimeTransformable extends ZacDateTime
    implements ZacValueTranformable<DateTime> {
  factory _ZacDateTimeTransformable(
          {required final Object value,
          required final ZacTransformers transformer}) =
      _$_ZacDateTimeTransformable;
  _ZacDateTimeTransformable._() : super._();

  factory _ZacDateTimeTransformable.fromJson(Map<String, dynamic> json) =
      _$_ZacDateTimeTransformable.fromJson;

  Object get value;
  ZacTransformers get transformer;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_ZacDateTimeSharedValue extends _ZacDateTimeSharedValue
    with SharedValueConsume<DateTime> {
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
    required TResult Function(_ZacDateTimeTransformable value) transformable,
    required TResult Function(_ZacDateTimeSharedValue value) consume,
  }) {
    return consume(this);
  }
}

abstract class _ZacDateTimeSharedValue extends ZacDateTime
    implements SharedValueConsume<DateTime> {
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
    case 'z:1:List<FlutterWidget>.transformable':
      return _ZacListOfFlutterWidgetTransformable.fromJson(json);
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
    required TResult Function(_ZacListOfFlutterWidgetTransformable value)
        transformable,
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
    required TResult Function(_ZacListOfFlutterWidgetTransformable value)
        transformable,
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
class _$_ZacListOfFlutterWidgetTransformable
    extends _ZacListOfFlutterWidgetTransformable
    with ZacValueTranformableList<FlutterWidget> {
  _$_ZacListOfFlutterWidgetTransformable(
      {required final List<Object> items,
      this.transformer,
      this.itemTransformer,
      final String? $type})
      : _items = items,
        $type = $type ?? 'z:1:List<FlutterWidget>.transformable',
        super._();

  factory _$_ZacListOfFlutterWidgetTransformable.fromJson(
          Map<String, dynamic> json) =>
      _$$_ZacListOfFlutterWidgetTransformableFromJson(json);

  final List<Object> _items;
  @override
  List<Object> get items {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  final ZacTransformers? transformer;
  @override
  final ZacTransformers? itemTransformer;

  @JsonKey(name: 'converter')
  final String $type;

  @override
  String toString() {
    return 'ZacListOfFlutterWidget.transformable(items: $items, transformer: $transformer, itemTransformer: $itemTransformer)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ZacListOfFlutterWidgetTransformable &&
            const DeepCollectionEquality().equals(other._items, _items) &&
            (identical(other.transformer, transformer) ||
                other.transformer == transformer) &&
            (identical(other.itemTransformer, itemTransformer) ||
                other.itemTransformer == itemTransformer));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_items),
      transformer,
      itemTransformer);

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_ZacListOfFlutterWidget value) $default, {
    required TResult Function(_ZacListOfFlutterWidgetTransformable value)
        transformable,
    required TResult Function(_ZacListOfFlutterWidgetSharedValue value) consume,
  }) {
    return transformable(this);
  }
}

abstract class _ZacListOfFlutterWidgetTransformable
    extends ZacListOfFlutterWidget
    implements ZacValueTranformableList<FlutterWidget> {
  factory _ZacListOfFlutterWidgetTransformable(
          {required final List<Object> items,
          final ZacTransformers? transformer,
          final ZacTransformers? itemTransformer}) =
      _$_ZacListOfFlutterWidgetTransformable;
  _ZacListOfFlutterWidgetTransformable._() : super._();

  factory _ZacListOfFlutterWidgetTransformable.fromJson(
          Map<String, dynamic> json) =
      _$_ZacListOfFlutterWidgetTransformable.fromJson;

  List<Object> get items;
  ZacTransformers? get transformer;
  ZacTransformers? get itemTransformer;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_ZacListOfFlutterWidgetSharedValue
    extends _ZacListOfFlutterWidgetSharedValue
    with SharedValueConsumeList<FlutterWidget> {
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
    required TResult Function(_ZacListOfFlutterWidgetTransformable value)
        transformable,
    required TResult Function(_ZacListOfFlutterWidgetSharedValue value) consume,
  }) {
    return consume(this);
  }
}

abstract class _ZacListOfFlutterWidgetSharedValue extends ZacListOfFlutterWidget
    implements SharedValueConsumeList<FlutterWidget> {
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

ZacValueConsumeOnly<T> _$ZacValueConsumeOnlyFromJson<T>(
    Map<String, dynamic> json) {
  return _ZacValueConsumeOnly<T>.fromJson(json);
}

/// @nodoc
mixin _$ZacValueConsumeOnly<T> {
  ZacValue<T> get zacValue => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_ZacValueConsumeOnly<T> value) $default,
  ) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_ZacValueConsumeOnly<T> extends _ZacValueConsumeOnly<T> {
  _$_ZacValueConsumeOnly(this.zacValue) : super._();

  factory _$_ZacValueConsumeOnly.fromJson(Map<String, dynamic> json) =>
      _$$_ZacValueConsumeOnlyFromJson(json);

  @override
  final ZacValue<T> zacValue;

  @override
  String toString() {
    return 'ZacValueConsumeOnly<$T>(zacValue: $zacValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ZacValueConsumeOnly<T> &&
            (identical(other.zacValue, zacValue) ||
                other.zacValue == zacValue));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, zacValue);

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_ZacValueConsumeOnly<T> value) $default,
  ) {
    return $default(this);
  }
}

abstract class _ZacValueConsumeOnly<T> extends ZacValueConsumeOnly<T> {
  factory _ZacValueConsumeOnly(final ZacValue<T> zacValue) =
      _$_ZacValueConsumeOnly<T>;
  _ZacValueConsumeOnly._() : super._();

  factory _ZacValueConsumeOnly.fromJson(Map<String, dynamic> json) =
      _$_ZacValueConsumeOnly<T>.fromJson;

  @override
  ZacValue<T> get zacValue;
}

ZacValue<T> _$ZacValueFromJson<T>(Map<String, dynamic> json) {
  switch (json['converter']) {
    case 'z:1:ZacValue':
      return _ZacValue<T>.fromJson(json);
    case 'z:1:ZacValue.consume':
      return _ZacValueConsume<T>.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'converter', 'ZacValue',
          'Invalid union type "${json['converter']}"!');
  }
}

/// @nodoc
mixin _$ZacValue<T> {
  ZacTransformers? get transformer => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_ZacValue<T> value) $default, {
    required TResult Function(_ZacValueConsume<T> value) consume,
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_ZacValue<T> extends _ZacValue<T> {
  _$_ZacValue({required this.data, this.transformer, final String? $type})
      : $type = $type ?? 'z:1:ZacValue',
        super._();

  factory _$_ZacValue.fromJson(Map<String, dynamic> json) =>
      _$$_ZacValueFromJson(json);

  @override
  final Object? data;
  @override
  final ZacTransformers? transformer;

  @JsonKey(name: 'converter')
  final String $type;

  @override
  String toString() {
    return 'ZacValue<$T>(data: $data, transformer: $transformer)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ZacValue<T> &&
            const DeepCollectionEquality().equals(other.data, data) &&
            (identical(other.transformer, transformer) ||
                other.transformer == transformer));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(data), transformer);

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_ZacValue<T> value) $default, {
    required TResult Function(_ZacValueConsume<T> value) consume,
  }) {
    return $default(this);
  }
}

abstract class _ZacValue<T> extends ZacValue<T> {
  factory _ZacValue(
      {required final Object? data,
      final ZacTransformers? transformer}) = _$_ZacValue<T>;
  _ZacValue._() : super._();

  factory _ZacValue.fromJson(Map<String, dynamic> json) =
      _$_ZacValue<T>.fromJson;

  Object? get data;
  @override
  ZacTransformers? get transformer;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_ZacValueConsume<T> extends _ZacValueConsume<T> {
  _$_ZacValueConsume(
      {required this.family,
      this.transformer,
      this.select,
      this.forceConsume,
      final String? $type})
      : $type = $type ?? 'z:1:ZacValue.consume',
        super._();

  factory _$_ZacValueConsume.fromJson(Map<String, dynamic> json) =>
      _$$_ZacValueConsumeFromJson(json);

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
    return 'ZacValue<$T>.consume(family: $family, transformer: $transformer, select: $select, forceConsume: $forceConsume)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ZacValueConsume<T> &&
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
    TResult Function(_ZacValue<T> value) $default, {
    required TResult Function(_ZacValueConsume<T> value) consume,
  }) {
    return consume(this);
  }
}

abstract class _ZacValueConsume<T> extends ZacValue<T> {
  factory _ZacValueConsume(
      {required final Object family,
      final ZacTransformers? transformer,
      final ZacTransformers? select,
      final SharedValueConsumeType? forceConsume}) = _$_ZacValueConsume<T>;
  _ZacValueConsume._() : super._();

  factory _ZacValueConsume.fromJson(Map<String, dynamic> json) =
      _$_ZacValueConsume<T>.fromJson;

  Object get family;
  @override
  ZacTransformers? get transformer;
  ZacTransformers? get select;
  SharedValueConsumeType? get forceConsume;
}

ZacValueMap<T> _$ZacValueMapFromJson<T>(Map<String, dynamic> json) {
  switch (json['converter']) {
    case 'z:1:ZacValueMap':
      return _ZacValueMap<T>.fromJson(json);
    case 'z:1:ZacValueMap.consume':
      return _ZacValueMapConsume<T>.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'converter', 'ZacValueMap',
          'Invalid union type "${json['converter']}"!');
  }
}

/// @nodoc
mixin _$ZacValueMap<T> {
  ZacTransformers? get transformer => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_ZacValueMap<T> value) $default, {
    required TResult Function(_ZacValueMapConsume<T> value) consume,
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_ZacValueMap<T> extends _ZacValueMap<T> {
  _$_ZacValueMap(
      {required final Map<String, Object?> data,
      this.transformer,
      final String? $type})
      : _data = data,
        $type = $type ?? 'z:1:ZacValueMap',
        super._();

  factory _$_ZacValueMap.fromJson(Map<String, dynamic> json) =>
      _$$_ZacValueMapFromJson(json);

  final Map<String, Object?> _data;
  @override
  Map<String, Object?> get data {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_data);
  }

  @override
  final ZacTransformers? transformer;

  @JsonKey(name: 'converter')
  final String $type;

  @override
  String toString() {
    return 'ZacValueMap<$T>(data: $data, transformer: $transformer)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ZacValueMap<T> &&
            const DeepCollectionEquality().equals(other._data, _data) &&
            (identical(other.transformer, transformer) ||
                other.transformer == transformer));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_data), transformer);

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_ZacValueMap<T> value) $default, {
    required TResult Function(_ZacValueMapConsume<T> value) consume,
  }) {
    return $default(this);
  }
}

abstract class _ZacValueMap<T> extends ZacValueMap<T> {
  factory _ZacValueMap(
      {required final Map<String, Object?> data,
      final ZacTransformers? transformer}) = _$_ZacValueMap<T>;
  _ZacValueMap._() : super._();

  factory _ZacValueMap.fromJson(Map<String, dynamic> json) =
      _$_ZacValueMap<T>.fromJson;

  Map<String, Object?> get data;
  @override
  ZacTransformers? get transformer;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_ZacValueMapConsume<T> extends _ZacValueMapConsume<T> {
  _$_ZacValueMapConsume(
      {required this.family,
      this.transformer,
      this.select,
      this.forceConsume,
      final String? $type})
      : $type = $type ?? 'z:1:ZacValueMap.consume',
        super._();

  factory _$_ZacValueMapConsume.fromJson(Map<String, dynamic> json) =>
      _$$_ZacValueMapConsumeFromJson(json);

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
    return 'ZacValueMap<$T>.consume(family: $family, transformer: $transformer, select: $select, forceConsume: $forceConsume)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ZacValueMapConsume<T> &&
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
    TResult Function(_ZacValueMap<T> value) $default, {
    required TResult Function(_ZacValueMapConsume<T> value) consume,
  }) {
    return consume(this);
  }
}

abstract class _ZacValueMapConsume<T> extends ZacValueMap<T> {
  factory _ZacValueMapConsume(
      {required final Object family,
      final ZacTransformers? transformer,
      final ZacTransformers? select,
      final SharedValueConsumeType? forceConsume}) = _$_ZacValueMapConsume<T>;
  _ZacValueMapConsume._() : super._();

  factory _ZacValueMapConsume.fromJson(Map<String, dynamic> json) =
      _$_ZacValueMapConsume<T>.fromJson;

  Object get family;
  @override
  ZacTransformers? get transformer;
  ZacTransformers? get select;
  SharedValueConsumeType? get forceConsume;
}

ZacValueList<T> _$ZacValueListFromJson<T>(Map<String, dynamic> json) {
  switch (json['converter']) {
    case 'z:1:ZacValueList':
      return _ZacValueList<T>.fromJson(json);
    case 'z:1:ZacValueList.consume':
      return _ZacValueListConsume<T>.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'converter', 'ZacValueList',
          'Invalid union type "${json['converter']}"!');
  }
}

/// @nodoc
mixin _$ZacValueList<T> {
  ZacTransformers? get transformer => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_ZacValueList<T> value) $default, {
    required TResult Function(_ZacValueListConsume<T> value) consume,
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_ZacValueList<T> extends _ZacValueList<T> {
  _$_ZacValueList(
      {required final List<Object?> data,
      this.transformer,
      final String? $type})
      : _data = data,
        $type = $type ?? 'z:1:ZacValueList',
        super._();

  factory _$_ZacValueList.fromJson(Map<String, dynamic> json) =>
      _$$_ZacValueListFromJson(json);

  final List<Object?> _data;
  @override
  List<Object?> get data {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  final ZacTransformers? transformer;

  @JsonKey(name: 'converter')
  final String $type;

  @override
  String toString() {
    return 'ZacValueList<$T>(data: $data, transformer: $transformer)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ZacValueList<T> &&
            const DeepCollectionEquality().equals(other._data, _data) &&
            (identical(other.transformer, transformer) ||
                other.transformer == transformer));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_data), transformer);

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_ZacValueList<T> value) $default, {
    required TResult Function(_ZacValueListConsume<T> value) consume,
  }) {
    return $default(this);
  }
}

abstract class _ZacValueList<T> extends ZacValueList<T> {
  factory _ZacValueList(
      {required final List<Object?> data,
      final ZacTransformers? transformer}) = _$_ZacValueList<T>;
  _ZacValueList._() : super._();

  factory _ZacValueList.fromJson(Map<String, dynamic> json) =
      _$_ZacValueList<T>.fromJson;

  List<Object?> get data;
  @override
  ZacTransformers? get transformer;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_ZacValueListConsume<T> extends _ZacValueListConsume<T> {
  _$_ZacValueListConsume(
      {required this.family,
      this.transformer,
      this.select,
      this.forceConsume,
      final String? $type})
      : $type = $type ?? 'z:1:ZacValueList.consume',
        super._();

  factory _$_ZacValueListConsume.fromJson(Map<String, dynamic> json) =>
      _$$_ZacValueListConsumeFromJson(json);

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
    return 'ZacValueList<$T>.consume(family: $family, transformer: $transformer, select: $select, forceConsume: $forceConsume)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ZacValueListConsume<T> &&
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
    TResult Function(_ZacValueList<T> value) $default, {
    required TResult Function(_ZacValueListConsume<T> value) consume,
  }) {
    return consume(this);
  }
}

abstract class _ZacValueListConsume<T> extends ZacValueList<T> {
  factory _ZacValueListConsume(
      {required final Object family,
      final ZacTransformers? transformer,
      final ZacTransformers? select,
      final SharedValueConsumeType? forceConsume}) = _$_ZacValueListConsume<T>;
  _ZacValueListConsume._() : super._();

  factory _ZacValueListConsume.fromJson(Map<String, dynamic> json) =
      _$_ZacValueListConsume<T>.fromJson;

  Object get family;
  @override
  ZacTransformers? get transformer;
  ZacTransformers? get select;
  SharedValueConsumeType? get forceConsume;
}

ZacValueActions _$ZacValueActionsFromJson(Map<String, dynamic> json) {
  return _ZacValueActionsAsPayload.fromJson(json);
}

/// @nodoc
mixin _$ZacValueActions {
  ZacValue<Object?> get value => throw _privateConstructorUsedError;
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
  final ZacValue<Object?> value;
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
      {required final ZacValue<Object?> value,
      required final ZacActions actions}) = _$_ZacValueActionsAsPayload;
  _ZacValueActionsAsPayload._() : super._();

  factory _ZacValueActionsAsPayload.fromJson(Map<String, dynamic> json) =
      _$_ZacValueActionsAsPayload.fromJson;

  @override
  ZacValue<Object?> get value;
  @override
  ZacActions get actions;
}
