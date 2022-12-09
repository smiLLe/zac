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

ZacValue<T> _$ZacValueFromJson<T>(Map<String, dynamic> json) {
  switch (json['converter']) {
    case 'z:1:ZacValue.builder':
      return _ZacValueBuilder<T>.fromJson(json);
    case 'z:1:ZacValue.value':
      return _ZacValueValue<T>.fromJson(json);
    case 'z:1:ZacValue.consume':
      return _ZacValueConsume<T>.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'converter', 'ZacValue',
          'Invalid union type "${json['converter']}"!');
  }
}

/// @nodoc
mixin _$ZacValue<T> {
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ZacValueBuilder<T> value) builder,
    required TResult Function(_ZacValueValue<T> value) value,
    required TResult Function(_ZacValueConsume<T> value) consume,
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_ZacValueBuilder<T> implements _ZacValueBuilder<T> {
  _$_ZacValueBuilder(
      {@_BuilderConverter<T>() required this.builder, final String? $type})
      : $type = $type ?? 'z:1:ZacValue.builder';

  factory _$_ZacValueBuilder.fromJson(Map<String, dynamic> json) =>
      _$$_ZacValueBuilderFromJson(json);

// required ZacBuilder<T> builder,
// @JsonKey(fromJson: _choiceListFromJson) required ZacBuilder<T> builder,
  @override
  @_BuilderConverter<T>()
  final ZacBuilder<T> builder;

  @JsonKey(name: 'converter')
  final String $type;

  @override
  String toString() {
    return 'ZacValue<$T>.builder(builder: $builder)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ZacValueBuilder<T> &&
            (identical(other.builder, builder) || other.builder == builder));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, builder);

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ZacValueBuilder<T> value) builder,
    required TResult Function(_ZacValueValue<T> value) value,
    required TResult Function(_ZacValueConsume<T> value) consume,
  }) {
    return builder(this);
  }
}

abstract class _ZacValueBuilder<T> implements ZacValue<T> {
  factory _ZacValueBuilder(
          {@_BuilderConverter<T>() required final ZacBuilder<T> builder}) =
      _$_ZacValueBuilder<T>;

  factory _ZacValueBuilder.fromJson(Map<String, dynamic> json) =
      _$_ZacValueBuilder<T>.fromJson;

// required ZacBuilder<T> builder,
// @JsonKey(fromJson: _choiceListFromJson) required ZacBuilder<T> builder,
  @_BuilderConverter<T>()
  ZacBuilder<T> get builder;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_ZacValueValue<T> implements _ZacValueValue<T> {
  _$_ZacValueValue(
      {@_ValueConverter() required this.value, final String? $type})
      : $type = $type ?? 'z:1:ZacValue.value';

  factory _$_ZacValueValue.fromJson(Map<String, dynamic> json) =>
      _$$_ZacValueValueFromJson(json);

  @override
  @_ValueConverter()
  final T value;

  @JsonKey(name: 'converter')
  final String $type;

  @override
  String toString() {
    return 'ZacValue<$T>.value(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ZacValueValue<T> &&
            const DeepCollectionEquality().equals(other.value, value));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(value));

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ZacValueBuilder<T> value) builder,
    required TResult Function(_ZacValueValue<T> value) value,
    required TResult Function(_ZacValueConsume<T> value) consume,
  }) {
    return value(this);
  }
}

abstract class _ZacValueValue<T> implements ZacValue<T> {
  factory _ZacValueValue({@_ValueConverter() required final T value}) =
      _$_ZacValueValue<T>;

  factory _ZacValueValue.fromJson(Map<String, dynamic> json) =
      _$_ZacValueValue<T>.fromJson;

