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

UpdateSharedValueInteractions _$UpdateSharedValueInteractionsFromJson(
    Map<String, dynamic> json) {
  switch (json['_converter']) {
    case 'z:1:SharedValue.update':
      return _SharedValueInteractionUpdate.fromJson(json);
    case 'z:1:SharedValue.replaceWith':
      return _SharedValueInteractionReplaceWith.fromJson(json);

    default:
      throw CheckedFromJsonException(
          json,
          '_converter',
          'UpdateSharedValueInteractions',
          'Invalid union type "${json['_converter']}"!');
  }
}

/// @nodoc
mixin _$UpdateSharedValueInteractions {
  Object get family => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_SharedValueInteractionUpdate value) $default, {
    required TResult Function(_SharedValueInteractionReplaceWith value)
        replaceWith,
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_SharedValueInteractionUpdate extends _SharedValueInteractionUpdate {
  _$_SharedValueInteractionUpdate(
      {required this.family, required this.transformer, final String? $type})
      : $type = $type ?? 'z:1:SharedValue.update',
        super._();

  factory _$_SharedValueInteractionUpdate.fromJson(Map<String, dynamic> json) =>
      _$$_SharedValueInteractionUpdateFromJson(json);

  @override
  final Object family;
  @override
  final ZacTransformers transformer;

  @JsonKey(name: '_converter')
  final String $type;

  @override
  String toString() {
    return 'UpdateSharedValueInteractions(family: $family, transformer: $transformer)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SharedValueInteractionUpdate &&
            const DeepCollectionEquality().equals(other.family, family) &&
            const DeepCollectionEquality()
                .equals(other.transformer, transformer));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(family),
      const DeepCollectionEquality().hash(transformer));

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_SharedValueInteractionUpdate value) $default, {
    required TResult Function(_SharedValueInteractionReplaceWith value)
        replaceWith,
  }) {
    return $default(this);
  }
}

abstract class _SharedValueInteractionUpdate
    extends UpdateSharedValueInteractions {
  factory _SharedValueInteractionUpdate(
          {required final Object family,
          required final ZacTransformers transformer}) =
      _$_SharedValueInteractionUpdate;
  _SharedValueInteractionUpdate._() : super._();

  factory _SharedValueInteractionUpdate.fromJson(Map<String, dynamic> json) =
      _$_SharedValueInteractionUpdate.fromJson;

  @override
  Object get family;
  ZacTransformers get transformer;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_SharedValueInteractionReplaceWith
    extends _SharedValueInteractionReplaceWith {
  _$_SharedValueInteractionReplaceWith(
      {required this.family,
      required this.value,
      this.transformer,
      final String? $type})
      : $type = $type ?? 'z:1:SharedValue.replaceWith',
        super._();

  factory _$_SharedValueInteractionReplaceWith.fromJson(
          Map<String, dynamic> json) =>
      _$$_SharedValueInteractionReplaceWithFromJson(json);

  @override
  final Object family;
  @override
  final Object value;
  @override
  final ZacTransformers? transformer;

  @JsonKey(name: '_converter')
  final String $type;

  @override
  String toString() {
    return 'UpdateSharedValueInteractions.replaceWith(family: $family, value: $value, transformer: $transformer)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SharedValueInteractionReplaceWith &&
            const DeepCollectionEquality().equals(other.family, family) &&
            const DeepCollectionEquality().equals(other.value, value) &&
            const DeepCollectionEquality()
                .equals(other.transformer, transformer));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(family),
      const DeepCollectionEquality().hash(value),
      const DeepCollectionEquality().hash(transformer));

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_SharedValueInteractionUpdate value) $default, {
    required TResult Function(_SharedValueInteractionReplaceWith value)
        replaceWith,
  }) {
    return replaceWith(this);
  }
}

abstract class _SharedValueInteractionReplaceWith
    extends UpdateSharedValueInteractions {
  factory _SharedValueInteractionReplaceWith(
          {required final Object family,
          required final Object value,
          final ZacTransformers? transformer}) =
      _$_SharedValueInteractionReplaceWith;
  _SharedValueInteractionReplaceWith._() : super._();

  factory _SharedValueInteractionReplaceWith.fromJson(
          Map<String, dynamic> json) =
      _$_SharedValueInteractionReplaceWith.fromJson;

  @override
  Object get family;
  Object get value;
  ZacTransformers? get transformer;
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
  const _$_SharedValueConsumeTypeWatch({this.select, final String? $type})
      : $type = $type ?? 'z:1:SharedValueConsume.watch';

  factory _$_SharedValueConsumeTypeWatch.fromJson(Map<String, dynamic> json) =>
      _$$_SharedValueConsumeTypeWatchFromJson(json);

  @override
  final ZacTransformers? select;

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
            const DeepCollectionEquality().equals(other.select, select));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(select));

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
  const factory _SharedValueConsumeTypeWatch({final ZacTransformers? select}) =
      _$_SharedValueConsumeTypeWatch;

  factory _SharedValueConsumeTypeWatch.fromJson(Map<String, dynamic> json) =
      _$_SharedValueConsumeTypeWatch.fromJson;

  ZacTransformers? get select;
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
  ZacTransformers? get transformer => throw _privateConstructorUsedError;
  Object get family => throw _privateConstructorUsedError;
  FlutterWidget get child => throw _privateConstructorUsedError;

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
      this.transformer,
      required this.family,
      required this.child})
      : super._();

  factory _$_SharedValueProviderBuilder.fromJson(Map<String, dynamic> json) =>
      _$$_SharedValueProviderBuilderFromJson(json);

  @override
  final FlutterKey? key;
  @override
  final Object? value;
  @override
  final ZacTransformers? transformer;
  @override
  final Object family;
  @override
  final FlutterWidget child;

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
                .equals(other.transformer, transformer) &&
            const DeepCollectionEquality().equals(other.family, family) &&
            const DeepCollectionEquality().equals(other.child, child));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(key),
      const DeepCollectionEquality().hash(value),
      const DeepCollectionEquality().hash(transformer),
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
      final ZacTransformers? transformer,
      required final Object family,
      required final FlutterWidget child}) = _$_SharedValueProviderBuilder;
  _SharedValueProviderBuilder._() : super._();

  factory _SharedValueProviderBuilder.fromJson(Map<String, dynamic> json) =
      _$_SharedValueProviderBuilder.fromJson;

  @override
  FlutterKey? get key;
  @override
  Object? get value;
  @override
  ZacTransformers? get transformer;
  @override
  Object get family;
  @override
  FlutterWidget get child;
}
