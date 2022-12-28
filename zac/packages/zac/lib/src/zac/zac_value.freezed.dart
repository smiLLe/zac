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
  @_Converter()
  T get value => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_ZacValueSimple<T> value) $default,
  ) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_ZacValueSimple<T extends Object?> extends _ZacValueSimple<T> {
  _$_ZacValueSimple(@_Converter() this.value) : super._();

  factory _$_ZacValueSimple.fromJson(Map<String, dynamic> json) =>
      _$$_ZacValueSimpleFromJson(json);

  @override
  @_Converter()
  final T value;

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
  factory _ZacValueSimple(@_Converter() final T value) = _$_ZacValueSimple<T>;
  _ZacValueSimple._() : super._();

  factory _ZacValueSimple.fromJson(Map<String, dynamic> json) =
      _$_ZacValueSimple<T>.fromJson;

  @override
  @_Converter()
  T get value;
}

ZacValueListSimple<T, X>
    _$ZacValueListSimpleFromJson<T extends Object?, X extends List<T>?>(
        Map<String, dynamic> json) {
  return _ZacValueListSimple<T, X>.fromJson(json);
}

/// @nodoc
mixin _$ZacValueListSimple<T extends Object?, X extends List<T>?> {
  List<ZacBuilder<T>> get items => throw _privateConstructorUsedError;

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
  _$_ZacValueListSimple(final List<ZacBuilder<T>> items)
      : _items = items,
        super._();

  factory _$_ZacValueListSimple.fromJson(Map<String, dynamic> json) =>
      _$$_ZacValueListSimpleFromJson(json);

  final List<ZacBuilder<T>> _items;
  @override
  List<ZacBuilder<T>> get items {
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
  factory _ZacValueListSimple(final List<ZacBuilder<T>> items) =
      _$_ZacValueListSimple<T, X>;
  _ZacValueListSimple._() : super._();

  factory _ZacValueListSimple.fromJson(Map<String, dynamic> json) =
      _$_ZacValueListSimple<T, X>.fromJson;

  @override
  List<ZacBuilder<T>> get items;
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
      {required final Map<String, ZacBuilder<T>> items, final String? $type})
      : _items = items,
        $type = $type ?? 'z:1:ZacValueMap',
        super._();

  factory _$_ZacValueMap.fromJson(Map<String, dynamic> json) =>
      _$$_ZacValueMapFromJson(json);

  final Map<String, ZacBuilder<T>> _items;
  @override
  Map<String, ZacBuilder<T>> get items {
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
  factory _ZacValueMap({required final Map<String, ZacBuilder<T>> items}) =
      _$_ZacValueMap<T, X>;
  _ZacValueMap._() : super._();

  factory _ZacValueMap.fromJson(Map<String, dynamic> json) =
      _$_ZacValueMap<T, X>.fromJson;

  Map<String, ZacBuilder<T>> get items;
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
  ZacBuilder<Object?> get value => throw _privateConstructorUsedError;
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
  final ZacBuilder<Object?> value;
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
      {required final ZacBuilder<Object?> value,
      required final ZacActions actions}) = _$_ZacValueActionsAsPayload;
  _ZacValueActionsAsPayload._() : super._();

  factory _ZacValueActionsAsPayload.fromJson(Map<String, dynamic> json) =
      _$_ZacValueActionsAsPayload.fromJson;

  @override
  ZacBuilder<Object?> get value;
  @override
  ZacActions get actions;
}
