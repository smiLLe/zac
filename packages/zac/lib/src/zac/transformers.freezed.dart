// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'transformers.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ZacTransformValue _$ZacTransformValueFromJson(Map<String, dynamic> json) {
  return _ZacTransformValue.fromJson(json);
}

/// @nodoc
mixin _$ZacTransformValue {
  Object? get value => throw _privateConstructorUsedError;
  Map<String, Object?>? get extra => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_ZacTransformValue value) $default,
  ) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_ZacTransformValue implements _ZacTransformValue {
  _$_ZacTransformValue(this.value, {final Map<String, Object?>? extra})
      : _extra = extra;

  factory _$_ZacTransformValue.fromJson(Map<String, dynamic> json) =>
      _$$_ZacTransformValueFromJson(json);

  @override
  final Object? value;
  final Map<String, Object?>? _extra;
  @override
  Map<String, Object?>? get extra {
    final value = _extra;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  String toString() {
    return 'ZacTransformValue(value: $value, extra: $extra)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ZacTransformValue &&
            const DeepCollectionEquality().equals(other.value, value) &&
            const DeepCollectionEquality().equals(other._extra, _extra));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(value),
      const DeepCollectionEquality().hash(_extra));

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_ZacTransformValue value) $default,
  ) {
    return $default(this);
  }
}

abstract class _ZacTransformValue implements ZacTransformValue {
  factory _ZacTransformValue(final Object? value,
      {final Map<String, Object?>? extra}) = _$_ZacTransformValue;

  factory _ZacTransformValue.fromJson(Map<String, dynamic> json) =
      _$_ZacTransformValue.fromJson;

  @override
  Object? get value;
  @override
  Map<String, Object?>? get extra;
}

ConvertTransformer _$ConvertTransformerFromJson(Map<String, dynamic> json) {
  return _Convert.fromJson(json);
}

/// @nodoc
mixin _$ConvertTransformer {
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_Convert value) $default,
  ) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_Convert extends _Convert {
  _$_Convert() : super._();

  factory _$_Convert.fromJson(Map<String, dynamic> json) =>
      _$$_ConvertFromJson(json);

  @override
  String toString() {
    return 'ConvertTransformer()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Convert);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_Convert value) $default,
  ) {
    return $default(this);
  }
}

abstract class _Convert extends ConvertTransformer {
  factory _Convert() = _$_Convert;
  _Convert._() : super._();

  factory _Convert.fromJson(Map<String, dynamic> json) = _$_Convert.fromJson;
}

MapTransformer _$MapTransformerFromJson(Map<String, dynamic> json) {
  switch (json['_converter']) {
    case 'z:1:Transformer:Map.values':
      return _MapValues.fromJson(json);
    case 'z:1:Transformer:Map.keys':
      return _MapKeys.fromJson(json);
    case 'z:1:Transformer:Map.entries':
      return _MapEntries.fromJson(json);
    case 'z:1:Transformer:Map.length':
      return _MapLength.fromJson(json);
    case 'z:1:Transformer:Map.isEmpty':
      return _MapIsEmpty.fromJson(json);
    case 'z:1:Transformer:Map.isNotEmpty':
      return _MapIsNotEmpty.fromJson(json);
    case 'z:1:Transformer:Map.containsKey':
      return _MapContainsKey.fromJson(json);
    case 'z:1:Transformer:Map.containsValue':
      return _MapContainsValue.fromJson(json);
    case 'z:1:Transformer:Map.map':
      return _MapMapper.fromJson(json);
    case 'z:1:Transformer:Map<Object, Object>.from':
      return _MapFromObjectObject.fromJson(json);
    case 'z:1:Transformer:Map<String, Object>.from':
      return _MapFromStringObject.fromJson(json);
    case 'z:1:Transformer:Map<String, Object?>.from':
      return _MapFromStringNullObject.fromJson(json);

    default:
      throw CheckedFromJsonException(json, '_converter', 'MapTransformer',
          'Invalid union type "${json['_converter']}"!');
  }
}

/// @nodoc
mixin _$MapTransformer {
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_MapValues value) values,
    required TResult Function(_MapKeys value) keys,
    required TResult Function(_MapEntries value) entries,
    required TResult Function(_MapLength value) length,
    required TResult Function(_MapIsEmpty value) isEmpty,
    required TResult Function(_MapIsNotEmpty value) isNotEmpty,
    required TResult Function(_MapContainsKey value) containsKey,
    required TResult Function(_MapContainsValue value) containsValue,
    required TResult Function(_MapMapper value) mapper,
    required TResult Function(_MapFromObjectObject value) fromObjectObject,
    required TResult Function(_MapFromStringObject value) fromStringObject,
    required TResult Function(_MapFromStringNullObject value)
        fromStringNullObject,
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_MapValues extends _MapValues {
  const _$_MapValues({final String? $type})
      : $type = $type ?? 'z:1:Transformer:Map.values',
        super._();

  factory _$_MapValues.fromJson(Map<String, dynamic> json) =>
      _$$_MapValuesFromJson(json);

  @JsonKey(name: '_converter')
  final String $type;

  @override
  String toString() {
    return 'MapTransformer.values()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_MapValues);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_MapValues value) values,
    required TResult Function(_MapKeys value) keys,
    required TResult Function(_MapEntries value) entries,
    required TResult Function(_MapLength value) length,
    required TResult Function(_MapIsEmpty value) isEmpty,
    required TResult Function(_MapIsNotEmpty value) isNotEmpty,
    required TResult Function(_MapContainsKey value) containsKey,
    required TResult Function(_MapContainsValue value) containsValue,
    required TResult Function(_MapMapper value) mapper,
    required TResult Function(_MapFromObjectObject value) fromObjectObject,
    required TResult Function(_MapFromStringObject value) fromStringObject,
    required TResult Function(_MapFromStringNullObject value)
        fromStringNullObject,
  }) {
    return values(this);
  }
}

abstract class _MapValues extends MapTransformer {
  const factory _MapValues() = _$_MapValues;
  const _MapValues._() : super._();

  factory _MapValues.fromJson(Map<String, dynamic> json) =
      _$_MapValues.fromJson;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_MapKeys extends _MapKeys {
  const _$_MapKeys({final String? $type})
      : $type = $type ?? 'z:1:Transformer:Map.keys',
        super._();

  factory _$_MapKeys.fromJson(Map<String, dynamic> json) =>
      _$$_MapKeysFromJson(json);

  @JsonKey(name: '_converter')
  final String $type;

  @override
  String toString() {
    return 'MapTransformer.keys()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_MapKeys);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_MapValues value) values,
    required TResult Function(_MapKeys value) keys,
    required TResult Function(_MapEntries value) entries,
    required TResult Function(_MapLength value) length,
    required TResult Function(_MapIsEmpty value) isEmpty,
    required TResult Function(_MapIsNotEmpty value) isNotEmpty,
    required TResult Function(_MapContainsKey value) containsKey,
    required TResult Function(_MapContainsValue value) containsValue,
    required TResult Function(_MapMapper value) mapper,
    required TResult Function(_MapFromObjectObject value) fromObjectObject,
    required TResult Function(_MapFromStringObject value) fromStringObject,
    required TResult Function(_MapFromStringNullObject value)
        fromStringNullObject,
  }) {
    return keys(this);
  }
}

abstract class _MapKeys extends MapTransformer {
  const factory _MapKeys() = _$_MapKeys;
  const _MapKeys._() : super._();

  factory _MapKeys.fromJson(Map<String, dynamic> json) = _$_MapKeys.fromJson;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_MapEntries extends _MapEntries {
  const _$_MapEntries({final String? $type})
      : $type = $type ?? 'z:1:Transformer:Map.entries',
        super._();

  factory _$_MapEntries.fromJson(Map<String, dynamic> json) =>
      _$$_MapEntriesFromJson(json);

  @JsonKey(name: '_converter')
  final String $type;

  @override
  String toString() {
    return 'MapTransformer.entries()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_MapEntries);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_MapValues value) values,
    required TResult Function(_MapKeys value) keys,
    required TResult Function(_MapEntries value) entries,
    required TResult Function(_MapLength value) length,
    required TResult Function(_MapIsEmpty value) isEmpty,
    required TResult Function(_MapIsNotEmpty value) isNotEmpty,
    required TResult Function(_MapContainsKey value) containsKey,
    required TResult Function(_MapContainsValue value) containsValue,
    required TResult Function(_MapMapper value) mapper,
    required TResult Function(_MapFromObjectObject value) fromObjectObject,
    required TResult Function(_MapFromStringObject value) fromStringObject,
    required TResult Function(_MapFromStringNullObject value)
        fromStringNullObject,
  }) {
    return entries(this);
  }
}

abstract class _MapEntries extends MapTransformer {
  const factory _MapEntries() = _$_MapEntries;
  const _MapEntries._() : super._();

  factory _MapEntries.fromJson(Map<String, dynamic> json) =
      _$_MapEntries.fromJson;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_MapLength extends _MapLength {
  const _$_MapLength({final String? $type})
      : $type = $type ?? 'z:1:Transformer:Map.length',
        super._();

  factory _$_MapLength.fromJson(Map<String, dynamic> json) =>
      _$$_MapLengthFromJson(json);

  @JsonKey(name: '_converter')
  final String $type;

  @override
  String toString() {
    return 'MapTransformer.length()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_MapLength);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_MapValues value) values,
    required TResult Function(_MapKeys value) keys,
    required TResult Function(_MapEntries value) entries,
    required TResult Function(_MapLength value) length,
    required TResult Function(_MapIsEmpty value) isEmpty,
    required TResult Function(_MapIsNotEmpty value) isNotEmpty,
    required TResult Function(_MapContainsKey value) containsKey,
    required TResult Function(_MapContainsValue value) containsValue,
    required TResult Function(_MapMapper value) mapper,
    required TResult Function(_MapFromObjectObject value) fromObjectObject,
    required TResult Function(_MapFromStringObject value) fromStringObject,
    required TResult Function(_MapFromStringNullObject value)
        fromStringNullObject,
  }) {
    return length(this);
  }
}

abstract class _MapLength extends MapTransformer {
  const factory _MapLength() = _$_MapLength;
  const _MapLength._() : super._();

