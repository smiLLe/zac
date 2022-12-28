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

ZacValueSimple<T> _$ZacValueSimpleFromJson<T extends Object?>(
    Map<String, dynamic> json) {
  return _ZacValueSimple<T>.fromJson(json);
}

/// @nodoc
mixin _$ZacValueSimple<T extends Object?> {
  Object get value => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_ZacValueSimple<T> value) $default,
  ) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_ZacValueSimple<T extends Object?> extends _ZacValueSimple<T> {
  _$_ZacValueSimple(this.value) : super._();

  factory _$_ZacValueSimple.fromJson(Map<String, dynamic> json) =>
      _$$_ZacValueSimpleFromJson(json);

  @override
  final Object value;

  @override
  String toString() {
    return 'ZacValueSimple<$T>(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ZacValueSimple<T> &&
            const DeepCollectionEquality().equals(other.value, value));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(value));

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_ZacValueSimple<T> value) $default,
  ) {
    return $default(this);
  }
}

abstract class _ZacValueSimple<T extends Object?> extends ZacValueSimple<T> {
  factory _ZacValueSimple(final Object value) = _$_ZacValueSimple<T>;
  _ZacValueSimple._() : super._();

  factory _ZacValueSimple.fromJson(Map<String, dynamic> json) =
      _$_ZacValueSimple<T>.fromJson;

  @override
  Object get value;
}

ZacValueConsume<T> _$ZacValueConsumeFromJson<T extends Object?>(
    Map<String, dynamic> json) {
  return _ZacValueConsume<T>.fromJson(json);
}

/// @nodoc
mixin _$ZacValueConsume<T extends Object?> {
  Object get family => throw _privateConstructorUsedError;
  ZacTransformers? get transformer => throw _privateConstructorUsedError;
  SharedValueConsumeType? get forceConsume =>
      throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_ZacValueConsume<T> value) $default,
  ) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_ZacValueConsume<T extends Object?> extends _ZacValueConsume<T> {
  _$_ZacValueConsume(
      {required this.family, this.transformer, this.forceConsume})
      : super._();

  factory _$_ZacValueConsume.fromJson(Map<String, dynamic> json) =>
      _$$_ZacValueConsumeFromJson(json);

  @override
  final Object family;
  @override
  final ZacTransformers? transformer;
  @override
  final SharedValueConsumeType? forceConsume;

  @override
  String toString() {
    return 'ZacValueConsume<$T>(family: $family, transformer: $transformer, forceConsume: $forceConsume)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ZacValueConsume<T> &&
            const DeepCollectionEquality().equals(other.family, family) &&
            (identical(other.transformer, transformer) ||
                other.transformer == transformer) &&
            (identical(other.forceConsume, forceConsume) ||
                other.forceConsume == forceConsume));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(family), transformer, forceConsume);

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_ZacValueConsume<T> value) $default,
  ) {
    return $default(this);
  }
}

abstract class _ZacValueConsume<T extends Object?> extends ZacValueConsume<T> {
  factory _ZacValueConsume(
      {required final Object family,
      final ZacTransformers? transformer,
      final SharedValueConsumeType? forceConsume}) = _$_ZacValueConsume<T>;
  _ZacValueConsume._() : super._();

  factory _ZacValueConsume.fromJson(Map<String, dynamic> json) =
      _$_ZacValueConsume<T>.fromJson;

  @override
  Object get family;
  @override
  ZacTransformers? get transformer;
  @override
  SharedValueConsumeType? get forceConsume;
}

ZacValueListSimple<T, X>
    _$ZacValueListSimpleFromJson<T extends Object?, X extends List<T>?>(
        Map<String, dynamic> json) {
  return _ZacValueListSimple<T, X>.fromJson(json);
}

