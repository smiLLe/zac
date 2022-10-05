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
mixin _$ZacOrigin {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(BuildContext context, WidgetRef ref,
            ZacOriginLifetimeWidgetTree lifetime)
        widgetTree,
    required TResult Function(AutoDisposeProviderRef<StateMachine> ref,
            ZacOriginLifetimeStateMachineAction lifetime)
        statemachineAction,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(BuildContext context, WidgetRef ref,
            ZacOriginLifetimeWidgetTree lifetime)?
        widgetTree,
    TResult Function(AutoDisposeProviderRef<StateMachine> ref,
            ZacOriginLifetimeStateMachineAction lifetime)?
        statemachineAction,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BuildContext context, WidgetRef ref,
            ZacOriginLifetimeWidgetTree lifetime)?
        widgetTree,
    TResult Function(AutoDisposeProviderRef<StateMachine> ref,
            ZacOriginLifetimeStateMachineAction lifetime)?
        statemachineAction,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ZacOriginWidgetTree value) widgetTree,
    required TResult Function(ZacOriginStateMachineAction value)
        statemachineAction,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ZacOriginWidgetTree value)? widgetTree,
    TResult Function(ZacOriginStateMachineAction value)? statemachineAction,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ZacOriginWidgetTree value)? widgetTree,
    TResult Function(ZacOriginStateMachineAction value)? statemachineAction,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ZacOriginCopyWith<$Res> {
  factory $ZacOriginCopyWith(ZacOrigin value, $Res Function(ZacOrigin) then) =
      _$ZacOriginCopyWithImpl<$Res>;
}

/// @nodoc
class _$ZacOriginCopyWithImpl<$Res> implements $ZacOriginCopyWith<$Res> {
  _$ZacOriginCopyWithImpl(this._value, this._then);

  final ZacOrigin _value;
  // ignore: unused_field
  final $Res Function(ZacOrigin) _then;
}

/// @nodoc
abstract class _$$ZacOriginWidgetTreeCopyWith<$Res> {
  factory _$$ZacOriginWidgetTreeCopyWith(_$ZacOriginWidgetTree value,
          $Res Function(_$ZacOriginWidgetTree) then) =
      __$$ZacOriginWidgetTreeCopyWithImpl<$Res>;
  $Res call(
      {BuildContext context,
      WidgetRef ref,
      ZacOriginLifetimeWidgetTree lifetime});
}

/// @nodoc
class __$$ZacOriginWidgetTreeCopyWithImpl<$Res>
    extends _$ZacOriginCopyWithImpl<$Res>
    implements _$$ZacOriginWidgetTreeCopyWith<$Res> {
  __$$ZacOriginWidgetTreeCopyWithImpl(
      _$ZacOriginWidgetTree _value, $Res Function(_$ZacOriginWidgetTree) _then)
      : super(_value, (v) => _then(v as _$ZacOriginWidgetTree));

  @override
  _$ZacOriginWidgetTree get _value => super._value as _$ZacOriginWidgetTree;

  @override
  $Res call({
    Object? context = freezed,
    Object? ref = freezed,
    Object? lifetime = freezed,
  }) {
    return _then(_$ZacOriginWidgetTree(
      context: context == freezed
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as BuildContext,
      ref: ref == freezed
          ? _value.ref
          : ref // ignore: cast_nullable_to_non_nullable
              as WidgetRef,
      lifetime: lifetime == freezed
          ? _value.lifetime
          : lifetime // ignore: cast_nullable_to_non_nullable
              as ZacOriginLifetimeWidgetTree,
    ));
  }
}

/// @nodoc

class _$ZacOriginWidgetTree implements ZacOriginWidgetTree {
  _$ZacOriginWidgetTree(
      {required this.context, required this.ref, required this.lifetime});

  @override
  final BuildContext context;
  @override
  final WidgetRef ref;
  @override
  final ZacOriginLifetimeWidgetTree lifetime;

