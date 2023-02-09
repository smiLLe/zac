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
  ZacContextConsume get consume => throw _privateConstructorUsedError;

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
  $Res call(
      {void Function(void Function()) onUnmount, ZacContextConsume consume});

  $ZacContextConsumeCopyWith<$Res> get consume;
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
    Object? consume = null,
  }) {
    return _then(_value.copyWith(
      onUnmount: null == onUnmount
          ? _value.onUnmount
          : onUnmount // ignore: cast_nullable_to_non_nullable
              as void Function(void Function()),
      consume: null == consume
          ? _value.consume
          : consume // ignore: cast_nullable_to_non_nullable
              as ZacContextConsume,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ZacContextConsumeCopyWith<$Res> get consume {
    return $ZacContextConsumeCopyWith<$Res>(_value.consume, (value) {
      return _then(_value.copyWith(consume: value) as $Val);
    });
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
  $Res call(
      {void Function(void Function()) onUnmount, ZacContextConsume consume});

  @override
  $ZacContextConsumeCopyWith<$Res> get consume;
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
    Object? consume = null,
  }) {
    return _then(_$_ZacContext(
      onUnmount: null == onUnmount
          ? _value.onUnmount
          : onUnmount // ignore: cast_nullable_to_non_nullable
              as void Function(void Function()),
      consume: null == consume
          ? _value.consume
          : consume // ignore: cast_nullable_to_non_nullable
              as ZacContextConsume,
    ));
  }
}

/// @nodoc

class _$_ZacContext implements _ZacContext {
  _$_ZacContext({required this.onUnmount, required this.consume});

  @override
  final void Function(void Function()) onUnmount;
  @override
  final ZacContextConsume consume;

  @override
  String toString() {
    return 'ZacContext(onUnmount: $onUnmount, consume: $consume)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ZacContext &&
            (identical(other.onUnmount, onUnmount) ||
                other.onUnmount == onUnmount) &&
            (identical(other.consume, consume) || other.consume == consume));
  }

  @override
  int get hashCode => Object.hash(runtimeType, onUnmount, consume);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ZacContextCopyWith<_$_ZacContext> get copyWith =>
      __$$_ZacContextCopyWithImpl<_$_ZacContext>(this, _$identity);
}

abstract class _ZacContext implements ZacContext {
  factory _ZacContext(
      {required final void Function(void Function()) onUnmount,
      required final ZacContextConsume consume}) = _$_ZacContext;

