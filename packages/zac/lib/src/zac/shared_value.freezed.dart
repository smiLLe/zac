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
  final Object? data;

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
  factory FilledSharedValue(final Object? data) = _$FilledSharedValue;
  FilledSharedValue._() : super._();

  factory FilledSharedValue.fromJson(Map<String, dynamic> json) =
      _$FilledSharedValue.fromJson;

  Object? get data;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$EmptySharedValue extends EmptySharedValue {
  const _$EmptySharedValue({final String? $type})
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
  const factory EmptySharedValue() = _$EmptySharedValue;
  const EmptySharedValue._() : super._();

  factory EmptySharedValue.fromJson(Map<String, dynamic> json) =
      _$EmptySharedValue.fromJson;
}

/// @nodoc
mixin _$ZacSharedValueInteractionType {
  ZacBuildContext get context => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ZacSharedValueInteractionTypeAction value) action,
    required TResult Function(ZacSharedValueInteractionTypeConsume value)
        consume,
    required TResult Function(ZacSharedValueInteractionTypeProvide value)
        provide,
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc

class _$ZacSharedValueInteractionTypeAction
    extends ZacSharedValueInteractionTypeAction {
  _$ZacSharedValueInteractionTypeAction(
      {required this.context, required this.payload, required this.current})
      : super._();

  @override
  final ZacBuildContext context;
  @override
  final ActionPayload payload;
  @override
  final Object? current;

  @override
  String toString() {
    return 'ZacSharedValueInteractionType.action(context: $context, payload: $payload, current: $current)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ZacSharedValueInteractionTypeAction &&
            const DeepCollectionEquality().equals(other.context, context) &&
            const DeepCollectionEquality().equals(other.payload, payload) &&
            const DeepCollectionEquality().equals(other.current, current));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(context),
      const DeepCollectionEquality().hash(payload),
      const DeepCollectionEquality().hash(current));

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ZacSharedValueInteractionTypeAction value) action,
    required TResult Function(ZacSharedValueInteractionTypeConsume value)
        consume,
    required TResult Function(ZacSharedValueInteractionTypeProvide value)
        provide,
  }) {
    return action(this);
  }
}

abstract class ZacSharedValueInteractionTypeAction
    extends ZacSharedValueInteractionType {
  factory ZacSharedValueInteractionTypeAction(
      {required final ZacBuildContext context,
      required final ActionPayload payload,
      required final Object? current}) = _$ZacSharedValueInteractionTypeAction;
  ZacSharedValueInteractionTypeAction._() : super._();

  @override
  ZacBuildContext get context;
  ActionPayload get payload;
  Object? get current;
}

/// @nodoc

class _$ZacSharedValueInteractionTypeConsume
    extends ZacSharedValueInteractionTypeConsume {
  _$ZacSharedValueInteractionTypeConsume({required this.context}) : super._();

  @override
  final ZacBuildContext context;

  @override
  String toString() {
    return 'ZacSharedValueInteractionType.consume(context: $context)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ZacSharedValueInteractionTypeConsume &&
            const DeepCollectionEquality().equals(other.context, context));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(context));

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ZacSharedValueInteractionTypeAction value) action,
    required TResult Function(ZacSharedValueInteractionTypeConsume value)
        consume,
    required TResult Function(ZacSharedValueInteractionTypeProvide value)
        provide,
  }) {
    return consume(this);
  }
}

abstract class ZacSharedValueInteractionTypeConsume
    extends ZacSharedValueInteractionType {
  factory ZacSharedValueInteractionTypeConsume(
          {required final ZacBuildContext context}) =
      _$ZacSharedValueInteractionTypeConsume;
  ZacSharedValueInteractionTypeConsume._() : super._();

  @override
  ZacBuildContext get context;
}

/// @nodoc

class _$ZacSharedValueInteractionTypeProvide
    extends ZacSharedValueInteractionTypeProvide {
  _$ZacSharedValueInteractionTypeProvide({required this.context}) : super._();

  @override
  final ZacBuildContext context;

  @override
  String toString() {
    return 'ZacSharedValueInteractionType.provide(context: $context)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ZacSharedValueInteractionTypeProvide &&
            const DeepCollectionEquality().equals(other.context, context));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(context));

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ZacSharedValueInteractionTypeAction value) action,
    required TResult Function(ZacSharedValueInteractionTypeConsume value)
        consume,
    required TResult Function(ZacSharedValueInteractionTypeProvide value)
        provide,
  }) {
    return provide(this);
  }
}

