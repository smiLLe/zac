// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'transformers.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ZacTransform {
  Object? Function(BuildContext, ZacContext) get transform =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ZacTransformCopyWith<ZacTransform> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ZacTransformCopyWith<$Res> {
  factory $ZacTransformCopyWith(
          ZacTransform value, $Res Function(ZacTransform) then) =
      _$ZacTransformCopyWithImpl<$Res, ZacTransform>;
  @useResult
  $Res call({Object? Function(BuildContext, ZacContext) transform});
}

/// @nodoc
class _$ZacTransformCopyWithImpl<$Res, $Val extends ZacTransform>
    implements $ZacTransformCopyWith<$Res> {
  _$ZacTransformCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? transform = null,
  }) {
    return _then(_value.copyWith(
      transform: null == transform
          ? _value.transform
          : transform // ignore: cast_nullable_to_non_nullable
              as Object? Function(BuildContext, ZacContext),
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ZacTransformCopyWith<$Res>
    implements $ZacTransformCopyWith<$Res> {
  factory _$$_ZacTransformCopyWith(
          _$_ZacTransform value, $Res Function(_$_ZacTransform) then) =
      __$$_ZacTransformCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Object? Function(BuildContext, ZacContext) transform});
}

/// @nodoc
class __$$_ZacTransformCopyWithImpl<$Res>
    extends _$ZacTransformCopyWithImpl<$Res, _$_ZacTransform>
    implements _$$_ZacTransformCopyWith<$Res> {
  __$$_ZacTransformCopyWithImpl(
      _$_ZacTransform _value, $Res Function(_$_ZacTransform) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? transform = null,
  }) {
    return _then(_$_ZacTransform(
      null == transform
          ? _value.transform
          : transform // ignore: cast_nullable_to_non_nullable
              as Object? Function(BuildContext, ZacContext),
    ));
  }
}

/// @nodoc

class _$_ZacTransform implements _ZacTransform {
  _$_ZacTransform(this.transform);

  @override
  final Object? Function(BuildContext, ZacContext) transform;

  @override
  String toString() {
    return 'ZacTransform(transform: $transform)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ZacTransform &&
            (identical(other.transform, transform) ||
                other.transform == transform));
  }

  @override
  int get hashCode => Object.hash(runtimeType, transform);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ZacTransformCopyWith<_$_ZacTransform> get copyWith =>
      __$$_ZacTransformCopyWithImpl<_$_ZacTransform>(this, _$identity);
}

abstract class _ZacTransform implements ZacTransform {
  factory _ZacTransform(
          final Object? Function(BuildContext, ZacContext) transform) =
      _$_ZacTransform;

  @override
  Object? Function(BuildContext, ZacContext) get transform;
  @override
  @JsonKey(ignore: true)
  _$$_ZacTransformCopyWith<_$_ZacTransform> get copyWith =>
      throw _privateConstructorUsedError;
}

ZacTransformValue<T> _$ZacTransformValueFromJson<T>(Map<String, dynamic> json) {
  switch (json['builder']) {
    case 'z:1:TransformValue.current':
      return _ZacTransformValueCurrent<T>.fromJson(json);
    case 'z:1:TransformValue.initial':
      return _ZacTransformValueInitial<T>.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'builder', 'ZacTransformValue',
          'Invalid union type "${json['builder']}"!');
  }
}

/// @nodoc
mixin _$ZacTransformValue<T> {
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ZacTransformValueCurrent<T> value) current,
    required TResult Function(_ZacTransformValueInitial<T> value) initial,
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_ZacTransformValueCurrent<T> extends _ZacTransformValueCurrent<T> {
  _$_ZacTransformValueCurrent({final String? $type})
      : $type = $type ?? 'z:1:TransformValue.current',
        super._();

  factory _$_ZacTransformValueCurrent.fromJson(Map<String, dynamic> json) =>
      _$$_ZacTransformValueCurrentFromJson(json);

  @JsonKey(name: 'builder')
  final String $type;

  @override
  String toString() {
    return 'ZacTransformValue<$T>.current()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ZacTransformValueCurrent<T>);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ZacTransformValueCurrent<T> value) current,
    required TResult Function(_ZacTransformValueInitial<T> value) initial,
  }) {
    return current(this);
  }
}

abstract class _ZacTransformValueCurrent<T> extends ZacTransformValue<T> {
  factory _ZacTransformValueCurrent() = _$_ZacTransformValueCurrent<T>;
  _ZacTransformValueCurrent._() : super._();

  factory _ZacTransformValueCurrent.fromJson(Map<String, dynamic> json) =
      _$_ZacTransformValueCurrent<T>.fromJson;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_ZacTransformValueInitial<T> extends _ZacTransformValueInitial<T> {
  _$_ZacTransformValueInitial({final String? $type})
      : $type = $type ?? 'z:1:TransformValue.initial',
        super._();

  factory _$_ZacTransformValueInitial.fromJson(Map<String, dynamic> json) =>
      _$$_ZacTransformValueInitialFromJson(json);

  @JsonKey(name: 'builder')
  final String $type;

  @override
  String toString() {
    return 'ZacTransformValue<$T>.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ZacTransformValueInitial<T>);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ZacTransformValueCurrent<T> value) current,
    required TResult Function(_ZacTransformValueInitial<T> value) initial,
  }) {
    return initial(this);
  }
}

abstract class _ZacTransformValueInitial<T> extends ZacTransformValue<T> {
  factory _ZacTransformValueInitial() = _$_ZacTransformValueInitial<T>;
  _ZacTransformValueInitial._() : super._();

  factory _ZacTransformValueInitial.fromJson(Map<String, dynamic> json) =
      _$_ZacTransformValueInitial<T>.fromJson;
}

MapTransformer _$MapTransformerFromJson(Map<String, dynamic> json) {
  switch (json['builder']) {
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

    default:
      throw CheckedFromJsonException(json, 'builder', 'MapTransformer',
          'Invalid union type "${json['builder']}"!');
  }
}

/// @nodoc
mixin _$MapTransformer {
  ZacBuilder<Map<Object?, Object?>> get fromMap =>
      throw _privateConstructorUsedError;

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
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_MapValues extends _MapValues {
  _$_MapValues(this.fromMap, {final String? $type})
      : $type = $type ?? 'z:1:Transformer:Map.values',
        super._();

  factory _$_MapValues.fromJson(Map<String, dynamic> json) =>
      _$$_MapValuesFromJson(json);

  @override
  final ZacBuilder<Map<Object?, Object?>> fromMap;

  @JsonKey(name: 'builder')
  final String $type;

  @override
  String toString() {
    return 'MapTransformer.values(fromMap: $fromMap)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MapValues &&
            (identical(other.fromMap, fromMap) || other.fromMap == fromMap));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, fromMap);

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
  }) {
    return values(this);
  }
}

abstract class _MapValues extends MapTransformer {
  factory _MapValues(final ZacBuilder<Map<Object?, Object?>> fromMap) =
      _$_MapValues;
  _MapValues._() : super._();

  factory _MapValues.fromJson(Map<String, dynamic> json) =
      _$_MapValues.fromJson;

  @override
  ZacBuilder<Map<Object?, Object?>> get fromMap;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_MapKeys extends _MapKeys {
  _$_MapKeys(this.fromMap, {final String? $type})
      : $type = $type ?? 'z:1:Transformer:Map.keys',
        super._();

  factory _$_MapKeys.fromJson(Map<String, dynamic> json) =>
      _$$_MapKeysFromJson(json);

  @override
  final ZacBuilder<Map<Object?, Object?>> fromMap;

  @JsonKey(name: 'builder')
  final String $type;

  @override
  String toString() {
    return 'MapTransformer.keys(fromMap: $fromMap)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MapKeys &&
            (identical(other.fromMap, fromMap) || other.fromMap == fromMap));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, fromMap);

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
  }) {
    return keys(this);
  }
}

abstract class _MapKeys extends MapTransformer {
  factory _MapKeys(final ZacBuilder<Map<Object?, Object?>> fromMap) =
      _$_MapKeys;
  _MapKeys._() : super._();

  factory _MapKeys.fromJson(Map<String, dynamic> json) = _$_MapKeys.fromJson;

  @override
  ZacBuilder<Map<Object?, Object?>> get fromMap;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_MapEntries extends _MapEntries {
  _$_MapEntries(this.fromMap, {final String? $type})
      : $type = $type ?? 'z:1:Transformer:Map.entries',
        super._();

  factory _$_MapEntries.fromJson(Map<String, dynamic> json) =>
      _$$_MapEntriesFromJson(json);

  @override
  final ZacBuilder<Map<Object?, Object?>> fromMap;

  @JsonKey(name: 'builder')
  final String $type;

  @override
  String toString() {
    return 'MapTransformer.entries(fromMap: $fromMap)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MapEntries &&
            (identical(other.fromMap, fromMap) || other.fromMap == fromMap));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, fromMap);

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
  }) {
    return entries(this);
  }
}

abstract class _MapEntries extends MapTransformer {
  factory _MapEntries(final ZacBuilder<Map<Object?, Object?>> fromMap) =
      _$_MapEntries;
  _MapEntries._() : super._();

  factory _MapEntries.fromJson(Map<String, dynamic> json) =
      _$_MapEntries.fromJson;

  @override
  ZacBuilder<Map<Object?, Object?>> get fromMap;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_MapLength extends _MapLength {
  _$_MapLength(this.fromMap, {final String? $type})
      : $type = $type ?? 'z:1:Transformer:Map.length',
        super._();

  factory _$_MapLength.fromJson(Map<String, dynamic> json) =>
      _$$_MapLengthFromJson(json);

  @override
  final ZacBuilder<Map<Object?, Object?>> fromMap;

  @JsonKey(name: 'builder')
  final String $type;

  @override
  String toString() {
    return 'MapTransformer.length(fromMap: $fromMap)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MapLength &&
            (identical(other.fromMap, fromMap) || other.fromMap == fromMap));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, fromMap);

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
  }) {
    return length(this);
  }
}

abstract class _MapLength extends MapTransformer {
  factory _MapLength(final ZacBuilder<Map<Object?, Object?>> fromMap) =
      _$_MapLength;
  _MapLength._() : super._();

  factory _MapLength.fromJson(Map<String, dynamic> json) =
      _$_MapLength.fromJson;

  @override
  ZacBuilder<Map<Object?, Object?>> get fromMap;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_MapIsEmpty extends _MapIsEmpty {
  _$_MapIsEmpty(this.fromMap, {final String? $type})
      : $type = $type ?? 'z:1:Transformer:Map.isEmpty',
        super._();

  factory _$_MapIsEmpty.fromJson(Map<String, dynamic> json) =>
      _$$_MapIsEmptyFromJson(json);

  @override
  final ZacBuilder<Map<Object?, Object?>> fromMap;

  @JsonKey(name: 'builder')
  final String $type;

  @override
  String toString() {
    return 'MapTransformer.isEmpty(fromMap: $fromMap)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MapIsEmpty &&
            (identical(other.fromMap, fromMap) || other.fromMap == fromMap));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, fromMap);

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
  }) {
    return isEmpty(this);
  }
}

