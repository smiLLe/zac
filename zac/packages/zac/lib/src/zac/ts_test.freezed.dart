// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'ts_test.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TsTest _$TsTestFromJson(Map<String, dynamic> json) {
  return _TsTest.fromJson(json);
}

/// @nodoc
mixin _$TsTest {
  int? get reqButOpt => throw _privateConstructorUsedError;
  DateTime get someDate => throw _privateConstructorUsedError;
  ZacValue<int> get reqInt => throw _privateConstructorUsedError;
  ZacValue<int>? get optionalInt => throw _privateConstructorUsedError;
  ZacValue<ZacValue<ZacValue<int>>>? get deep1 =>
      throw _privateConstructorUsedError;
  ZacValue<ZacValue<ZacValue<int>?>>? get deep2 =>
      throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_TsTest value) $default,
  ) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_TsTest extends _TsTest {
  _$_TsTest(this.reqButOpt, this.someDate,
      {required this.reqInt, this.optionalInt, this.deep1, required this.deep2})
      : super._();

  factory _$_TsTest.fromJson(Map<String, dynamic> json) =>
      _$$_TsTestFromJson(json);

  @override
  final int? reqButOpt;
  @override
  final DateTime someDate;
  @override
  final ZacValue<int> reqInt;
  @override
  final ZacValue<int>? optionalInt;
  @override
  final ZacValue<ZacValue<ZacValue<int>>>? deep1;
  @override
  final ZacValue<ZacValue<ZacValue<int>?>>? deep2;

  @override
  String toString() {
    return 'TsTest(reqButOpt: $reqButOpt, someDate: $someDate, reqInt: $reqInt, optionalInt: $optionalInt, deep1: $deep1, deep2: $deep2)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TsTest &&
            (identical(other.reqButOpt, reqButOpt) ||
                other.reqButOpt == reqButOpt) &&
            (identical(other.someDate, someDate) ||
                other.someDate == someDate) &&
            (identical(other.reqInt, reqInt) || other.reqInt == reqInt) &&
            (identical(other.optionalInt, optionalInt) ||
                other.optionalInt == optionalInt) &&
            (identical(other.deep1, deep1) || other.deep1 == deep1) &&
            (identical(other.deep2, deep2) || other.deep2 == deep2));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, reqButOpt, someDate, reqInt, optionalInt, deep1, deep2);

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_TsTest value) $default,
  ) {
    return $default(this);
  }
}

abstract class _TsTest extends TsTest {
  factory _TsTest(final int? reqButOpt, final DateTime someDate,
      {required final ZacValue<int> reqInt,
      final ZacValue<int>? optionalInt,
      final ZacValue<ZacValue<ZacValue<int>>>? deep1,
      required final ZacValue<ZacValue<ZacValue<int>?>>? deep2}) = _$_TsTest;
  _TsTest._() : super._();

  factory _TsTest.fromJson(Map<String, dynamic> json) = _$_TsTest.fromJson;

  @override
  int? get reqButOpt;
  @override
  DateTime get someDate;
  @override
  ZacValue<int> get reqInt;
  @override
  ZacValue<int>? get optionalInt;
  @override
  ZacValue<ZacValue<ZacValue<int>>>? get deep1;
  @override
  ZacValue<ZacValue<ZacValue<int>?>>? get deep2;
}