  factory _MapLength.fromJson(Map<String, dynamic> json) =
      _$_MapLength.fromJson;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_MapIsEmpty extends _MapIsEmpty {
  const _$_MapIsEmpty({final String? $type})
      : $type = $type ?? 'z:1:Transformer:Map.isEmpty',
        super._();

  factory _$_MapIsEmpty.fromJson(Map<String, dynamic> json) =>
      _$$_MapIsEmptyFromJson(json);

  @JsonKey(name: '_converter')
  final String $type;

  @override
  String toString() {
    return 'MapTransformer.isEmpty()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_MapIsEmpty);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_MapValues value) values,
    required TResult Function(_MapKeys value) keys,
    required TResult Function(_MapEntries value) entries,
    required TResult Function(_MapLength value) length,
    required TResult Function(_MapIsEmpty value) isEmpty,
    required TResult Function(_MapIsNotEmpty value) isNotEmpty,
    required TResult Function(_MapContainsKey value) containsKey,
    required TResult Function(_MapContainsValue value) containsValue,
    required TResult Function(_MapMapper value) mapper,
    required TResult Function(_MapFromObjectObject value) fromObjectObject,
    required TResult Function(_MapFromStringObject value) fromStringObject,
    required TResult Function(_MapFromStringNullObject value)
        fromStringNullObject,
  }) {
    return isEmpty(this);
  }
}

abstract class _MapIsEmpty extends MapTransformer {
  const factory _MapIsEmpty() = _$_MapIsEmpty;
  const _MapIsEmpty._() : super._();

  factory _MapIsEmpty.fromJson(Map<String, dynamic> json) =
      _$_MapIsEmpty.fromJson;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_MapIsNotEmpty extends _MapIsNotEmpty {
  const _$_MapIsNotEmpty({final String? $type})
      : $type = $type ?? 'z:1:Transformer:Map.isNotEmpty',
        super._();

  factory _$_MapIsNotEmpty.fromJson(Map<String, dynamic> json) =>
      _$$_MapIsNotEmptyFromJson(json);

  @JsonKey(name: '_converter')
  final String $type;

  @override
  String toString() {
    return 'MapTransformer.isNotEmpty()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_MapIsNotEmpty);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_MapValues value) values,
    required TResult Function(_MapKeys value) keys,
    required TResult Function(_MapEntries value) entries,
    required TResult Function(_MapLength value) length,
    required TResult Function(_MapIsEmpty value) isEmpty,
    required TResult Function(_MapIsNotEmpty value) isNotEmpty,
    required TResult Function(_MapContainsKey value) containsKey,
    required TResult Function(_MapContainsValue value) containsValue,
    required TResult Function(_MapMapper value) mapper,
    required TResult Function(_MapFromObjectObject value) fromObjectObject,
    required TResult Function(_MapFromStringObject value) fromStringObject,
    required TResult Function(_MapFromStringNullObject value)
        fromStringNullObject,
  }) {
    return isNotEmpty(this);
  }
}

abstract class _MapIsNotEmpty extends MapTransformer {
  const factory _MapIsNotEmpty() = _$_MapIsNotEmpty;
  const _MapIsNotEmpty._() : super._();

  factory _MapIsNotEmpty.fromJson(Map<String, dynamic> json) =
      _$_MapIsNotEmpty.fromJson;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_MapContainsKey extends _MapContainsKey {
  const _$_MapContainsKey(this.key, {final String? $type})
      : $type = $type ?? 'z:1:Transformer:Map.containsKey',
        super._();

  factory _$_MapContainsKey.fromJson(Map<String, dynamic> json) =>
      _$$_MapContainsKeyFromJson(json);

  @override
  final ZacObject? key;

  @JsonKey(name: '_converter')
  final String $type;

  @override
  String toString() {
    return 'MapTransformer.containsKey(key: $key)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MapContainsKey &&
            const DeepCollectionEquality().equals(other.key, key));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(key));

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_MapValues value) values,
    required TResult Function(_MapKeys value) keys,
    required TResult Function(_MapEntries value) entries,
    required TResult Function(_MapLength value) length,
    required TResult Function(_MapIsEmpty value) isEmpty,
    required TResult Function(_MapIsNotEmpty value) isNotEmpty,
    required TResult Function(_MapContainsKey value) containsKey,
    required TResult Function(_MapContainsValue value) containsValue,
    required TResult Function(_MapMapper value) mapper,
    required TResult Function(_MapFromObjectObject value) fromObjectObject,
    required TResult Function(_MapFromStringObject value) fromStringObject,
    required TResult Function(_MapFromStringNullObject value)
        fromStringNullObject,
  }) {
    return containsKey(this);
  }
}

abstract class _MapContainsKey extends MapTransformer {
  const factory _MapContainsKey(final ZacObject? key) = _$_MapContainsKey;
  const _MapContainsKey._() : super._();

  factory _MapContainsKey.fromJson(Map<String, dynamic> json) =
      _$_MapContainsKey.fromJson;

  ZacObject? get key;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_MapContainsValue extends _MapContainsValue {
  const _$_MapContainsValue(this.value, {final String? $type})
      : $type = $type ?? 'z:1:Transformer:Map.containsValue',
        super._();

  factory _$_MapContainsValue.fromJson(Map<String, dynamic> json) =>
      _$$_MapContainsValueFromJson(json);

  @override
  final ZacObject? value;

  @JsonKey(name: '_converter')
  final String $type;

  @override
  String toString() {
    return 'MapTransformer.containsValue(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MapContainsValue &&
            const DeepCollectionEquality().equals(other.value, value));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(value));

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_MapValues value) values,
    required TResult Function(_MapKeys value) keys,
    required TResult Function(_MapEntries value) entries,
    required TResult Function(_MapLength value) length,
    required TResult Function(_MapIsEmpty value) isEmpty,
    required TResult Function(_MapIsNotEmpty value) isNotEmpty,
    required TResult Function(_MapContainsKey value) containsKey,
    required TResult Function(_MapContainsValue value) containsValue,
    required TResult Function(_MapMapper value) mapper,
    required TResult Function(_MapFromObjectObject value) fromObjectObject,
    required TResult Function(_MapFromStringObject value) fromStringObject,
    required TResult Function(_MapFromStringNullObject value)
        fromStringNullObject,
  }) {
    return containsValue(this);
  }
}

abstract class _MapContainsValue extends MapTransformer {
  const factory _MapContainsValue(final ZacObject? value) = _$_MapContainsValue;
  const _MapContainsValue._() : super._();

  factory _MapContainsValue.fromJson(Map<String, dynamic> json) =
      _$_MapContainsValue.fromJson;

  ZacObject? get value;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_MapMapper extends _MapMapper {
  const _$_MapMapper(
      {final List<ZacTransformer>? keyTransformer,
      final List<ZacTransformer>? valueTransformer,
      final String? $type})
      : _keyTransformer = keyTransformer,
        _valueTransformer = valueTransformer,
        $type = $type ?? 'z:1:Transformer:Map.map',
        super._();

  factory _$_MapMapper.fromJson(Map<String, dynamic> json) =>
      _$$_MapMapperFromJson(json);

  final List<ZacTransformer>? _keyTransformer;
  @override
  List<ZacTransformer>? get keyTransformer {
    final value = _keyTransformer;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<ZacTransformer>? _valueTransformer;
  @override
  List<ZacTransformer>? get valueTransformer {
    final value = _valueTransformer;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @JsonKey(name: '_converter')
  final String $type;

  @override
  String toString() {
    return 'MapTransformer.mapper(keyTransformer: $keyTransformer, valueTransformer: $valueTransformer)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MapMapper &&
            const DeepCollectionEquality()
                .equals(other._keyTransformer, _keyTransformer) &&
            const DeepCollectionEquality()
                .equals(other._valueTransformer, _valueTransformer));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_keyTransformer),
      const DeepCollectionEquality().hash(_valueTransformer));

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_MapValues value) values,
    required TResult Function(_MapKeys value) keys,
    required TResult Function(_MapEntries value) entries,
    required TResult Function(_MapLength value) length,
    required TResult Function(_MapIsEmpty value) isEmpty,
    required TResult Function(_MapIsNotEmpty value) isNotEmpty,
    required TResult Function(_MapContainsKey value) containsKey,
    required TResult Function(_MapContainsValue value) containsValue,
    required TResult Function(_MapMapper value) mapper,
    required TResult Function(_MapFromObjectObject value) fromObjectObject,
    required TResult Function(_MapFromStringObject value) fromStringObject,
    required TResult Function(_MapFromStringNullObject value)
        fromStringNullObject,
  }) {
    return mapper(this);
  }
}

abstract class _MapMapper extends MapTransformer {
  const factory _MapMapper(
      {final List<ZacTransformer>? keyTransformer,
      final List<ZacTransformer>? valueTransformer}) = _$_MapMapper;
  const _MapMapper._() : super._();

  factory _MapMapper.fromJson(Map<String, dynamic> json) =
      _$_MapMapper.fromJson;

  List<ZacTransformer>? get keyTransformer;
  List<ZacTransformer>? get valueTransformer;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_MapFromObjectObject extends _MapFromObjectObject {
  const _$_MapFromObjectObject({final String? $type})
      : $type = $type ?? 'z:1:Transformer:Map<Object, Object>.from',
        super._();

  factory _$_MapFromObjectObject.fromJson(Map<String, dynamic> json) =>
      _$$_MapFromObjectObjectFromJson(json);

  @JsonKey(name: '_converter')
  final String $type;

  @override
  String toString() {
    return 'MapTransformer.fromObjectObject()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_MapFromObjectObject);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_MapValues value) values,
    required TResult Function(_MapKeys value) keys,
    required TResult Function(_MapEntries value) entries,
    required TResult Function(_MapLength value) length,
    required TResult Function(_MapIsEmpty value) isEmpty,
    required TResult Function(_MapIsNotEmpty value) isNotEmpty,
    required TResult Function(_MapContainsKey value) containsKey,
    required TResult Function(_MapContainsValue value) containsValue,
    required TResult Function(_MapMapper value) mapper,
    required TResult Function(_MapFromObjectObject value) fromObjectObject,
    required TResult Function(_MapFromStringObject value) fromStringObject,
    required TResult Function(_MapFromStringNullObject value)
        fromStringNullObject,
  }) {
    return fromObjectObject(this);
  }
}

abstract class _MapFromObjectObject extends MapTransformer {
  const factory _MapFromObjectObject() = _$_MapFromObjectObject;
  const _MapFromObjectObject._() : super._();

  factory _MapFromObjectObject.fromJson(Map<String, dynamic> json) =
      _$_MapFromObjectObject.fromJson;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_MapFromStringObject extends _MapFromStringObject {
  const _$_MapFromStringObject({final String? $type})
      : $type = $type ?? 'z:1:Transformer:Map<String, Object>.from',
        super._();

  factory _$_MapFromStringObject.fromJson(Map<String, dynamic> json) =>
      _$$_MapFromStringObjectFromJson(json);

  @JsonKey(name: '_converter')
  final String $type;

  @override
  String toString() {
    return 'MapTransformer.fromStringObject()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_MapFromStringObject);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_MapValues value) values,
    required TResult Function(_MapKeys value) keys,
    required TResult Function(_MapEntries value) entries,
    required TResult Function(_MapLength value) length,
    required TResult Function(_MapIsEmpty value) isEmpty,
    required TResult Function(_MapIsNotEmpty value) isNotEmpty,
    required TResult Function(_MapContainsKey value) containsKey,
    required TResult Function(_MapContainsValue value) containsValue,
    required TResult Function(_MapMapper value) mapper,
    required TResult Function(_MapFromObjectObject value) fromObjectObject,
    required TResult Function(_MapFromStringObject value) fromStringObject,
    required TResult Function(_MapFromStringNullObject value)
        fromStringNullObject,
  }) {
    return fromStringObject(this);
  }
}

