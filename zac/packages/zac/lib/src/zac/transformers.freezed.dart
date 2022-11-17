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

/// @nodoc
mixin _$ZacTransformValue {
  Object? get value => throw _privateConstructorUsedError;
  Object? get extra1 => throw _privateConstructorUsedError;
  Object? get extra2 => throw _privateConstructorUsedError;
  Object? get extra3 => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ZacTransformValueCopyWith<ZacTransformValue> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ZacTransformValueCopyWith<$Res> {
  factory $ZacTransformValueCopyWith(
          ZacTransformValue value, $Res Function(ZacTransformValue) then) =
      _$ZacTransformValueCopyWithImpl<$Res, ZacTransformValue>;
  @useResult
  $Res call({Object? value, Object? extra1, Object? extra2, Object? extra3});
}

/// @nodoc
class _$ZacTransformValueCopyWithImpl<$Res, $Val extends ZacTransformValue>
    implements $ZacTransformValueCopyWith<$Res> {
  _$ZacTransformValueCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = freezed,
    Object? extra1 = freezed,
    Object? extra2 = freezed,
    Object? extra3 = freezed,
  }) {
    return _then(_value.copyWith(
      value: freezed == value ? _value.value : value,
      extra1: freezed == extra1 ? _value.extra1 : extra1,
      extra2: freezed == extra2 ? _value.extra2 : extra2,
      extra3: freezed == extra3 ? _value.extra3 : extra3,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ZacTransformValueCopyWith<$Res>
    implements $ZacTransformValueCopyWith<$Res> {
  factory _$$_ZacTransformValueCopyWith(_$_ZacTransformValue value,
          $Res Function(_$_ZacTransformValue) then) =
      __$$_ZacTransformValueCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Object? value, Object? extra1, Object? extra2, Object? extra3});
}

/// @nodoc
class __$$_ZacTransformValueCopyWithImpl<$Res>
    extends _$ZacTransformValueCopyWithImpl<$Res, _$_ZacTransformValue>
    implements _$$_ZacTransformValueCopyWith<$Res> {
  __$$_ZacTransformValueCopyWithImpl(
      _$_ZacTransformValue _value, $Res Function(_$_ZacTransformValue) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? value = freezed,
    Object? extra1 = freezed,
    Object? extra2 = freezed,
    Object? extra3 = freezed,
  }) {
    return _then(_$_ZacTransformValue(
      freezed == value ? _value.value : value,
      freezed == extra1 ? _value.extra1 : extra1,
      freezed == extra2 ? _value.extra2 : extra2,
      freezed == extra3 ? _value.extra3 : extra3,
    ));
  }
}

/// @nodoc

class _$_ZacTransformValue extends _ZacTransformValue {
  _$_ZacTransformValue(this.value,
      [this.extra1 = null, this.extra2 = null, this.extra3 = null])
      : super._();

  @override
  final Object? value;
  @override
  @JsonKey()
  final Object? extra1;
  @override
  @JsonKey()
  final Object? extra2;
  @override
  @JsonKey()
  final Object? extra3;

  @override
  String toString() {
    return 'ZacTransformValue(value: $value, extra1: $extra1, extra2: $extra2, extra3: $extra3)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ZacTransformValue &&
            const DeepCollectionEquality().equals(other.value, value) &&
            const DeepCollectionEquality().equals(other.extra1, extra1) &&
            const DeepCollectionEquality().equals(other.extra2, extra2) &&
            const DeepCollectionEquality().equals(other.extra3, extra3));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(value),
      const DeepCollectionEquality().hash(extra1),
      const DeepCollectionEquality().hash(extra2),
      const DeepCollectionEquality().hash(extra3));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ZacTransformValueCopyWith<_$_ZacTransformValue> get copyWith =>
      __$$_ZacTransformValueCopyWithImpl<_$_ZacTransformValue>(
          this, _$identity);
}

abstract class _ZacTransformValue extends ZacTransformValue {
  factory _ZacTransformValue(final Object? value,
      [final Object? extra1,
      final Object? extra2,
      final Object? extra3]) = _$_ZacTransformValue;
  _ZacTransformValue._() : super._();

  @override
  Object? get value;
  @override
  Object? get extra1;
  @override
  Object? get extra2;
  @override
  Object? get extra3;
  @override
  @JsonKey(ignore: true)
  _$$_ZacTransformValueCopyWith<_$_ZacTransformValue> get copyWith =>
      throw _privateConstructorUsedError;
}

ZacTransformers _$ZacTransformersFromJson(Map<String, dynamic> json) {
  return _ZacTransformers.fromJson(json);
}

/// @nodoc
mixin _$ZacTransformers {
  List<ZacTransformer> get transformers => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_ZacTransformers value) $default,
  ) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_ZacTransformers extends _ZacTransformers {
  _$_ZacTransformers(final List<ZacTransformer> transformers)
      : _transformers = transformers,
        super._();

  factory _$_ZacTransformers.fromJson(Map<String, dynamic> json) =>
      _$$_ZacTransformersFromJson(json);

  final List<ZacTransformer> _transformers;
  @override
  List<ZacTransformer> get transformers {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_transformers);
  }

  @override
  String toString() {
    return 'ZacTransformers(transformers: $transformers)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ZacTransformers &&
            const DeepCollectionEquality()
                .equals(other._transformers, _transformers));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_transformers));

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_ZacTransformers value) $default,
  ) {
    return $default(this);
  }
}

abstract class _ZacTransformers extends ZacTransformers {
  factory _ZacTransformers(final List<ZacTransformer> transformers) =
      _$_ZacTransformers;
  _ZacTransformers._() : super._();

  factory _ZacTransformers.fromJson(Map<String, dynamic> json) =
      _$_ZacTransformers.fromJson;

  @override
  List<ZacTransformer> get transformers;
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
  switch (json['converter']) {
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
    case 'z:1:Transformer:Map[key]':
      return _MapKey.fromJson(json);
    case 'z:1:Transformer:Map.setValueForKey':
      return _MapSetValueForKey.fromJson(json);
    case 'z:1:Transformer:Map<String, FlutterWidget>.from':
      return _MapFromStringFlutterWidget.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'converter', 'MapTransformer',
          'Invalid union type "${json['converter']}"!');
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
    required TResult Function(_MapKey value) key,
    required TResult Function(_MapSetValueForKey value) setValueForKey,
    required TResult Function(_MapFromStringFlutterWidget value)
        fromStringFlutterWidget,
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