abstract class _MapIsEmpty extends MapTransformer {
  factory _MapIsEmpty(final ZacBuilder<Map<Object?, Object?>> fromMap) =
      _$_MapIsEmpty;
  _MapIsEmpty._() : super._();

  factory _MapIsEmpty.fromJson(Map<String, dynamic> json) =
      _$_MapIsEmpty.fromJson;

  @override
  ZacBuilder<Map<Object?, Object?>> get fromMap;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_MapIsNotEmpty extends _MapIsNotEmpty {
  _$_MapIsNotEmpty(this.fromMap, {final String? $type})
      : $type = $type ?? 'z:1:Transformer:Map.isNotEmpty',
        super._();

  factory _$_MapIsNotEmpty.fromJson(Map<String, dynamic> json) =>
      _$$_MapIsNotEmptyFromJson(json);

  @override
  final ZacBuilder<Map<Object?, Object?>> fromMap;

  @JsonKey(name: 'builder')
  final String $type;

  @override
  String toString() {
    return 'MapTransformer.isNotEmpty(fromMap: $fromMap)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MapIsNotEmpty &&
            (identical(other.fromMap, fromMap) || other.fromMap == fromMap));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, fromMap);

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
  }) {
    return isNotEmpty(this);
  }
}

abstract class _MapIsNotEmpty extends MapTransformer {
  factory _MapIsNotEmpty(final ZacBuilder<Map<Object?, Object?>> fromMap) =
      _$_MapIsNotEmpty;
  _MapIsNotEmpty._() : super._();

  factory _MapIsNotEmpty.fromJson(Map<String, dynamic> json) =
      _$_MapIsNotEmpty.fromJson;

  @override
  ZacBuilder<Map<Object?, Object?>> get fromMap;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_MapContainsKey extends _MapContainsKey {
  _$_MapContainsKey(this.fromMap, this.key, {final String? $type})
      : $type = $type ?? 'z:1:Transformer:Map.containsKey',
        super._();

  factory _$_MapContainsKey.fromJson(Map<String, dynamic> json) =>
      _$$_MapContainsKeyFromJson(json);

  @override
  final ZacBuilder<Map<Object?, Object?>> fromMap;
  @override
  final ZacBuilder<Object?>? key;

  @JsonKey(name: 'builder')
  final String $type;

  @override
  String toString() {
    return 'MapTransformer.containsKey(fromMap: $fromMap, key: $key)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MapContainsKey &&
            (identical(other.fromMap, fromMap) || other.fromMap == fromMap) &&
            (identical(other.key, key) || other.key == key));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, fromMap, key);

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
  }) {
    return containsKey(this);
  }
}

abstract class _MapContainsKey extends MapTransformer {
  factory _MapContainsKey(final ZacBuilder<Map<Object?, Object?>> fromMap,
      final ZacBuilder<Object?>? key) = _$_MapContainsKey;
  _MapContainsKey._() : super._();

  factory _MapContainsKey.fromJson(Map<String, dynamic> json) =
      _$_MapContainsKey.fromJson;

  @override
  ZacBuilder<Map<Object?, Object?>> get fromMap;
  ZacBuilder<Object?>? get key;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_MapContainsValue extends _MapContainsValue {
  _$_MapContainsValue(this.fromMap, this.value, {final String? $type})
      : $type = $type ?? 'z:1:Transformer:Map.containsValue',
        super._();

  factory _$_MapContainsValue.fromJson(Map<String, dynamic> json) =>
      _$$_MapContainsValueFromJson(json);

  @override
  final ZacBuilder<Map<Object?, Object?>> fromMap;
  @override
  final ZacBuilder<Object?>? value;

  @JsonKey(name: 'builder')
  final String $type;

  @override
  String toString() {
    return 'MapTransformer.containsValue(fromMap: $fromMap, value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MapContainsValue &&
            (identical(other.fromMap, fromMap) || other.fromMap == fromMap) &&
            (identical(other.value, value) || other.value == value));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, fromMap, value);

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
  }) {
    return containsValue(this);
  }
}

abstract class _MapContainsValue extends MapTransformer {
  factory _MapContainsValue(final ZacBuilder<Map<Object?, Object?>> fromMap,
      final ZacBuilder<Object?>? value) = _$_MapContainsValue;
  _MapContainsValue._() : super._();

  factory _MapContainsValue.fromJson(Map<String, dynamic> json) =
      _$_MapContainsValue.fromJson;

  @override
  ZacBuilder<Map<Object?, Object?>> get fromMap;
  ZacBuilder<Object?>? get value;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_MapMapper extends _MapMapper {
  _$_MapMapper(
      {required this.fromMap,
      this.keyTransformer,
      this.valueTransformer,
      final String? $type})
      : $type = $type ?? 'z:1:Transformer:Map.map',
        super._();

  factory _$_MapMapper.fromJson(Map<String, dynamic> json) =>
      _$$_MapMapperFromJson(json);

  @override
  final ZacBuilder<Map<Object?, Object?>> fromMap;
  @override
  final ZacBuilder<List<ZacTransform>?>? keyTransformer;
  @override
  final ZacBuilder<List<ZacTransform>?>? valueTransformer;

  @JsonKey(name: 'builder')
  final String $type;

  @override
  String toString() {
    return 'MapTransformer.mapper(fromMap: $fromMap, keyTransformer: $keyTransformer, valueTransformer: $valueTransformer)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MapMapper &&
            (identical(other.fromMap, fromMap) || other.fromMap == fromMap) &&
            (identical(other.keyTransformer, keyTransformer) ||
                other.keyTransformer == keyTransformer) &&
            (identical(other.valueTransformer, valueTransformer) ||
                other.valueTransformer == valueTransformer));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, fromMap, keyTransformer, valueTransformer);

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
  }) {
    return mapper(this);
  }
}

abstract class _MapMapper extends MapTransformer {
  factory _MapMapper(
      {required final ZacBuilder<Map<Object?, Object?>> fromMap,
      final ZacBuilder<List<ZacTransform>?>? keyTransformer,
      final ZacBuilder<List<ZacTransform>?>? valueTransformer}) = _$_MapMapper;
  _MapMapper._() : super._();

  factory _MapMapper.fromJson(Map<String, dynamic> json) =
      _$_MapMapper.fromJson;

  @override
  ZacBuilder<Map<Object?, Object?>> get fromMap;
  ZacBuilder<List<ZacTransform>?>? get keyTransformer;
  ZacBuilder<List<ZacTransform>?>? get valueTransformer;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_MapFromObjectObject extends _MapFromObjectObject {
  _$_MapFromObjectObject(this.fromMap, {final String? $type})
      : $type = $type ?? 'z:1:Transformer:Map<Object, Object>.from',
        super._();

  factory _$_MapFromObjectObject.fromJson(Map<String, dynamic> json) =>
      _$$_MapFromObjectObjectFromJson(json);

  @override
  final ZacBuilder<Map<Object?, Object?>> fromMap;

  @JsonKey(name: 'builder')
  final String $type;

  @override
  String toString() {
    return 'MapTransformer.fromObjectObject(fromMap: $fromMap)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MapFromObjectObject &&
            (identical(other.fromMap, fromMap) || other.fromMap == fromMap));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, fromMap);

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
  }) {
    return fromObjectObject(this);
  }
}

abstract class _MapFromObjectObject extends MapTransformer {
  factory _MapFromObjectObject(
      final ZacBuilder<Map<Object?, Object?>> fromMap) = _$_MapFromObjectObject;
  _MapFromObjectObject._() : super._();

  factory _MapFromObjectObject.fromJson(Map<String, dynamic> json) =
      _$_MapFromObjectObject.fromJson;

  @override
  ZacBuilder<Map<Object?, Object?>> get fromMap;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_MapFromStringObject extends _MapFromStringObject {
  _$_MapFromStringObject(this.fromMap, {final String? $type})
      : $type = $type ?? 'z:1:Transformer:Map<String, Object>.from',
        super._();

  factory _$_MapFromStringObject.fromJson(Map<String, dynamic> json) =>
      _$$_MapFromStringObjectFromJson(json);

  @override
  final ZacBuilder<Map<Object?, Object?>> fromMap;

  @JsonKey(name: 'builder')
  final String $type;

  @override
  String toString() {
    return 'MapTransformer.fromStringObject(fromMap: $fromMap)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MapFromStringObject &&
            (identical(other.fromMap, fromMap) || other.fromMap == fromMap));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, fromMap);

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
  }) {
    return fromStringObject(this);
  }
}

abstract class _MapFromStringObject extends MapTransformer {
  factory _MapFromStringObject(
      final ZacBuilder<Map<Object?, Object?>> fromMap) = _$_MapFromStringObject;
  _MapFromStringObject._() : super._();

  factory _MapFromStringObject.fromJson(Map<String, dynamic> json) =
      _$_MapFromStringObject.fromJson;

  @override
  ZacBuilder<Map<Object?, Object?>> get fromMap;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_MapFromStringNullObject extends _MapFromStringNullObject {
  _$_MapFromStringNullObject(this.fromMap, {final String? $type})
      : $type = $type ?? 'z:1:Transformer:Map<String, Object?>.from',
        super._();

  factory _$_MapFromStringNullObject.fromJson(Map<String, dynamic> json) =>
      _$$_MapFromStringNullObjectFromJson(json);

  @override
  final ZacBuilder<Map<Object?, Object?>> fromMap;

  @JsonKey(name: 'builder')
  final String $type;

  @override
  String toString() {
    return 'MapTransformer.fromStringNullObject(fromMap: $fromMap)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MapFromStringNullObject &&
            (identical(other.fromMap, fromMap) || other.fromMap == fromMap));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, fromMap);

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
  }) {
    return fromStringNullObject(this);
  }
}

abstract class _MapFromStringNullObject extends MapTransformer {
  factory _MapFromStringNullObject(
          final ZacBuilder<Map<Object?, Object?>> fromMap) =
      _$_MapFromStringNullObject;
  _MapFromStringNullObject._() : super._();

  factory _MapFromStringNullObject.fromJson(Map<String, dynamic> json) =
      _$_MapFromStringNullObject.fromJson;

  @override
  ZacBuilder<Map<Object?, Object?>> get fromMap;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_MapKey extends _MapKey {
  _$_MapKey(this.fromMap, this.key, {final String? $type})
      : $type = $type ?? 'z:1:Transformer:Map[key]',
        super._();

  factory _$_MapKey.fromJson(Map<String, dynamic> json) =>
      _$$_MapKeyFromJson(json);

  @override
  final ZacBuilder<Map<Object?, Object?>> fromMap;
  @override
  final ZacBuilder<String> key;

  @JsonKey(name: 'builder')
  final String $type;

  @override
  String toString() {
    return 'MapTransformer.key(fromMap: $fromMap, key: $key)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MapKey &&
            (identical(other.fromMap, fromMap) || other.fromMap == fromMap) &&
            (identical(other.key, key) || other.key == key));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, fromMap, key);

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
  }) {
    return key(this);
  }
}

abstract class _MapKey extends MapTransformer {
  factory _MapKey(final ZacBuilder<Map<Object?, Object?>> fromMap,
      final ZacBuilder<String> key) = _$_MapKey;
  _MapKey._() : super._();

  factory _MapKey.fromJson(Map<String, dynamic> json) = _$_MapKey.fromJson;