abstract class _MapFromStringObject extends MapTransformer {
  const factory _MapFromStringObject() = _$_MapFromStringObject;
  const _MapFromStringObject._() : super._();

  factory _MapFromStringObject.fromJson(Map<String, dynamic> json) =
      _$_MapFromStringObject.fromJson;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_MapFromStringNullObject extends _MapFromStringNullObject {
  const _$_MapFromStringNullObject({final String? $type})
      : $type = $type ?? 'z:1:Transformer:Map<String, Object?>.from',
        super._();

  factory _$_MapFromStringNullObject.fromJson(Map<String, dynamic> json) =>
      _$$_MapFromStringNullObjectFromJson(json);

  @JsonKey(name: '_converter')
  final String $type;

  @override
  String toString() {
    return 'MapTransformer.fromStringNullObject()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MapFromStringNullObject);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_MapValues value) values,
    required TResult Function(_MapKeys value) keys,
    required TResult Function(_MapEntries value) entries,
    required TResult Function(_MapLength value) length,
    required TResult Function(_MapIsEmpty value) isEmpty,
    required TResult Function(_MapIsNotEmpty value) isNotEmpty,
    required TResult Function(_MapContainsKey value) containsKey,
    required TResult Function(_MapContainsValue value) containsValue,
    required TResult Function(_MapMapper value) mapper,
    required TResult Function(_MapFromObjectObject value) fromObjectObject,
    required TResult Function(_MapFromStringObject value) fromStringObject,
    required TResult Function(_MapFromStringNullObject value)
        fromStringNullObject,
  }) {
    return fromStringNullObject(this);
  }
}

abstract class _MapFromStringNullObject extends MapTransformer {
  const factory _MapFromStringNullObject() = _$_MapFromStringNullObject;
  const _MapFromStringNullObject._() : super._();

  factory _MapFromStringNullObject.fromJson(Map<String, dynamic> json) =
      _$_MapFromStringNullObject.fromJson;
}

IterableTransformer _$IterableTransformerFromJson(Map<String, dynamic> json) {
  switch (json['_converter']) {
    case 'z:1:Transformer:Iterable.map':
      return _IterableMap.fromJson(json);
    case 'z:1:Transformer:Iterable.single':
      return _IterableSingle.fromJson(json);
    case 'z:1:Transformer:Iterable.first':
      return _IterableFirst.fromJson(json);
    case 'z:1:Transformer:Iterable.last':
      return _IterableLast.fromJson(json);
    case 'z:1:Transformer:Iterable.length':
      return _IterableLength.fromJson(json);
    case 'z:1:Transformer:Iterable.isEmpty':
      return _IterableIsEmpty.fromJson(json);
    case 'z:1:Transformer:Iterable.isNotEmpty':
      return _IterableIsNotEmpty.fromJson(json);
    case 'z:1:Transformer:Iterable.toList':
      return _IterableToList.fromJson(json);
    case 'z:1:Transformer:Iterable.toSet':
      return _IterableToSet.fromJson(json);
    case 'z:1:Transformer:Iterable.toString':
      return _IterableToString.fromJson(json);
    case 'z:1:Transformer:Iterable.join':
      return _IterableJoin.fromJson(json);
    case 'z:1:Transformer:Iterable.contains':
      return _IterableContains.fromJson(json);
    case 'z:1:Transformer:Iterable.elementAt':
      return _IterableElementAt.fromJson(json);
    case 'z:1:Transformer:Iterable.skip':
      return _IterableSkip.fromJson(json);
    case 'z:1:Transformer:Iterable.take':
      return _IterableTake.fromJson(json);

    default:
      throw CheckedFromJsonException(json, '_converter', 'IterableTransformer',
          'Invalid union type "${json['_converter']}"!');
  }
}

/// @nodoc
mixin _$IterableTransformer {
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_IterableMap value) map,
    required TResult Function(_IterableSingle value) single,
    required TResult Function(_IterableFirst value) first,
    required TResult Function(_IterableLast value) last,
    required TResult Function(_IterableLength value) length,
    required TResult Function(_IterableIsEmpty value) isEmpty,
    required TResult Function(_IterableIsNotEmpty value) isNotEmpty,
    required TResult Function(_IterableToList value) toList,
    required TResult Function(_IterableToSet value) toSet,
    required TResult Function(_IterableToString value) toString,
    required TResult Function(_IterableJoin value) join,
    required TResult Function(_IterableContains value) contains,
    required TResult Function(_IterableElementAt value) elementAt,
    required TResult Function(_IterableSkip value) skip,
    required TResult Function(_IterableTake value) take,
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_IterableMap extends _IterableMap {
  _$_IterableMap(
      {required final List<ZacTransformer> transformer, final String? $type})
      : _transformer = transformer,
        $type = $type ?? 'z:1:Transformer:Iterable.map',
        super._();

  factory _$_IterableMap.fromJson(Map<String, dynamic> json) =>
      _$$_IterableMapFromJson(json);

  final List<ZacTransformer> _transformer;
  @override
  List<ZacTransformer> get transformer {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_transformer);
  }

  @JsonKey(name: '_converter')
  final String $type;

  @override
  String toString() {
    return 'IterableTransformer.map(transformer: $transformer)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_IterableMap &&
            const DeepCollectionEquality()
                .equals(other._transformer, _transformer));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_transformer));

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_IterableMap value) map,
    required TResult Function(_IterableSingle value) single,
    required TResult Function(_IterableFirst value) first,
    required TResult Function(_IterableLast value) last,
    required TResult Function(_IterableLength value) length,
    required TResult Function(_IterableIsEmpty value) isEmpty,
    required TResult Function(_IterableIsNotEmpty value) isNotEmpty,
    required TResult Function(_IterableToList value) toList,
    required TResult Function(_IterableToSet value) toSet,
    required TResult Function(_IterableToString value) toString,
    required TResult Function(_IterableJoin value) join,
    required TResult Function(_IterableContains value) contains,
    required TResult Function(_IterableElementAt value) elementAt,
    required TResult Function(_IterableSkip value) skip,
    required TResult Function(_IterableTake value) take,
  }) {
    return map(this);
  }
}

abstract class _IterableMap extends IterableTransformer {
  factory _IterableMap({required final List<ZacTransformer> transformer}) =
      _$_IterableMap;
  _IterableMap._() : super._();

  factory _IterableMap.fromJson(Map<String, dynamic> json) =
      _$_IterableMap.fromJson;

  List<ZacTransformer> get transformer;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_IterableSingle extends _IterableSingle {
  const _$_IterableSingle({final String? $type})
      : $type = $type ?? 'z:1:Transformer:Iterable.single',
        super._();

  factory _$_IterableSingle.fromJson(Map<String, dynamic> json) =>
      _$$_IterableSingleFromJson(json);

  @JsonKey(name: '_converter')
  final String $type;

  @override
  String toString() {
    return 'IterableTransformer.single()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_IterableSingle);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_IterableMap value) map,
    required TResult Function(_IterableSingle value) single,
    required TResult Function(_IterableFirst value) first,
    required TResult Function(_IterableLast value) last,
    required TResult Function(_IterableLength value) length,
    required TResult Function(_IterableIsEmpty value) isEmpty,
    required TResult Function(_IterableIsNotEmpty value) isNotEmpty,
    required TResult Function(_IterableToList value) toList,
    required TResult Function(_IterableToSet value) toSet,
    required TResult Function(_IterableToString value) toString,
    required TResult Function(_IterableJoin value) join,
    required TResult Function(_IterableContains value) contains,
    required TResult Function(_IterableElementAt value) elementAt,
    required TResult Function(_IterableSkip value) skip,
    required TResult Function(_IterableTake value) take,
  }) {
    return single(this);
  }
}

abstract class _IterableSingle extends IterableTransformer {
  const factory _IterableSingle() = _$_IterableSingle;
  const _IterableSingle._() : super._();

  factory _IterableSingle.fromJson(Map<String, dynamic> json) =
      _$_IterableSingle.fromJson;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_IterableFirst extends _IterableFirst {
  const _$_IterableFirst({final String? $type})
      : $type = $type ?? 'z:1:Transformer:Iterable.first',
        super._();

  factory _$_IterableFirst.fromJson(Map<String, dynamic> json) =>
      _$$_IterableFirstFromJson(json);

  @JsonKey(name: '_converter')
  final String $type;

  @override
  String toString() {
    return 'IterableTransformer.first()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_IterableFirst);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_IterableMap value) map,
    required TResult Function(_IterableSingle value) single,
    required TResult Function(_IterableFirst value) first,
    required TResult Function(_IterableLast value) last,
    required TResult Function(_IterableLength value) length,
    required TResult Function(_IterableIsEmpty value) isEmpty,
    required TResult Function(_IterableIsNotEmpty value) isNotEmpty,
    required TResult Function(_IterableToList value) toList,
    required TResult Function(_IterableToSet value) toSet,
    required TResult Function(_IterableToString value) toString,
    required TResult Function(_IterableJoin value) join,
    required TResult Function(_IterableContains value) contains,
    required TResult Function(_IterableElementAt value) elementAt,
    required TResult Function(_IterableSkip value) skip,
    required TResult Function(_IterableTake value) take,
  }) {
    return first(this);
  }
}

abstract class _IterableFirst extends IterableTransformer {
  const factory _IterableFirst() = _$_IterableFirst;
  const _IterableFirst._() : super._();

  factory _IterableFirst.fromJson(Map<String, dynamic> json) =
      _$_IterableFirst.fromJson;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_IterableLast extends _IterableLast {
  const _$_IterableLast({final String? $type})
      : $type = $type ?? 'z:1:Transformer:Iterable.last',
        super._();

  factory _$_IterableLast.fromJson(Map<String, dynamic> json) =>
      _$$_IterableLastFromJson(json);

  @JsonKey(name: '_converter')
  final String $type;

  @override
  String toString() {
    return 'IterableTransformer.last()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_IterableLast);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_IterableMap value) map,
    required TResult Function(_IterableSingle value) single,
    required TResult Function(_IterableFirst value) first,
    required TResult Function(_IterableLast value) last,
    required TResult Function(_IterableLength value) length,
    required TResult Function(_IterableIsEmpty value) isEmpty,
    required TResult Function(_IterableIsNotEmpty value) isNotEmpty,
    required TResult Function(_IterableToList value) toList,
    required TResult Function(_IterableToSet value) toSet,
    required TResult Function(_IterableToString value) toString,
    required TResult Function(_IterableJoin value) join,
    required TResult Function(_IterableContains value) contains,
    required TResult Function(_IterableElementAt value) elementAt,
    required TResult Function(_IterableSkip value) skip,
    required TResult Function(_IterableTake value) take,
  }) {
    return last(this);
  }
}