  @_ValueConverter()
  T get value;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_ZacValueConsume<T> implements _ZacValueConsume<T> {
  _$_ZacValueConsume(
      {required this.family,
      this.transformer,
      this.select,
      this.forceConsume,
      final String? $type})
      : $type = $type ?? 'z:1:ZacValue.consume';

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
  TResult map<TResult extends Object?>({
    required TResult Function(_ZacValueBuilder<T> value) builder,
    required TResult Function(_ZacValueValue<T> value) value,
    required TResult Function(_ZacValueConsume<T> value) consume,
  }) {
    return consume(this);
  }
}

abstract class _ZacValueConsume<T> implements ZacValue<T> {
  factory _ZacValueConsume(
      {required final Object family,
      final ZacTransformers? transformer,
      final ZacTransformers? select,
      final SharedValueConsumeType? forceConsume}) = _$_ZacValueConsume<T>;

  factory _ZacValueConsume.fromJson(Map<String, dynamic> json) =
      _$_ZacValueConsume<T>.fromJson;

  Object get family;
  ZacTransformers? get transformer;
  ZacTransformers? get select;
  SharedValueConsumeType? get forceConsume;
}

ZacValueList<T> _$ZacValueListFromJson<T>(Map<String, dynamic> json) {
  switch (json['converter']) {
    case 'z:1:ZacValue.builder':
      return _ZacValueListBuilder<T>.fromJson(json);
    case 'z:1:ZacValue.value':
      return _ZacValueListValue<T>.fromJson(json);
    case 'z:1:ZacValue.consume':
      return _ZacValueListConsume<T>.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'converter', 'ZacValueList',
          'Invalid union type "${json['converter']}"!');
  }
}

/// @nodoc
mixin _$ZacValueList<T> {
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ZacValueListBuilder<T> value) builder,
    required TResult Function(_ZacValueListValue<T> value) value,
    required TResult Function(_ZacValueListConsume<T> value) consume,
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_ZacValueListBuilder<T> extends _ZacValueListBuilder<T> {
  _$_ZacValueListBuilder(
      {@_BuilderListConverter() required final List<ZacBuilder<T>> items,
      final String? $type})
      : _items = items,
        $type = $type ?? 'z:1:ZacValue.builder',
        super._();

  factory _$_ZacValueListBuilder.fromJson(Map<String, dynamic> json) =>
      _$$_ZacValueListBuilderFromJson(json);

  final List<ZacBuilder<T>> _items;
  @override
  @_BuilderListConverter()
  List<ZacBuilder<T>> get items {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @JsonKey(name: 'converter')
  final String $type;

  @override
  String toString() {
    return 'ZacValueList<$T>.builder(items: $items)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ZacValueListBuilder<T> &&
            const DeepCollectionEquality().equals(other._items, _items));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_items));

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ZacValueListBuilder<T> value) builder,
    required TResult Function(_ZacValueListValue<T> value) value,
    required TResult Function(_ZacValueListConsume<T> value) consume,
  }) {
    return builder(this);
  }
}

abstract class _ZacValueListBuilder<T> extends ZacValueList<T> {
  factory _ZacValueListBuilder(
          {@_BuilderListConverter() required final List<ZacBuilder<T>> items}) =
      _$_ZacValueListBuilder<T>;
  _ZacValueListBuilder._() : super._();

  factory _ZacValueListBuilder.fromJson(Map<String, dynamic> json) =
      _$_ZacValueListBuilder<T>.fromJson;

  @_BuilderListConverter()
  List<ZacBuilder<T>> get items;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_ZacValueListValue<T> extends _ZacValueListValue<T> {
  _$_ZacValueListValue(
      {@_ValueListConverter() required final List<T> items,
      final String? $type})
      : _items = items,
        $type = $type ?? 'z:1:ZacValue.value',
        super._();

  factory _$_ZacValueListValue.fromJson(Map<String, dynamic> json) =>
      _$$_ZacValueListValueFromJson(json);

  final List<T> _items;
  @override
  @_ValueListConverter()
  List<T> get items {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

  @JsonKey(name: 'converter')
  final String $type;

  @override
  String toString() {
    return 'ZacValueList<$T>.value(items: $items)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ZacValueListValue<T> &&
            const DeepCollectionEquality().equals(other._items, _items));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_items));

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ZacValueListBuilder<T> value) builder,
    required TResult Function(_ZacValueListValue<T> value) value,
    required TResult Function(_ZacValueListConsume<T> value) consume,
  }) {
    return value(this);
  }
}