  @override
  ZacBuilder<Map<Object?, Object?>> get fromMap;
  ZacBuilder<String> get key;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_MapSetValueForKey extends _MapSetValueForKey {
  _$_MapSetValueForKey(
      {required this.fromMap,
      required this.value,
      required this.key,
      final String? $type})
      : $type = $type ?? 'z:1:Transformer:Map.setValueForKey',
        super._();

  factory _$_MapSetValueForKey.fromJson(Map<String, dynamic> json) =>
      _$$_MapSetValueForKeyFromJson(json);

  @override
  final ZacBuilder<Map<Object?, Object?>> fromMap;
  @override
  final ZacBuilder<Object> value;
  @override
  final ZacBuilder<String> key;

  @JsonKey(name: 'builder')
  final String $type;

  @override
  String toString() {
    return 'MapTransformer.setValueForKey(fromMap: $fromMap, value: $value, key: $key)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MapSetValueForKey &&
            (identical(other.fromMap, fromMap) || other.fromMap == fromMap) &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.key, key) || other.key == key));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, fromMap, value, key);

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
  }) {
    return setValueForKey(this);
  }
}

abstract class _MapSetValueForKey extends MapTransformer {
  factory _MapSetValueForKey(
      {required final ZacBuilder<Map<Object?, Object?>> fromMap,
      required final ZacBuilder<Object> value,
      required final ZacBuilder<String> key}) = _$_MapSetValueForKey;
  _MapSetValueForKey._() : super._();

  factory _MapSetValueForKey.fromJson(Map<String, dynamic> json) =
      _$_MapSetValueForKey.fromJson;

  @override
  ZacBuilder<Map<Object?, Object?>> get fromMap;
  ZacBuilder<Object> get value;
  ZacBuilder<String> get key;
}

IterableTransformer _$IterableTransformerFromJson(Map<String, dynamic> json) {
  switch (json['builder']) {
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
      throw CheckedFromJsonException(json, 'builder', 'IterableTransformer',
          'Invalid union type "${json['builder']}"!');
  }
}

/// @nodoc
mixin _$IterableTransformer {
  ZacBuilder<Iterable<Object?>> get iterable =>
      throw _privateConstructorUsedError;

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
      {required this.iterable, required this.transformer, final String? $type})
      : $type = $type ?? 'z:1:Transformer:Iterable.map',
        super._();

  factory _$_IterableMap.fromJson(Map<String, dynamic> json) =>
      _$$_IterableMapFromJson(json);

  @override
  final ZacBuilder<Iterable<Object?>> iterable;
  @override
  final ZacBuilder<List<ZacTransform>> transformer;

  @JsonKey(name: 'builder')
  final String $type;

  @override
  String toString() {
    return 'IterableTransformer.map(iterable: $iterable, transformer: $transformer)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_IterableMap &&
            (identical(other.iterable, iterable) ||
                other.iterable == iterable) &&
            (identical(other.transformer, transformer) ||
                other.transformer == transformer));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, iterable, transformer);

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
  factory _IterableMap(
          {required final ZacBuilder<Iterable<Object?>> iterable,
          required final ZacBuilder<List<ZacTransform>> transformer}) =
      _$_IterableMap;
  _IterableMap._() : super._();

  factory _IterableMap.fromJson(Map<String, dynamic> json) =
      _$_IterableMap.fromJson;

  @override
  ZacBuilder<Iterable<Object?>> get iterable;
  ZacBuilder<List<ZacTransform>> get transformer;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_IterableSingle extends _IterableSingle {
  _$_IterableSingle(this.iterable, {final String? $type})
      : $type = $type ?? 'z:1:Transformer:Iterable.single',
        super._();

  factory _$_IterableSingle.fromJson(Map<String, dynamic> json) =>
      _$$_IterableSingleFromJson(json);

  @override
  final ZacBuilder<Iterable<Object?>> iterable;

  @JsonKey(name: 'builder')
  final String $type;

  @override
  String toString() {
    return 'IterableTransformer.single(iterable: $iterable)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_IterableSingle &&
            (identical(other.iterable, iterable) ||
                other.iterable == iterable));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, iterable);

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
  factory _IterableSingle(final ZacBuilder<Iterable<Object?>> iterable) =
      _$_IterableSingle;
  _IterableSingle._() : super._();

  factory _IterableSingle.fromJson(Map<String, dynamic> json) =
      _$_IterableSingle.fromJson;

  @override
  ZacBuilder<Iterable<Object?>> get iterable;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_IterableFirst extends _IterableFirst {
  _$_IterableFirst(this.iterable, {final String? $type})
      : $type = $type ?? 'z:1:Transformer:Iterable.first',
        super._();

  factory _$_IterableFirst.fromJson(Map<String, dynamic> json) =>
      _$$_IterableFirstFromJson(json);

  @override
  final ZacBuilder<Iterable<Object?>> iterable;

  @JsonKey(name: 'builder')
  final String $type;

  @override
  String toString() {
    return 'IterableTransformer.first(iterable: $iterable)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_IterableFirst &&
            (identical(other.iterable, iterable) ||
                other.iterable == iterable));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, iterable);

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
  factory _IterableFirst(final ZacBuilder<Iterable<Object?>> iterable) =
      _$_IterableFirst;
  _IterableFirst._() : super._();

  factory _IterableFirst.fromJson(Map<String, dynamic> json) =
      _$_IterableFirst.fromJson;

  @override
  ZacBuilder<Iterable<Object?>> get iterable;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_IterableLast extends _IterableLast {
  _$_IterableLast(this.iterable, {final String? $type})
      : $type = $type ?? 'z:1:Transformer:Iterable.last',
        super._();

  factory _$_IterableLast.fromJson(Map<String, dynamic> json) =>
      _$$_IterableLastFromJson(json);

  @override
  final ZacBuilder<Iterable<Object?>> iterable;

  @JsonKey(name: 'builder')
  final String $type;

  @override
  String toString() {
    return 'IterableTransformer.last(iterable: $iterable)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_IterableLast &&
            (identical(other.iterable, iterable) ||
                other.iterable == iterable));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, iterable);

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
  factory _IterableLast(final ZacBuilder<Iterable<Object?>> iterable) =
      _$_IterableLast;
  _IterableLast._() : super._();

  factory _IterableLast.fromJson(Map<String, dynamic> json) =
      _$_IterableLast.fromJson;

  @override
  ZacBuilder<Iterable<Object?>> get iterable;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_IterableLength extends _IterableLength {
  _$_IterableLength(this.iterable, {final String? $type})
      : $type = $type ?? 'z:1:Transformer:Iterable.length',
        super._();

  factory _$_IterableLength.fromJson(Map<String, dynamic> json) =>
      _$$_IterableLengthFromJson(json);

  @override
  final ZacBuilder<Iterable<Object?>> iterable;

  @JsonKey(name: 'builder')
  final String $type;

  @override
  String toString() {
    return 'IterableTransformer.length(iterable: $iterable)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_IterableLength &&
            (identical(other.iterable, iterable) ||
                other.iterable == iterable));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, iterable);

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
  factory _IterableLength(final ZacBuilder<Iterable<Object?>> iterable) =
      _$_IterableLength;
  _IterableLength._() : super._();

  factory _IterableLength.fromJson(Map<String, dynamic> json) =
      _$_IterableLength.fromJson;

  @override
  ZacBuilder<Iterable<Object?>> get iterable;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_IterableIsEmpty extends _IterableIsEmpty {
  _$_IterableIsEmpty(this.iterable, {final String? $type})
      : $type = $type ?? 'z:1:Transformer:Iterable.isEmpty',
        super._();

  factory _$_IterableIsEmpty.fromJson(Map<String, dynamic> json) =>
      _$$_IterableIsEmptyFromJson(json);

  @override
  final ZacBuilder<Iterable<Object?>> iterable;

  @JsonKey(name: 'builder')
  final String $type;

  @override
  String toString() {
    return 'IterableTransformer.isEmpty(iterable: $iterable)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_IterableIsEmpty &&
            (identical(other.iterable, iterable) ||
                other.iterable == iterable));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, iterable);

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
  factory _IterableIsEmpty(final ZacBuilder<Iterable<Object?>> iterable) =
      _$_IterableIsEmpty;
  _IterableIsEmpty._() : super._();

  factory _IterableIsEmpty.fromJson(Map<String, dynamic> json) =
      _$_IterableIsEmpty.fromJson;

  @override
  ZacBuilder<Iterable<Object?>> get iterable;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_IterableIsNotEmpty extends _IterableIsNotEmpty {
  _$_IterableIsNotEmpty(this.iterable, {final String? $type})
      : $type = $type ?? 'z:1:Transformer:Iterable.isNotEmpty',
        super._();

  factory _$_IterableIsNotEmpty.fromJson(Map<String, dynamic> json) =>
      _$$_IterableIsNotEmptyFromJson(json);

  @override
  final ZacBuilder<Iterable<Object?>> iterable;

  @JsonKey(name: 'builder')
  final String $type;

  @override
  String toString() {
    return 'IterableTransformer.isNotEmpty(iterable: $iterable)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_IterableIsNotEmpty &&
            (identical(other.iterable, iterable) ||
                other.iterable == iterable));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, iterable);

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
  factory _IterableIsNotEmpty(final ZacBuilder<Iterable<Object?>> iterable) =
      _$_IterableIsNotEmpty;
  _IterableIsNotEmpty._() : super._();

  factory _IterableIsNotEmpty.fromJson(Map<String, dynamic> json) =
      _$_IterableIsNotEmpty.fromJson;

  @override
  ZacBuilder<Iterable<Object?>> get iterable;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_IterableToList extends _IterableToList {
  _$_IterableToList(this.iterable, {final String? $type})
      : $type = $type ?? 'z:1:Transformer:Iterable.toList',
        super._();

  factory _$_IterableToList.fromJson(Map<String, dynamic> json) =>
      _$$_IterableToListFromJson(json);

  @override
  final ZacBuilder<Iterable<Object?>> iterable;

  @JsonKey(name: 'builder')
  final String $type;

  @override
  String toString() {
    return 'IterableTransformer.toList(iterable: $iterable)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_IterableToList &&
            (identical(other.iterable, iterable) ||
                other.iterable == iterable));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, iterable);

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
  factory _IterableToList(final ZacBuilder<Iterable<Object?>> iterable) =
      _$_IterableToList;
  _IterableToList._() : super._();

  factory _IterableToList.fromJson(Map<String, dynamic> json) =
      _$_IterableToList.fromJson;

  @override
  ZacBuilder<Iterable<Object?>> get iterable;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_IterableToSet extends _IterableToSet {
  _$_IterableToSet(this.iterable, {final String? $type})
      : $type = $type ?? 'z:1:Transformer:Iterable.toSet',
        super._();

  factory _$_IterableToSet.fromJson(Map<String, dynamic> json) =>
      _$$_IterableToSetFromJson(json);

  @override
  final ZacBuilder<Iterable<Object?>> iterable;

  @JsonKey(name: 'builder')
  final String $type;

  @override
  String toString() {
    return 'IterableTransformer.toSet(iterable: $iterable)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_IterableToSet &&
            (identical(other.iterable, iterable) ||
                other.iterable == iterable));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, iterable);

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
  factory _IterableToSet(final ZacBuilder<Iterable<Object?>> iterable) =
      _$_IterableToSet;
  _IterableToSet._() : super._();

  factory _IterableToSet.fromJson(Map<String, dynamic> json) =
      _$_IterableToSet.fromJson;

  @override
  ZacBuilder<Iterable<Object?>> get iterable;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_IterableToString extends _IterableToString {
  _$_IterableToString(this.iterable, {final String? $type})
      : $type = $type ?? 'z:1:Transformer:Iterable.toString',
        super._();

  factory _$_IterableToString.fromJson(Map<String, dynamic> json) =>
      _$$_IterableToStringFromJson(json);

  @override
  final ZacBuilder<Iterable<Object?>> iterable;

  @JsonKey(name: 'builder')
  final String $type;

  @override
  String toString() {
    return 'IterableTransformer.toString(iterable: $iterable)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_IterableToString &&
            (identical(other.iterable, iterable) ||
                other.iterable == iterable));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, iterable);

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
  factory _IterableToString(final ZacBuilder<Iterable<Object?>> iterable) =
      _$_IterableToString;
  _IterableToString._() : super._();

  factory _IterableToString.fromJson(Map<String, dynamic> json) =
      _$_IterableToString.fromJson;

  @override
  ZacBuilder<Iterable<Object?>> get iterable;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_IterableJoin extends _IterableJoin {
  _$_IterableJoin(this.iterable, {this.separator, final String? $type})
      : $type = $type ?? 'z:1:Transformer:Iterable.join',
        super._();

  factory _$_IterableJoin.fromJson(Map<String, dynamic> json) =>
      _$$_IterableJoinFromJson(json);

  @override
  final ZacBuilder<Iterable<Object?>> iterable;
  @override
  final String? separator;

  @JsonKey(name: 'builder')
  final String $type;

  @override
  String toString() {
    return 'IterableTransformer.join(iterable: $iterable, separator: $separator)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_IterableJoin &&
            (identical(other.iterable, iterable) ||
                other.iterable == iterable) &&
            (identical(other.separator, separator) ||
                other.separator == separator));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, iterable, separator);

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
  factory _IterableJoin(final ZacBuilder<Iterable<Object?>> iterable,
      {final String? separator}) = _$_IterableJoin;
  _IterableJoin._() : super._();

  factory _IterableJoin.fromJson(Map<String, dynamic> json) =
      _$_IterableJoin.fromJson;

  @override
  ZacBuilder<Iterable<Object?>> get iterable;
  String? get separator;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_IterableContains extends _IterableContains {
  _$_IterableContains(this.iterable, this.element, {final String? $type})
      : $type = $type ?? 'z:1:Transformer:Iterable.contains',
        super._();

  factory _$_IterableContains.fromJson(Map<String, dynamic> json) =>
      _$$_IterableContainsFromJson(json);

  @override
  final ZacBuilder<Iterable<Object?>> iterable;
  @override
  final ZacBuilder<Object?>? element;

  @JsonKey(name: 'builder')
  final String $type;

  @override
  String toString() {
    return 'IterableTransformer.contains(iterable: $iterable, element: $element)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_IterableContains &&
            (identical(other.iterable, iterable) ||
                other.iterable == iterable) &&
            (identical(other.element, element) || other.element == element));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, iterable, element);

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
  factory _IterableContains(final ZacBuilder<Iterable<Object?>> iterable,
      final ZacBuilder<Object?>? element) = _$_IterableContains;
  _IterableContains._() : super._();

  factory _IterableContains.fromJson(Map<String, dynamic> json) =
      _$_IterableContains.fromJson;

  @override
  ZacBuilder<Iterable<Object?>> get iterable;
  ZacBuilder<Object?>? get element;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_IterableElementAt extends _IterableElementAt {
  _$_IterableElementAt(this.iterable, this.index, {final String? $type})
      : $type = $type ?? 'z:1:Transformer:Iterable.elementAt',
        super._();

  factory _$_IterableElementAt.fromJson(Map<String, dynamic> json) =>
      _$$_IterableElementAtFromJson(json);

  @override
  final ZacBuilder<Iterable<Object?>> iterable;
  @override
  final int index;

  @JsonKey(name: 'builder')
  final String $type;

  @override
  String toString() {
    return 'IterableTransformer.elementAt(iterable: $iterable, index: $index)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_IterableElementAt &&
            (identical(other.iterable, iterable) ||
                other.iterable == iterable) &&
            (identical(other.index, index) || other.index == index));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, iterable, index);

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
  factory _IterableElementAt(
          final ZacBuilder<Iterable<Object?>> iterable, final int index) =
      _$_IterableElementAt;
  _IterableElementAt._() : super._();

  factory _IterableElementAt.fromJson(Map<String, dynamic> json) =
      _$_IterableElementAt.fromJson;

  @override
  ZacBuilder<Iterable<Object?>> get iterable;
  int get index;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_IterableSkip extends _IterableSkip {
  _$_IterableSkip(this.iterable, this.count, {final String? $type})
      : $type = $type ?? 'z:1:Transformer:Iterable.skip',
        super._();

  factory _$_IterableSkip.fromJson(Map<String, dynamic> json) =>
      _$$_IterableSkipFromJson(json);

  @override
  final ZacBuilder<Iterable<Object?>> iterable;
  @override
  final int count;

  @JsonKey(name: 'builder')
  final String $type;

  @override
  String toString() {
    return 'IterableTransformer.skip(iterable: $iterable, count: $count)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_IterableSkip &&
            (identical(other.iterable, iterable) ||
                other.iterable == iterable) &&
            (identical(other.count, count) || other.count == count));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, iterable, count);

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
  factory _IterableSkip(
          final ZacBuilder<Iterable<Object?>> iterable, final int count) =
      _$_IterableSkip;
  _IterableSkip._() : super._();

  factory _IterableSkip.fromJson(Map<String, dynamic> json) =
      _$_IterableSkip.fromJson;

  @override
  ZacBuilder<Iterable<Object?>> get iterable;
  int get count;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_IterableTake extends _IterableTake {
  _$_IterableTake(this.iterable, this.count, {final String? $type})
      : $type = $type ?? 'z:1:Transformer:Iterable.take',
        super._();

  factory _$_IterableTake.fromJson(Map<String, dynamic> json) =>
      _$$_IterableTakeFromJson(json);

  @override
  final ZacBuilder<Iterable<Object?>> iterable;
  @override
  final int count;

  @JsonKey(name: 'builder')
  final String $type;

  @override
  String toString() {
    return 'IterableTransformer.take(iterable: $iterable, count: $count)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_IterableTake &&
            (identical(other.iterable, iterable) ||
                other.iterable == iterable) &&
            (identical(other.count, count) || other.count == count));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, iterable, count);

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
  factory _IterableTake(
          final ZacBuilder<Iterable<Object?>> iterable, final int count) =
      _$_IterableTake;
  _IterableTake._() : super._();

  factory _IterableTake.fromJson(Map<String, dynamic> json) =
      _$_IterableTake.fromJson;

  @override
  ZacBuilder<Iterable<Object?>> get iterable;
  int get count;
}