abstract class _IterableLast extends IterableTransformer {
  const factory _IterableLast() = _$_IterableLast;
  const _IterableLast._() : super._();

  factory _IterableLast.fromJson(Map<String, dynamic> json) =
      _$_IterableLast.fromJson;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_IterableLength extends _IterableLength {
  const _$_IterableLength({final String? $type})
      : $type = $type ?? 'z:1:Transformer:Iterable.length',
        super._();

  factory _$_IterableLength.fromJson(Map<String, dynamic> json) =>
      _$$_IterableLengthFromJson(json);

  @JsonKey(name: '_converter')
  final String $type;

  @override
  String toString() {
    return 'IterableTransformer.length()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_IterableLength);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_IterableMap value) map,
    required TResult Function(_IterableSingle value) single,
    required TResult Function(_IterableFirst value) first,
    required TResult Function(_IterableLast value) last,
    required TResult Function(_IterableLength value) length,
    required TResult Function(_IterableIsEmpty value) isEmpty,
    required TResult Function(_IterableIsNotEmpty value) isNotEmpty,
    required TResult Function(_IterableToList value) toList,
    required TResult Function(_IterableToSet value) toSet,
    required TResult Function(_IterableToString value) toString,
    required TResult Function(_IterableJoin value) join,
    required TResult Function(_IterableContains value) contains,
    required TResult Function(_IterableElementAt value) elementAt,
    required TResult Function(_IterableSkip value) skip,
    required TResult Function(_IterableTake value) take,
  }) {
    return length(this);
  }
}

abstract class _IterableLength extends IterableTransformer {
  const factory _IterableLength() = _$_IterableLength;
  const _IterableLength._() : super._();

  factory _IterableLength.fromJson(Map<String, dynamic> json) =
      _$_IterableLength.fromJson;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_IterableIsEmpty extends _IterableIsEmpty {
  const _$_IterableIsEmpty({final String? $type})
      : $type = $type ?? 'z:1:Transformer:Iterable.isEmpty',
        super._();

  factory _$_IterableIsEmpty.fromJson(Map<String, dynamic> json) =>
      _$$_IterableIsEmptyFromJson(json);

  @JsonKey(name: '_converter')
  final String $type;

  @override
  String toString() {
    return 'IterableTransformer.isEmpty()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_IterableIsEmpty);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_IterableMap value) map,
    required TResult Function(_IterableSingle value) single,
    required TResult Function(_IterableFirst value) first,
    required TResult Function(_IterableLast value) last,
    required TResult Function(_IterableLength value) length,
    required TResult Function(_IterableIsEmpty value) isEmpty,
    required TResult Function(_IterableIsNotEmpty value) isNotEmpty,
    required TResult Function(_IterableToList value) toList,
    required TResult Function(_IterableToSet value) toSet,
    required TResult Function(_IterableToString value) toString,
    required TResult Function(_IterableJoin value) join,
    required TResult Function(_IterableContains value) contains,
    required TResult Function(_IterableElementAt value) elementAt,
    required TResult Function(_IterableSkip value) skip,
    required TResult Function(_IterableTake value) take,
  }) {
    return isEmpty(this);
  }
}

abstract class _IterableIsEmpty extends IterableTransformer {
  const factory _IterableIsEmpty() = _$_IterableIsEmpty;
  const _IterableIsEmpty._() : super._();

  factory _IterableIsEmpty.fromJson(Map<String, dynamic> json) =
      _$_IterableIsEmpty.fromJson;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_IterableIsNotEmpty extends _IterableIsNotEmpty {
  const _$_IterableIsNotEmpty({final String? $type})
      : $type = $type ?? 'z:1:Transformer:Iterable.isNotEmpty',
        super._();

  factory _$_IterableIsNotEmpty.fromJson(Map<String, dynamic> json) =>
      _$$_IterableIsNotEmptyFromJson(json);

  @JsonKey(name: '_converter')
  final String $type;

  @override
  String toString() {
    return 'IterableTransformer.isNotEmpty()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_IterableIsNotEmpty);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_IterableMap value) map,
    required TResult Function(_IterableSingle value) single,
    required TResult Function(_IterableFirst value) first,
    required TResult Function(_IterableLast value) last,
    required TResult Function(_IterableLength value) length,
    required TResult Function(_IterableIsEmpty value) isEmpty,
    required TResult Function(_IterableIsNotEmpty value) isNotEmpty,
    required TResult Function(_IterableToList value) toList,
    required TResult Function(_IterableToSet value) toSet,
    required TResult Function(_IterableToString value) toString,
    required TResult Function(_IterableJoin value) join,
    required TResult Function(_IterableContains value) contains,
    required TResult Function(_IterableElementAt value) elementAt,
    required TResult Function(_IterableSkip value) skip,
    required TResult Function(_IterableTake value) take,
  }) {
    return isNotEmpty(this);
  }
}

abstract class _IterableIsNotEmpty extends IterableTransformer {
  const factory _IterableIsNotEmpty() = _$_IterableIsNotEmpty;
  const _IterableIsNotEmpty._() : super._();

  factory _IterableIsNotEmpty.fromJson(Map<String, dynamic> json) =
      _$_IterableIsNotEmpty.fromJson;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_IterableToList extends _IterableToList {
  const _$_IterableToList({final String? $type})
      : $type = $type ?? 'z:1:Transformer:Iterable.toList',
        super._();

  factory _$_IterableToList.fromJson(Map<String, dynamic> json) =>
      _$$_IterableToListFromJson(json);

  @JsonKey(name: '_converter')
  final String $type;

  @override
  String toString() {
    return 'IterableTransformer.toList()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_IterableToList);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_IterableMap value) map,
    required TResult Function(_IterableSingle value) single,
    required TResult Function(_IterableFirst value) first,
    required TResult Function(_IterableLast value) last,
    required TResult Function(_IterableLength value) length,
    required TResult Function(_IterableIsEmpty value) isEmpty,
    required TResult Function(_IterableIsNotEmpty value) isNotEmpty,
    required TResult Function(_IterableToList value) toList,
    required TResult Function(_IterableToSet value) toSet,
    required TResult Function(_IterableToString value) toString,
    required TResult Function(_IterableJoin value) join,
    required TResult Function(_IterableContains value) contains,
    required TResult Function(_IterableElementAt value) elementAt,
    required TResult Function(_IterableSkip value) skip,
    required TResult Function(_IterableTake value) take,
  }) {
    return toList(this);
  }
}

abstract class _IterableToList extends IterableTransformer {
  const factory _IterableToList() = _$_IterableToList;
  const _IterableToList._() : super._();

  factory _IterableToList.fromJson(Map<String, dynamic> json) =
      _$_IterableToList.fromJson;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_IterableToSet extends _IterableToSet {
  const _$_IterableToSet({final String? $type})
      : $type = $type ?? 'z:1:Transformer:Iterable.toSet',
        super._();

  factory _$_IterableToSet.fromJson(Map<String, dynamic> json) =>
      _$$_IterableToSetFromJson(json);

  @JsonKey(name: '_converter')
  final String $type;

  @override
  String toString() {
    return 'IterableTransformer.toSet()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_IterableToSet);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_IterableMap value) map,
    required TResult Function(_IterableSingle value) single,
    required TResult Function(_IterableFirst value) first,
    required TResult Function(_IterableLast value) last,
    required TResult Function(_IterableLength value) length,
    required TResult Function(_IterableIsEmpty value) isEmpty,
    required TResult Function(_IterableIsNotEmpty value) isNotEmpty,
    required TResult Function(_IterableToList value) toList,
    required TResult Function(_IterableToSet value) toSet,
    required TResult Function(_IterableToString value) toString,
    required TResult Function(_IterableJoin value) join,
    required TResult Function(_IterableContains value) contains,
    required TResult Function(_IterableElementAt value) elementAt,
    required TResult Function(_IterableSkip value) skip,
    required TResult Function(_IterableTake value) take,
  }) {
    return toSet(this);
  }
}

abstract class _IterableToSet extends IterableTransformer {
  const factory _IterableToSet() = _$_IterableToSet;
  const _IterableToSet._() : super._();

  factory _IterableToSet.fromJson(Map<String, dynamic> json) =
      _$_IterableToSet.fromJson;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_IterableToString extends _IterableToString {
  const _$_IterableToString({final String? $type})
      : $type = $type ?? 'z:1:Transformer:Iterable.toString',
        super._();

  factory _$_IterableToString.fromJson(Map<String, dynamic> json) =>
      _$$_IterableToStringFromJson(json);

  @JsonKey(name: '_converter')
  final String $type;

  @override
  String toString() {
    return 'IterableTransformer.toString()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_IterableToString);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_IterableMap value) map,
    required TResult Function(_IterableSingle value) single,
    required TResult Function(_IterableFirst value) first,
    required TResult Function(_IterableLast value) last,
    required TResult Function(_IterableLength value) length,
    required TResult Function(_IterableIsEmpty value) isEmpty,
    required TResult Function(_IterableIsNotEmpty value) isNotEmpty,
    required TResult Function(_IterableToList value) toList,
    required TResult Function(_IterableToSet value) toSet,
    required TResult Function(_IterableToString value) toString,
    required TResult Function(_IterableJoin value) join,
    required TResult Function(_IterableContains value) contains,
    required TResult Function(_IterableElementAt value) elementAt,
    required TResult Function(_IterableSkip value) skip,
    required TResult Function(_IterableTake value) take,
  }) {
    return toString(this);
  }
}

abstract class _IterableToString extends IterableTransformer {
  const factory _IterableToString() = _$_IterableToString;
  const _IterableToString._() : super._();

  factory _IterableToString.fromJson(Map<String, dynamic> json) =
      _$_IterableToString.fromJson;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_IterableJoin extends _IterableJoin {
  const _$_IterableJoin({this.separator, final String? $type})
      : $type = $type ?? 'z:1:Transformer:Iterable.join',
        super._();

  factory _$_IterableJoin.fromJson(Map<String, dynamic> json) =>
      _$$_IterableJoinFromJson(json);

  @override
  final String? separator;

  @JsonKey(name: '_converter')
  final String $type;

  @override
  String toString() {
    return 'IterableTransformer.join(separator: $separator)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_IterableJoin &&
            const DeepCollectionEquality().equals(other.separator, separator));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(separator));

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_IterableMap value) map,
    required TResult Function(_IterableSingle value) single,
    required TResult Function(_IterableFirst value) first,
    required TResult Function(_IterableLast value) last,
    required TResult Function(_IterableLength value) length,
    required TResult Function(_IterableIsEmpty value) isEmpty,
    required TResult Function(_IterableIsNotEmpty value) isNotEmpty,
    required TResult Function(_IterableToList value) toList,
    required TResult Function(_IterableToSet value) toSet,
    required TResult Function(_IterableToString value) toString,
    required TResult Function(_IterableJoin value) join,
    required TResult Function(_IterableContains value) contains,
    required TResult Function(_IterableElementAt value) elementAt,
    required TResult Function(_IterableSkip value) skip,
    required TResult Function(_IterableTake value) take,
  }) {
    return join(this);
  }
}