abstract class ZacSharedValueInteractionTypeProvide
    extends ZacSharedValueInteractionType {
  factory ZacSharedValueInteractionTypeProvide(
          {required final ZacBuildContext context}) =
      _$ZacSharedValueInteractionTypeProvide;
  ZacSharedValueInteractionTypeProvide._() : super._();

  @override
  ZacBuildContext get context;
}

UpdateSharedValue _$UpdateSharedValueFromJson(Map<String, dynamic> json) {
  return _UpdateSharedValue.fromJson(json);
}

/// @nodoc
mixin _$UpdateSharedValue {
  Object get family => throw _privateConstructorUsedError;
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
      {required this.family,
      required this.value,
      final List<SharedValueTransformer>? transformer})
      : _transformer = transformer,
        super._();

  factory _$_UpdateSharedValue.fromJson(Map<String, dynamic> json) =>
      _$$_UpdateSharedValueFromJson(json);

  @override
  final Object family;
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
    return 'UpdateSharedValue(family: $family, value: $value, transformer: $transformer)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UpdateSharedValue &&
            const DeepCollectionEquality().equals(other.family, family) &&
            const DeepCollectionEquality().equals(other.value, value) &&
            const DeepCollectionEquality()
                .equals(other._transformer, _transformer));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(family),
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
      {required final Object family,
      required final Object value,
      final List<SharedValueTransformer>? transformer}) = _$_UpdateSharedValue;
  _UpdateSharedValue._() : super._();

  factory _UpdateSharedValue.fromJson(Map<String, dynamic> json) =
      _$_UpdateSharedValue.fromJson;

  @override
  Object get family;
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
  const _$_SharedValueConsumeTypeWatch(
      {final List<SharedValueTransformer>? select, final String? $type})
      : _select = select,
        $type = $type ?? 'z:1:SharedValueConsume.watch';

  factory _$_SharedValueConsumeTypeWatch.fromJson(Map<String, dynamic> json) =>
      _$$_SharedValueConsumeTypeWatchFromJson(json);

  final List<SharedValueTransformer>? _select;
  @override
  List<SharedValueTransformer>? get select {
    final value = _select;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @JsonKey(name: '_converter')
  final String $type;

  @override
  String toString() {
    return 'SharedValueConsumeType.watch(select: $select)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SharedValueConsumeTypeWatch &&
            const DeepCollectionEquality().equals(other._select, _select));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_select));

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
  const factory _SharedValueConsumeTypeWatch(
          {final List<SharedValueTransformer>? select}) =
      _$_SharedValueConsumeTypeWatch;

  factory _SharedValueConsumeTypeWatch.fromJson(Map<String, dynamic> json) =
      _$_SharedValueConsumeTypeWatch.fromJson;

  List<SharedValueTransformer>? get select;
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
  Object? get value => throw _privateConstructorUsedError;
  List<SharedValueTransformer>? get transformer =>
      throw _privateConstructorUsedError;
  Object get family => throw _privateConstructorUsedError;
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
      required this.family,
      required this.child})
      : _transformer = transformer,
        super._();

  factory _$_SharedValueProviderBuilder.fromJson(Map<String, dynamic> json) =>
      _$$_SharedValueProviderBuilderFromJson(json);

  @override
  final FlutterKey? key;
  @override
  final Object? value;
  final List<SharedValueTransformer>? _transformer;
  @override
  List<SharedValueTransformer>? get transformer {
    final value = _transformer;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final Object family;
  @override
  final ZacWidget child;

  @override
  String toString() {
    return 'SharedValueProviderBuilder(key: $key, value: $value, transformer: $transformer, family: $family, child: $child)';
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
            const DeepCollectionEquality().equals(other.family, family) &&
            const DeepCollectionEquality().equals(other.child, child));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(key),
      const DeepCollectionEquality().hash(value),
      const DeepCollectionEquality().hash(_transformer),
      const DeepCollectionEquality().hash(family),
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
      required final Object? value,
      final List<SharedValueTransformer>? transformer,
      required final Object family,
      required final ZacWidget child}) = _$_SharedValueProviderBuilder;
  _SharedValueProviderBuilder._() : super._();

  factory _SharedValueProviderBuilder.fromJson(Map<String, dynamic> json) =
      _$_SharedValueProviderBuilder.fromJson;

  @override
  FlutterKey? get key;
  @override
  Object? get value;
  @override
  List<SharedValueTransformer>? get transformer;
  @override
  Object get family;
  @override
  ZacWidget get child;
}
