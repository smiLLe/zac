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
  switch (json['converter']) {
    case 'z:1:ZacValue':
      return _ZacValueBuiltIn<T>.fromJson(json);
    case 'z:1:ZacValue.builder':
      return _ZacValueFromBuilder<T>.fromJson(json);
    case 'z:1:ZacValue.consume':
      return _ZacValueConsume<T>.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'converter', 'ZacValue',
          'Invalid union type "${json['converter']}"!');
  }
}

/// @nodoc
mixin _$ZacValue<T extends Object?> {
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_ZacValueBuiltIn<T> value) $default, {
    required TResult Function(_ZacValueFromBuilder<T> value) builder,
    required TResult Function(_ZacValueConsume<T> value) consume,
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_ZacValueBuiltIn<T extends Object?> extends _ZacValueBuiltIn<T> {
  _$_ZacValueBuiltIn(@_BuiltInValueConverter() this.value,
      {final String? $type})
      : $type = $type ?? 'z:1:ZacValue',
        super._();

  factory _$_ZacValueBuiltIn.fromJson(Map<String, dynamic> json) =>
      _$$_ZacValueBuiltInFromJson(json);

  @override
  @_BuiltInValueConverter()
  final T value;

  @JsonKey(name: 'converter')
  final String $type;

  @override
  String toString() {
    return 'ZacValue<$T>(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ZacValueBuiltIn<T> &&
            const DeepCollectionEquality().equals(other.value, value));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(value));

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_ZacValueBuiltIn<T> value) $default, {
    required TResult Function(_ZacValueFromBuilder<T> value) builder,
    required TResult Function(_ZacValueConsume<T> value) consume,
  }) {
    return $default(this);
  }
}

abstract class _ZacValueBuiltIn<T extends Object?> extends ZacValue<T> {
  factory _ZacValueBuiltIn(@_BuiltInValueConverter() final T value) =
      _$_ZacValueBuiltIn<T>;
  _ZacValueBuiltIn._() : super._();

  factory _ZacValueBuiltIn.fromJson(Map<String, dynamic> json) =
      _$_ZacValueBuiltIn<T>.fromJson;

  @_BuiltInValueConverter()
  T get value;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_ZacValueFromBuilder<T extends Object?>
    extends _ZacValueFromBuilder<T> {
  _$_ZacValueFromBuilder(this.value, {final String? $type})
      : $type = $type ?? 'z:1:ZacValue.builder',
        super._();

  factory _$_ZacValueFromBuilder.fromJson(Map<String, dynamic> json) =>
      _$$_ZacValueFromBuilderFromJson(json);

  @override
  final ZacBuilder<T> value;

  @JsonKey(name: 'converter')
  final String $type;

  @override
  String toString() {
    return 'ZacValue<$T>.builder(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ZacValueFromBuilder<T> &&
            (identical(other.value, value) || other.value == value));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, value);

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_ZacValueBuiltIn<T> value) $default, {
    required TResult Function(_ZacValueFromBuilder<T> value) builder,
    required TResult Function(_ZacValueConsume<T> value) consume,
  }) {
    return builder(this);
  }
}

abstract class _ZacValueFromBuilder<T extends Object?> extends ZacValue<T> {
  factory _ZacValueFromBuilder(final ZacBuilder<T> value) =
      _$_ZacValueFromBuilder<T>;
  _ZacValueFromBuilder._() : super._();

  factory _ZacValueFromBuilder.fromJson(Map<String, dynamic> json) =
      _$_ZacValueFromBuilder<T>.fromJson;

  ZacBuilder<T> get value;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_ZacValueConsume<T extends Object?> extends _ZacValueConsume<T> {
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
    TResult Function(_ZacValueBuiltIn<T> value) $default, {
    required TResult Function(_ZacValueFromBuilder<T> value) builder,
    required TResult Function(_ZacValueConsume<T> value) consume,
  }) {
    return consume(this);
  }
}

