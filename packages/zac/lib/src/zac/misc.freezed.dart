// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'misc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ZacRef {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(WidgetRef ref) widget,
    required TResult Function(AutoDisposeProviderRef<Object?> ref) adProvider,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(WidgetRef ref)? widget,
    TResult Function(AutoDisposeProviderRef<Object?> ref)? adProvider,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(WidgetRef ref)? widget,
    TResult Function(AutoDisposeProviderRef<Object?> ref)? adProvider,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WidgetRef value) widget,
    required TResult Function(_AutoDisposeProviderRef value) adProvider,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_WidgetRef value)? widget,
    TResult Function(_AutoDisposeProviderRef value)? adProvider,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WidgetRef value)? widget,
    TResult Function(_AutoDisposeProviderRef value)? adProvider,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ZacRefCopyWith<$Res> {
  factory $ZacRefCopyWith(ZacRef value, $Res Function(ZacRef) then) =
      _$ZacRefCopyWithImpl<$Res>;
}

/// @nodoc
class _$ZacRefCopyWithImpl<$Res> implements $ZacRefCopyWith<$Res> {
  _$ZacRefCopyWithImpl(this._value, this._then);

  final ZacRef _value;
  // ignore: unused_field
  final $Res Function(ZacRef) _then;
}

/// @nodoc
abstract class _$$_WidgetRefCopyWith<$Res> {
  factory _$$_WidgetRefCopyWith(
          _$_WidgetRef value, $Res Function(_$_WidgetRef) then) =
      __$$_WidgetRefCopyWithImpl<$Res>;
  $Res call({WidgetRef ref});
}

/// @nodoc
class __$$_WidgetRefCopyWithImpl<$Res> extends _$ZacRefCopyWithImpl<$Res>
    implements _$$_WidgetRefCopyWith<$Res> {
  __$$_WidgetRefCopyWithImpl(
      _$_WidgetRef _value, $Res Function(_$_WidgetRef) _then)
      : super(_value, (v) => _then(v as _$_WidgetRef));

  @override
  _$_WidgetRef get _value => super._value as _$_WidgetRef;

  @override
  $Res call({
    Object? ref = freezed,
  }) {
    return _then(_$_WidgetRef(
      ref == freezed
          ? _value.ref
          : ref // ignore: cast_nullable_to_non_nullable
              as WidgetRef,
    ));
  }
}

/// @nodoc

class _$_WidgetRef implements _WidgetRef {
  _$_WidgetRef(this.ref);

  @override
  final WidgetRef ref;

  @override
  String toString() {
    return 'ZacRef.widget(ref: $ref)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_WidgetRef &&
            const DeepCollectionEquality().equals(other.ref, ref));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(ref));

  @JsonKey(ignore: true)
  @override
  _$$_WidgetRefCopyWith<_$_WidgetRef> get copyWith =>
      __$$_WidgetRefCopyWithImpl<_$_WidgetRef>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(WidgetRef ref) widget,
    required TResult Function(AutoDisposeProviderRef<Object?> ref) adProvider,
  }) {
    return widget(ref);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(WidgetRef ref)? widget,
    TResult Function(AutoDisposeProviderRef<Object?> ref)? adProvider,
  }) {
    return widget?.call(ref);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(WidgetRef ref)? widget,
    TResult Function(AutoDisposeProviderRef<Object?> ref)? adProvider,
    required TResult orElse(),
  }) {
    if (widget != null) {
      return widget(ref);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WidgetRef value) widget,
    required TResult Function(_AutoDisposeProviderRef value) adProvider,
  }) {
    return widget(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_WidgetRef value)? widget,
    TResult Function(_AutoDisposeProviderRef value)? adProvider,
  }) {
    return widget?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WidgetRef value)? widget,
    TResult Function(_AutoDisposeProviderRef value)? adProvider,
    required TResult orElse(),
  }) {
    if (widget != null) {
      return widget(this);
    }
    return orElse();
  }
}