abstract class _IterableJoin extends IterableTransformer {
  const factory _IterableJoin({final String? separator}) = _$_IterableJoin;
  const _IterableJoin._() : super._();

  factory _IterableJoin.fromJson(Map<String, dynamic> json) =
      _$_IterableJoin.fromJson;

  String? get separator;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_IterableContains extends _IterableContains {
  const _$_IterableContains(this.element, {final String? $type})
      : $type = $type ?? 'z:1:Transformer:Iterable.contains',
        super._();

  factory _$_IterableContains.fromJson(Map<String, dynamic> json) =>
      _$$_IterableContainsFromJson(json);

  @override
  final ZacObject? element;

  @JsonKey(name: '_converter')
  final String $type;

  @override
  String toString() {
    return 'IterableTransformer.contains(element: $element)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_IterableContains &&
            const DeepCollectionEquality().equals(other.element, element));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(element));

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_IterableMap value) map,
    required TResult Function(_IterableSingle value) single,
    required TResult Function(_IterableFirst value) first,
    required TResult Function(_IterableLast value) last,
    required TResult Function(_IterableLength value) length,
    required TResult Function(_IterableIsEmpty value) isEmpty,
    required TResult Function(_IterableIsNotEmpty value) isNotEmpty,
    required TResult Function(_IterableToList value) toList,
    required TResult Function(_IterableToSet value) toSet,
    required TResult Function(_IterableToString value) toString,
    required TResult Function(_IterableJoin value) join,
    required TResult Function(_IterableContains value) contains,
    required TResult Function(_IterableElementAt value) elementAt,
    required TResult Function(_IterableSkip value) skip,
    required TResult Function(_IterableTake value) take,
  }) {
    return contains(this);
  }
}

abstract class _IterableContains extends IterableTransformer {
  const factory _IterableContains(final ZacObject? element) =
      _$_IterableContains;
  const _IterableContains._() : super._();

  factory _IterableContains.fromJson(Map<String, dynamic> json) =
      _$_IterableContains.fromJson;

  ZacObject? get element;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_IterableElementAt extends _IterableElementAt {
  const _$_IterableElementAt(this.index, {final String? $type})
      : $type = $type ?? 'z:1:Transformer:Iterable.elementAt',
        super._();

  factory _$_IterableElementAt.fromJson(Map<String, dynamic> json) =>
      _$$_IterableElementAtFromJson(json);

  @override
  final int index;

  @JsonKey(name: '_converter')
  final String $type;

  @override
  String toString() {
    return 'IterableTransformer.elementAt(index: $index)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_IterableElementAt &&
            const DeepCollectionEquality().equals(other.index, index));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(index));

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_IterableMap value) map,
    required TResult Function(_IterableSingle value) single,
    required TResult Function(_IterableFirst value) first,
    required TResult Function(_IterableLast value) last,
    required TResult Function(_IterableLength value) length,
    required TResult Function(_IterableIsEmpty value) isEmpty,
    required TResult Function(_IterableIsNotEmpty value) isNotEmpty,
    required TResult Function(_IterableToList value) toList,
    required TResult Function(_IterableToSet value) toSet,
    required TResult Function(_IterableToString value) toString,
    required TResult Function(_IterableJoin value) join,
    required TResult Function(_IterableContains value) contains,
    required TResult Function(_IterableElementAt value) elementAt,
    required TResult Function(_IterableSkip value) skip,
    required TResult Function(_IterableTake value) take,
  }) {
    return elementAt(this);
  }
}

abstract class _IterableElementAt extends IterableTransformer {
  const factory _IterableElementAt(final int index) = _$_IterableElementAt;
  const _IterableElementAt._() : super._();

  factory _IterableElementAt.fromJson(Map<String, dynamic> json) =
      _$_IterableElementAt.fromJson;

  int get index;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_IterableSkip extends _IterableSkip {
  const _$_IterableSkip(this.count, {final String? $type})
      : $type = $type ?? 'z:1:Transformer:Iterable.skip',
        super._();

  factory _$_IterableSkip.fromJson(Map<String, dynamic> json) =>
      _$$_IterableSkipFromJson(json);

  @override
  final int count;

  @JsonKey(name: '_converter')
  final String $type;

  @override
  String toString() {
    return 'IterableTransformer.skip(count: $count)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_IterableSkip &&
            const DeepCollectionEquality().equals(other.count, count));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(count));

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_IterableMap value) map,
    required TResult Function(_IterableSingle value) single,
    required TResult Function(_IterableFirst value) first,
    required TResult Function(_IterableLast value) last,
    required TResult Function(_IterableLength value) length,
    required TResult Function(_IterableIsEmpty value) isEmpty,
    required TResult Function(_IterableIsNotEmpty value) isNotEmpty,
    required TResult Function(_IterableToList value) toList,
    required TResult Function(_IterableToSet value) toSet,
    required TResult Function(_IterableToString value) toString,
    required TResult Function(_IterableJoin value) join,
    required TResult Function(_IterableContains value) contains,
    required TResult Function(_IterableElementAt value) elementAt,
    required TResult Function(_IterableSkip value) skip,
    required TResult Function(_IterableTake value) take,
  }) {
    return skip(this);
  }
}

abstract class _IterableSkip extends IterableTransformer {
  const factory _IterableSkip(final int count) = _$_IterableSkip;
  const _IterableSkip._() : super._();

  factory _IterableSkip.fromJson(Map<String, dynamic> json) =
      _$_IterableSkip.fromJson;

  int get count;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_IterableTake extends _IterableTake {
  const _$_IterableTake(this.count, {final String? $type})
      : $type = $type ?? 'z:1:Transformer:Iterable.take',
        super._();

  factory _$_IterableTake.fromJson(Map<String, dynamic> json) =>
      _$$_IterableTakeFromJson(json);

  @override
  final int count;

  @JsonKey(name: '_converter')
  final String $type;

  @override
  String toString() {
    return 'IterableTransformer.take(count: $count)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_IterableTake &&
            const DeepCollectionEquality().equals(other.count, count));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(count));

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_IterableMap value) map,
    required TResult Function(_IterableSingle value) single,
    required TResult Function(_IterableFirst value) first,
    required TResult Function(_IterableLast value) last,
    required TResult Function(_IterableLength value) length,
    required TResult Function(_IterableIsEmpty value) isEmpty,
    required TResult Function(_IterableIsNotEmpty value) isNotEmpty,
    required TResult Function(_IterableToList value) toList,
    required TResult Function(_IterableToSet value) toSet,
    required TResult Function(_IterableToString value) toString,
    required TResult Function(_IterableJoin value) join,
    required TResult Function(_IterableContains value) contains,
    required TResult Function(_IterableElementAt value) elementAt,
    required TResult Function(_IterableSkip value) skip,
    required TResult Function(_IterableTake value) take,
  }) {
    return take(this);
  }
}

abstract class _IterableTake extends IterableTransformer {
  const factory _IterableTake(final int count) = _$_IterableTake;
  const _IterableTake._() : super._();

  factory _IterableTake.fromJson(Map<String, dynamic> json) =
      _$_IterableTake.fromJson;

  int get count;
}

ObjectTransformer _$ObjectTransformerFromJson(Map<String, dynamic> json) {
  switch (json['_converter']) {
    case 'z:1:Transformer:Object.isList':
      return _ObjectIsList.fromJson(json);
    case 'z:1:Transformer:Object.isMap':
      return _ObjectIsMap.fromJson(json);
    case 'z:1:Transformer:Object.equals':
      return _ObjectEquals.fromJson(json);
    case 'z:1:Transformer:Object.toString':
      return _ObjectToString.fromJson(json);
    case 'z:1:Transformer:Object.runtimeType':
      return _ObjectRuntimeType.fromJson(json);
    case 'z:1:Transformer:Object.hashCode':
      return _ObjectHashCode.fromJson(json);
    case 'z:1:Transformer:Object.equalsSharedValue':
      return _ObjectEqualsSharedValue.fromJson(json);

    default:
      throw CheckedFromJsonException(json, '_converter', 'ObjectTransformer',
          'Invalid union type "${json['_converter']}"!');
  }
}

/// @nodoc
mixin _$ObjectTransformer {
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ObjectIsList value) isList,
    required TResult Function(_ObjectIsMap value) isMap,
    required TResult Function(_ObjectEquals value) equals,
    required TResult Function(_ObjectToString value) toString,
    required TResult Function(_ObjectRuntimeType value) runtimeType,
    required TResult Function(_ObjectHashCode value) hashCode,
    required TResult Function(_ObjectEqualsSharedValue value) equalsSharedValue,
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_ObjectIsList extends _ObjectIsList {
  _$_ObjectIsList({final String? $type})
      : $type = $type ?? 'z:1:Transformer:Object.isList',
        super._();

  factory _$_ObjectIsList.fromJson(Map<String, dynamic> json) =>
      _$$_ObjectIsListFromJson(json);

  @JsonKey(name: '_converter')
  final String $type;

  @override
  String toString() {
    return 'ObjectTransformer.isList()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_ObjectIsList);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ObjectIsList value) isList,
    required TResult Function(_ObjectIsMap value) isMap,
    required TResult Function(_ObjectEquals value) equals,
    required TResult Function(_ObjectToString value) toString,
    required TResult Function(_ObjectRuntimeType value) runtimeType,
    required TResult Function(_ObjectHashCode value) hashCode,
    required TResult Function(_ObjectEqualsSharedValue value) equalsSharedValue,
  }) {
    return isList(this);
  }
}

abstract class _ObjectIsList extends ObjectTransformer {
  factory _ObjectIsList() = _$_ObjectIsList;
  _ObjectIsList._() : super._();

  factory _ObjectIsList.fromJson(Map<String, dynamic> json) =
      _$_ObjectIsList.fromJson;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_ObjectIsMap extends _ObjectIsMap {
  _$_ObjectIsMap({final String? $type})
      : $type = $type ?? 'z:1:Transformer:Object.isMap',
        super._();

  factory _$_ObjectIsMap.fromJson(Map<String, dynamic> json) =>
      _$$_ObjectIsMapFromJson(json);

  @JsonKey(name: '_converter')
  final String $type;

  @override
  String toString() {
    return 'ObjectTransformer.isMap()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_ObjectIsMap);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ObjectIsList value) isList,
    required TResult Function(_ObjectIsMap value) isMap,
    required TResult Function(_ObjectEquals value) equals,
    required TResult Function(_ObjectToString value) toString,
    required TResult Function(_ObjectRuntimeType value) runtimeType,
    required TResult Function(_ObjectHashCode value) hashCode,
    required TResult Function(_ObjectEqualsSharedValue value) equalsSharedValue,
  }) {
    return isMap(this);
  }
}