  @JsonKey(name: 'converter')
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
    required TResult Function(_MapKey value) key,
    required TResult Function(_MapSetValueForKey value) setValueForKey,
    required TResult Function(_MapFromStringFlutterWidget value)
        fromStringFlutterWidget,
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

  @JsonKey(name: 'converter')
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
    required TResult Function(_MapKey value) key,
    required TResult Function(_MapSetValueForKey value) setValueForKey,
    required TResult Function(_MapFromStringFlutterWidget value)
        fromStringFlutterWidget,
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

  @JsonKey(name: 'converter')
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
    required TResult Function(_MapKey value) key,
    required TResult Function(_MapSetValueForKey value) setValueForKey,
    required TResult Function(_MapFromStringFlutterWidget value)
        fromStringFlutterWidget,
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

  @JsonKey(name: 'converter')
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
    required TResult Function(_MapKey value) key,
    required TResult Function(_MapSetValueForKey value) setValueForKey,
    required TResult Function(_MapFromStringFlutterWidget value)
        fromStringFlutterWidget,
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

  @JsonKey(name: 'converter')
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
    required TResult Function(_MapKey value) key,
    required TResult Function(_MapSetValueForKey value) setValueForKey,
    required TResult Function(_MapFromStringFlutterWidget value)
        fromStringFlutterWidget,
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

  @JsonKey(name: 'converter')
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
    required TResult Function(_MapKey value) key,
    required TResult Function(_MapSetValueForKey value) setValueForKey,
    required TResult Function(_MapFromStringFlutterWidget value)
        fromStringFlutterWidget,
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
  final ZacValue<Object>? key;

  @JsonKey(name: 'converter')
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
            (identical(other.key, key) || other.key == key));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, key);

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
    required TResult Function(_MapKey value) key,
    required TResult Function(_MapSetValueForKey value) setValueForKey,
    required TResult Function(_MapFromStringFlutterWidget value)
        fromStringFlutterWidget,
  }) {
    return containsKey(this);
  }
}

abstract class _MapContainsKey extends MapTransformer {
  const factory _MapContainsKey(final ZacValue<Object>? key) =
      _$_MapContainsKey;
  const _MapContainsKey._() : super._();

  factory _MapContainsKey.fromJson(Map<String, dynamic> json) =
      _$_MapContainsKey.fromJson;

  ZacValue<Object>? get key;
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
  final ZacValue<Object>? value;

  @JsonKey(name: 'converter')
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
            (identical(other.value, value) || other.value == value));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, value);

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
    required TResult Function(_MapKey value) key,
    required TResult Function(_MapSetValueForKey value) setValueForKey,
    required TResult Function(_MapFromStringFlutterWidget value)
        fromStringFlutterWidget,
  }) {
    return containsValue(this);
  }
}

abstract class _MapContainsValue extends MapTransformer {
  const factory _MapContainsValue(final ZacValue<Object>? value) =
      _$_MapContainsValue;
  const _MapContainsValue._() : super._();

  factory _MapContainsValue.fromJson(Map<String, dynamic> json) =
      _$_MapContainsValue.fromJson;

  ZacValue<Object>? get value;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_MapMapper extends _MapMapper {
  const _$_MapMapper(
      {this.keyTransformer, this.valueTransformer, final String? $type})
      : $type = $type ?? 'z:1:Transformer:Map.map',
        super._();

  factory _$_MapMapper.fromJson(Map<String, dynamic> json) =>
      _$$_MapMapperFromJson(json);

  @override
  final ZacTransformers? keyTransformer;
  @override
  final ZacTransformers? valueTransformer;

  @JsonKey(name: 'converter')
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
            (identical(other.keyTransformer, keyTransformer) ||
                other.keyTransformer == keyTransformer) &&
            (identical(other.valueTransformer, valueTransformer) ||
                other.valueTransformer == valueTransformer));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, keyTransformer, valueTransformer);

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
    required TResult Function(_MapKey value) key,
    required TResult Function(_MapSetValueForKey value) setValueForKey,
    required TResult Function(_MapFromStringFlutterWidget value)
        fromStringFlutterWidget,
  }) {
    return mapper(this);
  }
}

abstract class _MapMapper extends MapTransformer {
  const factory _MapMapper(
      {final ZacTransformers? keyTransformer,
      final ZacTransformers? valueTransformer}) = _$_MapMapper;
  const _MapMapper._() : super._();

  factory _MapMapper.fromJson(Map<String, dynamic> json) =
      _$_MapMapper.fromJson;

  ZacTransformers? get keyTransformer;
  ZacTransformers? get valueTransformer;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_MapFromObjectObject extends _MapFromObjectObject {
  const _$_MapFromObjectObject({final String? $type})
      : $type = $type ?? 'z:1:Transformer:Map<Object, Object>.from',
        super._();

  factory _$_MapFromObjectObject.fromJson(Map<String, dynamic> json) =>
      _$$_MapFromObjectObjectFromJson(json);

  @JsonKey(name: 'converter')
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
    required TResult Function(_MapKey value) key,
    required TResult Function(_MapSetValueForKey value) setValueForKey,
    required TResult Function(_MapFromStringFlutterWidget value)
        fromStringFlutterWidget,
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

  @JsonKey(name: 'converter')
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
    required TResult Function(_MapKey value) key,
    required TResult Function(_MapSetValueForKey value) setValueForKey,
    required TResult Function(_MapFromStringFlutterWidget value)
        fromStringFlutterWidget,
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

  @JsonKey(name: 'converter')
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
    required TResult Function(_MapKey value) key,
    required TResult Function(_MapSetValueForKey value) setValueForKey,
    required TResult Function(_MapFromStringFlutterWidget value)
        fromStringFlutterWidget,
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

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_MapKey extends _MapKey {
  const _$_MapKey(this.key, {final String? $type})
      : $type = $type ?? 'z:1:Transformer:Map[key]',
        super._();

  factory _$_MapKey.fromJson(Map<String, dynamic> json) =>
      _$$_MapKeyFromJson(json);

  @override
  final ZacValue<String> key;

  @JsonKey(name: 'converter')
  final String $type;

  @override
  String toString() {
    return 'MapTransformer.key(key: $key)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MapKey &&
            (identical(other.key, key) || other.key == key));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, key);

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
    required TResult Function(_MapKey value) key,
    required TResult Function(_MapSetValueForKey value) setValueForKey,
    required TResult Function(_MapFromStringFlutterWidget value)
        fromStringFlutterWidget,
  }) {
    return key(this);
  }
}