abstract class _ZacValueListValue<T> extends ZacValueList<T> {
  factory _ZacValueListValue(
          {@_ValueListConverter() required final List<T> items}) =
      _$_ZacValueListValue<T>;
  _ZacValueListValue._() : super._();

  factory _ZacValueListValue.fromJson(Map<String, dynamic> json) =
      _$_ZacValueListValue<T>.fromJson;

  @_ValueListConverter()
  List<T> get items;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_ZacValueListConsume<T> extends _ZacValueListConsume<T> {
  _$_ZacValueListConsume(
      {required this.family,
      this.transformer,
      this.itemTransformer,
      this.select,
      this.forceConsume,
      final String? $type})
      : $type = $type ?? 'z:1:ZacValue.consume',
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
    return 'ZacValueList<$T>.consume(family: $family, transformer: $transformer, itemTransformer: $itemTransformer, select: $select, forceConsume: $forceConsume)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ZacValueListConsume<T> &&
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
  TResult map<TResult extends Object?>({
    required TResult Function(_ZacValueListBuilder<T> value) builder,
    required TResult Function(_ZacValueListValue<T> value) value,
    required TResult Function(_ZacValueListConsume<T> value) consume,
  }) {
    return consume(this);
  }
}

abstract class _ZacValueListConsume<T> extends ZacValueList<T> {
  factory _ZacValueListConsume(
      {required final Object family,
      final ZacTransformers? transformer,
      final ZacTransformers? itemTransformer,
      final ZacTransformers? select,
      final SharedValueConsumeType? forceConsume}) = _$_ZacValueListConsume<T>;
  _ZacValueListConsume._() : super._();

  factory _ZacValueListConsume.fromJson(Map<String, dynamic> json) =
      _$_ZacValueListConsume<T>.fromJson;

  Object get family;
  ZacTransformers? get transformer;
  ZacTransformers? get itemTransformer;
  ZacTransformers? get select;
  SharedValueConsumeType? get forceConsume;
}

ZacListOfFlutterWidget _$ZacListOfFlutterWidgetFromJson(
    Map<String, dynamic> json) {
  switch (json['converter']) {
    case 'z:1:List<FlutterWidget>':
      return _ZacListOfFlutterWidget.fromJson(json);
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
class _$_ZacListOfFlutterWidgetSharedValue
    extends _ZacListOfFlutterWidgetSharedValue
    with ConsumeSharedValueList<FlutterWidget> {
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
    required TResult Function(_ZacListOfFlutterWidgetSharedValue value) consume,
  }) {
    return consume(this);
  }
}

abstract class _ZacListOfFlutterWidgetSharedValue extends ZacListOfFlutterWidget
    implements ConsumeSharedValueList<FlutterWidget> {
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

ZacValueActions _$ZacValueActionsFromJson(Map<String, dynamic> json) {
  return _ZacValueActionsAsPayload.fromJson(json);
}

/// @nodoc
mixin _$ZacValueActions {
  ZacValue<Object> get value => throw _privateConstructorUsedError;
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
  final ZacValue<Object> value;
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
      {required final ZacValue<Object> value,
      required final ZacActions actions}) = _$_ZacValueActionsAsPayload;
  _ZacValueActionsAsPayload._() : super._();

  factory _ZacValueActionsAsPayload.fromJson(Map<String, dynamic> json) =
      _$_ZacValueActionsAsPayload.fromJson;

  @override
  ZacValue<Object> get value;
  @override
  ZacActions get actions;
}