  @override
  String toString() {
    return 'ZacOrigin.widgetTree(context: $context, ref: $ref, lifetime: $lifetime)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ZacOriginWidgetTree &&
            const DeepCollectionEquality().equals(other.context, context) &&
            const DeepCollectionEquality().equals(other.ref, ref) &&
            const DeepCollectionEquality().equals(other.lifetime, lifetime));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(context),
      const DeepCollectionEquality().hash(ref),
      const DeepCollectionEquality().hash(lifetime));

  @JsonKey(ignore: true)
  @override
  _$$ZacOriginWidgetTreeCopyWith<_$ZacOriginWidgetTree> get copyWith =>
      __$$ZacOriginWidgetTreeCopyWithImpl<_$ZacOriginWidgetTree>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(BuildContext context, WidgetRef ref,
            ZacOriginLifetimeWidgetTree lifetime)
        widgetTree,
    required TResult Function(AutoDisposeProviderRef<StateMachine> ref,
            ZacOriginLifetimeStateMachineAction lifetime)
        statemachineAction,
  }) {
    return widgetTree(context, ref, lifetime);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(BuildContext context, WidgetRef ref,
            ZacOriginLifetimeWidgetTree lifetime)?
        widgetTree,
    TResult Function(AutoDisposeProviderRef<StateMachine> ref,
            ZacOriginLifetimeStateMachineAction lifetime)?
        statemachineAction,
  }) {
    return widgetTree?.call(context, ref, lifetime);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BuildContext context, WidgetRef ref,
            ZacOriginLifetimeWidgetTree lifetime)?
        widgetTree,
    TResult Function(AutoDisposeProviderRef<StateMachine> ref,
            ZacOriginLifetimeStateMachineAction lifetime)?
        statemachineAction,
    required TResult orElse(),
  }) {
    if (widgetTree != null) {
      return widgetTree(context, ref, lifetime);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ZacOriginWidgetTree value) widgetTree,
    required TResult Function(ZacOriginStateMachineAction value)
        statemachineAction,
  }) {
    return widgetTree(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ZacOriginWidgetTree value)? widgetTree,
    TResult Function(ZacOriginStateMachineAction value)? statemachineAction,
  }) {
    return widgetTree?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ZacOriginWidgetTree value)? widgetTree,
    TResult Function(ZacOriginStateMachineAction value)? statemachineAction,
    required TResult orElse(),
  }) {
    if (widgetTree != null) {
      return widgetTree(this);
    }
    return orElse();
  }
}

abstract class ZacOriginWidgetTree implements ZacOrigin {
  factory ZacOriginWidgetTree(
          {required final BuildContext context,
          required final WidgetRef ref,
          required final ZacOriginLifetimeWidgetTree lifetime}) =
      _$ZacOriginWidgetTree;

  BuildContext get context;
  WidgetRef get ref;
  ZacOriginLifetimeWidgetTree get lifetime;
  @JsonKey(ignore: true)
  _$$ZacOriginWidgetTreeCopyWith<_$ZacOriginWidgetTree> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ZacOriginStateMachineActionCopyWith<$Res> {
  factory _$$ZacOriginStateMachineActionCopyWith(
          _$ZacOriginStateMachineAction value,
          $Res Function(_$ZacOriginStateMachineAction) then) =
      __$$ZacOriginStateMachineActionCopyWithImpl<$Res>;
  $Res call(
      {AutoDisposeProviderRef<StateMachine> ref,
      ZacOriginLifetimeStateMachineAction lifetime});
}

/// @nodoc
class __$$ZacOriginStateMachineActionCopyWithImpl<$Res>
    extends _$ZacOriginCopyWithImpl<$Res>
    implements _$$ZacOriginStateMachineActionCopyWith<$Res> {
  __$$ZacOriginStateMachineActionCopyWithImpl(
      _$ZacOriginStateMachineAction _value,
      $Res Function(_$ZacOriginStateMachineAction) _then)
      : super(_value, (v) => _then(v as _$ZacOriginStateMachineAction));

  @override
  _$ZacOriginStateMachineAction get _value =>
      super._value as _$ZacOriginStateMachineAction;

  @override
  $Res call({
    Object? ref = freezed,
    Object? lifetime = freezed,
  }) {
    return _then(_$ZacOriginStateMachineAction(
      ref: ref == freezed
          ? _value.ref
          : ref // ignore: cast_nullable_to_non_nullable
              as AutoDisposeProviderRef<StateMachine>,
      lifetime: lifetime == freezed
          ? _value.lifetime
          : lifetime // ignore: cast_nullable_to_non_nullable
              as ZacOriginLifetimeStateMachineAction,
    ));
  }
}

/// @nodoc

class _$ZacOriginStateMachineAction implements ZacOriginStateMachineAction {
  _$ZacOriginStateMachineAction({required this.ref, required this.lifetime});