abstract class _MapKey extends MapTransformer {
  const factory _MapKey(final ZacValue<String> key) = _$_MapKey;
  const _MapKey._() : super._();

  factory _MapKey.fromJson(Map<String, dynamic> json) = _$_MapKey.fromJson;

  ZacValue<String> get key;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_MapSetValueForKey extends _MapSetValueForKey {
  const _$_MapSetValueForKey(
      {required this.value, required this.key, final String? $type})
      : $type = $type ?? 'z:1:Transformer:Map.setValueForKey',
        super._();

  factory _$_MapSetValueForKey.fromJson(Map<String, dynamic> json) =>
      _$$_MapSetValueForKeyFromJson(json);

  @override
  final ZacValue<Object?> value;
  @override
  final ZacValue<String> key;

  @JsonKey(name: 'converter')
  final String $type;

  @override
  String toString() {
    return 'MapTransformer.setValueForKey(value: $value, key: $key)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MapSetValueForKey &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.key, key) || other.key == key));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, value, key);

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
    required TResult Function(_MapKey value) key,
    required TResult Function(_MapSetValueForKey value) setValueForKey,
    required TResult Function(_MapFromStringFlutterWidget value)
        fromStringFlutterWidget,
  }) {
    return setValueForKey(this);
  }
}

abstract class _MapSetValueForKey extends MapTransformer {
  const factory _MapSetValueForKey(
      {required final ZacValue<Object?> value,
      required final ZacValue<String> key}) = _$_MapSetValueForKey;
  const _MapSetValueForKey._() : super._();

  factory _MapSetValueForKey.fromJson(Map<String, dynamic> json) =
      _$_MapSetValueForKey.fromJson;

  ZacValue<Object?> get value;
  ZacValue<String> get key;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_MapFromStringFlutterWidget extends _MapFromStringFlutterWidget {
  const _$_MapFromStringFlutterWidget({final String? $type})
      : $type = $type ?? 'z:1:Transformer:Map<String, FlutterWidget>.from',
        super._();

  factory _$_MapFromStringFlutterWidget.fromJson(Map<String, dynamic> json) =>
      _$$_MapFromStringFlutterWidgetFromJson(json);

  @JsonKey(name: 'converter')
  final String $type;

  @override
  String toString() {
    return 'MapTransformer.fromStringFlutterWidget()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MapFromStringFlutterWidget);
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
    required TResult Function(_MapKey value) key,
    required TResult Function(_MapSetValueForKey value) setValueForKey,
    required TResult Function(_MapFromStringFlutterWidget value)
        fromStringFlutterWidget,
  }) {
    return fromStringFlutterWidget(this);
  }
}

abstract class _MapFromStringFlutterWidget extends MapTransformer {
  const factory _MapFromStringFlutterWidget() = _$_MapFromStringFlutterWidget;
  const _MapFromStringFlutterWidget._() : super._();

  factory _MapFromStringFlutterWidget.fromJson(Map<String, dynamic> json) =
      _$_MapFromStringFlutterWidget.fromJson;
}

IterableTransformer _$IterableTransformerFromJson(Map<String, dynamic> json) {
  switch (json['converter']) {
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
      throw CheckedFromJsonException(json, 'converter', 'IterableTransformer',
          'Invalid union type "${json['converter']}"!');
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
  _$_IterableMap({required this.transformer, final String? $type})
      : $type = $type ?? 'z:1:Transformer:Iterable.map',
        super._();

  factory _$_IterableMap.fromJson(Map<String, dynamic> json) =>
      _$$_IterableMapFromJson(json);

  @override
  final ZacTransformers transformer;

  @JsonKey(name: 'converter')
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
            (identical(other.transformer, transformer) ||
                other.transformer == transformer));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, transformer);

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
  factory _IterableMap({required final ZacTransformers transformer}) =
      _$_IterableMap;
  _IterableMap._() : super._();

  factory _IterableMap.fromJson(Map<String, dynamic> json) =
      _$_IterableMap.fromJson;

  ZacTransformers get transformer;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_IterableSingle extends _IterableSingle {
  const _$_IterableSingle({final String? $type})
      : $type = $type ?? 'z:1:Transformer:Iterable.single',
        super._();

  factory _$_IterableSingle.fromJson(Map<String, dynamic> json) =>
      _$$_IterableSingleFromJson(json);

  @JsonKey(name: 'converter')
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

  @JsonKey(name: 'converter')
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

  @JsonKey(name: 'converter')
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

  @JsonKey(name: 'converter')
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

  @JsonKey(name: 'converter')
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

  @JsonKey(name: 'converter')
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

  @JsonKey(name: 'converter')
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

  @JsonKey(name: 'converter')
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

  @JsonKey(name: 'converter')
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

  @JsonKey(name: 'converter')
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
            (identical(other.separator, separator) ||
                other.separator == separator));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, separator);

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
  final ZacValue<Object>? element;

  @JsonKey(name: 'converter')
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
            (identical(other.element, element) || other.element == element));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, element);

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
  const factory _IterableContains(final ZacValue<Object>? element) =
      _$_IterableContains;
  const _IterableContains._() : super._();

  factory _IterableContains.fromJson(Map<String, dynamic> json) =
      _$_IterableContains.fromJson;

  ZacValue<Object>? get element;
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

  @JsonKey(name: 'converter')
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
            (identical(other.index, index) || other.index == index));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, index);

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

  @JsonKey(name: 'converter')
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
            (identical(other.count, count) || other.count == count));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, count);

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

  @JsonKey(name: 'converter')
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
            (identical(other.count, count) || other.count == count));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, count);

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

ListTransformer _$ListTransformerFromJson(Map<String, dynamic> json) {
  switch (json['converter']) {
    case 'z:1:Transformer:List.reversed':
      return _ListReversed.fromJson(json);
    case 'z:1:Transformer:List<FlutterWidget>.from':
      return _ListFromFlutterWidget.fromJson(json);
    case 'z:1:Transformer:List.add':
      return _ListAdd.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'converter', 'ListTransformer',
          'Invalid union type "${json['converter']}"!');
  }
}