abstract class _WidgetRef implements ZacRef {
  factory _WidgetRef(final WidgetRef ref) = _$_WidgetRef;

  WidgetRef get ref;
  @JsonKey(ignore: true)
  _$$_WidgetRefCopyWith<_$_WidgetRef> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_AutoDisposeProviderRefCopyWith<$Res> {
  factory _$$_AutoDisposeProviderRefCopyWith(_$_AutoDisposeProviderRef value,
          $Res Function(_$_AutoDisposeProviderRef) then) =
      __$$_AutoDisposeProviderRefCopyWithImpl<$Res>;
  $Res call({AutoDisposeProviderRef<Object?> ref});
}

/// @nodoc
class __$$_AutoDisposeProviderRefCopyWithImpl<$Res>
    extends _$ZacRefCopyWithImpl<$Res>
    implements _$$_AutoDisposeProviderRefCopyWith<$Res> {
  __$$_AutoDisposeProviderRefCopyWithImpl(_$_AutoDisposeProviderRef _value,
      $Res Function(_$_AutoDisposeProviderRef) _then)
      : super(_value, (v) => _then(v as _$_AutoDisposeProviderRef));

  @override
  _$_AutoDisposeProviderRef get _value =>
      super._value as _$_AutoDisposeProviderRef;

  @override
  $Res call({
    Object? ref = freezed,
  }) {
    return _then(_$_AutoDisposeProviderRef(
      ref == freezed
          ? _value.ref
          : ref // ignore: cast_nullable_to_non_nullable
              as AutoDisposeProviderRef<Object?>,
    ));
  }
}

/// @nodoc

class _$_AutoDisposeProviderRef implements _AutoDisposeProviderRef {
  _$_AutoDisposeProviderRef(this.ref);

  @override
  final AutoDisposeProviderRef<Object?> ref;

  @override
  String toString() {
    return 'ZacRef.adProvider(ref: $ref)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AutoDisposeProviderRef &&
            const DeepCollectionEquality().equals(other.ref, ref));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(ref));

  @JsonKey(ignore: true)
  @override
  _$$_AutoDisposeProviderRefCopyWith<_$_AutoDisposeProviderRef> get copyWith =>
      __$$_AutoDisposeProviderRefCopyWithImpl<_$_AutoDisposeProviderRef>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(WidgetRef ref) widget,
    required TResult Function(AutoDisposeProviderRef<Object?> ref) adProvider,
  }) {
    return adProvider(ref);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(WidgetRef ref)? widget,
    TResult Function(AutoDisposeProviderRef<Object?> ref)? adProvider,
  }) {
    return adProvider?.call(ref);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(WidgetRef ref)? widget,
    TResult Function(AutoDisposeProviderRef<Object?> ref)? adProvider,
    required TResult orElse(),
  }) {
    if (adProvider != null) {
      return adProvider(ref);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WidgetRef value) widget,
    required TResult Function(_AutoDisposeProviderRef value) adProvider,
  }) {
    return adProvider(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_WidgetRef value)? widget,
    TResult Function(_AutoDisposeProviderRef value)? adProvider,
  }) {
    return adProvider?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WidgetRef value)? widget,
    TResult Function(_AutoDisposeProviderRef value)? adProvider,
    required TResult orElse(),
  }) {
    if (adProvider != null) {
      return adProvider(this);
    }
    return orElse();
  }
}

abstract class _AutoDisposeProviderRef implements ZacRef {
  factory _AutoDisposeProviderRef(final AutoDisposeProviderRef<Object?> ref) =
      _$_AutoDisposeProviderRef;

  AutoDisposeProviderRef<Object?> get ref;
  @JsonKey(ignore: true)
  _$$_AutoDisposeProviderRefCopyWith<_$_AutoDisposeProviderRef> get copyWith =>
      throw _privateConstructorUsedError;
}
