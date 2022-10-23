// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'zac_values.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ZacValueConsume<TValue> _$ZacValueConsumeFromJson<TValue>(
    Map<String, dynamic> json) {
  switch (json['converter']) {
    case 'z:1:SharedValue':
      return _ZacValueConsumeSimple<TValue>.fromJson(json);
    case 'z:1:SharedValue.watch':
      return _ZacValueConsumeWatch<TValue>.fromJson(json);
    case 'z:1:SharedValue.read':
      return _ZacValueConsumeRead<TValue>.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'converter', 'ZacValueConsume',
          'Invalid union type "${json['converter']}"!');
  }
}

/// @nodoc
mixin _$ZacValueConsume<TValue> {
  ZacTransformers? get transformer => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ZacValueConsumeSimple<TValue> value) simple,
    required TResult Function(_ZacValueConsumeWatch<TValue> value) watch,
    required TResult Function(_ZacValueConsumeRead<TValue> value) read,
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_ZacValueConsumeSimple<TValue> extends _ZacValueConsumeSimple<TValue> {
  _$_ZacValueConsumeSimple(
      {required this.value, this.transformer, final String? $type})
      : $type = $type ?? 'z:1:SharedValue',
        super._();

  factory _$_ZacValueConsumeSimple.fromJson(Map<String, dynamic> json) =>
      _$$_ZacValueConsumeSimpleFromJson(json);

  @override
  final Object? value;
  @override
  final ZacTransformers? transformer;

  @JsonKey(name: 'converter')
  final String $type;

  @override
  String toString() {
    return 'ZacValueConsume<$TValue>.simple(value: $value, transformer: $transformer)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ZacValueConsumeSimple<TValue> &&
            const DeepCollectionEquality().equals(other.value, value) &&
            const DeepCollectionEquality()
                .equals(other.transformer, transformer));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(value),
      const DeepCollectionEquality().hash(transformer));

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ZacValueConsumeSimple<TValue> value) simple,
    required TResult Function(_ZacValueConsumeWatch<TValue> value) watch,
    required TResult Function(_ZacValueConsumeRead<TValue> value) read,
  }) {
    return simple(this);
  }
}

abstract class _ZacValueConsumeSimple<TValue> extends ZacValueConsume<TValue> {
  factory _ZacValueConsumeSimple(
      {required final Object? value,
      final ZacTransformers? transformer}) = _$_ZacValueConsumeSimple<TValue>;
  _ZacValueConsumeSimple._() : super._();

  factory _ZacValueConsumeSimple.fromJson(Map<String, dynamic> json) =
      _$_ZacValueConsumeSimple<TValue>.fromJson;

  Object? get value;
  @override
  ZacTransformers? get transformer;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_ZacValueConsumeWatch<TValue> extends _ZacValueConsumeWatch<TValue> {
  _$_ZacValueConsumeWatch(
      {required this.family,
      this.transformer,
      this.select,
      final String? $type})
      : $type = $type ?? 'z:1:SharedValue.watch',
        super._();

  factory _$_ZacValueConsumeWatch.fromJson(Map<String, dynamic> json) =>
      _$$_ZacValueConsumeWatchFromJson(json);

  @override
  final Object family;
  @override
  final ZacTransformers? transformer;
  @override
  final ZacTransformers? select;

  @JsonKey(name: 'converter')
  final String $type;

  @override
  String toString() {
    return 'ZacValueConsume<$TValue>.watch(family: $family, transformer: $transformer, select: $select)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ZacValueConsumeWatch<TValue> &&
            const DeepCollectionEquality().equals(other.family, family) &&
            const DeepCollectionEquality()
                .equals(other.transformer, transformer) &&
            const DeepCollectionEquality().equals(other.select, select));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(family),
      const DeepCollectionEquality().hash(transformer),
      const DeepCollectionEquality().hash(select));

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ZacValueConsumeSimple<TValue> value) simple,
    required TResult Function(_ZacValueConsumeWatch<TValue> value) watch,
    required TResult Function(_ZacValueConsumeRead<TValue> value) read,
  }) {
    return watch(this);
  }
}

abstract class _ZacValueConsumeWatch<TValue> extends ZacValueConsume<TValue> {
  factory _ZacValueConsumeWatch(
      {required final Object family,
      final ZacTransformers? transformer,
      final ZacTransformers? select}) = _$_ZacValueConsumeWatch<TValue>;
  _ZacValueConsumeWatch._() : super._();