  @override
  final AutoDisposeProviderRef<StateMachine> ref;
  @override
  final ZacOriginLifetimeStateMachineAction lifetime;

  @override
  String toString() {
    return 'ZacOrigin.statemachineAction(ref: $ref, lifetime: $lifetime)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ZacOriginStateMachineAction &&
            const DeepCollectionEquality().equals(other.ref, ref) &&
            const DeepCollectionEquality().equals(other.lifetime, lifetime));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(ref),
      const DeepCollectionEquality().hash(lifetime));

  @JsonKey(ignore: true)
  @override
  _$$ZacOriginStateMachineActionCopyWith<_$ZacOriginStateMachineAction>
      get copyWith => __$$ZacOriginStateMachineActionCopyWithImpl<
          _$ZacOriginStateMachineAction>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(BuildContext context, WidgetRef ref,
            ZacOriginLifetimeWidgetTree lifetime)
        widgetTree,
    required TResult Function(AutoDisposeProviderRef<StateMachine> ref,
            ZacOriginLifetimeStateMachineAction lifetime)
        statemachineAction,
  }) {
    return statemachineAction(ref, lifetime);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(BuildContext context, WidgetRef ref,
            ZacOriginLifetimeWidgetTree lifetime)?
        widgetTree,
    TResult Function(AutoDisposeProviderRef<StateMachine> ref,
            ZacOriginLifetimeStateMachineAction lifetime)?
        statemachineAction,
  }) {
    return statemachineAction?.call(ref, lifetime);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(BuildContext context, WidgetRef ref,
            ZacOriginLifetimeWidgetTree lifetime)?
        widgetTree,
    TResult Function(AutoDisposeProviderRef<StateMachine> ref,
            ZacOriginLifetimeStateMachineAction lifetime)?
        statemachineAction,
    required TResult orElse(),
  }) {
    if (statemachineAction != null) {
      return statemachineAction(ref, lifetime);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ZacOriginWidgetTree value) widgetTree,
    required TResult Function(ZacOriginStateMachineAction value)
        statemachineAction,
  }) {
    return statemachineAction(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ZacOriginWidgetTree value)? widgetTree,
    TResult Function(ZacOriginStateMachineAction value)? statemachineAction,
  }) {
    return statemachineAction?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ZacOriginWidgetTree value)? widgetTree,
    TResult Function(ZacOriginStateMachineAction value)? statemachineAction,
    required TResult orElse(),
  }) {
    if (statemachineAction != null) {
      return statemachineAction(this);
    }
    return orElse();
  }
}

abstract class ZacOriginStateMachineAction implements ZacOrigin {
  factory ZacOriginStateMachineAction(
          {required final AutoDisposeProviderRef<StateMachine> ref,
          required final ZacOriginLifetimeStateMachineAction lifetime}) =
      _$ZacOriginStateMachineAction;