/// @nodoc
mixin _$ListTransformer {
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ListReversed value) reversed,
    required TResult Function(_ListFromFlutterWidget value) fromFlutterWidget,
    required TResult Function(_ListAdd value) add,
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_ListReversed extends _ListReversed {
  const _$_ListReversed({final String? $type})
      : $type = $type ?? 'z:1:Transformer:List.reversed',
        super._();

  factory _$_ListReversed.fromJson(Map<String, dynamic> json) =>
      _$$_ListReversedFromJson(json);

  @JsonKey(name: 'converter')
  final String $type;

  @override
  String toString() {
    return 'ListTransformer.reversed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_ListReversed);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ListReversed value) reversed,
    required TResult Function(_ListFromFlutterWidget value) fromFlutterWidget,
    required TResult Function(_ListAdd value) add,
  }) {
    return reversed(this);
  }
}

abstract class _ListReversed extends ListTransformer {
  const factory _ListReversed() = _$_ListReversed;
  const _ListReversed._() : super._();

  factory _ListReversed.fromJson(Map<String, dynamic> json) =
      _$_ListReversed.fromJson;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_ListFromFlutterWidget extends _ListFromFlutterWidget {
  const _$_ListFromFlutterWidget({final String? $type})
      : $type = $type ?? 'z:1:Transformer:List<FlutterWidget>.from',
        super._();

  factory _$_ListFromFlutterWidget.fromJson(Map<String, dynamic> json) =>
      _$$_ListFromFlutterWidgetFromJson(json);

  @JsonKey(name: 'converter')
  final String $type;

  @override
  String toString() {
    return 'ListTransformer.fromFlutterWidget()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_ListFromFlutterWidget);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ListReversed value) reversed,
    required TResult Function(_ListFromFlutterWidget value) fromFlutterWidget,
    required TResult Function(_ListAdd value) add,
  }) {
    return fromFlutterWidget(this);
  }
}

abstract class _ListFromFlutterWidget extends ListTransformer {
  const factory _ListFromFlutterWidget() = _$_ListFromFlutterWidget;
  const _ListFromFlutterWidget._() : super._();

  factory _ListFromFlutterWidget.fromJson(Map<String, dynamic> json) =
      _$_ListFromFlutterWidget.fromJson;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_ListAdd extends _ListAdd {
  const _$_ListAdd(this.value, {final String? $type})
      : $type = $type ?? 'z:1:Transformer:List.add',
        super._();

  factory _$_ListAdd.fromJson(Map<String, dynamic> json) =>
      _$$_ListAddFromJson(json);

  @override
  final ZacValue<Object?> value;

  @JsonKey(name: 'converter')
  final String $type;

  @override
  String toString() {
    return 'ListTransformer.add(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ListAdd &&
            (identical(other.value, value) || other.value == value));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, value);

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ListReversed value) reversed,
    required TResult Function(_ListFromFlutterWidget value) fromFlutterWidget,
    required TResult Function(_ListAdd value) add,
  }) {
    return add(this);
  }
}

abstract class _ListAdd extends ListTransformer {
  const factory _ListAdd(final ZacValue<Object?> value) = _$_ListAdd;
  const _ListAdd._() : super._();

  factory _ListAdd.fromJson(Map<String, dynamic> json) = _$_ListAdd.fromJson;

  ZacValue<Object?> get value;
}

ObjectTransformer _$ObjectTransformerFromJson(Map<String, dynamic> json) {
  switch (json['converter']) {
    case 'z:1:Transformer:Object.isList':
      return _ObjectIsList.fromJson(json);
    case 'z:1:Transformer:Object.isMap':
      return _ObjectIsMap.fromJson(json);
    case 'z:1:Transformer:Object.isBool':
      return _ObjectIsBool.fromJson(json);
    case 'z:1:Transformer:Object.isString':
      return _ObjectIsString.fromJson(json);
    case 'z:1:Transformer:Object.isDouble':
      return _ObjectIsDouble.fromJson(json);
    case 'z:1:Transformer:Object.isInt':
      return _ObjectIsInt.fromJson(json);
    case 'z:1:Transformer:Object.isFlutterWidget':
      return _ObjectIsFlutterWidget.fromJson(json);
    case 'z:1:Transformer:Object.isNull':
      return _ObjectIsNull.fromJson(json);
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
      throw CheckedFromJsonException(json, 'converter', 'ObjectTransformer',
          'Invalid union type "${json['converter']}"!');
  }
}

/// @nodoc
mixin _$ObjectTransformer {
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ObjectIsList value) isList,
    required TResult Function(_ObjectIsMap value) isMap,
    required TResult Function(_ObjectIsBool value) isBool,
    required TResult Function(_ObjectIsString value) isString,
    required TResult Function(_ObjectIsDouble value) isDouble,
    required TResult Function(_ObjectIsInt value) isInt,
    required TResult Function(_ObjectIsFlutterWidget value) isFlutterWidget,
    required TResult Function(_ObjectIsNull value) isNull,
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

  @JsonKey(name: 'converter')
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
    required TResult Function(_ObjectIsBool value) isBool,
    required TResult Function(_ObjectIsString value) isString,
    required TResult Function(_ObjectIsDouble value) isDouble,
    required TResult Function(_ObjectIsInt value) isInt,
    required TResult Function(_ObjectIsFlutterWidget value) isFlutterWidget,
    required TResult Function(_ObjectIsNull value) isNull,
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

  @JsonKey(name: 'converter')
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
    required TResult Function(_ObjectIsBool value) isBool,
    required TResult Function(_ObjectIsString value) isString,
    required TResult Function(_ObjectIsDouble value) isDouble,
    required TResult Function(_ObjectIsInt value) isInt,
    required TResult Function(_ObjectIsFlutterWidget value) isFlutterWidget,
    required TResult Function(_ObjectIsNull value) isNull,
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
class _$_ObjectIsBool extends _ObjectIsBool {
  _$_ObjectIsBool({final String? $type})
      : $type = $type ?? 'z:1:Transformer:Object.isBool',
        super._();