ListTransformer _$ListTransformerFromJson(Map<String, dynamic> json) {
  switch (json['builder']) {
    case 'z:1:Transformer:List.reversed':
      return _ListReversed.fromJson(json);
    case 'z:1:Transformer:List.add':
      return _ListAdd.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'builder', 'ListTransformer',
          'Invalid union type "${json['builder']}"!');
  }
}

/// @nodoc
mixin _$ListTransformer {
  ZacBuilder<List<Object?>> get list => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ListReversed value) reversed,
    required TResult Function(_ListAdd value) add,
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_ListReversed extends _ListReversed {
  _$_ListReversed(this.list, {final String? $type})
      : $type = $type ?? 'z:1:Transformer:List.reversed',
        super._();

  factory _$_ListReversed.fromJson(Map<String, dynamic> json) =>
      _$$_ListReversedFromJson(json);

  @override
  final ZacBuilder<List<Object?>> list;

  @JsonKey(name: 'builder')
  final String $type;

  @override
  String toString() {
    return 'ListTransformer.reversed(list: $list)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ListReversed &&
            (identical(other.list, list) || other.list == list));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, list);

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ListReversed value) reversed,
    required TResult Function(_ListAdd value) add,
  }) {
    return reversed(this);
  }
}

abstract class _ListReversed extends ListTransformer {
  factory _ListReversed(final ZacBuilder<List<Object?>> list) = _$_ListReversed;
  _ListReversed._() : super._();

  factory _ListReversed.fromJson(Map<String, dynamic> json) =
      _$_ListReversed.fromJson;

  @override
  ZacBuilder<List<Object?>> get list;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_ListAdd extends _ListAdd {
  _$_ListAdd(this.list, this.value, {final String? $type})
      : $type = $type ?? 'z:1:Transformer:List.add',
        super._();

  factory _$_ListAdd.fromJson(Map<String, dynamic> json) =>
      _$$_ListAddFromJson(json);

  @override
  final ZacBuilder<List<Object?>> list;
  @override
  final ZacBuilder<Object?> value;

  @JsonKey(name: 'builder')
  final String $type;

  @override
  String toString() {
    return 'ListTransformer.add(list: $list, value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ListAdd &&
            (identical(other.list, list) || other.list == list) &&
            (identical(other.value, value) || other.value == value));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, list, value);

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ListReversed value) reversed,
    required TResult Function(_ListAdd value) add,
  }) {
    return add(this);
  }
}

abstract class _ListAdd extends ListTransformer {
  factory _ListAdd(final ZacBuilder<List<Object?>> list,
      final ZacBuilder<Object?> value) = _$_ListAdd;
  _ListAdd._() : super._();

  factory _ListAdd.fromJson(Map<String, dynamic> json) = _$_ListAdd.fromJson;

  @override
  ZacBuilder<List<Object?>> get list;
  ZacBuilder<Object?> get value;
}

ObjectTransformer _$ObjectTransformerFromJson(Map<String, dynamic> json) {
  switch (json['builder']) {
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

    default:
      throw CheckedFromJsonException(json, 'builder', 'ObjectTransformer',
          'Invalid union type "${json['builder']}"!');
  }
}

/// @nodoc
mixin _$ObjectTransformer {
  ZacBuilder<Object?> get object => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ObjectIsList value) isList,
    required TResult Function(_ObjectIsMap value) isMap,
    required TResult Function(_ObjectIsBool value) isBool,
    required TResult Function(_ObjectIsString value) isString,
    required TResult Function(_ObjectIsDouble value) isDouble,
    required TResult Function(_ObjectIsInt value) isInt,
    required TResult Function(_ObjectIsNull value) isNull,
    required TResult Function(_ObjectEquals value) equals,
    required TResult Function(_ObjectToString value) toString,
    required TResult Function(_ObjectRuntimeType value) runtimeType,
    required TResult Function(_ObjectHashCode value) hashCode,
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_ObjectIsList extends _ObjectIsList {
  _$_ObjectIsList(this.object, {final String? $type})
      : $type = $type ?? 'z:1:Transformer:Object.isList',
        super._();

  factory _$_ObjectIsList.fromJson(Map<String, dynamic> json) =>
      _$$_ObjectIsListFromJson(json);

  @override
  final ZacBuilder<Object?> object;

  @JsonKey(name: 'builder')
  final String $type;

  @override
  String toString() {
    return 'ObjectTransformer.isList(object: $object)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ObjectIsList &&
            (identical(other.object, object) || other.object == object));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, object);

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ObjectIsList value) isList,
    required TResult Function(_ObjectIsMap value) isMap,
    required TResult Function(_ObjectIsBool value) isBool,
    required TResult Function(_ObjectIsString value) isString,
    required TResult Function(_ObjectIsDouble value) isDouble,
    required TResult Function(_ObjectIsInt value) isInt,
    required TResult Function(_ObjectIsNull value) isNull,
    required TResult Function(_ObjectEquals value) equals,
    required TResult Function(_ObjectToString value) toString,
    required TResult Function(_ObjectRuntimeType value) runtimeType,
    required TResult Function(_ObjectHashCode value) hashCode,
  }) {
    return isList(this);
  }
}