abstract class _ZacValueConsume<T extends Object?> extends ZacValue<T> {
  factory _ZacValueConsume(
      {required final Object family,
      final ZacTransformers? transformer,
      final ZacTransformers? select,
      final SharedValueConsumeType? forceConsume}) = _$_ZacValueConsume<T>;
  _ZacValueConsume._() : super._();

  factory _ZacValueConsume.fromJson(Map<String, dynamic> json) =
      _$_ZacValueConsume<T>.fromJson;

  Object get family;
  ZacTransformers? get transformer;
  ZacTransformers? get select;
  SharedValueConsumeType? get forceConsume;
}

ZacValueList<T, X>
    _$ZacValueListFromJson<T extends Object?, X extends List<T>?>(
        Map<String, dynamic> json) {
  switch (json['converter']) {
    case 'z:1:ZacValueList':
      return _ZacValueList<T, X>.fromJson(json);
    case 'z:1:ZacValueList.consume':
      return _ZacValueListConsume<T, X>.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'converter', 'ZacValueList',
          'Invalid union type "${json['converter']}"!');
  }
}

/// @nodoc
mixin _$ZacValueList<T extends Object?, X extends List<T>?> {
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_ZacValueList<T, X> value) $default, {
    required TResult Function(_ZacValueListConsume<T, X> value) consume,
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_ZacValueList<T extends Object?, X extends List<T>?>
    extends _ZacValueList<T, X> {
  _$_ZacValueList({required final List<ZacValue<T>> items, final String? $type})
      : _items = items,
        $type = $type ?? 'z:1:ZacValueList',
        super._();

  factory _$_ZacValueList.fromJson(Map<String, dynamic> json) =>
      _$$_ZacValueListFromJson(json);

  final List<ZacValue<T>> _items;
  @override
  List<ZacValue<T>> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @JsonKey(name: 'converter')
  final String $type;

  @override
  String toString() {
    return 'ZacValueList<$T, $X>(items: $items)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ZacValueList<T, X> &&
            const DeepCollectionEquality().equals(other._items, _items));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_items));

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_ZacValueList<T, X> value) $default, {
    required TResult Function(_ZacValueListConsume<T, X> value) consume,
  }) {
    return $default(this);
  }
}

abstract class _ZacValueList<T extends Object?, X extends List<T>?>
    extends ZacValueList<T, X> {
  factory _ZacValueList({required final List<ZacValue<T>> items}) =
      _$_ZacValueList<T, X>;
  _ZacValueList._() : super._();

  factory _ZacValueList.fromJson(Map<String, dynamic> json) =
      _$_ZacValueList<T, X>.fromJson;

  List<ZacValue<T>> get items;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_ZacValueListConsume<T extends Object?, X extends List<T>?>
    extends _ZacValueListConsume<T, X> {
  _$_ZacValueListConsume(
      {required this.family,
      this.transformer,
      this.itemTransformer,
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
  final ZacTransformers? itemTransformer;
  @override
  final ZacTransformers? select;
  @override
  final SharedValueConsumeType? forceConsume;

  @JsonKey(name: 'converter')
  final String $type;

  @override
  String toString() {
    return 'ZacValueList<$T, $X>.consume(family: $family, transformer: $transformer, itemTransformer: $itemTransformer, select: $select, forceConsume: $forceConsume)';
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
    TResult Function(_ZacValueList<T, X> value) $default, {
    required TResult Function(_ZacValueListConsume<T, X> value) consume,
  }) {
    return consume(this);
  }
}

abstract class _ZacValueListConsume<T extends Object?, X extends List<T>?>
    extends ZacValueList<T, X> {
  factory _ZacValueListConsume(
          {required final Object family,
          final ZacTransformers? transformer,
          final ZacTransformers? itemTransformer,
          final ZacTransformers? select,
          final SharedValueConsumeType? forceConsume}) =
      _$_ZacValueListConsume<T, X>;
  _ZacValueListConsume._() : super._();

  factory _ZacValueListConsume.fromJson(Map<String, dynamic> json) =
      _$_ZacValueListConsume<T, X>.fromJson;

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
