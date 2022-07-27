// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'shared_value.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SharedValue _$SharedValueFromJson(Map<String, dynamic> json) {
  switch (json['_converter']) {
    case 'default':
      return FilledSharedValue.fromJson(json);
    case 'empty':
      return EmptySharedValue.fromJson(json);

    default:
      throw CheckedFromJsonException(json, '_converter', 'SharedValue',
          'Invalid union type "${json['_converter']}"!');
  }
}

/// @nodoc
mixin _$SharedValue {
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(FilledSharedValue value) $default, {
    required TResult Function(EmptySharedValue value) empty,
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$FilledSharedValue extends FilledSharedValue {
  _$FilledSharedValue(this.data, {final String? $type})
      : $type = $type ?? 'default',
        super._();

  factory _$FilledSharedValue.fromJson(Map<String, dynamic> json) =>
      _$$FilledSharedValueFromJson(json);

  @override
  final Object data;

  @JsonKey(name: '_converter')
  final String $type;

  @override
  String toString() {
    return 'SharedValue(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FilledSharedValue &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(data));

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(FilledSharedValue value) $default, {
    required TResult Function(EmptySharedValue value) empty,
  }) {
    return $default(this);
  }
}

abstract class FilledSharedValue extends SharedValue {
  factory FilledSharedValue(final Object data) = _$FilledSharedValue;
  FilledSharedValue._() : super._();

  factory FilledSharedValue.fromJson(Map<String, dynamic> json) =
      _$FilledSharedValue.fromJson;

  Object get data;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$EmptySharedValue extends EmptySharedValue {
  _$EmptySharedValue({final String? $type})
      : $type = $type ?? 'empty',
        super._();

  factory _$EmptySharedValue.fromJson(Map<String, dynamic> json) =>
      _$$EmptySharedValueFromJson(json);

  @JsonKey(name: '_converter')
  final String $type;

  @override
  String toString() {
    return 'SharedValue.empty()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$EmptySharedValue);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(FilledSharedValue value) $default, {
    required TResult Function(EmptySharedValue value) empty,
  }) {
    return empty(this);
  }
}

abstract class EmptySharedValue extends SharedValue {
  factory EmptySharedValue() = _$EmptySharedValue;
  EmptySharedValue._() : super._();

  factory EmptySharedValue.fromJson(Map<String, dynamic> json) =
      _$EmptySharedValue.fromJson;
}

/// @nodoc
mixin _$SharedValueInteractionType {
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SharedValueInteractionTypeAction value) action,
    required TResult Function(_SharedValueInteractionTypeConsume value) consume,
    required TResult Function(_SharedValueInteractionTypeProvide value) provide,
    required TResult Function(_SharedValueInteractionTypeOther value) other,
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc

class _$_SharedValueInteractionTypeAction
    extends _SharedValueInteractionTypeAction {
  _$_SharedValueInteractionTypeAction(
      {required this.context, required this.payload})
      : super._();

  @override
  final ZacBuildContext context;
  @override
  final ActionPayload payload;

  @override
  String toString() {
    return 'SharedValueInteractionType.action(context: $context, payload: $payload)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SharedValueInteractionTypeAction &&
            const DeepCollectionEquality().equals(other.context, context) &&
            const DeepCollectionEquality().equals(other.payload, payload));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(context),
      const DeepCollectionEquality().hash(payload));

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SharedValueInteractionTypeAction value) action,
    required TResult Function(_SharedValueInteractionTypeConsume value) consume,
    required TResult Function(_SharedValueInteractionTypeProvide value) provide,
    required TResult Function(_SharedValueInteractionTypeOther value) other,
  }) {
    return action(this);
  }
}

abstract class _SharedValueInteractionTypeAction
    extends SharedValueInteractionType {
  factory _SharedValueInteractionTypeAction(
          {required final ZacBuildContext context,
          required final ActionPayload payload}) =
      _$_SharedValueInteractionTypeAction;
  _SharedValueInteractionTypeAction._() : super._();

  ZacBuildContext get context;
  ActionPayload get payload;
}

/// @nodoc

