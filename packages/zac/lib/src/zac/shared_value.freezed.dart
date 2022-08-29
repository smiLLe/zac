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
mixin _$SharedValueInteractionType {
  ZacBuildContext get context => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SharedValueInteractionTypeAction value) action,
    required TResult Function(SharedValueInteractionTypeConsume value) consume,
    required TResult Function(SharedValueInteractionTypeProvide value) provide,
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc

class _$SharedValueInteractionTypeAction
    extends SharedValueInteractionTypeAction {
  _$SharedValueInteractionTypeAction(
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
    return 'SharedValueInteractionType.action(context: $context, payload: $payload, current: $current)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SharedValueInteractionTypeAction &&
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
    required TResult Function(SharedValueInteractionTypeAction value) action,
    required TResult Function(SharedValueInteractionTypeConsume value) consume,
    required TResult Function(SharedValueInteractionTypeProvide value) provide,
  }) {
    return action(this);
  }
}

abstract class SharedValueInteractionTypeAction
    extends SharedValueInteractionType {
  factory SharedValueInteractionTypeAction(
      {required final ZacBuildContext context,
      required final ActionPayload payload,
      required final Object? current}) = _$SharedValueInteractionTypeAction;
  SharedValueInteractionTypeAction._() : super._();

  @override
  ZacBuildContext get context;
  ActionPayload get payload;
  Object? get current;
}

/// @nodoc

class _$SharedValueInteractionTypeConsume
    extends SharedValueInteractionTypeConsume {
  _$SharedValueInteractionTypeConsume({required this.context}) : super._();

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
            other is _$SharedValueInteractionTypeConsume &&
            const DeepCollectionEquality().equals(other.context, context));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(context));

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SharedValueInteractionTypeAction value) action,
    required TResult Function(SharedValueInteractionTypeConsume value) consume,
    required TResult Function(SharedValueInteractionTypeProvide value) provide,
  }) {
    return consume(this);
  }
}

abstract class SharedValueInteractionTypeConsume
    extends SharedValueInteractionType {
  factory SharedValueInteractionTypeConsume(
          {required final ZacBuildContext context}) =
      _$SharedValueInteractionTypeConsume;
  SharedValueInteractionTypeConsume._() : super._();

  @override
  ZacBuildContext get context;
}

/// @nodoc

class _$SharedValueInteractionTypeProvide
    extends SharedValueInteractionTypeProvide {
  _$SharedValueInteractionTypeProvide({required this.context}) : super._();

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
            other is _$SharedValueInteractionTypeProvide &&
            const DeepCollectionEquality().equals(other.context, context));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(context));

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(SharedValueInteractionTypeAction value) action,
    required TResult Function(SharedValueInteractionTypeConsume value) consume,
    required TResult Function(SharedValueInteractionTypeProvide value) provide,
  }) {
    return provide(this);
  }
}

abstract class SharedValueInteractionTypeProvide
    extends SharedValueInteractionType {
  factory SharedValueInteractionTypeProvide(
          {required final ZacBuildContext context}) =
      _$SharedValueInteractionTypeProvide;
  SharedValueInteractionTypeProvide._() : super._();

  @override
  ZacBuildContext get context;
}

UpdateSharedValueAction _$UpdateSharedValueActionFromJson(
    Map<String, dynamic> json) {
  return _UpdateSharedValueAction.fromJson(json);
}

/// @nodoc
mixin _$UpdateSharedValueAction {
  Object get family => throw _privateConstructorUsedError;
  Object get value => throw _privateConstructorUsedError;
  List<ZacTransformer>? get transformer => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_UpdateSharedValueAction value) $default,
  ) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_UpdateSharedValueAction extends _UpdateSharedValueAction {
  _$_UpdateSharedValueAction(
      {required this.family,
      required this.value,
      final List<ZacTransformer>? transformer})
      : _transformer = transformer,
        super._();

  factory _$_UpdateSharedValueAction.fromJson(Map<String, dynamic> json) =>
      _$$_UpdateSharedValueActionFromJson(json);

  @override
  final Object family;
  @override
  final Object value;
  final List<ZacTransformer>? _transformer;
  @override
  List<ZacTransformer>? get transformer {
    final value = _transformer;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'UpdateSharedValueAction(family: $family, value: $value, transformer: $transformer)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UpdateSharedValueAction &&
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
    TResult Function(_UpdateSharedValueAction value) $default,
  ) {
    return $default(this);
  }
}

abstract class _UpdateSharedValueAction extends UpdateSharedValueAction {
  factory _UpdateSharedValueAction(
      {required final Object family,
      required final Object value,
      final List<ZacTransformer>? transformer}) = _$_UpdateSharedValueAction;
  _UpdateSharedValueAction._() : super._();

  factory _UpdateSharedValueAction.fromJson(Map<String, dynamic> json) =
      _$_UpdateSharedValueAction.fromJson;

  @override
  Object get family;
  @override
  Object get value;
  @override
  List<ZacTransformer>? get transformer;
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
      {final List<ZacTransformer>? select, final String? $type})
      : _select = select,
        $type = $type ?? 'z:1:SharedValueConsume.watch';

  factory _$_SharedValueConsumeTypeWatch.fromJson(Map<String, dynamic> json) =>
      _$$_SharedValueConsumeTypeWatchFromJson(json);

  final List<ZacTransformer>? _select;
  @override
  List<ZacTransformer>? get select {
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
      {final List<ZacTransformer>? select}) = _$_SharedValueConsumeTypeWatch;

  factory _SharedValueConsumeTypeWatch.fromJson(Map<String, dynamic> json) =
      _$_SharedValueConsumeTypeWatch.fromJson;

  List<ZacTransformer>? get select;
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
  List<ZacTransformer>? get transformer => throw _privateConstructorUsedError;
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
      final List<ZacTransformer>? transformer,
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
  final List<ZacTransformer>? _transformer;
  @override
  List<ZacTransformer>? get transformer {
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
      final List<ZacTransformer>? transformer,
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
  List<ZacTransformer>? get transformer;
  @override
  Object get family;
  @override
  ZacWidget get child;
}