  AutoDisposeProviderRef<StateMachine> get ref;
  ZacOriginLifetimeStateMachineAction get lifetime;
  @JsonKey(ignore: true)
  _$$ZacOriginStateMachineActionCopyWith<_$ZacOriginStateMachineAction>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ZacOriginLifetime {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            bool Function() isMounted, void Function(void Function()) onUnmount)
        widgetTree,
    required TResult Function(bool Function() isActive,
            void Function(void Function()) onBecomeInactive)
        statemachineAction,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(bool Function() isMounted,
            void Function(void Function()) onUnmount)?
        widgetTree,
    TResult Function(bool Function() isActive,
            void Function(void Function()) onBecomeInactive)?
        statemachineAction,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool Function() isMounted,
            void Function(void Function()) onUnmount)?
        widgetTree,
    TResult Function(bool Function() isActive,
            void Function(void Function()) onBecomeInactive)?
        statemachineAction,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ZacOriginLifetimeWidgetTree value) widgetTree,
    required TResult Function(ZacOriginLifetimeStateMachineAction value)
        statemachineAction,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ZacOriginLifetimeWidgetTree value)? widgetTree,
    TResult Function(ZacOriginLifetimeStateMachineAction value)?
        statemachineAction,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ZacOriginLifetimeWidgetTree value)? widgetTree,
    TResult Function(ZacOriginLifetimeStateMachineAction value)?
        statemachineAction,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ZacOriginLifetimeCopyWith<$Res> {
  factory $ZacOriginLifetimeCopyWith(
          ZacOriginLifetime value, $Res Function(ZacOriginLifetime) then) =
      _$ZacOriginLifetimeCopyWithImpl<$Res>;
}

/// @nodoc
class _$ZacOriginLifetimeCopyWithImpl<$Res>
    implements $ZacOriginLifetimeCopyWith<$Res> {
  _$ZacOriginLifetimeCopyWithImpl(this._value, this._then);

  final ZacOriginLifetime _value;
  // ignore: unused_field
  final $Res Function(ZacOriginLifetime) _then;
}

/// @nodoc
abstract class _$$ZacOriginLifetimeWidgetTreeCopyWith<$Res> {
  factory _$$ZacOriginLifetimeWidgetTreeCopyWith(
          _$ZacOriginLifetimeWidgetTree value,
          $Res Function(_$ZacOriginLifetimeWidgetTree) then) =
      __$$ZacOriginLifetimeWidgetTreeCopyWithImpl<$Res>;
  $Res call(
      {bool Function() isMounted, void Function(void Function()) onUnmount});
}