/// @nodoc
mixin _$ZacValueListSimple<T extends Object?, X extends List<T>?> {
  List<ZacValue<T>> get items => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_ZacValueListSimple<T, X> value) $default,
  ) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_ZacValueListSimple<T extends Object?, X extends List<T>?>
    extends _ZacValueListSimple<T, X> {
  _$_ZacValueListSimple(final List<ZacValue<T>> items)
      : _items = items,
        super._();

  factory _$_ZacValueListSimple.fromJson(Map<String, dynamic> json) =>
      _$$_ZacValueListSimpleFromJson(json);

  final List<ZacValue<T>> _items;
  @override
  List<ZacValue<T>> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @override
  String toString() {
    return 'ZacValueListSimple<$T, $X>(items: $items)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ZacValueListSimple<T, X> &&
            const DeepCollectionEquality().equals(other._items, _items));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_items));

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_ZacValueListSimple<T, X> value) $default,
  ) {
    return $default(this);
  }
}

abstract class _ZacValueListSimple<T extends Object?, X extends List<T>?>
    extends ZacValueListSimple<T, X> {
  factory _ZacValueListSimple(final List<ZacValue<T>> items) =
      _$_ZacValueListSimple<T, X>;
  _ZacValueListSimple._() : super._();

  factory _ZacValueListSimple.fromJson(Map<String, dynamic> json) =
      _$_ZacValueListSimple<T, X>.fromJson;

  @override
  List<ZacValue<T>> get items;
}

ZacValueListConsume<T, X>
    _$ZacValueListConsumeFromJson<T extends Object?, X extends List<T>?>(
        Map<String, dynamic> json) {
  return _ZacValueListConsume<T, X>.fromJson(json);
}

/// @nodoc
mixin _$ZacValueListConsume<T extends Object?, X extends List<T>?> {
  Object get family => throw _privateConstructorUsedError;
  ZacTransformers? get transformer => throw _privateConstructorUsedError;
  ZacTransformers? get itemTransformer => throw _privateConstructorUsedError;
  SharedValueConsumeType? get forceConsume =>
      throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_ZacValueListConsume<T, X> value) $default,
  ) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_ZacValueListConsume<T extends Object?, X extends List<T>?>
    extends _ZacValueListConsume<T, X> {
  _$_ZacValueListConsume(
      {required this.family,
      this.transformer,
      this.itemTransformer,
      this.forceConsume})
      : super._();

  factory _$_ZacValueListConsume.fromJson(Map<String, dynamic> json) =>
      _$$_ZacValueListConsumeFromJson(json);

  @override
  final Object family;
  @override
  final ZacTransformers? transformer;
  @override
  final ZacTransformers? itemTransformer;
  @override
  final SharedValueConsumeType? forceConsume;

  @override
  String toString() {
    return 'ZacValueListConsume<$T, $X>(family: $family, transformer: $transformer, itemTransformer: $itemTransformer, forceConsume: $forceConsume)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ZacValueListConsume<T, X> &&
            const DeepCollectionEquality().equals(other.family, family) &&
            (identical(other.transformer, transformer) ||
                other.transformer == transformer) &&
            (identical(other.itemTransformer, itemTransformer) ||
                other.itemTransformer == itemTransformer) &&
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
      forceConsume);

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_ZacValueListConsume<T, X> value) $default,
  ) {
    return $default(this);
  }
}

abstract class _ZacValueListConsume<T extends Object?, X extends List<T>?>
    extends ZacValueListConsume<T, X> {
  factory _ZacValueListConsume(
          {required final Object family,
          final ZacTransformers? transformer,
          final ZacTransformers? itemTransformer,
          final SharedValueConsumeType? forceConsume}) =
      _$_ZacValueListConsume<T, X>;
  _ZacValueListConsume._() : super._();

  factory _ZacValueListConsume.fromJson(Map<String, dynamic> json) =
      _$_ZacValueListConsume<T, X>.fromJson;

  @override
  Object get family;
  @override
  ZacTransformers? get transformer;
  @override
  ZacTransformers? get itemTransformer;
  @override
  SharedValueConsumeType? get forceConsume;
}

