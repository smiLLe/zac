// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'context.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ZacContext {
  void Function(void Function()) get onUnmount =>
      throw _privateConstructorUsedError;
  BuildIn get buildIn => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ZacContextCopyWith<ZacContext> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ZacContextCopyWith<$Res> {
  factory $ZacContextCopyWith(
          ZacContext value, $Res Function(ZacContext) then) =
      _$ZacContextCopyWithImpl<$Res, ZacContext>;
  @useResult
  $Res call({void Function(void Function()) onUnmount, BuildIn buildIn});
}

/// @nodoc
class _$ZacContextCopyWithImpl<$Res, $Val extends ZacContext>
    implements $ZacContextCopyWith<$Res> {
  _$ZacContextCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? onUnmount = null,
    Object? buildIn = null,
  }) {
    return _then(_value.copyWith(
      onUnmount: null == onUnmount
          ? _value.onUnmount
          : onUnmount // ignore: cast_nullable_to_non_nullable
              as void Function(void Function()),
      buildIn: null == buildIn
          ? _value.buildIn
          : buildIn // ignore: cast_nullable_to_non_nullable
              as BuildIn,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ZacContextCopyWith<$Res>
    implements $ZacContextCopyWith<$Res> {
  factory _$$_ZacContextCopyWith(
          _$_ZacContext value, $Res Function(_$_ZacContext) then) =
      __$$_ZacContextCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({void Function(void Function()) onUnmount, BuildIn buildIn});
}

/// @nodoc
class __$$_ZacContextCopyWithImpl<$Res>
    extends _$ZacContextCopyWithImpl<$Res, _$_ZacContext>
    implements _$$_ZacContextCopyWith<$Res> {
  __$$_ZacContextCopyWithImpl(
      _$_ZacContext _value, $Res Function(_$_ZacContext) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? onUnmount = null,
    Object? buildIn = null,
  }) {
    return _then(_$_ZacContext(
      onUnmount: null == onUnmount
          ? _value.onUnmount
          : onUnmount // ignore: cast_nullable_to_non_nullable
              as void Function(void Function()),
      buildIn: null == buildIn
          ? _value.buildIn
          : buildIn // ignore: cast_nullable_to_non_nullable
              as BuildIn,
    ));
  }
}

/// @nodoc

class _$_ZacContext implements _ZacContext {
  _$_ZacContext({required this.onUnmount, required this.buildIn});

  @override
  final void Function(void Function()) onUnmount;
  @override
  final BuildIn buildIn;

  @override
  String toString() {
    return 'ZacContext(onUnmount: $onUnmount, buildIn: $buildIn)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ZacContext &&
            (identical(other.onUnmount, onUnmount) ||
                other.onUnmount == onUnmount) &&
            (identical(other.buildIn, buildIn) || other.buildIn == buildIn));
  }

  @override
  int get hashCode => Object.hash(runtimeType, onUnmount, buildIn);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ZacContextCopyWith<_$_ZacContext> get copyWith =>
      __$$_ZacContextCopyWithImpl<_$_ZacContext>(this, _$identity);
}

abstract class _ZacContext implements ZacContext {
  factory _ZacContext(
      {required final void Function(void Function()) onUnmount,
      required final BuildIn buildIn}) = _$_ZacContext;

  @override
  void Function(void Function()) get onUnmount;
  @override
  BuildIn get buildIn;
  @override
  @JsonKey(ignore: true)
  _$$_ZacContextCopyWith<_$_ZacContext> get copyWith =>
      throw _privateConstructorUsedError;
}
