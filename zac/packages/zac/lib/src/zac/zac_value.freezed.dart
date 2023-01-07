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

ZacValue<T> _$ZacValueFromJson<T extends Object?>(Map<String, dynamic> json) {
  return _ZacValue<T>.fromJson(json);
}

/// @nodoc
mixin _$ZacValue<T extends Object?> {
  @_Converter()
  T get value => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_ZacValue<T> value) $default,
  ) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_ZacValue<T extends Object?> extends _ZacValue<T> {
  _$_ZacValue(@_Converter() this.value) : super._();

  factory _$_ZacValue.fromJson(Map<String, dynamic> json) =>
      _$$_ZacValueFromJson(json);

  @override
  @_Converter()
  final T value;

  @override
  String toString() {
    return 'ZacValue<$T>(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ZacValue<T> &&
            const DeepCollectionEquality().equals(other.value, value));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(value));

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_ZacValue<T> value) $default,
  ) {
    return $default(this);
  }
}

abstract class _ZacValue<T extends Object?> extends ZacValue<T> {
  factory _ZacValue(@_Converter() final T value) = _$_ZacValue<T>;
  _ZacValue._() : super._();

  factory _ZacValue.fromJson(Map<String, dynamic> json) =
      _$_ZacValue<T>.fromJson;

  @override
  @_Converter()
  T get value;
}

ZacValueList<T, X>
    _$ZacValueListFromJson<T extends Object?, X extends List<T>?>(
        Map<String, dynamic> json) {
  return _ZacValueListSimple<T, X>.fromJson(json);
}

/// @nodoc
mixin _$ZacValueList<T extends Object?, X extends List<T>?> {
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
    return 'ZacValueList<$T, $X>(items: $items)';
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
    extends ZacValueList<T, X> {
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
  return _ZacValueMap<T, X>.fromJson(json);
}

/// @nodoc
mixin _$ZacValueMap<T extends Object?, X extends Map<String, T>?> {
  Map<String, ZacBuilder<T>> get items => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_ZacValueMap<T, X> value) $default,
  ) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_ZacValueMap<T extends Object?, X extends Map<String, T>?>
    extends _ZacValueMap<T, X> {
  _$_ZacValueMap(final Map<String, ZacBuilder<T>> items)
      : _items = items,
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
    TResult Function(_ZacValueMap<T, X> value) $default,
  ) {
    return $default(this);
  }
}

abstract class _ZacValueMap<T extends Object?, X extends Map<String, T>?>
    extends ZacValueMap<T, X> {
  factory _ZacValueMap(final Map<String, ZacBuilder<T>> items) =
      _$_ZacValueMap<T, X>;
  _ZacValueMap._() : super._();

  factory _ZacValueMap.fromJson(Map<String, dynamic> json) =
      _$_ZacValueMap<T, X>.fromJson;

  @override
  Map<String, ZacBuilder<T>> get items;
}

ZacValueActions _$ZacValueActionsFromJson(Map<String, dynamic> json) {
  return _ZacValueActionsAsPayload.fromJson(json);
}

/// @nodoc
mixin _$ZacValueActions {
  ZacBuilder<Object?> get value => throw _privateConstructorUsedError;
  ZacListBuilder<ZacAction, List<ZacAction>> get actions =>
      throw _privateConstructorUsedError;

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
  final ZacListBuilder<ZacAction, List<ZacAction>> actions;

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
          required final ZacListBuilder<ZacAction, List<ZacAction>> actions}) =
      _$_ZacValueActionsAsPayload;
  _ZacValueActionsAsPayload._() : super._();

  factory _ZacValueActionsAsPayload.fromJson(Map<String, dynamic> json) =
      _$_ZacValueActionsAsPayload.fromJson;

  @override
  ZacBuilder<Object?> get value;
  @override
  ZacListBuilder<ZacAction, List<ZacAction>> get actions;
}