/// @nodoc
class __$$ZacOriginLifetimeWidgetTreeCopyWithImpl<$Res>
    extends _$ZacOriginLifetimeCopyWithImpl<$Res>
    implements _$$ZacOriginLifetimeWidgetTreeCopyWith<$Res> {
  __$$ZacOriginLifetimeWidgetTreeCopyWithImpl(
      _$ZacOriginLifetimeWidgetTree _value,
      $Res Function(_$ZacOriginLifetimeWidgetTree) _then)
      : super(_value, (v) => _then(v as _$ZacOriginLifetimeWidgetTree));

  @override
  _$ZacOriginLifetimeWidgetTree get _value =>
      super._value as _$ZacOriginLifetimeWidgetTree;

  @override
  $Res call({
    Object? isMounted = freezed,
    Object? onUnmount = freezed,
  }) {
    return _then(_$ZacOriginLifetimeWidgetTree(
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

class _$ZacOriginLifetimeWidgetTree implements ZacOriginLifetimeWidgetTree {
  _$ZacOriginLifetimeWidgetTree(
      {required this.isMounted, required this.onUnmount});

  @override
  final bool Function() isMounted;
  @override
  final void Function(void Function()) onUnmount;

  @override
  String toString() {
    return 'ZacOriginLifetime.widgetTree(isMounted: $isMounted, onUnmount: $onUnmount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ZacOriginLifetimeWidgetTree &&
            (identical(other.isMounted, isMounted) ||
                other.isMounted == isMounted) &&
            (identical(other.onUnmount, onUnmount) ||
                other.onUnmount == onUnmount));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isMounted, onUnmount);

  @JsonKey(ignore: true)
  @override
  _$$ZacOriginLifetimeWidgetTreeCopyWith<_$ZacOriginLifetimeWidgetTree>
      get copyWith => __$$ZacOriginLifetimeWidgetTreeCopyWithImpl<
          _$ZacOriginLifetimeWidgetTree>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            bool Function() isMounted, void Function(void Function()) onUnmount)
        widgetTree,
    required TResult Function(bool Function() isActive,
            void Function(void Function()) onBecomeInactive)
        statemachineAction,
  }) {
    return widgetTree(isMounted, onUnmount);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(bool Function() isMounted,
            void Function(void Function()) onUnmount)?
        widgetTree,
    TResult Function(bool Function() isActive,
            void Function(void Function()) onBecomeInactive)?
        statemachineAction,
  }) {
    return widgetTree?.call(isMounted, onUnmount);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool Function() isMounted,
            void Function(void Function()) onUnmount)?
        widgetTree,
    TResult Function(bool Function() isActive,
            void Function(void Function()) onBecomeInactive)?
        statemachineAction,
    required TResult orElse(),
  }) {
    if (widgetTree != null) {
      return widgetTree(isMounted, onUnmount);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ZacOriginLifetimeWidgetTree value) widgetTree,
    required TResult Function(ZacOriginLifetimeStateMachineAction value)
        statemachineAction,
  }) {
    return widgetTree(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ZacOriginLifetimeWidgetTree value)? widgetTree,
    TResult Function(ZacOriginLifetimeStateMachineAction value)?
        statemachineAction,
  }) {
    return widgetTree?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ZacOriginLifetimeWidgetTree value)? widgetTree,
    TResult Function(ZacOriginLifetimeStateMachineAction value)?
        statemachineAction,
    required TResult orElse(),
  }) {
    if (widgetTree != null) {
      return widgetTree(this);
    }
    return orElse();
  }
}

abstract class ZacOriginLifetimeWidgetTree implements ZacOriginLifetime {
  factory ZacOriginLifetimeWidgetTree(
          {required final bool Function() isMounted,
          required final void Function(void Function()) onUnmount}) =
      _$ZacOriginLifetimeWidgetTree;

  bool Function() get isMounted;
  void Function(void Function()) get onUnmount;
  @JsonKey(ignore: true)
  _$$ZacOriginLifetimeWidgetTreeCopyWith<_$ZacOriginLifetimeWidgetTree>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ZacOriginLifetimeStateMachineActionCopyWith<$Res> {
  factory _$$ZacOriginLifetimeStateMachineActionCopyWith(
          _$ZacOriginLifetimeStateMachineAction value,
          $Res Function(_$ZacOriginLifetimeStateMachineAction) then) =
      __$$ZacOriginLifetimeStateMachineActionCopyWithImpl<$Res>;
  $Res call(
      {bool Function() isActive,
      void Function(void Function()) onBecomeInactive});
}

/// @nodoc
class __$$ZacOriginLifetimeStateMachineActionCopyWithImpl<$Res>
    extends _$ZacOriginLifetimeCopyWithImpl<$Res>
    implements _$$ZacOriginLifetimeStateMachineActionCopyWith<$Res> {
  __$$ZacOriginLifetimeStateMachineActionCopyWithImpl(
      _$ZacOriginLifetimeStateMachineAction _value,
      $Res Function(_$ZacOriginLifetimeStateMachineAction) _then)
      : super(_value, (v) => _then(v as _$ZacOriginLifetimeStateMachineAction));

  @override
  _$ZacOriginLifetimeStateMachineAction get _value =>
      super._value as _$ZacOriginLifetimeStateMachineAction;

  @override
  $Res call({
    Object? isActive = freezed,
    Object? onBecomeInactive = freezed,
  }) {
    return _then(_$ZacOriginLifetimeStateMachineAction(
      isActive: isActive == freezed
          ? _value.isActive
          : isActive // ignore: cast_nullable_to_non_nullable
              as bool Function(),
      onBecomeInactive: onBecomeInactive == freezed
          ? _value.onBecomeInactive
          : onBecomeInactive // ignore: cast_nullable_to_non_nullable
              as void Function(void Function()),
    ));
  }
}

/// @nodoc

class _$ZacOriginLifetimeStateMachineAction
    implements ZacOriginLifetimeStateMachineAction {
  _$ZacOriginLifetimeStateMachineAction(
      {required this.isActive, required this.onBecomeInactive});

  @override
  final bool Function() isActive;
  @override
  final void Function(void Function()) onBecomeInactive;

  @override
  String toString() {
    return 'ZacOriginLifetime.statemachineAction(isActive: $isActive, onBecomeInactive: $onBecomeInactive)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ZacOriginLifetimeStateMachineAction &&
            (identical(other.isActive, isActive) ||
                other.isActive == isActive) &&
            (identical(other.onBecomeInactive, onBecomeInactive) ||
                other.onBecomeInactive == onBecomeInactive));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isActive, onBecomeInactive);