  factory _$_ObjectIsBool.fromJson(Map<String, dynamic> json) =>
      _$$_ObjectIsBoolFromJson(json);

  @JsonKey(name: 'converter')
  final String $type;

  @override
  String toString() {
    return 'ObjectTransformer.isBool()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_ObjectIsBool);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ObjectIsList value) isList,
    required TResult Function(_ObjectIsMap value) isMap,
    required TResult Function(_ObjectIsBool value) isBool,
    required TResult Function(_ObjectIsString value) isString,
    required TResult Function(_ObjectIsDouble value) isDouble,
    required TResult Function(_ObjectIsInt value) isInt,
    required TResult Function(_ObjectIsFlutterWidget value) isFlutterWidget,
    required TResult Function(_ObjectIsNull value) isNull,
    required TResult Function(_ObjectEquals value) equals,
    required TResult Function(_ObjectToString value) toString,
    required TResult Function(_ObjectRuntimeType value) runtimeType,
    required TResult Function(_ObjectHashCode value) hashCode,
    required TResult Function(_ObjectEqualsSharedValue value) equalsSharedValue,
  }) {
    return isBool(this);
  }
}

abstract class _ObjectIsBool extends ObjectTransformer {
  factory _ObjectIsBool() = _$_ObjectIsBool;
  _ObjectIsBool._() : super._();

  factory _ObjectIsBool.fromJson(Map<String, dynamic> json) =
      _$_ObjectIsBool.fromJson;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_ObjectIsString extends _ObjectIsString {
  _$_ObjectIsString({final String? $type})
      : $type = $type ?? 'z:1:Transformer:Object.isString',
        super._();

  factory _$_ObjectIsString.fromJson(Map<String, dynamic> json) =>
      _$$_ObjectIsStringFromJson(json);

  @JsonKey(name: 'converter')
  final String $type;

  @override
  String toString() {
    return 'ObjectTransformer.isString()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_ObjectIsString);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ObjectIsList value) isList,
    required TResult Function(_ObjectIsMap value) isMap,
    required TResult Function(_ObjectIsBool value) isBool,
    required TResult Function(_ObjectIsString value) isString,
    required TResult Function(_ObjectIsDouble value) isDouble,
    required TResult Function(_ObjectIsInt value) isInt,
    required TResult Function(_ObjectIsFlutterWidget value) isFlutterWidget,
    required TResult Function(_ObjectIsNull value) isNull,
    required TResult Function(_ObjectEquals value) equals,
    required TResult Function(_ObjectToString value) toString,
    required TResult Function(_ObjectRuntimeType value) runtimeType,
    required TResult Function(_ObjectHashCode value) hashCode,
    required TResult Function(_ObjectEqualsSharedValue value) equalsSharedValue,
  }) {
    return isString(this);
  }
}

abstract class _ObjectIsString extends ObjectTransformer {
  factory _ObjectIsString() = _$_ObjectIsString;
  _ObjectIsString._() : super._();

  factory _ObjectIsString.fromJson(Map<String, dynamic> json) =
      _$_ObjectIsString.fromJson;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_ObjectIsDouble extends _ObjectIsDouble {
  _$_ObjectIsDouble({final String? $type})
      : $type = $type ?? 'z:1:Transformer:Object.isDouble',
        super._();

  factory _$_ObjectIsDouble.fromJson(Map<String, dynamic> json) =>
      _$$_ObjectIsDoubleFromJson(json);

  @JsonKey(name: 'converter')
  final String $type;

  @override
  String toString() {
    return 'ObjectTransformer.isDouble()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_ObjectIsDouble);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ObjectIsList value) isList,
    required TResult Function(_ObjectIsMap value) isMap,
    required TResult Function(_ObjectIsBool value) isBool,
    required TResult Function(_ObjectIsString value) isString,
    required TResult Function(_ObjectIsDouble value) isDouble,
    required TResult Function(_ObjectIsInt value) isInt,
    required TResult Function(_ObjectIsFlutterWidget value) isFlutterWidget,
    required TResult Function(_ObjectIsNull value) isNull,
    required TResult Function(_ObjectEquals value) equals,
    required TResult Function(_ObjectToString value) toString,
    required TResult Function(_ObjectRuntimeType value) runtimeType,
    required TResult Function(_ObjectHashCode value) hashCode,
    required TResult Function(_ObjectEqualsSharedValue value) equalsSharedValue,
  }) {
    return isDouble(this);
  }
}

abstract class _ObjectIsDouble extends ObjectTransformer {
  factory _ObjectIsDouble() = _$_ObjectIsDouble;
  _ObjectIsDouble._() : super._();

  factory _ObjectIsDouble.fromJson(Map<String, dynamic> json) =
      _$_ObjectIsDouble.fromJson;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_ObjectIsInt extends _ObjectIsInt {
  _$_ObjectIsInt({final String? $type})
      : $type = $type ?? 'z:1:Transformer:Object.isInt',
        super._();

  factory _$_ObjectIsInt.fromJson(Map<String, dynamic> json) =>
      _$$_ObjectIsIntFromJson(json);

  @JsonKey(name: 'converter')
  final String $type;

  @override
  String toString() {
    return 'ObjectTransformer.isInt()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_ObjectIsInt);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ObjectIsList value) isList,
    required TResult Function(_ObjectIsMap value) isMap,
    required TResult Function(_ObjectIsBool value) isBool,
    required TResult Function(_ObjectIsString value) isString,
    required TResult Function(_ObjectIsDouble value) isDouble,
    required TResult Function(_ObjectIsInt value) isInt,
    required TResult Function(_ObjectIsFlutterWidget value) isFlutterWidget,
    required TResult Function(_ObjectIsNull value) isNull,
    required TResult Function(_ObjectEquals value) equals,
    required TResult Function(_ObjectToString value) toString,
    required TResult Function(_ObjectRuntimeType value) runtimeType,
    required TResult Function(_ObjectHashCode value) hashCode,
    required TResult Function(_ObjectEqualsSharedValue value) equalsSharedValue,
  }) {
    return isInt(this);
  }
}

abstract class _ObjectIsInt extends ObjectTransformer {
  factory _ObjectIsInt() = _$_ObjectIsInt;
  _ObjectIsInt._() : super._();