class _$_SharedValueInteractionTypeConsume
    extends _SharedValueInteractionTypeConsume {
  _$_SharedValueInteractionTypeConsume({required this.context}) : super._();

  @override
  final ZacBuildContext context;

  @override
  String toString() {
    return 'SharedValueInteractionType.consume(context: $context)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SharedValueInteractionTypeConsume &&
            const DeepCollectionEquality().equals(other.context, context));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(context));

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SharedValueInteractionTypeAction value) action,
    required TResult Function(_SharedValueInteractionTypeConsume value) consume,
    required TResult Function(_SharedValueInteractionTypeProvide value) provide,
    required TResult Function(_SharedValueInteractionTypeOther value) other,
  }) {
    return consume(this);
  }
}

abstract class _SharedValueInteractionTypeConsume
    extends SharedValueInteractionType {
  factory _SharedValueInteractionTypeConsume(
          {required final ZacBuildContext context}) =
      _$_SharedValueInteractionTypeConsume;
  _SharedValueInteractionTypeConsume._() : super._();

  ZacBuildContext get context;
}

/// @nodoc

class _$_SharedValueInteractionTypeProvide
    extends _SharedValueInteractionTypeProvide {
  _$_SharedValueInteractionTypeProvide({required this.context}) : super._();

  @override
  final ZacBuildContext context;

  @override
  String toString() {
    return 'SharedValueInteractionType.provide(context: $context)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SharedValueInteractionTypeProvide &&
            const DeepCollectionEquality().equals(other.context, context));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(context));

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SharedValueInteractionTypeAction value) action,
    required TResult Function(_SharedValueInteractionTypeConsume value) consume,
    required TResult Function(_SharedValueInteractionTypeProvide value) provide,
    required TResult Function(_SharedValueInteractionTypeOther value) other,
  }) {
    return provide(this);
  }
}

abstract class _SharedValueInteractionTypeProvide
    extends SharedValueInteractionType {
  factory _SharedValueInteractionTypeProvide(
          {required final ZacBuildContext context}) =
      _$_SharedValueInteractionTypeProvide;
  _SharedValueInteractionTypeProvide._() : super._();

  ZacBuildContext get context;
}

/// @nodoc

class _$_SharedValueInteractionTypeOther
    extends _SharedValueInteractionTypeOther {
  _$_SharedValueInteractionTypeOther({this.data}) : super._();

  @override
  final Object? data;

  @override
  String toString() {
    return 'SharedValueInteractionType.other(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SharedValueInteractionTypeOther &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(data));

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SharedValueInteractionTypeAction value) action,
    required TResult Function(_SharedValueInteractionTypeConsume value) consume,
    required TResult Function(_SharedValueInteractionTypeProvide value) provide,
    required TResult Function(_SharedValueInteractionTypeOther value) other,
  }) {
    return other(this);
  }
}

abstract class _SharedValueInteractionTypeOther
    extends SharedValueInteractionType {
  factory _SharedValueInteractionTypeOther({final Object? data}) =
      _$_SharedValueInteractionTypeOther;
  _SharedValueInteractionTypeOther._() : super._();

  Object? get data;
}

BuiltInTransformer _$BuiltInTransformerFromJson(Map<String, dynamic> json) {
  switch (json['_converter']) {
    case 'z:1:SharedValue:Transform:convert':
      return _Convert.fromJson(json);
    case 'z:1:SharedValue:Transform:Int.add':
      return _IntAdd.fromJson(json);

    default:
      throw CheckedFromJsonException(json, '_converter', 'BuiltInTransformer',
          'Invalid union type "${json['_converter']}"!');
  }
}