abstract class _ObjectIsMap extends ObjectTransformer {
  factory _ObjectIsMap() = _$_ObjectIsMap;
  _ObjectIsMap._() : super._();

  factory _ObjectIsMap.fromJson(Map<String, dynamic> json) =
      _$_ObjectIsMap.fromJson;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_ObjectEquals extends _ObjectEquals {
  _$_ObjectEquals({required this.other, final String? $type})
      : $type = $type ?? 'z:1:Transformer:Object.equals',
        super._();

  factory _$_ObjectEquals.fromJson(Map<String, dynamic> json) =>
      _$$_ObjectEqualsFromJson(json);

  @override
  final Object? other;

  @JsonKey(name: '_converter')
  final String $type;

  @override
  String toString() {
    return 'ObjectTransformer.equals(other: $other)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ObjectEquals &&
            const DeepCollectionEquality().equals(other.other, this.other));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(other));

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ObjectIsList value) isList,
    required TResult Function(_ObjectIsMap value) isMap,
    required TResult Function(_ObjectEquals value) equals,
    required TResult Function(_ObjectToString value) toString,
    required TResult Function(_ObjectRuntimeType value) runtimeType,
    required TResult Function(_ObjectHashCode value) hashCode,
    required TResult Function(_ObjectEqualsSharedValue value) equalsSharedValue,
  }) {
    return equals(this);
  }
}

abstract class _ObjectEquals extends ObjectTransformer {
  factory _ObjectEquals({required final Object? other}) = _$_ObjectEquals;
  _ObjectEquals._() : super._();

  factory _ObjectEquals.fromJson(Map<String, dynamic> json) =
      _$_ObjectEquals.fromJson;

  Object? get other;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_ObjectToString extends _ObjectToString {
  _$_ObjectToString({final String? $type})
      : $type = $type ?? 'z:1:Transformer:Object.toString',
        super._();

  factory _$_ObjectToString.fromJson(Map<String, dynamic> json) =>
      _$$_ObjectToStringFromJson(json);

  @JsonKey(name: '_converter')
  final String $type;

  @override
  String toString() {
    return 'ObjectTransformer.toString()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_ObjectToString);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ObjectIsList value) isList,
    required TResult Function(_ObjectIsMap value) isMap,
    required TResult Function(_ObjectEquals value) equals,
    required TResult Function(_ObjectToString value) toString,
    required TResult Function(_ObjectRuntimeType value) runtimeType,
    required TResult Function(_ObjectHashCode value) hashCode,
    required TResult Function(_ObjectEqualsSharedValue value) equalsSharedValue,
  }) {
    return toString(this);
  }
}

abstract class _ObjectToString extends ObjectTransformer {
  factory _ObjectToString() = _$_ObjectToString;
  _ObjectToString._() : super._();

  factory _ObjectToString.fromJson(Map<String, dynamic> json) =
      _$_ObjectToString.fromJson;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_ObjectRuntimeType extends _ObjectRuntimeType {
  _$_ObjectRuntimeType({final String? $type})
      : $type = $type ?? 'z:1:Transformer:Object.runtimeType',
        super._();

  factory _$_ObjectRuntimeType.fromJson(Map<String, dynamic> json) =>
      _$$_ObjectRuntimeTypeFromJson(json);

  @JsonKey(name: '_converter')
  final String $type;

  @override
  String toString() {
    return 'ObjectTransformer.runtimeType()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_ObjectRuntimeType);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ObjectIsList value) isList,
    required TResult Function(_ObjectIsMap value) isMap,
    required TResult Function(_ObjectEquals value) equals,
    required TResult Function(_ObjectToString value) toString,
    required TResult Function(_ObjectRuntimeType value) runtimeType,
    required TResult Function(_ObjectHashCode value) hashCode,
    required TResult Function(_ObjectEqualsSharedValue value) equalsSharedValue,
  }) {
    return runtimeType(this);
  }
}

abstract class _ObjectRuntimeType extends ObjectTransformer {
  factory _ObjectRuntimeType() = _$_ObjectRuntimeType;
  _ObjectRuntimeType._() : super._();

  factory _ObjectRuntimeType.fromJson(Map<String, dynamic> json) =
      _$_ObjectRuntimeType.fromJson;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_ObjectHashCode extends _ObjectHashCode {
  _$_ObjectHashCode({final String? $type})
      : $type = $type ?? 'z:1:Transformer:Object.hashCode',
        super._();

  factory _$_ObjectHashCode.fromJson(Map<String, dynamic> json) =>
      _$$_ObjectHashCodeFromJson(json);

  @JsonKey(name: '_converter')
  final String $type;

  @override
  String toString() {
    return 'ObjectTransformer.hashCode()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_ObjectHashCode);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ObjectIsList value) isList,
    required TResult Function(_ObjectIsMap value) isMap,
    required TResult Function(_ObjectEquals value) equals,
    required TResult Function(_ObjectToString value) toString,
    required TResult Function(_ObjectRuntimeType value) runtimeType,
    required TResult Function(_ObjectHashCode value) hashCode,
    required TResult Function(_ObjectEqualsSharedValue value) equalsSharedValue,
  }) {
    return hashCode(this);
  }
}

abstract class _ObjectHashCode extends ObjectTransformer {
  factory _ObjectHashCode() = _$_ObjectHashCode;
  _ObjectHashCode._() : super._();

  factory _ObjectHashCode.fromJson(Map<String, dynamic> json) =
      _$_ObjectHashCode.fromJson;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_ObjectEqualsSharedValue extends _ObjectEqualsSharedValue
    with ConsumeValue<Object> {
  _$_ObjectEqualsSharedValue(this.family,
      [final List<ZacTransformer>? transformer,
      this.consumeType = const SharedValueConsumeType.read(),
      final String? $type])
      : _transformer = transformer,
        $type = $type ?? 'z:1:Transformer:Object.equalsSharedValue',
        super._();

  factory _$_ObjectEqualsSharedValue.fromJson(Map<String, dynamic> json) =>
      _$$_ObjectEqualsSharedValueFromJson(json);

  @override
  final Object family;
  final List<ZacTransformer>? _transformer;
  @override
  List<ZacTransformer>? get transformer {
    final value = _transformer;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey()
  final SharedValueConsumeType consumeType;

  @JsonKey(name: '_converter')
  final String $type;

  @override
  String toString() {
    return 'ObjectTransformer.equalsSharedValue(family: $family, transformer: $transformer, consumeType: $consumeType)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ObjectEqualsSharedValue &&
            const DeepCollectionEquality().equals(other.family, family) &&
            const DeepCollectionEquality()
                .equals(other._transformer, _transformer) &&
            const DeepCollectionEquality()
                .equals(other.consumeType, consumeType));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(family),
      const DeepCollectionEquality().hash(_transformer),
      const DeepCollectionEquality().hash(consumeType));

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ObjectIsList value) isList,
    required TResult Function(_ObjectIsMap value) isMap,
    required TResult Function(_ObjectEquals value) equals,
    required TResult Function(_ObjectToString value) toString,
    required TResult Function(_ObjectRuntimeType value) runtimeType,
    required TResult Function(_ObjectHashCode value) hashCode,
    required TResult Function(_ObjectEqualsSharedValue value) equalsSharedValue,
  }) {
    return equalsSharedValue(this);
  }
}

abstract class _ObjectEqualsSharedValue extends ObjectTransformer
    implements ConsumeValue<Object> {
  factory _ObjectEqualsSharedValue(final Object family,
      [final List<ZacTransformer>? transformer,
      final SharedValueConsumeType consumeType]) = _$_ObjectEqualsSharedValue;
  _ObjectEqualsSharedValue._() : super._();

  factory _ObjectEqualsSharedValue.fromJson(Map<String, dynamic> json) =
      _$_ObjectEqualsSharedValue.fromJson;

  Object get family;
  List<ZacTransformer>? get transformer;
  SharedValueConsumeType get consumeType;
}

NumTransformer _$NumTransformerFromJson(Map<String, dynamic> json) {
  switch (json['_converter']) {
    case 'z:1:Transformer:num.toDouble':
      return _NumToDouble.fromJson(json);
    case 'z:1:Transformer:num.toInt':
      return _NumToInt.fromJson(json);
    case 'z:1:Transformer:num.abs':
      return _NumAbs.fromJson(json);
    case 'z:1:Transformer:num.ceil':
      return _NumCeil.fromJson(json);
    case 'z:1:Transformer:num.ceilToDouble':
      return _NumCeilToDouble.fromJson(json);
    case 'z:1:Transformer:num.floor':
      return _NumFloor.fromJson(json);
    case 'z:1:Transformer:num.floorToDouble':
      return _NumFloorToDouble.fromJson(json);
    case 'z:1:Transformer:num.round':
      return _NumRound.fromJson(json);
    case 'z:1:Transformer:num.roundToDouble':
      return _NumRoundToDouble.fromJson(json);
    case 'z:1:Transformer:num.isFinite':
      return _NumIsFinite.fromJson(json);
    case 'z:1:Transformer:num.isInfinite':
      return _NumIsInfinite.fromJson(json);
    case 'z:1:Transformer:num.isNan':
      return _NumIsNan.fromJson(json);
    case 'z:1:Transformer:num.isNegative':
      return _NumIsNegative.fromJson(json);

    default:
      throw CheckedFromJsonException(json, '_converter', 'NumTransformer',
          'Invalid union type "${json['_converter']}"!');
  }
}