  factory _ObjectIsInt.fromJson(Map<String, dynamic> json) =
      _$_ObjectIsInt.fromJson;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_ObjectIsFlutterWidget extends _ObjectIsFlutterWidget {
  _$_ObjectIsFlutterWidget({final String? $type})
      : $type = $type ?? 'z:1:Transformer:Object.isFlutterWidget',
        super._();

  factory _$_ObjectIsFlutterWidget.fromJson(Map<String, dynamic> json) =>
      _$$_ObjectIsFlutterWidgetFromJson(json);

  @JsonKey(name: 'converter')
  final String $type;

  @override
  String toString() {
    return 'ObjectTransformer.isFlutterWidget()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_ObjectIsFlutterWidget);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ObjectIsList value) isList,
    required TResult Function(_ObjectIsMap value) isMap,
    required TResult Function(_ObjectIsBool value) isBool,
    required TResult Function(_ObjectIsString value) isString,
    required TResult Function(_ObjectIsDouble value) isDouble,
    required TResult Function(_ObjectIsInt value) isInt,
    required TResult Function(_ObjectIsFlutterWidget value) isFlutterWidget,
    required TResult Function(_ObjectIsNull value) isNull,
    required TResult Function(_ObjectEquals value) equals,
    required TResult Function(_ObjectToString value) toString,
    required TResult Function(_ObjectRuntimeType value) runtimeType,
    required TResult Function(_ObjectHashCode value) hashCode,
    required TResult Function(_ObjectEqualsSharedValue value) equalsSharedValue,
  }) {
    return isFlutterWidget(this);
  }
}

abstract class _ObjectIsFlutterWidget extends ObjectTransformer {
  factory _ObjectIsFlutterWidget() = _$_ObjectIsFlutterWidget;
  _ObjectIsFlutterWidget._() : super._();

  factory _ObjectIsFlutterWidget.fromJson(Map<String, dynamic> json) =
      _$_ObjectIsFlutterWidget.fromJson;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_ObjectIsNull extends _ObjectIsNull {
  _$_ObjectIsNull({final String? $type})
      : $type = $type ?? 'z:1:Transformer:Object.isNull',
        super._();

  factory _$_ObjectIsNull.fromJson(Map<String, dynamic> json) =>
      _$$_ObjectIsNullFromJson(json);

  @JsonKey(name: 'converter')
  final String $type;

  @override
  String toString() {
    return 'ObjectTransformer.isNull()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_ObjectIsNull);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ObjectIsList value) isList,
    required TResult Function(_ObjectIsMap value) isMap,
    required TResult Function(_ObjectIsBool value) isBool,
    required TResult Function(_ObjectIsString value) isString,
    required TResult Function(_ObjectIsDouble value) isDouble,
    required TResult Function(_ObjectIsInt value) isInt,
    required TResult Function(_ObjectIsFlutterWidget value) isFlutterWidget,
    required TResult Function(_ObjectIsNull value) isNull,
    required TResult Function(_ObjectEquals value) equals,
    required TResult Function(_ObjectToString value) toString,
    required TResult Function(_ObjectRuntimeType value) runtimeType,
    required TResult Function(_ObjectHashCode value) hashCode,
    required TResult Function(_ObjectEqualsSharedValue value) equalsSharedValue,
  }) {
    return isNull(this);
  }
}

abstract class _ObjectIsNull extends ObjectTransformer {
  factory _ObjectIsNull() = _$_ObjectIsNull;
  _ObjectIsNull._() : super._();

  factory _ObjectIsNull.fromJson(Map<String, dynamic> json) =
      _$_ObjectIsNull.fromJson;
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

  @JsonKey(name: 'converter')
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
    required TResult Function(_ObjectIsBool value) isBool,
    required TResult Function(_ObjectIsString value) isString,
    required TResult Function(_ObjectIsDouble value) isDouble,
    required TResult Function(_ObjectIsInt value) isInt,
    required TResult Function(_ObjectIsFlutterWidget value) isFlutterWidget,
    required TResult Function(_ObjectIsNull value) isNull,
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

  @JsonKey(name: 'converter')
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
    required TResult Function(_ObjectIsBool value) isBool,
    required TResult Function(_ObjectIsString value) isString,
    required TResult Function(_ObjectIsDouble value) isDouble,
    required TResult Function(_ObjectIsInt value) isInt,
    required TResult Function(_ObjectIsFlutterWidget value) isFlutterWidget,
    required TResult Function(_ObjectIsNull value) isNull,
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

  @JsonKey(name: 'converter')
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
    required TResult Function(_ObjectIsBool value) isBool,
    required TResult Function(_ObjectIsString value) isString,
    required TResult Function(_ObjectIsDouble value) isDouble,
    required TResult Function(_ObjectIsInt value) isInt,
    required TResult Function(_ObjectIsFlutterWidget value) isFlutterWidget,
    required TResult Function(_ObjectIsNull value) isNull,
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

  @JsonKey(name: 'converter')
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
    required TResult Function(_ObjectIsBool value) isBool,
    required TResult Function(_ObjectIsString value) isString,
    required TResult Function(_ObjectIsDouble value) isDouble,
    required TResult Function(_ObjectIsInt value) isInt,
    required TResult Function(_ObjectIsFlutterWidget value) isFlutterWidget,
    required TResult Function(_ObjectIsNull value) isNull,
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
class _$_ObjectEqualsSharedValue extends _ObjectEqualsSharedValue {
  _$_ObjectEqualsSharedValue({required this.value, final String? $type})
      : $type = $type ?? 'z:1:Transformer:Object.equalsSharedValue',
        super._();

  factory _$_ObjectEqualsSharedValue.fromJson(Map<String, dynamic> json) =>
      _$$_ObjectEqualsSharedValueFromJson(json);

  @override
  final ZacValue<Object?> value;

  @JsonKey(name: 'converter')
  final String $type;

  @override
  String toString() {
    return 'ObjectTransformer.equalsSharedValue(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ObjectEqualsSharedValue &&
            (identical(other.value, value) || other.value == value));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, value);

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ObjectIsList value) isList,
    required TResult Function(_ObjectIsMap value) isMap,
    required TResult Function(_ObjectIsBool value) isBool,
    required TResult Function(_ObjectIsString value) isString,
    required TResult Function(_ObjectIsDouble value) isDouble,
    required TResult Function(_ObjectIsInt value) isInt,
    required TResult Function(_ObjectIsFlutterWidget value) isFlutterWidget,
    required TResult Function(_ObjectIsNull value) isNull,
    required TResult Function(_ObjectEquals value) equals,
    required TResult Function(_ObjectToString value) toString,
    required TResult Function(_ObjectRuntimeType value) runtimeType,
    required TResult Function(_ObjectHashCode value) hashCode,
    required TResult Function(_ObjectEqualsSharedValue value) equalsSharedValue,
  }) {
    return equalsSharedValue(this);
  }
}

