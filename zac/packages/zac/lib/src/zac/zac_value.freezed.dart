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