abstract class _ObjectIsList extends ObjectTransformer {
  factory _ObjectIsList(final ZacBuilder<Object?> object) = _$_ObjectIsList;
  _ObjectIsList._() : super._();

  factory _ObjectIsList.fromJson(Map<String, dynamic> json) =
      _$_ObjectIsList.fromJson;

  @override
  ZacBuilder<Object?> get object;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_ObjectIsMap extends _ObjectIsMap {
  _$_ObjectIsMap(this.object, {final String? $type})
      : $type = $type ?? 'z:1:Transformer:Object.isMap',
        super._();

  factory _$_ObjectIsMap.fromJson(Map<String, dynamic> json) =>
      _$$_ObjectIsMapFromJson(json);

  @override
  final ZacBuilder<Object?> object;

  @JsonKey(name: 'builder')
  final String $type;

  @override
  String toString() {
    return 'ObjectTransformer.isMap(object: $object)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ObjectIsMap &&
            (identical(other.object, object) || other.object == object));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, object);

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ObjectIsList value) isList,
    required TResult Function(_ObjectIsMap value) isMap,
    required TResult Function(_ObjectIsBool value) isBool,
    required TResult Function(_ObjectIsString value) isString,
    required TResult Function(_ObjectIsDouble value) isDouble,
    required TResult Function(_ObjectIsInt value) isInt,
    required TResult Function(_ObjectIsNull value) isNull,
    required TResult Function(_ObjectEquals value) equals,
    required TResult Function(_ObjectToString value) toString,
    required TResult Function(_ObjectRuntimeType value) runtimeType,
    required TResult Function(_ObjectHashCode value) hashCode,
  }) {
    return isMap(this);
  }
}

abstract class _ObjectIsMap extends ObjectTransformer {
  factory _ObjectIsMap(final ZacBuilder<Object?> object) = _$_ObjectIsMap;
  _ObjectIsMap._() : super._();

  factory _ObjectIsMap.fromJson(Map<String, dynamic> json) =
      _$_ObjectIsMap.fromJson;

  @override
  ZacBuilder<Object?> get object;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_ObjectIsBool extends _ObjectIsBool {
  _$_ObjectIsBool(this.object, {final String? $type})
      : $type = $type ?? 'z:1:Transformer:Object.isBool',
        super._();

  factory _$_ObjectIsBool.fromJson(Map<String, dynamic> json) =>
      _$$_ObjectIsBoolFromJson(json);

  @override
  final ZacBuilder<Object?> object;

  @JsonKey(name: 'builder')
  final String $type;

  @override
  String toString() {
    return 'ObjectTransformer.isBool(object: $object)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ObjectIsBool &&
            (identical(other.object, object) || other.object == object));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, object);

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ObjectIsList value) isList,
    required TResult Function(_ObjectIsMap value) isMap,
    required TResult Function(_ObjectIsBool value) isBool,
    required TResult Function(_ObjectIsString value) isString,
    required TResult Function(_ObjectIsDouble value) isDouble,
    required TResult Function(_ObjectIsInt value) isInt,
    required TResult Function(_ObjectIsNull value) isNull,
    required TResult Function(_ObjectEquals value) equals,
    required TResult Function(_ObjectToString value) toString,
    required TResult Function(_ObjectRuntimeType value) runtimeType,
    required TResult Function(_ObjectHashCode value) hashCode,
  }) {
    return isBool(this);
  }
}

abstract class _ObjectIsBool extends ObjectTransformer {
  factory _ObjectIsBool(final ZacBuilder<Object?> object) = _$_ObjectIsBool;
  _ObjectIsBool._() : super._();

  factory _ObjectIsBool.fromJson(Map<String, dynamic> json) =
      _$_ObjectIsBool.fromJson;

  @override
  ZacBuilder<Object?> get object;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_ObjectIsString extends _ObjectIsString {
  _$_ObjectIsString(this.object, {final String? $type})
      : $type = $type ?? 'z:1:Transformer:Object.isString',
        super._();

  factory _$_ObjectIsString.fromJson(Map<String, dynamic> json) =>
      _$$_ObjectIsStringFromJson(json);

  @override
  final ZacBuilder<Object?> object;

  @JsonKey(name: 'builder')
  final String $type;

  @override
  String toString() {
    return 'ObjectTransformer.isString(object: $object)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ObjectIsString &&
            (identical(other.object, object) || other.object == object));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, object);

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ObjectIsList value) isList,
    required TResult Function(_ObjectIsMap value) isMap,
    required TResult Function(_ObjectIsBool value) isBool,
    required TResult Function(_ObjectIsString value) isString,
    required TResult Function(_ObjectIsDouble value) isDouble,
    required TResult Function(_ObjectIsInt value) isInt,
    required TResult Function(_ObjectIsNull value) isNull,
    required TResult Function(_ObjectEquals value) equals,
    required TResult Function(_ObjectToString value) toString,
    required TResult Function(_ObjectRuntimeType value) runtimeType,
    required TResult Function(_ObjectHashCode value) hashCode,
  }) {
    return isString(this);
  }
}

abstract class _ObjectIsString extends ObjectTransformer {
  factory _ObjectIsString(final ZacBuilder<Object?> object) = _$_ObjectIsString;
  _ObjectIsString._() : super._();

  factory _ObjectIsString.fromJson(Map<String, dynamic> json) =
      _$_ObjectIsString.fromJson;

  @override
  ZacBuilder<Object?> get object;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_ObjectIsDouble extends _ObjectIsDouble {
  _$_ObjectIsDouble(this.object, {final String? $type})
      : $type = $type ?? 'z:1:Transformer:Object.isDouble',
        super._();

  factory _$_ObjectIsDouble.fromJson(Map<String, dynamic> json) =>
      _$$_ObjectIsDoubleFromJson(json);

  @override
  final ZacBuilder<Object?> object;

  @JsonKey(name: 'builder')
  final String $type;

  @override
  String toString() {
    return 'ObjectTransformer.isDouble(object: $object)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ObjectIsDouble &&
            (identical(other.object, object) || other.object == object));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, object);

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ObjectIsList value) isList,
    required TResult Function(_ObjectIsMap value) isMap,
    required TResult Function(_ObjectIsBool value) isBool,
    required TResult Function(_ObjectIsString value) isString,
    required TResult Function(_ObjectIsDouble value) isDouble,
    required TResult Function(_ObjectIsInt value) isInt,
    required TResult Function(_ObjectIsNull value) isNull,
    required TResult Function(_ObjectEquals value) equals,
    required TResult Function(_ObjectToString value) toString,
    required TResult Function(_ObjectRuntimeType value) runtimeType,
    required TResult Function(_ObjectHashCode value) hashCode,
  }) {
    return isDouble(this);
  }
}

abstract class _ObjectIsDouble extends ObjectTransformer {
  factory _ObjectIsDouble(final ZacBuilder<Object?> object) = _$_ObjectIsDouble;
  _ObjectIsDouble._() : super._();

  factory _ObjectIsDouble.fromJson(Map<String, dynamic> json) =
      _$_ObjectIsDouble.fromJson;

  @override
  ZacBuilder<Object?> get object;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_ObjectIsInt extends _ObjectIsInt {
  _$_ObjectIsInt(this.object, {final String? $type})
      : $type = $type ?? 'z:1:Transformer:Object.isInt',
        super._();

  factory _$_ObjectIsInt.fromJson(Map<String, dynamic> json) =>
      _$$_ObjectIsIntFromJson(json);

  @override
  final ZacBuilder<Object?> object;

  @JsonKey(name: 'builder')
  final String $type;

  @override
  String toString() {
    return 'ObjectTransformer.isInt(object: $object)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ObjectIsInt &&
            (identical(other.object, object) || other.object == object));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, object);

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ObjectIsList value) isList,
    required TResult Function(_ObjectIsMap value) isMap,
    required TResult Function(_ObjectIsBool value) isBool,
    required TResult Function(_ObjectIsString value) isString,
    required TResult Function(_ObjectIsDouble value) isDouble,
    required TResult Function(_ObjectIsInt value) isInt,
    required TResult Function(_ObjectIsNull value) isNull,
    required TResult Function(_ObjectEquals value) equals,
    required TResult Function(_ObjectToString value) toString,
    required TResult Function(_ObjectRuntimeType value) runtimeType,
    required TResult Function(_ObjectHashCode value) hashCode,
  }) {
    return isInt(this);
  }
}

abstract class _ObjectIsInt extends ObjectTransformer {
  factory _ObjectIsInt(final ZacBuilder<Object?> object) = _$_ObjectIsInt;
  _ObjectIsInt._() : super._();

  factory _ObjectIsInt.fromJson(Map<String, dynamic> json) =
      _$_ObjectIsInt.fromJson;

  @override
  ZacBuilder<Object?> get object;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_ObjectIsNull extends _ObjectIsNull {
  _$_ObjectIsNull(this.object, {final String? $type})
      : $type = $type ?? 'z:1:Transformer:Object.isNull',
        super._();

  factory _$_ObjectIsNull.fromJson(Map<String, dynamic> json) =>
      _$$_ObjectIsNullFromJson(json);

  @override
  final ZacBuilder<Object?> object;

  @JsonKey(name: 'builder')
  final String $type;

  @override
  String toString() {
    return 'ObjectTransformer.isNull(object: $object)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ObjectIsNull &&
            (identical(other.object, object) || other.object == object));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, object);

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ObjectIsList value) isList,
    required TResult Function(_ObjectIsMap value) isMap,
    required TResult Function(_ObjectIsBool value) isBool,
    required TResult Function(_ObjectIsString value) isString,
    required TResult Function(_ObjectIsDouble value) isDouble,
    required TResult Function(_ObjectIsInt value) isInt,
    required TResult Function(_ObjectIsNull value) isNull,
    required TResult Function(_ObjectEquals value) equals,
    required TResult Function(_ObjectToString value) toString,
    required TResult Function(_ObjectRuntimeType value) runtimeType,
    required TResult Function(_ObjectHashCode value) hashCode,
  }) {
    return isNull(this);
  }
}

abstract class _ObjectIsNull extends ObjectTransformer {
  factory _ObjectIsNull(final ZacBuilder<Object?> object) = _$_ObjectIsNull;
  _ObjectIsNull._() : super._();

