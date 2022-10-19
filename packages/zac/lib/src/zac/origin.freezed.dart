// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'origin.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ZacContext {
  BuildContext get context => throw _privateConstructorUsedError;
  WidgetRef get ref => throw _privateConstructorUsedError;
  bool Function() get isMounted => throw _privateConstructorUsedError;
  void Function(void Function()) get onUnmount =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ZacContextCopyWith<ZacContext> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ZacContextCopyWith<$Res> {
  factory $ZacContextCopyWith(
          ZacContext value, $Res Function(ZacContext) then) =
      _$ZacContextCopyWithImpl<$Res>;
  $Res call(
      {BuildContext context,
      WidgetRef ref,
      bool Function() isMounted,
      void Function(void Function()) onUnmount});
}

/// @nodoc
class _$ZacContextCopyWithImpl<$Res> implements $ZacContextCopyWith<$Res> {
  _$ZacContextCopyWithImpl(this._value, this._then);

  final ZacContext _value;
  // ignore: unused_field
  final $Res Function(ZacContext) _then;

  @override
  $Res call({
    Object? context = freezed,
    Object? ref = freezed,
    Object? isMounted = freezed,
    Object? onUnmount = freezed,
  }) {
    return _then(_value.copyWith(
      context: context == freezed
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext,
      ref: ref == freezed
          ? _value.ref
          : ref // ignore: cast_nullable_to_non_nullable
              as WidgetRef,
      isMounted: isMounted == freezed
          ? _value.isMounted
          : isMounted // ignore: cast_nullable_to_non_nullable
              as bool Function(),
      onUnmount: onUnmount == freezed
          ? _value.onUnmount
          : onUnmount // ignore: cast_nullable_to_non_nullable
              as void Function(void Function()),
    ));
  }
}

/// @nodoc
abstract class _$$_ZacContextCopyWith<$Res>
    implements $ZacContextCopyWith<$Res> {
  factory _$$_ZacContextCopyWith(
          _$_ZacContext value, $Res Function(_$_ZacContext) then) =
      __$$_ZacContextCopyWithImpl<$Res>;
  @override
  $Res call(
      {BuildContext context,
      WidgetRef ref,
      bool Function() isMounted,
      void Function(void Function()) onUnmount});
}

/// @nodoc
class __$$_ZacContextCopyWithImpl<$Res> extends _$ZacContextCopyWithImpl<$Res>
    implements _$$_ZacContextCopyWith<$Res> {
  __$$_ZacContextCopyWithImpl(
      _$_ZacContext _value, $Res Function(_$_ZacContext) _then)
      : super(_value, (v) => _then(v as _$_ZacContext));

  @override
  _$_ZacContext get _value => super._value as _$_ZacContext;

  @override
  $Res call({
    Object? context = freezed,
    Object? ref = freezed,
    Object? isMounted = freezed,
    Object? onUnmount = freezed,
  }) {
    return _then(_$_ZacContext(
      context: context == freezed
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext,
      ref: ref == freezed
          ? _value.ref
          : ref // ignore: cast_nullable_to_non_nullable
              as WidgetRef,
      isMounted: isMounted == freezed
          ? _value.isMounted
          : isMounted // ignore: cast_nullable_to_non_nullable
              as bool Function(),
      onUnmount: onUnmount == freezed
          ? _value.onUnmount
          : onUnmount // ignore: cast_nullable_to_non_nullable
              as void Function(void Function()),
    ));
  }
}

/// @nodoc

class _$_ZacContext implements _ZacContext {
  _$_ZacContext(
      {required this.context,
      required this.ref,
      required this.isMounted,
      required this.onUnmount});

  @override
  final BuildContext context;
  @override
  final WidgetRef ref;
  @override
  final bool Function() isMounted;
  @override
  final void Function(void Function()) onUnmount;

  @override
  String toString() {
    return 'ZacContext(context: $context, ref: $ref, isMounted: $isMounted, onUnmount: $onUnmount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ZacContext &&
            const DeepCollectionEquality().equals(other.context, context) &&
            const DeepCollectionEquality().equals(other.ref, ref) &&
            (identical(other.isMounted, isMounted) ||
                other.isMounted == isMounted) &&
            (identical(other.onUnmount, onUnmount) ||
                other.onUnmount == onUnmount));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(context),
      const DeepCollectionEquality().hash(ref),
      isMounted,
      onUnmount);

  @JsonKey(ignore: true)
  @override
  _$$_ZacContextCopyWith<_$_ZacContext> get copyWith =>
      __$$_ZacContextCopyWithImpl<_$_ZacContext>(this, _$identity);
}

abstract class _ZacContext implements ZacContext {
  factory _ZacContext(
      {required final BuildContext context,
      required final WidgetRef ref,
      required final bool Function() isMounted,
      required final void Function(void Function()) onUnmount}) = _$_ZacContext;

  @override
  BuildContext get context;
  @override
  WidgetRef get ref;
  @override
  bool Function() get isMounted;
  @override
  void Function(void Function()) get onUnmount;
  @override
  @JsonKey(ignore: true)
  _$$_ZacContextCopyWith<_$_ZacContext> get copyWith =>
      throw _privateConstructorUsedError;
}