  factory _ZacValueConsumeWatch.fromJson(Map<String, dynamic> json) =
      _$_ZacValueConsumeWatch<TValue>.fromJson;

  Object get family;
  @override
  ZacTransformers? get transformer;
  ZacTransformers? get select;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_ZacValueConsumeRead<TValue> extends _ZacValueConsumeRead<TValue> {
  _$_ZacValueConsumeRead(
      {required this.family, this.transformer, final String? $type})
      : $type = $type ?? 'z:1:SharedValue.read',
        super._();

  factory _$_ZacValueConsumeRead.fromJson(Map<String, dynamic> json) =>
      _$$_ZacValueConsumeReadFromJson(json);

  @override
  final Object family;
  @override
  final ZacTransformers? transformer;

  @JsonKey(name: 'converter')
  final String $type;

  @override
  String toString() {
    return 'ZacValueConsume<$TValue>.read(family: $family, transformer: $transformer)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ZacValueConsumeRead<TValue> &&
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
  TResult map<TResult extends Object?>({
    required TResult Function(_ZacValueConsumeSimple<TValue> value) simple,
    required TResult Function(_ZacValueConsumeWatch<TValue> value) watch,
    required TResult Function(_ZacValueConsumeRead<TValue> value) read,
  }) {
    return read(this);
  }
}

abstract class _ZacValueConsumeRead<TValue> extends ZacValueConsume<TValue> {
  factory _ZacValueConsumeRead(
      {required final Object family,
      final ZacTransformers? transformer}) = _$_ZacValueConsumeRead<TValue>;
  _ZacValueConsumeRead._() : super._();

  factory _ZacValueConsumeRead.fromJson(Map<String, dynamic> json) =
      _$_ZacValueConsumeRead<TValue>.fromJson;

  Object get family;
  @override
  ZacTransformers? get transformer;
}

ZacValueListConsume<TValue> _$ZacValueListConsumeFromJson<TValue>(
    Map<String, dynamic> json) {
  switch (json['converter']) {
    case 'z:1:SharedValue':
      return _ZacValueListConsumeSimple<TValue>.fromJson(json);
    case 'z:1:SharedValue.watch':
      return _ZacValueListConsumeWatch<TValue>.fromJson(json);
    case 'z:1:SharedValue.read':
      return _ZacValueListConsumeRead<TValue>.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'converter', 'ZacValueListConsume',
          'Invalid union type "${json['converter']}"!');
  }
}

/// @nodoc
mixin _$ZacValueListConsume<TValue> {
  ZacTransformers? get transformer => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ZacValueListConsumeSimple<TValue> value) simple,
    required TResult Function(_ZacValueListConsumeWatch<TValue> value) watch,
    required TResult Function(_ZacValueListConsumeRead<TValue> value) read,
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_ZacValueListConsumeSimple<TValue>
    extends _ZacValueListConsumeSimple<TValue> {
  _$_ZacValueListConsumeSimple(
      {required final List<ZacValue<TValue>> value,
      this.transformer,
      final String? $type})
      : _value = value,
        $type = $type ?? 'z:1:SharedValue',
        super._();

  factory _$_ZacValueListConsumeSimple.fromJson(Map<String, dynamic> json) =>
      _$$_ZacValueListConsumeSimpleFromJson(json);

  final List<ZacValue<TValue>> _value;
  @override
  List<ZacValue<TValue>> get value {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_value);
  }

  @override
  final ZacTransformers? transformer;

  @JsonKey(name: 'converter')
  final String $type;

  @override
  String toString() {
    return 'ZacValueListConsume<$TValue>.simple(value: $value, transformer: $transformer)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ZacValueListConsumeSimple<TValue> &&
            const DeepCollectionEquality().equals(other._value, _value) &&
            const DeepCollectionEquality()
                .equals(other.transformer, transformer));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_value),
      const DeepCollectionEquality().hash(transformer));

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ZacValueListConsumeSimple<TValue> value) simple,
    required TResult Function(_ZacValueListConsumeWatch<TValue> value) watch,
    required TResult Function(_ZacValueListConsumeRead<TValue> value) read,
  }) {
    return simple(this);
  }
}