  factory _ObjectIsNull.fromJson(Map<String, dynamic> json) =
      _$_ObjectIsNull.fromJson;

  @override
  ZacBuilder<Object?> get object;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_ObjectEquals extends _ObjectEquals {
  _$_ObjectEquals(
      {required this.object, required this.other, final String? $type})
      : $type = $type ?? 'z:1:Transformer:Object.equals',
        super._();

  factory _$_ObjectEquals.fromJson(Map<String, dynamic> json) =>
      _$$_ObjectEqualsFromJson(json);

  @override
  final ZacBuilder<Object?> object;
  @override
  final ZacBuilder<Object?> other;

  @JsonKey(name: 'builder')
  final String $type;

  @override
  String toString() {
    return 'ObjectTransformer.equals(object: $object, other: $other)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ObjectEquals &&
            (identical(other.object, object) || other.object == object) &&
            (identical(other.other, this.other) || other.other == this.other));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, object, other);

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ObjectIsList value) isList,
    required TResult Function(_ObjectIsMap value) isMap,
    required TResult Function(_ObjectIsBool value) isBool,
    required TResult Function(_ObjectIsString value) isString,
    required TResult Function(_ObjectIsDouble value) isDouble,
    required TResult Function(_ObjectIsInt value) isInt,
    required TResult Function(_ObjectIsNull value) isNull,
    required TResult Function(_ObjectEquals value) equals,
    required TResult Function(_ObjectToString value) toString,
    required TResult Function(_ObjectRuntimeType value) runtimeType,
    required TResult Function(_ObjectHashCode value) hashCode,
  }) {
    return equals(this);
  }
}

abstract class _ObjectEquals extends ObjectTransformer {
  factory _ObjectEquals(
      {required final ZacBuilder<Object?> object,
      required final ZacBuilder<Object?> other}) = _$_ObjectEquals;
  _ObjectEquals._() : super._();

  factory _ObjectEquals.fromJson(Map<String, dynamic> json) =
      _$_ObjectEquals.fromJson;

  @override
  ZacBuilder<Object?> get object;
  ZacBuilder<Object?> get other;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_ObjectToString extends _ObjectToString {
  _$_ObjectToString(this.object, {final String? $type})
      : $type = $type ?? 'z:1:Transformer:Object.toString',
        super._();

  factory _$_ObjectToString.fromJson(Map<String, dynamic> json) =>
      _$$_ObjectToStringFromJson(json);

  @override
  final ZacBuilder<Object?> object;

  @JsonKey(name: 'builder')
  final String $type;

  @override
  String toString() {
    return 'ObjectTransformer.toString(object: $object)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ObjectToString &&
            (identical(other.object, object) || other.object == object));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, object);

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ObjectIsList value) isList,
    required TResult Function(_ObjectIsMap value) isMap,
    required TResult Function(_ObjectIsBool value) isBool,
    required TResult Function(_ObjectIsString value) isString,
    required TResult Function(_ObjectIsDouble value) isDouble,
    required TResult Function(_ObjectIsInt value) isInt,
    required TResult Function(_ObjectIsNull value) isNull,
    required TResult Function(_ObjectEquals value) equals,
    required TResult Function(_ObjectToString value) toString,
    required TResult Function(_ObjectRuntimeType value) runtimeType,
    required TResult Function(_ObjectHashCode value) hashCode,
  }) {
    return toString(this);
  }
}

abstract class _ObjectToString extends ObjectTransformer {
  factory _ObjectToString(final ZacBuilder<Object?> object) = _$_ObjectToString;
  _ObjectToString._() : super._();

  factory _ObjectToString.fromJson(Map<String, dynamic> json) =
      _$_ObjectToString.fromJson;

  @override
  ZacBuilder<Object?> get object;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_ObjectRuntimeType extends _ObjectRuntimeType {
  _$_ObjectRuntimeType(this.object, {final String? $type})
      : $type = $type ?? 'z:1:Transformer:Object.runtimeType',
        super._();

  factory _$_ObjectRuntimeType.fromJson(Map<String, dynamic> json) =>
      _$$_ObjectRuntimeTypeFromJson(json);

  @override
  final ZacBuilder<Object?> object;

  @JsonKey(name: 'builder')
  final String $type;

  @override
  String toString() {
    return 'ObjectTransformer.runtimeType(object: $object)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ObjectRuntimeType &&
            (identical(other.object, object) || other.object == object));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, object);

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ObjectIsList value) isList,
    required TResult Function(_ObjectIsMap value) isMap,
    required TResult Function(_ObjectIsBool value) isBool,
    required TResult Function(_ObjectIsString value) isString,
    required TResult Function(_ObjectIsDouble value) isDouble,
    required TResult Function(_ObjectIsInt value) isInt,
    required TResult Function(_ObjectIsNull value) isNull,
    required TResult Function(_ObjectEquals value) equals,
    required TResult Function(_ObjectToString value) toString,
    required TResult Function(_ObjectRuntimeType value) runtimeType,
    required TResult Function(_ObjectHashCode value) hashCode,
  }) {
    return runtimeType(this);
  }
}

abstract class _ObjectRuntimeType extends ObjectTransformer {
  factory _ObjectRuntimeType(final ZacBuilder<Object?> object) =
      _$_ObjectRuntimeType;
  _ObjectRuntimeType._() : super._();

  factory _ObjectRuntimeType.fromJson(Map<String, dynamic> json) =
      _$_ObjectRuntimeType.fromJson;

  @override
  ZacBuilder<Object?> get object;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_ObjectHashCode extends _ObjectHashCode {
  _$_ObjectHashCode(this.object, {final String? $type})
      : $type = $type ?? 'z:1:Transformer:Object.hashCode',
        super._();

  factory _$_ObjectHashCode.fromJson(Map<String, dynamic> json) =>
      _$$_ObjectHashCodeFromJson(json);

  @override
  final ZacBuilder<Object?> object;

  @JsonKey(name: 'builder')
  final String $type;

  @override
  String toString() {
    return 'ObjectTransformer.hashCode(object: $object)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ObjectHashCode &&
            (identical(other.object, object) || other.object == object));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, object);

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ObjectIsList value) isList,
    required TResult Function(_ObjectIsMap value) isMap,
    required TResult Function(_ObjectIsBool value) isBool,
    required TResult Function(_ObjectIsString value) isString,
    required TResult Function(_ObjectIsDouble value) isDouble,
    required TResult Function(_ObjectIsInt value) isInt,
    required TResult Function(_ObjectIsNull value) isNull,
    required TResult Function(_ObjectEquals value) equals,
    required TResult Function(_ObjectToString value) toString,
    required TResult Function(_ObjectRuntimeType value) runtimeType,
    required TResult Function(_ObjectHashCode value) hashCode,
  }) {
    return hashCode(this);
  }
}

abstract class _ObjectHashCode extends ObjectTransformer {
  factory _ObjectHashCode(final ZacBuilder<Object?> object) = _$_ObjectHashCode;
  _ObjectHashCode._() : super._();

  factory _ObjectHashCode.fromJson(Map<String, dynamic> json) =
      _$_ObjectHashCode.fromJson;

  @override
  ZacBuilder<Object?> get object;
}

NumTransformer _$NumTransformerFromJson(Map<String, dynamic> json) {
  switch (json['builder']) {
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
      throw CheckedFromJsonException(json, 'builder', 'NumTransformer',
          'Invalid union type "${json['builder']}"!');
  }
}