abstract class _ObjectEqualsSharedValue extends ObjectTransformer {
  factory _ObjectEqualsSharedValue({required final ZacValue<Object?> value}) =
      _$_ObjectEqualsSharedValue;
  _ObjectEqualsSharedValue._() : super._();

  factory _ObjectEqualsSharedValue.fromJson(Map<String, dynamic> json) =
      _$_ObjectEqualsSharedValue.fromJson;

  ZacValue<Object?> get value;
}

NumTransformer _$NumTransformerFromJson(Map<String, dynamic> json) {
  switch (json['converter']) {
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
      throw CheckedFromJsonException(json, 'converter', 'NumTransformer',
          'Invalid union type "${json['converter']}"!');
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

  @JsonKey(name: 'converter')
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

  @JsonKey(name: 'converter')
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

  @JsonKey(name: 'converter')
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

  @JsonKey(name: 'converter')
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

  @JsonKey(name: 'converter')
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

  @JsonKey(name: 'converter')
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

  @JsonKey(name: 'converter')
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

  @JsonKey(name: 'converter')
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

  @JsonKey(name: 'converter')
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

  @JsonKey(name: 'converter')
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

  @JsonKey(name: 'converter')
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

  @JsonKey(name: 'converter')
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

  @JsonKey(name: 'converter')
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
  switch (json['converter']) {
    case 'z:1:Transformer:int.parse':
      return _IntParse.fromJson(json);
    case 'z:1:Transformer:int.tryParse':
      return _IntTryParse.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'converter', 'IntTransformer',
          'Invalid union type "${json['converter']}"!');
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

  @JsonKey(name: 'converter')
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

  @JsonKey(name: 'converter')
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

StringTransformer _$StringTransformerFromJson(Map<String, dynamic> json) {
  switch (json['converter']) {
    case 'z:1:Transformer:String.length':
      return _StringLength.fromJson(json);
    case 'z:1:Transformer:String.split':
      return _StringSplit.fromJson(json);
    case 'z:1:Transformer:String.isEmpty':
      return _StringIsEmpty.fromJson(json);
    case 'z:1:Transformer:String.isNotEmpty':
      return _StringIsNotEmpty.fromJson(json);
    case 'z:1:Transformer:String.replaceAll':
      return _StringReplaceAll.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'converter', 'StringTransformer',
          'Invalid union type "${json['converter']}"!');
  }
}

/// @nodoc
mixin _$StringTransformer {
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_StringLength value) length,
    required TResult Function(_StringSplit value) split,
    required TResult Function(_StringIsEmpty value) isEmpty,
    required TResult Function(_StringIsNotEmpty value) isNotEmpty,
    required TResult Function(_StringReplaceAll value) replaceAll,
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_StringLength extends _StringLength {
  const _$_StringLength({final String? $type})
      : $type = $type ?? 'z:1:Transformer:String.length',
        super._();

  factory _$_StringLength.fromJson(Map<String, dynamic> json) =>
      _$$_StringLengthFromJson(json);

  @JsonKey(name: 'converter')
  final String $type;

  @override
  String toString() {
    return 'StringTransformer.length()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_StringLength);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_StringLength value) length,
    required TResult Function(_StringSplit value) split,
    required TResult Function(_StringIsEmpty value) isEmpty,
    required TResult Function(_StringIsNotEmpty value) isNotEmpty,
    required TResult Function(_StringReplaceAll value) replaceAll,
  }) {
    return length(this);
  }
}

abstract class _StringLength extends StringTransformer {
  const factory _StringLength() = _$_StringLength;
  const _StringLength._() : super._();

  factory _StringLength.fromJson(Map<String, dynamic> json) =
      _$_StringLength.fromJson;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_StringSplit extends _StringSplit {
  const _$_StringSplit({required this.pattern, final String? $type})
      : $type = $type ?? 'z:1:Transformer:String.split',
        super._();

  factory _$_StringSplit.fromJson(Map<String, dynamic> json) =>
      _$$_StringSplitFromJson(json);

  @override
  final ZacValue<String> pattern;

  @JsonKey(name: 'converter')
  final String $type;

  @override
  String toString() {
    return 'StringTransformer.split(pattern: $pattern)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_StringSplit &&
            (identical(other.pattern, pattern) || other.pattern == pattern));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, pattern);

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_StringLength value) length,
    required TResult Function(_StringSplit value) split,
    required TResult Function(_StringIsEmpty value) isEmpty,
    required TResult Function(_StringIsNotEmpty value) isNotEmpty,
    required TResult Function(_StringReplaceAll value) replaceAll,
  }) {
    return split(this);
  }
}

abstract class _StringSplit extends StringTransformer {
  const factory _StringSplit({required final ZacValue<String> pattern}) =
      _$_StringSplit;
  const _StringSplit._() : super._();

  factory _StringSplit.fromJson(Map<String, dynamic> json) =
      _$_StringSplit.fromJson;

  ZacValue<String> get pattern;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_StringIsEmpty extends _StringIsEmpty {
  const _$_StringIsEmpty({final String? $type})
      : $type = $type ?? 'z:1:Transformer:String.isEmpty',
        super._();

  factory _$_StringIsEmpty.fromJson(Map<String, dynamic> json) =>
      _$$_StringIsEmptyFromJson(json);

  @JsonKey(name: 'converter')
  final String $type;

  @override
  String toString() {
    return 'StringTransformer.isEmpty()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_StringIsEmpty);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_StringLength value) length,
    required TResult Function(_StringSplit value) split,
    required TResult Function(_StringIsEmpty value) isEmpty,
    required TResult Function(_StringIsNotEmpty value) isNotEmpty,
    required TResult Function(_StringReplaceAll value) replaceAll,
  }) {
    return isEmpty(this);
  }
}