/// @nodoc
mixin _$NumTransformer {
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NumToDouble value) toDouble,
    required TResult Function(_NumToInt value) toInt,
    required TResult Function(_NumAbs value) abs,
    required TResult Function(_NumCeil value) ceil,
    required TResult Function(_NumCeilToDouble value) ceilToDouble,
    required TResult Function(_NumFloor value) floor,
    required TResult Function(_NumFloorToDouble value) floorToDouble,
    required TResult Function(_NumRound value) round,
    required TResult Function(_NumRoundToDouble value) roundToDouble,
    required TResult Function(_NumIsFinite value) isFinite,
    required TResult Function(_NumIsInfinite value) isInfinite,
    required TResult Function(_NumIsNan value) isNan,
    required TResult Function(_NumIsNegative value) isNegative,
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_NumToDouble extends _NumToDouble {
  const _$_NumToDouble({final String? $type})
      : $type = $type ?? 'z:1:Transformer:num.toDouble',
        super._();

  factory _$_NumToDouble.fromJson(Map<String, dynamic> json) =>
      _$$_NumToDoubleFromJson(json);

  @JsonKey(name: '_converter')
  final String $type;

  @override
  String toString() {
    return 'NumTransformer.toDouble()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_NumToDouble);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NumToDouble value) toDouble,
    required TResult Function(_NumToInt value) toInt,
    required TResult Function(_NumAbs value) abs,
    required TResult Function(_NumCeil value) ceil,
    required TResult Function(_NumCeilToDouble value) ceilToDouble,
    required TResult Function(_NumFloor value) floor,
    required TResult Function(_NumFloorToDouble value) floorToDouble,
    required TResult Function(_NumRound value) round,
    required TResult Function(_NumRoundToDouble value) roundToDouble,
    required TResult Function(_NumIsFinite value) isFinite,
    required TResult Function(_NumIsInfinite value) isInfinite,
    required TResult Function(_NumIsNan value) isNan,
    required TResult Function(_NumIsNegative value) isNegative,
  }) {
    return toDouble(this);
  }
}

abstract class _NumToDouble extends NumTransformer {
  const factory _NumToDouble() = _$_NumToDouble;
  const _NumToDouble._() : super._();

  factory _NumToDouble.fromJson(Map<String, dynamic> json) =
      _$_NumToDouble.fromJson;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_NumToInt extends _NumToInt {
  const _$_NumToInt({final String? $type})
      : $type = $type ?? 'z:1:Transformer:num.toInt',
        super._();

  factory _$_NumToInt.fromJson(Map<String, dynamic> json) =>
      _$$_NumToIntFromJson(json);

  @JsonKey(name: '_converter')
  final String $type;

  @override
  String toString() {
    return 'NumTransformer.toInt()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_NumToInt);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NumToDouble value) toDouble,
    required TResult Function(_NumToInt value) toInt,
    required TResult Function(_NumAbs value) abs,
    required TResult Function(_NumCeil value) ceil,
    required TResult Function(_NumCeilToDouble value) ceilToDouble,
    required TResult Function(_NumFloor value) floor,
    required TResult Function(_NumFloorToDouble value) floorToDouble,
    required TResult Function(_NumRound value) round,
    required TResult Function(_NumRoundToDouble value) roundToDouble,
    required TResult Function(_NumIsFinite value) isFinite,
    required TResult Function(_NumIsInfinite value) isInfinite,
    required TResult Function(_NumIsNan value) isNan,
    required TResult Function(_NumIsNegative value) isNegative,
  }) {
    return toInt(this);
  }
}

abstract class _NumToInt extends NumTransformer {
  const factory _NumToInt() = _$_NumToInt;
  const _NumToInt._() : super._();

  factory _NumToInt.fromJson(Map<String, dynamic> json) = _$_NumToInt.fromJson;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_NumAbs extends _NumAbs {
  const _$_NumAbs({final String? $type})
      : $type = $type ?? 'z:1:Transformer:num.abs',
        super._();

  factory _$_NumAbs.fromJson(Map<String, dynamic> json) =>
      _$$_NumAbsFromJson(json);

  @JsonKey(name: '_converter')
  final String $type;

  @override
  String toString() {
    return 'NumTransformer.abs()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_NumAbs);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NumToDouble value) toDouble,
    required TResult Function(_NumToInt value) toInt,
    required TResult Function(_NumAbs value) abs,
    required TResult Function(_NumCeil value) ceil,
    required TResult Function(_NumCeilToDouble value) ceilToDouble,
    required TResult Function(_NumFloor value) floor,
    required TResult Function(_NumFloorToDouble value) floorToDouble,
    required TResult Function(_NumRound value) round,
    required TResult Function(_NumRoundToDouble value) roundToDouble,
    required TResult Function(_NumIsFinite value) isFinite,
    required TResult Function(_NumIsInfinite value) isInfinite,
    required TResult Function(_NumIsNan value) isNan,
    required TResult Function(_NumIsNegative value) isNegative,
  }) {
    return abs(this);
  }
}

abstract class _NumAbs extends NumTransformer {
  const factory _NumAbs() = _$_NumAbs;
  const _NumAbs._() : super._();

  factory _NumAbs.fromJson(Map<String, dynamic> json) = _$_NumAbs.fromJson;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_NumCeil extends _NumCeil {
  const _$_NumCeil({final String? $type})
      : $type = $type ?? 'z:1:Transformer:num.ceil',
        super._();

  factory _$_NumCeil.fromJson(Map<String, dynamic> json) =>
      _$$_NumCeilFromJson(json);

  @JsonKey(name: '_converter')
  final String $type;

  @override
  String toString() {
    return 'NumTransformer.ceil()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_NumCeil);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NumToDouble value) toDouble,
    required TResult Function(_NumToInt value) toInt,
    required TResult Function(_NumAbs value) abs,
    required TResult Function(_NumCeil value) ceil,
    required TResult Function(_NumCeilToDouble value) ceilToDouble,
    required TResult Function(_NumFloor value) floor,
    required TResult Function(_NumFloorToDouble value) floorToDouble,
    required TResult Function(_NumRound value) round,
    required TResult Function(_NumRoundToDouble value) roundToDouble,
    required TResult Function(_NumIsFinite value) isFinite,
    required TResult Function(_NumIsInfinite value) isInfinite,
    required TResult Function(_NumIsNan value) isNan,
    required TResult Function(_NumIsNegative value) isNegative,
  }) {
    return ceil(this);
  }
}

abstract class _NumCeil extends NumTransformer {
  const factory _NumCeil() = _$_NumCeil;
  const _NumCeil._() : super._();

  factory _NumCeil.fromJson(Map<String, dynamic> json) = _$_NumCeil.fromJson;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_NumCeilToDouble extends _NumCeilToDouble {
  const _$_NumCeilToDouble({final String? $type})
      : $type = $type ?? 'z:1:Transformer:num.ceilToDouble',
        super._();

  factory _$_NumCeilToDouble.fromJson(Map<String, dynamic> json) =>
      _$$_NumCeilToDoubleFromJson(json);

  @JsonKey(name: '_converter')
  final String $type;

  @override
  String toString() {
    return 'NumTransformer.ceilToDouble()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_NumCeilToDouble);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NumToDouble value) toDouble,
    required TResult Function(_NumToInt value) toInt,
    required TResult Function(_NumAbs value) abs,
    required TResult Function(_NumCeil value) ceil,
    required TResult Function(_NumCeilToDouble value) ceilToDouble,
    required TResult Function(_NumFloor value) floor,
    required TResult Function(_NumFloorToDouble value) floorToDouble,
    required TResult Function(_NumRound value) round,
    required TResult Function(_NumRoundToDouble value) roundToDouble,
    required TResult Function(_NumIsFinite value) isFinite,
    required TResult Function(_NumIsInfinite value) isInfinite,
    required TResult Function(_NumIsNan value) isNan,
    required TResult Function(_NumIsNegative value) isNegative,
  }) {
    return ceilToDouble(this);
  }
}

abstract class _NumCeilToDouble extends NumTransformer {
  const factory _NumCeilToDouble() = _$_NumCeilToDouble;
  const _NumCeilToDouble._() : super._();

  factory _NumCeilToDouble.fromJson(Map<String, dynamic> json) =
      _$_NumCeilToDouble.fromJson;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_NumFloor extends _NumFloor {
  const _$_NumFloor({final String? $type})
      : $type = $type ?? 'z:1:Transformer:num.floor',
        super._();

  factory _$_NumFloor.fromJson(Map<String, dynamic> json) =>
      _$$_NumFloorFromJson(json);

  @JsonKey(name: '_converter')
  final String $type;

  @override
  String toString() {
    return 'NumTransformer.floor()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_NumFloor);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NumToDouble value) toDouble,
    required TResult Function(_NumToInt value) toInt,
    required TResult Function(_NumAbs value) abs,
    required TResult Function(_NumCeil value) ceil,
    required TResult Function(_NumCeilToDouble value) ceilToDouble,
    required TResult Function(_NumFloor value) floor,
    required TResult Function(_NumFloorToDouble value) floorToDouble,
    required TResult Function(_NumRound value) round,
    required TResult Function(_NumRoundToDouble value) roundToDouble,
    required TResult Function(_NumIsFinite value) isFinite,
    required TResult Function(_NumIsInfinite value) isInfinite,
    required TResult Function(_NumIsNan value) isNan,
    required TResult Function(_NumIsNegative value) isNegative,
  }) {
    return floor(this);
  }
}

abstract class _NumFloor extends NumTransformer {
  const factory _NumFloor() = _$_NumFloor;
  const _NumFloor._() : super._();

  factory _NumFloor.fromJson(Map<String, dynamic> json) = _$_NumFloor.fromJson;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_NumFloorToDouble extends _NumFloorToDouble {
  const _$_NumFloorToDouble({final String? $type})
      : $type = $type ?? 'z:1:Transformer:num.floorToDouble',
        super._();

  factory _$_NumFloorToDouble.fromJson(Map<String, dynamic> json) =>
      _$$_NumFloorToDoubleFromJson(json);

  @JsonKey(name: '_converter')
  final String $type;

  @override
  String toString() {
    return 'NumTransformer.floorToDouble()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_NumFloorToDouble);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NumToDouble value) toDouble,
    required TResult Function(_NumToInt value) toInt,
    required TResult Function(_NumAbs value) abs,
    required TResult Function(_NumCeil value) ceil,
    required TResult Function(_NumCeilToDouble value) ceilToDouble,
    required TResult Function(_NumFloor value) floor,
    required TResult Function(_NumFloorToDouble value) floorToDouble,
    required TResult Function(_NumRound value) round,
    required TResult Function(_NumRoundToDouble value) roundToDouble,
    required TResult Function(_NumIsFinite value) isFinite,
    required TResult Function(_NumIsInfinite value) isInfinite,
    required TResult Function(_NumIsNan value) isNan,
    required TResult Function(_NumIsNegative value) isNegative,
  }) {
    return floorToDouble(this);
  }
}

abstract class _NumFloorToDouble extends NumTransformer {
  const factory _NumFloorToDouble() = _$_NumFloorToDouble;
  const _NumFloorToDouble._() : super._();