/// @nodoc
mixin _$NumTransformer {
  ZacBuilder<num> get number => throw _privateConstructorUsedError;

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
  _$_NumToDouble(this.number, {final String? $type})
      : $type = $type ?? 'z:1:Transformer:num.toDouble',
        super._();

  factory _$_NumToDouble.fromJson(Map<String, dynamic> json) =>
      _$$_NumToDoubleFromJson(json);

  @override
  final ZacBuilder<num> number;

  @JsonKey(name: 'builder')
  final String $type;

  @override
  String toString() {
    return 'NumTransformer.toDouble(number: $number)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NumToDouble &&
            (identical(other.number, number) || other.number == number));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, number);

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
  factory _NumToDouble(final ZacBuilder<num> number) = _$_NumToDouble;
  _NumToDouble._() : super._();

  factory _NumToDouble.fromJson(Map<String, dynamic> json) =
      _$_NumToDouble.fromJson;

  @override
  ZacBuilder<num> get number;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_NumToInt extends _NumToInt {
  _$_NumToInt(this.number, {final String? $type})
      : $type = $type ?? 'z:1:Transformer:num.toInt',
        super._();

  factory _$_NumToInt.fromJson(Map<String, dynamic> json) =>
      _$$_NumToIntFromJson(json);

  @override
  final ZacBuilder<num> number;

  @JsonKey(name: 'builder')
  final String $type;

  @override
  String toString() {
    return 'NumTransformer.toInt(number: $number)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NumToInt &&
            (identical(other.number, number) || other.number == number));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, number);

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
  factory _NumToInt(final ZacBuilder<num> number) = _$_NumToInt;
  _NumToInt._() : super._();

  factory _NumToInt.fromJson(Map<String, dynamic> json) = _$_NumToInt.fromJson;

  @override
  ZacBuilder<num> get number;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_NumAbs extends _NumAbs {
  _$_NumAbs(this.number, {final String? $type})
      : $type = $type ?? 'z:1:Transformer:num.abs',
        super._();

  factory _$_NumAbs.fromJson(Map<String, dynamic> json) =>
      _$$_NumAbsFromJson(json);

  @override
  final ZacBuilder<num> number;

  @JsonKey(name: 'builder')
  final String $type;

  @override
  String toString() {
    return 'NumTransformer.abs(number: $number)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NumAbs &&
            (identical(other.number, number) || other.number == number));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, number);

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
  factory _NumAbs(final ZacBuilder<num> number) = _$_NumAbs;
  _NumAbs._() : super._();

  factory _NumAbs.fromJson(Map<String, dynamic> json) = _$_NumAbs.fromJson;

  @override
  ZacBuilder<num> get number;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_NumCeil extends _NumCeil {
  _$_NumCeil(this.number, {final String? $type})
      : $type = $type ?? 'z:1:Transformer:num.ceil',
        super._();

  factory _$_NumCeil.fromJson(Map<String, dynamic> json) =>
      _$$_NumCeilFromJson(json);

  @override
  final ZacBuilder<num> number;

  @JsonKey(name: 'builder')
  final String $type;

  @override
  String toString() {
    return 'NumTransformer.ceil(number: $number)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NumCeil &&
            (identical(other.number, number) || other.number == number));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, number);

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
  factory _NumCeil(final ZacBuilder<num> number) = _$_NumCeil;
  _NumCeil._() : super._();

  factory _NumCeil.fromJson(Map<String, dynamic> json) = _$_NumCeil.fromJson;

  @override
  ZacBuilder<num> get number;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_NumCeilToDouble extends _NumCeilToDouble {
  _$_NumCeilToDouble(this.number, {final String? $type})
      : $type = $type ?? 'z:1:Transformer:num.ceilToDouble',
        super._();

  factory _$_NumCeilToDouble.fromJson(Map<String, dynamic> json) =>
      _$$_NumCeilToDoubleFromJson(json);

  @override
  final ZacBuilder<num> number;

  @JsonKey(name: 'builder')
  final String $type;

  @override
  String toString() {
    return 'NumTransformer.ceilToDouble(number: $number)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NumCeilToDouble &&
            (identical(other.number, number) || other.number == number));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, number);

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
  factory _NumCeilToDouble(final ZacBuilder<num> number) = _$_NumCeilToDouble;
  _NumCeilToDouble._() : super._();

  factory _NumCeilToDouble.fromJson(Map<String, dynamic> json) =
      _$_NumCeilToDouble.fromJson;

  @override
  ZacBuilder<num> get number;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_NumFloor extends _NumFloor {
  _$_NumFloor(this.number, {final String? $type})
      : $type = $type ?? 'z:1:Transformer:num.floor',
        super._();

  factory _$_NumFloor.fromJson(Map<String, dynamic> json) =>
      _$$_NumFloorFromJson(json);

  @override
  final ZacBuilder<num> number;

  @JsonKey(name: 'builder')
  final String $type;

  @override
  String toString() {
    return 'NumTransformer.floor(number: $number)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NumFloor &&
            (identical(other.number, number) || other.number == number));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, number);

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
  factory _NumFloor(final ZacBuilder<num> number) = _$_NumFloor;
  _NumFloor._() : super._();

  factory _NumFloor.fromJson(Map<String, dynamic> json) = _$_NumFloor.fromJson;

  @override
  ZacBuilder<num> get number;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_NumFloorToDouble extends _NumFloorToDouble {
  _$_NumFloorToDouble(this.number, {final String? $type})
      : $type = $type ?? 'z:1:Transformer:num.floorToDouble',
        super._();

  factory _$_NumFloorToDouble.fromJson(Map<String, dynamic> json) =>
      _$$_NumFloorToDoubleFromJson(json);

  @override
  final ZacBuilder<num> number;

  @JsonKey(name: 'builder')
  final String $type;

  @override
  String toString() {
    return 'NumTransformer.floorToDouble(number: $number)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NumFloorToDouble &&
            (identical(other.number, number) || other.number == number));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, number);

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
  factory _NumFloorToDouble(final ZacBuilder<num> number) = _$_NumFloorToDouble;
  _NumFloorToDouble._() : super._();

  factory _NumFloorToDouble.fromJson(Map<String, dynamic> json) =
      _$_NumFloorToDouble.fromJson;

  @override
  ZacBuilder<num> get number;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_NumRound extends _NumRound {
  _$_NumRound(this.number, {final String? $type})
      : $type = $type ?? 'z:1:Transformer:num.round',
        super._();

  factory _$_NumRound.fromJson(Map<String, dynamic> json) =>
      _$$_NumRoundFromJson(json);

  @override
  final ZacBuilder<num> number;

  @JsonKey(name: 'builder')
  final String $type;

  @override
  String toString() {
    return 'NumTransformer.round(number: $number)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NumRound &&
            (identical(other.number, number) || other.number == number));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, number);

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
  factory _NumRound(final ZacBuilder<num> number) = _$_NumRound;
  _NumRound._() : super._();

  factory _NumRound.fromJson(Map<String, dynamic> json) = _$_NumRound.fromJson;

  @override
  ZacBuilder<num> get number;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_NumRoundToDouble extends _NumRoundToDouble {
  _$_NumRoundToDouble(this.number, {final String? $type})
      : $type = $type ?? 'z:1:Transformer:num.roundToDouble',
        super._();

  factory _$_NumRoundToDouble.fromJson(Map<String, dynamic> json) =>
      _$$_NumRoundToDoubleFromJson(json);

  @override
  final ZacBuilder<num> number;

  @JsonKey(name: 'builder')
  final String $type;

  @override
  String toString() {
    return 'NumTransformer.roundToDouble(number: $number)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NumRoundToDouble &&
            (identical(other.number, number) || other.number == number));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, number);

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
  factory _NumRoundToDouble(final ZacBuilder<num> number) = _$_NumRoundToDouble;
  _NumRoundToDouble._() : super._();

  factory _NumRoundToDouble.fromJson(Map<String, dynamic> json) =
      _$_NumRoundToDouble.fromJson;

  @override
  ZacBuilder<num> get number;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_NumIsFinite extends _NumIsFinite {
  _$_NumIsFinite(this.number, {final String? $type})
      : $type = $type ?? 'z:1:Transformer:num.isFinite',
        super._();

  factory _$_NumIsFinite.fromJson(Map<String, dynamic> json) =>
      _$$_NumIsFiniteFromJson(json);

  @override
  final ZacBuilder<num> number;

  @JsonKey(name: 'builder')
  final String $type;

  @override
  String toString() {
    return 'NumTransformer.isFinite(number: $number)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NumIsFinite &&
            (identical(other.number, number) || other.number == number));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, number);

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
  factory _NumIsFinite(final ZacBuilder<num> number) = _$_NumIsFinite;
  _NumIsFinite._() : super._();

  factory _NumIsFinite.fromJson(Map<String, dynamic> json) =
      _$_NumIsFinite.fromJson;

  @override
  ZacBuilder<num> get number;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_NumIsInfinite extends _NumIsInfinite {
  _$_NumIsInfinite(this.number, {final String? $type})
      : $type = $type ?? 'z:1:Transformer:num.isInfinite',
        super._();

  factory _$_NumIsInfinite.fromJson(Map<String, dynamic> json) =>
      _$$_NumIsInfiniteFromJson(json);

  @override
  final ZacBuilder<num> number;

  @JsonKey(name: 'builder')
  final String $type;

  @override
  String toString() {
    return 'NumTransformer.isInfinite(number: $number)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NumIsInfinite &&
            (identical(other.number, number) || other.number == number));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, number);

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
  factory _NumIsInfinite(final ZacBuilder<num> number) = _$_NumIsInfinite;
  _NumIsInfinite._() : super._();

  factory _NumIsInfinite.fromJson(Map<String, dynamic> json) =
      _$_NumIsInfinite.fromJson;

  @override
  ZacBuilder<num> get number;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_NumIsNan extends _NumIsNan {
  _$_NumIsNan(this.number, {final String? $type})
      : $type = $type ?? 'z:1:Transformer:num.isNan',
        super._();

  factory _$_NumIsNan.fromJson(Map<String, dynamic> json) =>
      _$$_NumIsNanFromJson(json);

  @override
  final ZacBuilder<num> number;

  @JsonKey(name: 'builder')
  final String $type;

  @override
  String toString() {
    return 'NumTransformer.isNan(number: $number)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NumIsNan &&
            (identical(other.number, number) || other.number == number));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, number);

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
  factory _NumIsNan(final ZacBuilder<num> number) = _$_NumIsNan;
  _NumIsNan._() : super._();

  factory _NumIsNan.fromJson(Map<String, dynamic> json) = _$_NumIsNan.fromJson;

  @override
  ZacBuilder<num> get number;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_NumIsNegative extends _NumIsNegative {
  _$_NumIsNegative(this.number, {final String? $type})
      : $type = $type ?? 'z:1:Transformer:num.isNegative',
        super._();

  factory _$_NumIsNegative.fromJson(Map<String, dynamic> json) =>
      _$$_NumIsNegativeFromJson(json);

  @override
  final ZacBuilder<num> number;

  @JsonKey(name: 'builder')
  final String $type;

  @override
  String toString() {
    return 'NumTransformer.isNegative(number: $number)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NumIsNegative &&
            (identical(other.number, number) || other.number == number));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, number);

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
  factory _NumIsNegative(final ZacBuilder<num> number) = _$_NumIsNegative;
  _NumIsNegative._() : super._();

  factory _NumIsNegative.fromJson(Map<String, dynamic> json) =
      _$_NumIsNegative.fromJson;

  @override
  ZacBuilder<num> get number;
}

IntTransformer _$IntTransformerFromJson(Map<String, dynamic> json) {
  switch (json['builder']) {
    case 'z:1:Transformer:int.parse':
      return _IntParse.fromJson(json);
    case 'z:1:Transformer:int.tryParse':
      return _IntTryParse.fromJson(json);
    case 'z:1:Transformer:int.incr':
      return _IntIncr.fromJson(json);
    case 'z:1:Transformer:int.decr':
      return _IntDecr.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'builder', 'IntTransformer',
          'Invalid union type "${json['builder']}"!');
  }
}

/// @nodoc
mixin _$IntTransformer {
  ZacBuilder<Object> get number => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_IntParse value) parse,
    required TResult Function(_IntTryParse value) tryParse,
    required TResult Function(_IntIncr value) incr,
    required TResult Function(_IntDecr value) decr,
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_IntParse extends _IntParse {
  _$_IntParse(this.number, {final String? $type})
      : $type = $type ?? 'z:1:Transformer:int.parse',
        super._();

  factory _$_IntParse.fromJson(Map<String, dynamic> json) =>
      _$$_IntParseFromJson(json);

  @override
  final ZacBuilder<String> number;

  @JsonKey(name: 'builder')
  final String $type;

  @override
  String toString() {
    return 'IntTransformer.parse(number: $number)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_IntParse &&
            (identical(other.number, number) || other.number == number));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, number);

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_IntParse value) parse,
    required TResult Function(_IntTryParse value) tryParse,
    required TResult Function(_IntIncr value) incr,
    required TResult Function(_IntDecr value) decr,
  }) {
    return parse(this);
  }
}

abstract class _IntParse extends IntTransformer {
  factory _IntParse(final ZacBuilder<String> number) = _$_IntParse;
  _IntParse._() : super._();

  factory _IntParse.fromJson(Map<String, dynamic> json) = _$_IntParse.fromJson;

  @override
  ZacBuilder<String> get number;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_IntTryParse extends _IntTryParse {
  _$_IntTryParse(this.number, {final String? $type})
      : $type = $type ?? 'z:1:Transformer:int.tryParse',
        super._();

  factory _$_IntTryParse.fromJson(Map<String, dynamic> json) =>
      _$$_IntTryParseFromJson(json);

  @override
  final ZacBuilder<String> number;

  @JsonKey(name: 'builder')
  final String $type;

  @override
  String toString() {
    return 'IntTransformer.tryParse(number: $number)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_IntTryParse &&
            (identical(other.number, number) || other.number == number));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, number);

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_IntParse value) parse,
    required TResult Function(_IntTryParse value) tryParse,
    required TResult Function(_IntIncr value) incr,
    required TResult Function(_IntDecr value) decr,
  }) {
    return tryParse(this);
  }
}

abstract class _IntTryParse extends IntTransformer {
  factory _IntTryParse(final ZacBuilder<String> number) = _$_IntTryParse;
  _IntTryParse._() : super._();

  factory _IntTryParse.fromJson(Map<String, dynamic> json) =
      _$_IntTryParse.fromJson;

  @override
  ZacBuilder<String> get number;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_IntIncr extends _IntIncr {
  _$_IntIncr(this.number, this.by, {final String? $type})
      : $type = $type ?? 'z:1:Transformer:int.incr',
        super._();

  factory _$_IntIncr.fromJson(Map<String, dynamic> json) =>
      _$$_IntIncrFromJson(json);

  @override
  final ZacBuilder<int> number;
  @override
  final ZacBuilder<int> by;

  @JsonKey(name: 'builder')
  final String $type;

  @override
  String toString() {
    return 'IntTransformer.incr(number: $number, by: $by)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_IntIncr &&
            (identical(other.number, number) || other.number == number) &&
            (identical(other.by, by) || other.by == by));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, number, by);

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_IntParse value) parse,
    required TResult Function(_IntTryParse value) tryParse,
    required TResult Function(_IntIncr value) incr,
    required TResult Function(_IntDecr value) decr,
  }) {
    return incr(this);
  }
}