abstract class _ZacValueListConsumeSimple<TValue>
    extends ZacValueListConsume<TValue> {
  factory _ZacValueListConsumeSimple(
          {required final List<ZacValue<TValue>> value,
          final ZacTransformers? transformer}) =
      _$_ZacValueListConsumeSimple<TValue>;
  _ZacValueListConsumeSimple._() : super._();

  factory _ZacValueListConsumeSimple.fromJson(Map<String, dynamic> json) =
      _$_ZacValueListConsumeSimple<TValue>.fromJson;

  List<ZacValue<TValue>> get value;
  @override
  ZacTransformers? get transformer;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_ZacValueListConsumeWatch<TValue>
    extends _ZacValueListConsumeWatch<TValue> {
  _$_ZacValueListConsumeWatch(
      {required this.family,
      this.transformer,
      this.select,
      final String? $type})
      : $type = $type ?? 'z:1:SharedValue.watch',
        super._();

  factory _$_ZacValueListConsumeWatch.fromJson(Map<String, dynamic> json) =>
      _$$_ZacValueListConsumeWatchFromJson(json);

  @override
  final Object family;
  @override
  final ZacTransformers? transformer;
  @override
  final ZacTransformers? select;

  @JsonKey(name: 'converter')
  final String $type;

  @override
  String toString() {
    return 'ZacValueListConsume<$TValue>.watch(family: $family, transformer: $transformer, select: $select)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ZacValueListConsumeWatch<TValue> &&
            const DeepCollectionEquality().equals(other.family, family) &&
            const DeepCollectionEquality()
                .equals(other.transformer, transformer) &&
            const DeepCollectionEquality().equals(other.select, select));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(family),
      const DeepCollectionEquality().hash(transformer),
      const DeepCollectionEquality().hash(select));

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ZacValueListConsumeSimple<TValue> value) simple,
    required TResult Function(_ZacValueListConsumeWatch<TValue> value) watch,
    required TResult Function(_ZacValueListConsumeRead<TValue> value) read,
  }) {
    return watch(this);
  }
}

abstract class _ZacValueListConsumeWatch<TValue>
    extends ZacValueListConsume<TValue> {
  factory _ZacValueListConsumeWatch(
      {required final Object family,
      final ZacTransformers? transformer,
      final ZacTransformers? select}) = _$_ZacValueListConsumeWatch<TValue>;
  _ZacValueListConsumeWatch._() : super._();

  factory _ZacValueListConsumeWatch.fromJson(Map<String, dynamic> json) =
      _$_ZacValueListConsumeWatch<TValue>.fromJson;

  Object get family;
  @override
  ZacTransformers? get transformer;
  ZacTransformers? get select;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_ZacValueListConsumeRead<TValue>
    extends _ZacValueListConsumeRead<TValue> {
  _$_ZacValueListConsumeRead(
      {required this.family, this.transformer, final String? $type})
      : $type = $type ?? 'z:1:SharedValue.read',
        super._();

  factory _$_ZacValueListConsumeRead.fromJson(Map<String, dynamic> json) =>
      _$$_ZacValueListConsumeReadFromJson(json);

  @override
  final Object family;
  @override
  final ZacTransformers? transformer;

  @JsonKey(name: 'converter')
  final String $type;

  @override
  String toString() {
    return 'ZacValueListConsume<$TValue>.read(family: $family, transformer: $transformer)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ZacValueListConsumeRead<TValue> &&
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
  TResult map<TResult extends Object?>({
    required TResult Function(_ZacValueListConsumeSimple<TValue> value) simple,
    required TResult Function(_ZacValueListConsumeWatch<TValue> value) watch,
    required TResult Function(_ZacValueListConsumeRead<TValue> value) read,
  }) {
    return read(this);
  }
}

abstract class _ZacValueListConsumeRead<TValue>
    extends ZacValueListConsume<TValue> {
  factory _ZacValueListConsumeRead(
      {required final Object family,
      final ZacTransformers? transformer}) = _$_ZacValueListConsumeRead<TValue>;
  _ZacValueListConsumeRead._() : super._();

  factory _ZacValueListConsumeRead.fromJson(Map<String, dynamic> json) =
      _$_ZacValueListConsumeRead<TValue>.fromJson;

  Object get family;
  @override
  ZacTransformers? get transformer;
}