  factory _NumFloorToDouble.fromJson(Map<String, dynamic> json) =
      _$_NumFloorToDouble.fromJson;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_NumRound extends _NumRound {
  const _$_NumRound({final String? $type})
      : $type = $type ?? 'z:1:Transformer:num.round',
        super._();

  factory _$_NumRound.fromJson(Map<String, dynamic> json) =>
      _$$_NumRoundFromJson(json);

  @JsonKey(name: '_converter')
  final String $type;

  @override
  String toString() {
    return 'NumTransformer.round()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_NumRound);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NumToDouble value) toDouble,
    required TResult Function(_NumToInt value) toInt,
    required TResult Function(_NumAbs value) abs,
    required TResult Function(_NumCeil value) ceil,
    required TResult Function(_NumCeilToDouble value) ceilToDouble,
    required TResult Function(_NumFloor value) floor,
    required TResult Function(_NumFloorToDouble value) floorToDouble,
    required TResult Function(_NumRound value) round,
    required TResult Function(_NumRoundToDouble value) roundToDouble,
    required TResult Function(_NumIsFinite value) isFinite,
    required TResult Function(_NumIsInfinite value) isInfinite,
    required TResult Function(_NumIsNan value) isNan,
    required TResult Function(_NumIsNegative value) isNegative,
  }) {
    return round(this);
  }
}

abstract class _NumRound extends NumTransformer {
  const factory _NumRound() = _$_NumRound;
  const _NumRound._() : super._();

  factory _NumRound.fromJson(Map<String, dynamic> json) = _$_NumRound.fromJson;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_NumRoundToDouble extends _NumRoundToDouble {
  const _$_NumRoundToDouble({final String? $type})
      : $type = $type ?? 'z:1:Transformer:num.roundToDouble',
        super._();

  factory _$_NumRoundToDouble.fromJson(Map<String, dynamic> json) =>
      _$$_NumRoundToDoubleFromJson(json);

  @JsonKey(name: '_converter')
  final String $type;

  @override
  String toString() {
    return 'NumTransformer.roundToDouble()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_NumRoundToDouble);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NumToDouble value) toDouble,
    required TResult Function(_NumToInt value) toInt,
    required TResult Function(_NumAbs value) abs,
    required TResult Function(_NumCeil value) ceil,
    required TResult Function(_NumCeilToDouble value) ceilToDouble,
    required TResult Function(_NumFloor value) floor,
    required TResult Function(_NumFloorToDouble value) floorToDouble,
    required TResult Function(_NumRound value) round,
    required TResult Function(_NumRoundToDouble value) roundToDouble,
    required TResult Function(_NumIsFinite value) isFinite,
    required TResult Function(_NumIsInfinite value) isInfinite,
    required TResult Function(_NumIsNan value) isNan,
    required TResult Function(_NumIsNegative value) isNegative,
  }) {
    return roundToDouble(this);
  }
}

abstract class _NumRoundToDouble extends NumTransformer {
  const factory _NumRoundToDouble() = _$_NumRoundToDouble;
  const _NumRoundToDouble._() : super._();

  factory _NumRoundToDouble.fromJson(Map<String, dynamic> json) =
      _$_NumRoundToDouble.fromJson;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_NumIsFinite extends _NumIsFinite {
  const _$_NumIsFinite({final String? $type})
      : $type = $type ?? 'z:1:Transformer:num.isFinite',
        super._();

  factory _$_NumIsFinite.fromJson(Map<String, dynamic> json) =>
      _$$_NumIsFiniteFromJson(json);

  @JsonKey(name: '_converter')
  final String $type;

  @override
  String toString() {
    return 'NumTransformer.isFinite()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_NumIsFinite);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NumToDouble value) toDouble,
    required TResult Function(_NumToInt value) toInt,
    required TResult Function(_NumAbs value) abs,
    required TResult Function(_NumCeil value) ceil,
    required TResult Function(_NumCeilToDouble value) ceilToDouble,
    required TResult Function(_NumFloor value) floor,
    required TResult Function(_NumFloorToDouble value) floorToDouble,
    required TResult Function(_NumRound value) round,
    required TResult Function(_NumRoundToDouble value) roundToDouble,
    required TResult Function(_NumIsFinite value) isFinite,
    required TResult Function(_NumIsInfinite value) isInfinite,
    required TResult Function(_NumIsNan value) isNan,
    required TResult Function(_NumIsNegative value) isNegative,
  }) {
    return isFinite(this);
  }
}

abstract class _NumIsFinite extends NumTransformer {
  const factory _NumIsFinite() = _$_NumIsFinite;
  const _NumIsFinite._() : super._();

  factory _NumIsFinite.fromJson(Map<String, dynamic> json) =
      _$_NumIsFinite.fromJson;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_NumIsInfinite extends _NumIsInfinite {
  const _$_NumIsInfinite({final String? $type})
      : $type = $type ?? 'z:1:Transformer:num.isInfinite',
        super._();

  factory _$_NumIsInfinite.fromJson(Map<String, dynamic> json) =>
      _$$_NumIsInfiniteFromJson(json);

  @JsonKey(name: '_converter')
  final String $type;

  @override
  String toString() {
    return 'NumTransformer.isInfinite()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_NumIsInfinite);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NumToDouble value) toDouble,
    required TResult Function(_NumToInt value) toInt,
    required TResult Function(_NumAbs value) abs,
    required TResult Function(_NumCeil value) ceil,
    required TResult Function(_NumCeilToDouble value) ceilToDouble,
    required TResult Function(_NumFloor value) floor,
    required TResult Function(_NumFloorToDouble value) floorToDouble,
    required TResult Function(_NumRound value) round,
    required TResult Function(_NumRoundToDouble value) roundToDouble,
    required TResult Function(_NumIsFinite value) isFinite,
    required TResult Function(_NumIsInfinite value) isInfinite,
    required TResult Function(_NumIsNan value) isNan,
    required TResult Function(_NumIsNegative value) isNegative,
  }) {
    return isInfinite(this);
  }
}

abstract class _NumIsInfinite extends NumTransformer {
  const factory _NumIsInfinite() = _$_NumIsInfinite;
  const _NumIsInfinite._() : super._();

  factory _NumIsInfinite.fromJson(Map<String, dynamic> json) =
      _$_NumIsInfinite.fromJson;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_NumIsNan extends _NumIsNan {
  const _$_NumIsNan({final String? $type})
      : $type = $type ?? 'z:1:Transformer:num.isNan',
        super._();

  factory _$_NumIsNan.fromJson(Map<String, dynamic> json) =>
      _$$_NumIsNanFromJson(json);

  @JsonKey(name: '_converter')
  final String $type;

  @override
  String toString() {
    return 'NumTransformer.isNan()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_NumIsNan);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NumToDouble value) toDouble,
    required TResult Function(_NumToInt value) toInt,
    required TResult Function(_NumAbs value) abs,
    required TResult Function(_NumCeil value) ceil,
    required TResult Function(_NumCeilToDouble value) ceilToDouble,
    required TResult Function(_NumFloor value) floor,
    required TResult Function(_NumFloorToDouble value) floorToDouble,
    required TResult Function(_NumRound value) round,
    required TResult Function(_NumRoundToDouble value) roundToDouble,
    required TResult Function(_NumIsFinite value) isFinite,
    required TResult Function(_NumIsInfinite value) isInfinite,
    required TResult Function(_NumIsNan value) isNan,
    required TResult Function(_NumIsNegative value) isNegative,
  }) {
    return isNan(this);
  }
}

abstract class _NumIsNan extends NumTransformer {
  const factory _NumIsNan() = _$_NumIsNan;
  const _NumIsNan._() : super._();

  factory _NumIsNan.fromJson(Map<String, dynamic> json) = _$_NumIsNan.fromJson;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_NumIsNegative extends _NumIsNegative {
  const _$_NumIsNegative({final String? $type})
      : $type = $type ?? 'z:1:Transformer:num.isNegative',
        super._();

  factory _$_NumIsNegative.fromJson(Map<String, dynamic> json) =>
      _$$_NumIsNegativeFromJson(json);

  @JsonKey(name: '_converter')
  final String $type;

  @override
  String toString() {
    return 'NumTransformer.isNegative()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_NumIsNegative);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NumToDouble value) toDouble,
    required TResult Function(_NumToInt value) toInt,
    required TResult Function(_NumAbs value) abs,
    required TResult Function(_NumCeil value) ceil,
    required TResult Function(_NumCeilToDouble value) ceilToDouble,
    required TResult Function(_NumFloor value) floor,
    required TResult Function(_NumFloorToDouble value) floorToDouble,
    required TResult Function(_NumRound value) round,
    required TResult Function(_NumRoundToDouble value) roundToDouble,
    required TResult Function(_NumIsFinite value) isFinite,
    required TResult Function(_NumIsInfinite value) isInfinite,
    required TResult Function(_NumIsNan value) isNan,
    required TResult Function(_NumIsNegative value) isNegative,
  }) {
    return isNegative(this);
  }
}

abstract class _NumIsNegative extends NumTransformer {
  const factory _NumIsNegative() = _$_NumIsNegative;
  const _NumIsNegative._() : super._();

  factory _NumIsNegative.fromJson(Map<String, dynamic> json) =
      _$_NumIsNegative.fromJson;
}

IntTransformer _$IntTransformerFromJson(Map<String, dynamic> json) {
  switch (json['_converter']) {
    case 'z:1:Transformer:int.parse':
      return _IntParse.fromJson(json);
    case 'z:1:Transformer:int.tryParse':
      return _IntTryParse.fromJson(json);

    default:
      throw CheckedFromJsonException(json, '_converter', 'IntTransformer',
          'Invalid union type "${json['_converter']}"!');
  }
}

/// @nodoc
mixin _$IntTransformer {
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_IntParse value) parse,
    required TResult Function(_IntTryParse value) tryParse,
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_IntParse extends _IntParse {
  const _$_IntParse({final String? $type})
      : $type = $type ?? 'z:1:Transformer:int.parse',
        super._();

  factory _$_IntParse.fromJson(Map<String, dynamic> json) =>
      _$$_IntParseFromJson(json);

  @JsonKey(name: '_converter')
  final String $type;

  @override
  String toString() {
    return 'IntTransformer.parse()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_IntParse);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_IntParse value) parse,
    required TResult Function(_IntTryParse value) tryParse,
  }) {
    return parse(this);
  }
}

abstract class _IntParse extends IntTransformer {
  const factory _IntParse() = _$_IntParse;
  const _IntParse._() : super._();

  factory _IntParse.fromJson(Map<String, dynamic> json) = _$_IntParse.fromJson;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_IntTryParse extends _IntTryParse {
  const _$_IntTryParse({final String? $type})
      : $type = $type ?? 'z:1:Transformer:int.tryParse',
        super._();

  factory _$_IntTryParse.fromJson(Map<String, dynamic> json) =>
      _$$_IntTryParseFromJson(json);

  @JsonKey(name: '_converter')
  final String $type;

  @override
  String toString() {
    return 'IntTransformer.tryParse()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_IntTryParse);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_IntParse value) parse,
    required TResult Function(_IntTryParse value) tryParse,
  }) {
    return tryParse(this);
  }
}

abstract class _IntTryParse extends IntTransformer {
  const factory _IntTryParse() = _$_IntTryParse;
  const _IntTryParse._() : super._();

  factory _IntTryParse.fromJson(Map<String, dynamic> json) =
      _$_IntTryParse.fromJson;
}