abstract class _IntIncr extends IntTransformer {
  factory _IntIncr(final ZacBuilder<int> number, final ZacBuilder<int> by) =
      _$_IntIncr;
  _IntIncr._() : super._();

  factory _IntIncr.fromJson(Map<String, dynamic> json) = _$_IntIncr.fromJson;

  @override
  ZacBuilder<int> get number;
  ZacBuilder<int> get by;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_IntDecr extends _IntDecr {
  _$_IntDecr(this.number, this.by, {final String? $type})
      : $type = $type ?? 'z:1:Transformer:int.decr',
        super._();

  factory _$_IntDecr.fromJson(Map<String, dynamic> json) =>
      _$$_IntDecrFromJson(json);

  @override
  final ZacBuilder<int> number;
  @override
  final ZacBuilder<int> by;

  @JsonKey(name: 'builder')
  final String $type;

  @override
  String toString() {
    return 'IntTransformer.decr(number: $number, by: $by)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_IntDecr &&
            (identical(other.number, number) || other.number == number) &&
            (identical(other.by, by) || other.by == by));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, number, by);

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_IntParse value) parse,
    required TResult Function(_IntTryParse value) tryParse,
    required TResult Function(_IntIncr value) incr,
    required TResult Function(_IntDecr value) decr,
  }) {
    return decr(this);
  }
}

abstract class _IntDecr extends IntTransformer {
  factory _IntDecr(final ZacBuilder<int> number, final ZacBuilder<int> by) =
      _$_IntDecr;
  _IntDecr._() : super._();

  factory _IntDecr.fromJson(Map<String, dynamic> json) = _$_IntDecr.fromJson;

  @override
  ZacBuilder<int> get number;
  ZacBuilder<int> get by;
}

StringTransformer _$StringTransformerFromJson(Map<String, dynamic> json) {
  switch (json['builder']) {
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
      throw CheckedFromJsonException(json, 'builder', 'StringTransformer',
          'Invalid union type "${json['builder']}"!');
  }
}

/// @nodoc
mixin _$StringTransformer {
  ZacBuilder<String> get string => throw _privateConstructorUsedError;

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
  _$_StringLength(this.string, {final String? $type})
      : $type = $type ?? 'z:1:Transformer:String.length',
        super._();

  factory _$_StringLength.fromJson(Map<String, dynamic> json) =>
      _$$_StringLengthFromJson(json);

  @override
  final ZacBuilder<String> string;

  @JsonKey(name: 'builder')
  final String $type;

  @override
  String toString() {
    return 'StringTransformer.length(string: $string)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_StringLength &&
            (identical(other.string, string) || other.string == string));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, string);

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
  factory _StringLength(final ZacBuilder<String> string) = _$_StringLength;
  _StringLength._() : super._();

  factory _StringLength.fromJson(Map<String, dynamic> json) =
      _$_StringLength.fromJson;

  @override
  ZacBuilder<String> get string;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_StringSplit extends _StringSplit {
  _$_StringSplit(
      {required this.string, required this.pattern, final String? $type})
      : $type = $type ?? 'z:1:Transformer:String.split',
        super._();

  factory _$_StringSplit.fromJson(Map<String, dynamic> json) =>
      _$$_StringSplitFromJson(json);

  @override
  final ZacBuilder<String> string;
  @override
  final ZacBuilder<String> pattern;

  @JsonKey(name: 'builder')
  final String $type;

  @override
  String toString() {
    return 'StringTransformer.split(string: $string, pattern: $pattern)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_StringSplit &&
            (identical(other.string, string) || other.string == string) &&
            (identical(other.pattern, pattern) || other.pattern == pattern));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, string, pattern);

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
  factory _StringSplit(
      {required final ZacBuilder<String> string,
      required final ZacBuilder<String> pattern}) = _$_StringSplit;
  _StringSplit._() : super._();

  factory _StringSplit.fromJson(Map<String, dynamic> json) =
      _$_StringSplit.fromJson;

  @override
  ZacBuilder<String> get string;
  ZacBuilder<String> get pattern;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_StringIsEmpty extends _StringIsEmpty {
  _$_StringIsEmpty(this.string, {final String? $type})
      : $type = $type ?? 'z:1:Transformer:String.isEmpty',
        super._();

  factory _$_StringIsEmpty.fromJson(Map<String, dynamic> json) =>
      _$$_StringIsEmptyFromJson(json);

  @override
  final ZacBuilder<String> string;

  @JsonKey(name: 'builder')
  final String $type;

  @override
  String toString() {
    return 'StringTransformer.isEmpty(string: $string)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_StringIsEmpty &&
            (identical(other.string, string) || other.string == string));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, string);

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
  factory _StringIsEmpty(final ZacBuilder<String> string) = _$_StringIsEmpty;
  _StringIsEmpty._() : super._();

  factory _StringIsEmpty.fromJson(Map<String, dynamic> json) =
      _$_StringIsEmpty.fromJson;

  @override
  ZacBuilder<String> get string;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_StringIsNotEmpty extends _StringIsNotEmpty {
  _$_StringIsNotEmpty(this.string, {final String? $type})
      : $type = $type ?? 'z:1:Transformer:String.isNotEmpty',
        super._();

  factory _$_StringIsNotEmpty.fromJson(Map<String, dynamic> json) =>
      _$$_StringIsNotEmptyFromJson(json);

  @override
  final ZacBuilder<String> string;

  @JsonKey(name: 'builder')
  final String $type;

  @override
  String toString() {
    return 'StringTransformer.isNotEmpty(string: $string)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_StringIsNotEmpty &&
            (identical(other.string, string) || other.string == string));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, string);

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
  factory _StringIsNotEmpty(final ZacBuilder<String> string) =
      _$_StringIsNotEmpty;
  _StringIsNotEmpty._() : super._();

  factory _StringIsNotEmpty.fromJson(Map<String, dynamic> json) =
      _$_StringIsNotEmpty.fromJson;

  @override
  ZacBuilder<String> get string;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_StringReplaceAll extends _StringReplaceAll {
  _$_StringReplaceAll(this.string, this.from, this.replace,
      {final String? $type})
      : $type = $type ?? 'z:1:Transformer:String.replaceAll',
        super._();

  factory _$_StringReplaceAll.fromJson(Map<String, dynamic> json) =>
      _$$_StringReplaceAllFromJson(json);

  @override
  final ZacBuilder<String> string;
  @override
  final ZacBuilder<String> from;
  @override
  final ZacBuilder<String> replace;

  @JsonKey(name: 'builder')
  final String $type;

  @override
  String toString() {
    return 'StringTransformer.replaceAll(string: $string, from: $from, replace: $replace)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_StringReplaceAll &&
            (identical(other.string, string) || other.string == string) &&
            (identical(other.from, from) || other.from == from) &&
            (identical(other.replace, replace) || other.replace == replace));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, string, from, replace);

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
  factory _StringReplaceAll(
      final ZacBuilder<String> string,
      final ZacBuilder<String> from,
      final ZacBuilder<String> replace) = _$_StringReplaceAll;
  _StringReplaceAll._() : super._();

  factory _StringReplaceAll.fromJson(Map<String, dynamic> json) =
      _$_StringReplaceAll.fromJson;

  @override
  ZacBuilder<String> get string;
  ZacBuilder<String> get from;
  ZacBuilder<String> get replace;
}

JsonTransformer _$JsonTransformerFromJson(Map<String, dynamic> json) {
  switch (json['builder']) {
    case 'z:1:Transformer:Json.encode':
      return _JsonEncode.fromJson(json);
    case 'z:1:Transformer:Json.decode':
      return _JsonDencode.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'builder', 'JsonTransformer',
          'Invalid union type "${json['builder']}"!');
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
  _$_JsonEncode(this.object, {final String? $type})
      : $type = $type ?? 'z:1:Transformer:Json.encode',
        super._();

  factory _$_JsonEncode.fromJson(Map<String, dynamic> json) =>
      _$$_JsonEncodeFromJson(json);

  @override
  final ZacBuilder<Object> object;

  @JsonKey(name: 'builder')
  final String $type;

  @override
  String toString() {
    return 'JsonTransformer.encode(object: $object)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_JsonEncode &&
            (identical(other.object, object) || other.object == object));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, object);

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
  factory _JsonEncode(final ZacBuilder<Object> object) = _$_JsonEncode;
  _JsonEncode._() : super._();

  factory _JsonEncode.fromJson(Map<String, dynamic> json) =
      _$_JsonEncode.fromJson;

  ZacBuilder<Object> get object;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_JsonDencode extends _JsonDencode {
  _$_JsonDencode(this.jsonString, {final String? $type})
      : $type = $type ?? 'z:1:Transformer:Json.decode',
        super._();

  factory _$_JsonDencode.fromJson(Map<String, dynamic> json) =>
      _$$_JsonDencodeFromJson(json);

  @override
  final ZacBuilder<String> jsonString;

  @JsonKey(name: 'builder')
  final String $type;

  @override
  String toString() {
    return 'JsonTransformer.decode(jsonString: $jsonString)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_JsonDencode &&
            (identical(other.jsonString, jsonString) ||
                other.jsonString == jsonString));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, jsonString);

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
  factory _JsonDencode(final ZacBuilder<String> jsonString) = _$_JsonDencode;
  _JsonDencode._() : super._();

  factory _JsonDencode.fromJson(Map<String, dynamic> json) =
      _$_JsonDencode.fromJson;

  ZacBuilder<String> get jsonString;
}

BoolTransformer _$BoolTransformerFromJson(Map<String, dynamic> json) {
  return _BoolTransformerNegate.fromJson(json);
}

/// @nodoc
mixin _$BoolTransformer {
  ZacBuilder<bool> get boolean => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_BoolTransformerNegate value) negate,
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_BoolTransformerNegate extends _BoolTransformerNegate {
  _$_BoolTransformerNegate(this.boolean) : super._();

  factory _$_BoolTransformerNegate.fromJson(Map<String, dynamic> json) =>
      _$$_BoolTransformerNegateFromJson(json);

  @override
  final ZacBuilder<bool> boolean;

  @override
  String toString() {
    return 'BoolTransformer.negate(boolean: $boolean)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BoolTransformerNegate &&
            (identical(other.boolean, boolean) || other.boolean == boolean));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, boolean);

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_BoolTransformerNegate value) negate,
  }) {
    return negate(this);
  }
}

abstract class _BoolTransformerNegate extends BoolTransformer {
  factory _BoolTransformerNegate(final ZacBuilder<bool> boolean) =
      _$_BoolTransformerNegate;
  _BoolTransformerNegate._() : super._();

  factory _BoolTransformerNegate.fromJson(Map<String, dynamic> json) =
      _$_BoolTransformerNegate.fromJson;

  @override
  ZacBuilder<bool> get boolean;
}