ZacValueMap<T, X>
    _$ZacValueMapFromJson<T extends Object?, X extends Map<String, T>?>(
        Map<String, dynamic> json) {
  switch (json['builder']) {
    case 'z:1:ZacValueMap':
      return _ZacValueMap<T, X>.fromJson(json);
    case 'z:1:ZacValueMap.consume':
      return _ZacValueMapConsume<T, X>.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'builder', 'ZacValueMap',
          'Invalid union type "${json['builder']}"!');
  }
}

/// @nodoc
mixin _$ZacValueMap<T extends Object?, X extends Map<String, T>?> {
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_ZacValueMap<T, X> value) $default, {
    required TResult Function(_ZacValueMapConsume<T, X> value) consume,
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_ZacValueMap<T extends Object?, X extends Map<String, T>?>
    extends _ZacValueMap<T, X> {
  _$_ZacValueMap(
      {required final Map<String, ZacValue<T>> items, final String? $type})
      : _items = items,
        $type = $type ?? 'z:1:ZacValueMap',
        super._();

  factory _$_ZacValueMap.fromJson(Map<String, dynamic> json) =>
      _$$_ZacValueMapFromJson(json);

  final Map<String, ZacValue<T>> _items;
  @override
  Map<String, ZacValue<T>> get items {
    if (_items is EqualUnmodifiableMapView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_items);
  }

  @JsonKey(name: 'builder')
  final String $type;

  @override
  String toString() {
    return 'ZacValueMap<$T, $X>(items: $items)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ZacValueMap<T, X> &&
            const DeepCollectionEquality().equals(other._items, _items));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_items));

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_ZacValueMap<T, X> value) $default, {
    required TResult Function(_ZacValueMapConsume<T, X> value) consume,
  }) {
    return $default(this);
  }
}

abstract class _ZacValueMap<T extends Object?, X extends Map<String, T>?>
    extends ZacValueMap<T, X> {
  factory _ZacValueMap({required final Map<String, ZacValue<T>> items}) =
      _$_ZacValueMap<T, X>;
  _ZacValueMap._() : super._();

  factory _ZacValueMap.fromJson(Map<String, dynamic> json) =
      _$_ZacValueMap<T, X>.fromJson;

  Map<String, ZacValue<T>> get items;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_ZacValueMapConsume<T extends Object?, X extends Map<String, T>?>
    extends _ZacValueMapConsume<T, X> {
  _$_ZacValueMapConsume(
      {required this.family,
      this.transformer,
      this.itemTransformer,
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
  final ZacTransformers? itemTransformer;
  @override
  final ZacTransformers? select;
  @override
  final SharedValueConsumeType? forceConsume;

  @JsonKey(name: 'builder')
  final String $type;

  @override
  String toString() {
    return 'ZacValueMap<$T, $X>.consume(family: $family, transformer: $transformer, itemTransformer: $itemTransformer, select: $select, forceConsume: $forceConsume)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ZacValueMapConsume<T, X> &&
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
    TResult Function(_ZacValueMap<T, X> value) $default, {
    required TResult Function(_ZacValueMapConsume<T, X> value) consume,
  }) {
    return consume(this);
  }
}

abstract class _ZacValueMapConsume<T extends Object?, X extends Map<String, T>?>
    extends ZacValueMap<T, X> {
  factory _ZacValueMapConsume(
          {required final Object family,
          final ZacTransformers? transformer,
          final ZacTransformers? itemTransformer,
          final ZacTransformers? select,
          final SharedValueConsumeType? forceConsume}) =
      _$_ZacValueMapConsume<T, X>;
  _ZacValueMapConsume._() : super._();

  factory _ZacValueMapConsume.fromJson(Map<String, dynamic> json) =
      _$_ZacValueMapConsume<T, X>.fromJson;

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