abstract class _StringIsEmpty extends StringTransformer {
  const factory _StringIsEmpty() = _$_StringIsEmpty;
  const _StringIsEmpty._() : super._();

  factory _StringIsEmpty.fromJson(Map<String, dynamic> json) =
      _$_StringIsEmpty.fromJson;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_StringIsNotEmpty extends _StringIsNotEmpty {
  const _$_StringIsNotEmpty({final String? $type})
      : $type = $type ?? 'z:1:Transformer:String.isNotEmpty',
        super._();

  factory _$_StringIsNotEmpty.fromJson(Map<String, dynamic> json) =>
      _$$_StringIsNotEmptyFromJson(json);

  @JsonKey(name: 'converter')
  final String $type;

  @override
  String toString() {
    return 'StringTransformer.isNotEmpty()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_StringIsNotEmpty);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_StringLength value) length,
    required TResult Function(_StringSplit value) split,
    required TResult Function(_StringIsEmpty value) isEmpty,
    required TResult Function(_StringIsNotEmpty value) isNotEmpty,
    required TResult Function(_StringReplaceAll value) replaceAll,
  }) {
    return isNotEmpty(this);
  }
}

abstract class _StringIsNotEmpty extends StringTransformer {
  const factory _StringIsNotEmpty() = _$_StringIsNotEmpty;
  const _StringIsNotEmpty._() : super._();

  factory _StringIsNotEmpty.fromJson(Map<String, dynamic> json) =
      _$_StringIsNotEmpty.fromJson;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_StringReplaceAll extends _StringReplaceAll {
  const _$_StringReplaceAll(this.from, this.replace, {final String? $type})
      : $type = $type ?? 'z:1:Transformer:String.replaceAll',
        super._();

  factory _$_StringReplaceAll.fromJson(Map<String, dynamic> json) =>
      _$$_StringReplaceAllFromJson(json);

  @override
  final ZacValue<String> from;
  @override
  final ZacValue<String> replace;

  @JsonKey(name: 'converter')
  final String $type;

  @override
  String toString() {
    return 'StringTransformer.replaceAll(from: $from, replace: $replace)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_StringReplaceAll &&
            (identical(other.from, from) || other.from == from) &&
            (identical(other.replace, replace) || other.replace == replace));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, from, replace);

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_StringLength value) length,
    required TResult Function(_StringSplit value) split,
    required TResult Function(_StringIsEmpty value) isEmpty,
    required TResult Function(_StringIsNotEmpty value) isNotEmpty,
    required TResult Function(_StringReplaceAll value) replaceAll,
  }) {
    return replaceAll(this);
  }
}

abstract class _StringReplaceAll extends StringTransformer {
  const factory _StringReplaceAll(
          final ZacValue<String> from, final ZacValue<String> replace) =
      _$_StringReplaceAll;
  const _StringReplaceAll._() : super._();

  factory _StringReplaceAll.fromJson(Map<String, dynamic> json) =
      _$_StringReplaceAll.fromJson;

  ZacValue<String> get from;
  ZacValue<String> get replace;
}

JsonTransformer _$JsonTransformerFromJson(Map<String, dynamic> json) {
  switch (json['converter']) {
    case 'z:1:Transformer:Json.encode':
      return _JsonEncode.fromJson(json);
    case 'z:1:Transformer:Json.decode':
      return _JsonDencode.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'converter', 'JsonTransformer',
          'Invalid union type "${json['converter']}"!');
  }
}

/// @nodoc
mixin _$JsonTransformer {
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_JsonEncode value) encode,
    required TResult Function(_JsonDencode value) decode,
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_JsonEncode extends _JsonEncode {
  const _$_JsonEncode({final String? $type})
      : $type = $type ?? 'z:1:Transformer:Json.encode',
        super._();

  factory _$_JsonEncode.fromJson(Map<String, dynamic> json) =>
      _$$_JsonEncodeFromJson(json);

  @JsonKey(name: 'converter')
  final String $type;

  @override
  String toString() {
    return 'JsonTransformer.encode()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_JsonEncode);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_JsonEncode value) encode,
    required TResult Function(_JsonDencode value) decode,
  }) {
    return encode(this);
  }
}

abstract class _JsonEncode extends JsonTransformer {
  const factory _JsonEncode() = _$_JsonEncode;
  const _JsonEncode._() : super._();

  factory _JsonEncode.fromJson(Map<String, dynamic> json) =
      _$_JsonEncode.fromJson;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_JsonDencode extends _JsonDencode {
  const _$_JsonDencode({final String? $type})
      : $type = $type ?? 'z:1:Transformer:Json.decode',
        super._();

  factory _$_JsonDencode.fromJson(Map<String, dynamic> json) =>
      _$$_JsonDencodeFromJson(json);

  @JsonKey(name: 'converter')
  final String $type;

  @override
  String toString() {
    return 'JsonTransformer.decode()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_JsonDencode);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_JsonEncode value) encode,
    required TResult Function(_JsonDencode value) decode,
  }) {
    return decode(this);
  }
}

abstract class _JsonDencode extends JsonTransformer {
  const factory _JsonDencode() = _$_JsonDencode;
  const _JsonDencode._() : super._();

  factory _JsonDencode.fromJson(Map<String, dynamic> json) =
      _$_JsonDencode.fromJson;
}

BoolTransformer _$BoolTransformerFromJson(Map<String, dynamic> json) {
  return _BoolTransformerNegate.fromJson(json);
}

/// @nodoc
mixin _$BoolTransformer {
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_BoolTransformerNegate value) negate,
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_BoolTransformerNegate extends _BoolTransformerNegate {
  const _$_BoolTransformerNegate() : super._();

  factory _$_BoolTransformerNegate.fromJson(Map<String, dynamic> json) =>
      _$$_BoolTransformerNegateFromJson(json);

  @override
  String toString() {
    return 'BoolTransformer.negate()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_BoolTransformerNegate);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_BoolTransformerNegate value) negate,
  }) {
    return negate(this);
  }
}

abstract class _BoolTransformerNegate extends BoolTransformer {
  const factory _BoolTransformerNegate() = _$_BoolTransformerNegate;
  const _BoolTransformerNegate._() : super._();

  factory _BoolTransformerNegate.fromJson(Map<String, dynamic> json) =
      _$_BoolTransformerNegate.fromJson;
}
