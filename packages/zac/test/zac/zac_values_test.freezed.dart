// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'zac_values_test.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ZacValueTest _$ZacValueTestFromJson(Map<String, dynamic> json) {
  return _ZacValueTest.fromJson(json);
}

/// @nodoc
mixin _$ZacValueTest {
  ZacValue<int> get value => throw _privateConstructorUsedError;
  ZacValue<int> get simple => throw _privateConstructorUsedError;
  ZacValue<int> get watch => throw _privateConstructorUsedError;
  ZacValue<int> get read => throw _privateConstructorUsedError;
  ZacValue<DateTime>? get date => throw _privateConstructorUsedError;
  ZacValue<CustomData>? get custom => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_ZacValueTest value) $default,
  ) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_ZacValueTest implements _ZacValueTest {
  _$_ZacValueTest(
      {required this.value,
      required this.simple,
      required this.watch,
      required this.read,
      this.date,
      this.custom});

  factory _$_ZacValueTest.fromJson(Map<String, dynamic> json) =>
      _$$_ZacValueTestFromJson(json);

  @override
  final ZacValue<int> value;
  @override
  final ZacValue<int> simple;
  @override
  final ZacValue<int> watch;
  @override
  final ZacValue<int> read;
  @override
  final ZacValue<DateTime>? date;
  @override
  final ZacValue<CustomData>? custom;

  @override
  String toString() {
    return 'ZacValueTest(value: $value, simple: $simple, watch: $watch, read: $read, date: $date, custom: $custom)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ZacValueTest &&
            const DeepCollectionEquality().equals(other.value, value) &&
            const DeepCollectionEquality().equals(other.simple, simple) &&
            const DeepCollectionEquality().equals(other.watch, watch) &&
            const DeepCollectionEquality().equals(other.read, read) &&
            const DeepCollectionEquality().equals(other.date, date) &&
            const DeepCollectionEquality().equals(other.custom, custom));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(value),
      const DeepCollectionEquality().hash(simple),
      const DeepCollectionEquality().hash(watch),
      const DeepCollectionEquality().hash(read),
      const DeepCollectionEquality().hash(date),
      const DeepCollectionEquality().hash(custom));

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_ZacValueTest value) $default,
  ) {
    return $default(this);
  }
}

abstract class _ZacValueTest implements ZacValueTest {
  factory _ZacValueTest(
      {required final ZacValue<int> value,
      required final ZacValue<int> simple,
      required final ZacValue<int> watch,
      required final ZacValue<int> read,
      final ZacValue<DateTime>? date,
      final ZacValue<CustomData>? custom}) = _$_ZacValueTest;

  factory _ZacValueTest.fromJson(Map<String, dynamic> json) =
      _$_ZacValueTest.fromJson;

  @override
  ZacValue<int> get value;
  @override
  ZacValue<int> get simple;
  @override
  ZacValue<int> get watch;
  @override
  ZacValue<int> get read;
  @override
  ZacValue<DateTime>? get date;
  @override
  ZacValue<CustomData>? get custom;
}

ZacValueReadTest _$ZacValueReadTestFromJson(Map<String, dynamic> json) {
  return _ZacValueReadTest.fromJson(json);
}

/// @nodoc
mixin _$ZacValueReadTest {
  ZacValueRead<int> get value => throw _privateConstructorUsedError;
  ZacValueRead<int> get simple => throw _privateConstructorUsedError;
  ZacValueRead<int> get read => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_ZacValueReadTest value) $default,
  ) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_ZacValueReadTest implements _ZacValueReadTest {
  _$_ZacValueReadTest(
      {required this.value, required this.simple, required this.read});

  factory _$_ZacValueReadTest.fromJson(Map<String, dynamic> json) =>
      _$$_ZacValueReadTestFromJson(json);

  @override
  final ZacValueRead<int> value;
  @override
  final ZacValueRead<int> simple;
  @override
  final ZacValueRead<int> read;

  @override
  String toString() {
    return 'ZacValueReadTest(value: $value, simple: $simple, read: $read)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ZacValueReadTest &&
            const DeepCollectionEquality().equals(other.value, value) &&
            const DeepCollectionEquality().equals(other.simple, simple) &&
            const DeepCollectionEquality().equals(other.read, read));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(value),
      const DeepCollectionEquality().hash(simple),
      const DeepCollectionEquality().hash(read));

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_ZacValueReadTest value) $default,
  ) {
    return $default(this);
  }
}

abstract class _ZacValueReadTest implements ZacValueReadTest {
  factory _ZacValueReadTest(
      {required final ZacValueRead<int> value,
      required final ZacValueRead<int> simple,
      required final ZacValueRead<int> read}) = _$_ZacValueReadTest;

  factory _ZacValueReadTest.fromJson(Map<String, dynamic> json) =
      _$_ZacValueReadTest.fromJson;

  @override
  ZacValueRead<int> get value;
  @override
  ZacValueRead<int> get simple;
  @override
  ZacValueRead<int> get read;
}