/// @nodoc
mixin _$BuiltInTransformer {
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Convert value) convert,
    required TResult Function(_IntAdd value) intAdd,
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_Convert extends _Convert {
  _$_Convert({final String? $type})
      : $type = $type ?? 'z:1:SharedValue:Transform:convert',
        super._();

  factory _$_Convert.fromJson(Map<String, dynamic> json) =>
      _$$_ConvertFromJson(json);

  @JsonKey(name: '_converter')
  final String $type;

  @override
  String toString() {
    return 'BuiltInTransformer.convert()';
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
  TResult map<TResult extends Object?>({
    required TResult Function(_Convert value) convert,
    required TResult Function(_IntAdd value) intAdd,
  }) {
    return convert(this);
  }
}

abstract class _Convert extends BuiltInTransformer {
  factory _Convert() = _$_Convert;
  _Convert._() : super._();

  factory _Convert.fromJson(Map<String, dynamic> json) = _$_Convert.fromJson;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_IntAdd extends _IntAdd {
  _$_IntAdd({required this.amount, final String? $type})
      : $type = $type ?? 'z:1:SharedValue:Transform:Int.add',
        super._();

  factory _$_IntAdd.fromJson(Map<String, dynamic> json) =>
      _$$_IntAddFromJson(json);

  @override
  final int amount;

  @JsonKey(name: '_converter')
  final String $type;

  @override
  String toString() {
    return 'BuiltInTransformer.intAdd(amount: $amount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_IntAdd &&
            const DeepCollectionEquality().equals(other.amount, amount));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(amount));

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Convert value) convert,
    required TResult Function(_IntAdd value) intAdd,
  }) {
    return intAdd(this);
  }
}

abstract class _IntAdd extends BuiltInTransformer {
  factory _IntAdd({required final int amount}) = _$_IntAdd;
  _IntAdd._() : super._();

  factory _IntAdd.fromJson(Map<String, dynamic> json) = _$_IntAdd.fromJson;

  int get amount;
}

UpdateSharedValue _$UpdateSharedValueFromJson(Map<String, dynamic> json) {
  return _UpdateSharedValue.fromJson(json);
}

/// @nodoc
mixin _$UpdateSharedValue {
  String get name => throw _privateConstructorUsedError;
  Object get value => throw _privateConstructorUsedError;
  List<SharedValueTransformer>? get transformer =>
      throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_UpdateSharedValue value) $default,
  ) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_UpdateSharedValue extends _UpdateSharedValue {
  _$_UpdateSharedValue(
      {required this.name,
      required this.value,
      final List<SharedValueTransformer>? transformer})
      : _transformer = transformer,
        super._();

  factory _$_UpdateSharedValue.fromJson(Map<String, dynamic> json) =>
      _$$_UpdateSharedValueFromJson(json);

  @override
  final String name;
  @override
  final Object value;
  final List<SharedValueTransformer>? _transformer;
  @override
  List<SharedValueTransformer>? get transformer {
    final value = _transformer;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'UpdateSharedValue(name: $name, value: $value, transformer: $transformer)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UpdateSharedValue &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.value, value) &&
            const DeepCollectionEquality()
                .equals(other._transformer, _transformer));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(value),
      const DeepCollectionEquality().hash(_transformer));

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_UpdateSharedValue value) $default,
  ) {
    return $default(this);
  }
}

abstract class _UpdateSharedValue extends UpdateSharedValue {
  factory _UpdateSharedValue(
      {required final String name,
      required final Object value,
      final List<SharedValueTransformer>? transformer}) = _$_UpdateSharedValue;
  _UpdateSharedValue._() : super._();

  factory _UpdateSharedValue.fromJson(Map<String, dynamic> json) =
      _$_UpdateSharedValue.fromJson;

  @override
  String get name;
  @override
  Object get value;
  @override
  List<SharedValueTransformer>? get transformer;
}

SharedValueConsumeType _$SharedValueConsumeTypeFromJson(
    Map<String, dynamic> json) {
  switch (json['_converter']) {
    case 'z:1:SharedValueConsume.watch':
      return _SharedValueConsumeTypeWatch.fromJson(json);
    case 'z:1:SharedValueConsume.read':
      return _SharedValueConsumeTypeRead.fromJson(json);

    default:
      throw CheckedFromJsonException(
          json,
          '_converter',
          'SharedValueConsumeType',
          'Invalid union type "${json['_converter']}"!');
  }
}

/// @nodoc
mixin _$SharedValueConsumeType {
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SharedValueConsumeTypeWatch value) watch,
    required TResult Function(_SharedValueConsumeTypeRead value) read,
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_SharedValueConsumeTypeWatch implements _SharedValueConsumeTypeWatch {
  const _$_SharedValueConsumeTypeWatch({final String? $type})
      : $type = $type ?? 'z:1:SharedValueConsume.watch';

  factory _$_SharedValueConsumeTypeWatch.fromJson(Map<String, dynamic> json) =>
      _$$_SharedValueConsumeTypeWatchFromJson(json);

  @JsonKey(name: '_converter')
  final String $type;

  @override
  String toString() {
    return 'SharedValueConsumeType.watch()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SharedValueConsumeTypeWatch);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SharedValueConsumeTypeWatch value) watch,
    required TResult Function(_SharedValueConsumeTypeRead value) read,
  }) {
    return watch(this);
  }
}