  @override
  void Function(void Function()) get onUnmount;
  @override
  ZacContextConsume get consume;
  @override
  @JsonKey(ignore: true)
  _$$_ZacContextCopyWith<_$_ZacContext> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ZacContextConsume {
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(WidgetRef ref) $default, {
    required TResult Function(ProviderContainer container) manual,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(WidgetRef ref)? $default, {
    TResult? Function(ProviderContainer container)? manual,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(WidgetRef ref)? $default, {
    TResult Function(ProviderContainer container)? manual,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_BuildingWidgets value) $default, {
    required TResult Function(_Manual value) manual,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_BuildingWidgets value)? $default, {
    TResult? Function(_Manual value)? manual,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_BuildingWidgets value)? $default, {
    TResult Function(_Manual value)? manual,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ZacContextConsumeCopyWith<$Res> {
  factory $ZacContextConsumeCopyWith(
          ZacContextConsume value, $Res Function(ZacContextConsume) then) =
      _$ZacContextConsumeCopyWithImpl<$Res, ZacContextConsume>;
}

/// @nodoc
class _$ZacContextConsumeCopyWithImpl<$Res, $Val extends ZacContextConsume>
    implements $ZacContextConsumeCopyWith<$Res> {
  _$ZacContextConsumeCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_BuildingWidgetsCopyWith<$Res> {
  factory _$$_BuildingWidgetsCopyWith(
          _$_BuildingWidgets value, $Res Function(_$_BuildingWidgets) then) =
      __$$_BuildingWidgetsCopyWithImpl<$Res>;
  @useResult
  $Res call({WidgetRef ref});
}

/// @nodoc
class __$$_BuildingWidgetsCopyWithImpl<$Res>
    extends _$ZacContextConsumeCopyWithImpl<$Res, _$_BuildingWidgets>
    implements _$$_BuildingWidgetsCopyWith<$Res> {
  __$$_BuildingWidgetsCopyWithImpl(
      _$_BuildingWidgets _value, $Res Function(_$_BuildingWidgets) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? ref = null,
  }) {
    return _then(_$_BuildingWidgets(
      ref: null == ref
          ? _value.ref
          : ref // ignore: cast_nullable_to_non_nullable
              as WidgetRef,
    ));
  }
}

/// @nodoc

class _$_BuildingWidgets implements _BuildingWidgets {
  _$_BuildingWidgets({required this.ref});

  @override
  final WidgetRef ref;

  @override
  String toString() {
    return 'ZacContextConsume(ref: $ref)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BuildingWidgets &&
            (identical(other.ref, ref) || other.ref == ref));
  }

  @override
  int get hashCode => Object.hash(runtimeType, ref);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_BuildingWidgetsCopyWith<_$_BuildingWidgets> get copyWith =>
      __$$_BuildingWidgetsCopyWithImpl<_$_BuildingWidgets>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(WidgetRef ref) $default, {
    required TResult Function(ProviderContainer container) manual,
  }) {
    return $default(ref);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(WidgetRef ref)? $default, {
    TResult? Function(ProviderContainer container)? manual,
  }) {
    return $default?.call(ref);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(WidgetRef ref)? $default, {
    TResult Function(ProviderContainer container)? manual,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(ref);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_BuildingWidgets value) $default, {
    required TResult Function(_Manual value) manual,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_BuildingWidgets value)? $default, {
    TResult? Function(_Manual value)? manual,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_BuildingWidgets value)? $default, {
    TResult Function(_Manual value)? manual,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class _BuildingWidgets implements ZacContextConsume {
  factory _BuildingWidgets({required final WidgetRef ref}) = _$_BuildingWidgets;

  WidgetRef get ref;
  @JsonKey(ignore: true)
  _$$_BuildingWidgetsCopyWith<_$_BuildingWidgets> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ManualCopyWith<$Res> {
  factory _$$_ManualCopyWith(_$_Manual value, $Res Function(_$_Manual) then) =
      __$$_ManualCopyWithImpl<$Res>;
  @useResult
  $Res call({ProviderContainer container});
}

/// @nodoc
class __$$_ManualCopyWithImpl<$Res>
    extends _$ZacContextConsumeCopyWithImpl<$Res, _$_Manual>
    implements _$$_ManualCopyWith<$Res> {
  __$$_ManualCopyWithImpl(_$_Manual _value, $Res Function(_$_Manual) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? container = null,
  }) {
    return _then(_$_Manual(
      container: null == container
          ? _value.container
          : container // ignore: cast_nullable_to_non_nullable
              as ProviderContainer,
    ));
  }
}

/// @nodoc

class _$_Manual implements _Manual {
  _$_Manual({required this.container});

  @override
  final ProviderContainer container;

  @override
  String toString() {
    return 'ZacContextConsume.manual(container: $container)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Manual &&
            (identical(other.container, container) ||
                other.container == container));
  }

  @override
  int get hashCode => Object.hash(runtimeType, container);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ManualCopyWith<_$_Manual> get copyWith =>
      __$$_ManualCopyWithImpl<_$_Manual>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(WidgetRef ref) $default, {
    required TResult Function(ProviderContainer container) manual,
  }) {
    return manual(container);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(WidgetRef ref)? $default, {
    TResult? Function(ProviderContainer container)? manual,
  }) {
    return manual?.call(container);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(WidgetRef ref)? $default, {
    TResult Function(ProviderContainer container)? manual,
    required TResult orElse(),
  }) {
    if (manual != null) {
      return manual(container);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_BuildingWidgets value) $default, {
    required TResult Function(_Manual value) manual,
  }) {
    return manual(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_BuildingWidgets value)? $default, {
    TResult? Function(_Manual value)? manual,
  }) {
    return manual?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_BuildingWidgets value)? $default, {
    TResult Function(_Manual value)? manual,
    required TResult orElse(),
  }) {
    if (manual != null) {
      return manual(this);
    }
    return orElse();
  }
}

abstract class _Manual implements ZacContextConsume {
  factory _Manual({required final ProviderContainer container}) = _$_Manual;

  ProviderContainer get container;
  @JsonKey(ignore: true)
  _$$_ManualCopyWith<_$_Manual> get copyWith =>
      throw _privateConstructorUsedError;
}