  @JsonKey(ignore: true)
  @override
  _$$ZacOriginLifetimeStateMachineActionCopyWith<
          _$ZacOriginLifetimeStateMachineAction>
      get copyWith => __$$ZacOriginLifetimeStateMachineActionCopyWithImpl<
          _$ZacOriginLifetimeStateMachineAction>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            bool Function() isMounted, void Function(void Function()) onUnmount)
        widgetTree,
    required TResult Function(bool Function() isActive,
            void Function(void Function()) onBecomeInactive)
        statemachineAction,
  }) {
    return statemachineAction(isActive, onBecomeInactive);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(bool Function() isMounted,
            void Function(void Function()) onUnmount)?
        widgetTree,
    TResult Function(bool Function() isActive,
            void Function(void Function()) onBecomeInactive)?
        statemachineAction,
  }) {
    return statemachineAction?.call(isActive, onBecomeInactive);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool Function() isMounted,
            void Function(void Function()) onUnmount)?
        widgetTree,
    TResult Function(bool Function() isActive,
            void Function(void Function()) onBecomeInactive)?
        statemachineAction,
    required TResult orElse(),
  }) {
    if (statemachineAction != null) {
      return statemachineAction(isActive, onBecomeInactive);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(ZacOriginLifetimeWidgetTree value) widgetTree,
    required TResult Function(ZacOriginLifetimeStateMachineAction value)
        statemachineAction,
  }) {
    return statemachineAction(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(ZacOriginLifetimeWidgetTree value)? widgetTree,
    TResult Function(ZacOriginLifetimeStateMachineAction value)?
        statemachineAction,
  }) {
    return statemachineAction?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(ZacOriginLifetimeWidgetTree value)? widgetTree,
    TResult Function(ZacOriginLifetimeStateMachineAction value)?
        statemachineAction,
    required TResult orElse(),
  }) {
    if (statemachineAction != null) {
      return statemachineAction(this);
    }
    return orElse();
  }
}

abstract class ZacOriginLifetimeStateMachineAction
    implements ZacOriginLifetime {
  factory ZacOriginLifetimeStateMachineAction(
          {required final bool Function() isActive,
          required final void Function(void Function()) onBecomeInactive}) =
      _$ZacOriginLifetimeStateMachineAction;

  bool Function() get isActive;
  void Function(void Function()) get onBecomeInactive;
  @JsonKey(ignore: true)
  _$$ZacOriginLifetimeStateMachineActionCopyWith<
          _$ZacOriginLifetimeStateMachineAction>
      get copyWith => throw _privateConstructorUsedError;
}