abstract class _SharedValueConsumeTypeWatch implements SharedValueConsumeType {
  const factory _SharedValueConsumeTypeWatch() = _$_SharedValueConsumeTypeWatch;

  factory _SharedValueConsumeTypeWatch.fromJson(Map<String, dynamic> json) =
      _$_SharedValueConsumeTypeWatch.fromJson;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_SharedValueConsumeTypeRead implements _SharedValueConsumeTypeRead {
  const _$_SharedValueConsumeTypeRead({final String? $type})
      : $type = $type ?? 'z:1:SharedValueConsume.read';

  factory _$_SharedValueConsumeTypeRead.fromJson(Map<String, dynamic> json) =>
      _$$_SharedValueConsumeTypeReadFromJson(json);

  @JsonKey(name: '_converter')
  final String $type;

  @override
  String toString() {
    return 'SharedValueConsumeType.read()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SharedValueConsumeTypeRead);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SharedValueConsumeTypeWatch value) watch,
    required TResult Function(_SharedValueConsumeTypeRead value) read,
  }) {
    return read(this);
  }
}

abstract class _SharedValueConsumeTypeRead implements SharedValueConsumeType {
  const factory _SharedValueConsumeTypeRead() = _$_SharedValueConsumeTypeRead;

  factory _SharedValueConsumeTypeRead.fromJson(Map<String, dynamic> json) =
      _$_SharedValueConsumeTypeRead.fromJson;
}

SharedValueProviderBuilder _$SharedValueProviderBuilderFromJson(
    Map<String, dynamic> json) {
  return _SharedValueProviderBuilder.fromJson(json);
}

/// @nodoc
mixin _$SharedValueProviderBuilder {
  FlutterKey? get key => throw _privateConstructorUsedError;
  Object get value => throw _privateConstructorUsedError;
  List<SharedValueTransformer>? get transformer =>
      throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  ZacWidget get child => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_SharedValueProviderBuilder value) $default,
  ) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_SharedValueProviderBuilder extends _SharedValueProviderBuilder {
  _$_SharedValueProviderBuilder(
      {this.key,
      required this.value,
      final List<SharedValueTransformer>? transformer,
      required this.name,
      required this.child})
      : _transformer = transformer,
        super._();

  factory _$_SharedValueProviderBuilder.fromJson(Map<String, dynamic> json) =>
      _$$_SharedValueProviderBuilderFromJson(json);

  @override
  final FlutterKey? key;
  @override
  final Object value;
  final List<SharedValueTransformer>? _transformer;
  @override
  List<SharedValueTransformer>? get transformer {
    final value = _transformer;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String name;
  @override
  final ZacWidget child;

  @override
  String toString() {
    return 'SharedValueProviderBuilder(key: $key, value: $value, transformer: $transformer, name: $name, child: $child)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SharedValueProviderBuilder &&
            const DeepCollectionEquality().equals(other.key, key) &&
            const DeepCollectionEquality().equals(other.value, value) &&
            const DeepCollectionEquality()
                .equals(other._transformer, _transformer) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.child, child));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(key),
      const DeepCollectionEquality().hash(value),
      const DeepCollectionEquality().hash(_transformer),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(child));

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_SharedValueProviderBuilder value) $default,
  ) {
    return $default(this);
  }
}

abstract class _SharedValueProviderBuilder extends SharedValueProviderBuilder {
  factory _SharedValueProviderBuilder(
      {final FlutterKey? key,
      required final Object value,
      final List<SharedValueTransformer>? transformer,
      required final String name,
      required final ZacWidget child}) = _$_SharedValueProviderBuilder;
  _SharedValueProviderBuilder._() : super._();

  factory _SharedValueProviderBuilder.fromJson(Map<String, dynamic> json) =
      _$_SharedValueProviderBuilder.fromJson;

  @override
  FlutterKey? get key;
  @override
  Object get value;
  @override
  List<SharedValueTransformer>? get transformer;
  @override
  String get name;
  @override
  ZacWidget get child;
}
