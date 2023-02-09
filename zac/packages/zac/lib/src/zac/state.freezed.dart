// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ZacState {
  String get family => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            String family, Object? Function(ProviderRef<Object?>) create)
        $default, {
    required TResult Function(
            String family, Object? value, ZacStateUpdate udpate)
        provided,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(
            String family, Object? Function(ProviderRef<Object?>) create)?
        $default, {
    TResult? Function(String family, Object? value, ZacStateUpdate udpate)?
        provided,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            String family, Object? Function(ProviderRef<Object?>) create)?
        $default, {
    TResult Function(String family, Object? value, ZacStateUpdate udpate)?
        provided,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(ZacStateCreate value) $default, {
    required TResult Function(ZacStateProvided value) provided,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(ZacStateCreate value)? $default, {
    TResult? Function(ZacStateProvided value)? provided,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(ZacStateCreate value)? $default, {
    TResult Function(ZacStateProvided value)? provided,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ZacStateCopyWith<ZacState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ZacStateCopyWith<$Res> {
  factory $ZacStateCopyWith(ZacState value, $Res Function(ZacState) then) =
      _$ZacStateCopyWithImpl<$Res, ZacState>;
  @useResult
  $Res call({String family});
}

/// @nodoc
class _$ZacStateCopyWithImpl<$Res, $Val extends ZacState>
    implements $ZacStateCopyWith<$Res> {
  _$ZacStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? family = null,
  }) {
    return _then(_value.copyWith(
      family: null == family
          ? _value.family
          : family // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ZacStateCreateCopyWith<$Res>
    implements $ZacStateCopyWith<$Res> {
  factory _$$ZacStateCreateCopyWith(
          _$ZacStateCreate value, $Res Function(_$ZacStateCreate) then) =
      __$$ZacStateCreateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String family, Object? Function(ProviderRef<Object?>) create});
}

/// @nodoc
class __$$ZacStateCreateCopyWithImpl<$Res>
    extends _$ZacStateCopyWithImpl<$Res, _$ZacStateCreate>
    implements _$$ZacStateCreateCopyWith<$Res> {
  __$$ZacStateCreateCopyWithImpl(
      _$ZacStateCreate _value, $Res Function(_$ZacStateCreate) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? family = null,
    Object? create = null,
  }) {
    return _then(_$ZacStateCreate(
      null == family
          ? _value.family
          : family // ignore: cast_nullable_to_non_nullable
              as String,
      null == create
          ? _value.create
          : create // ignore: cast_nullable_to_non_nullable
              as Object? Function(ProviderRef<Object?>),
    ));
  }
}

/// @nodoc

class _$ZacStateCreate implements ZacStateCreate {
  _$ZacStateCreate(this.family, this.create);

  @override
  final String family;
  @override
  final Object? Function(ProviderRef<Object?>) create;

  @override
  String toString() {
    return 'ZacState(family: $family, create: $create)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ZacStateCreate &&
            (identical(other.family, family) || other.family == family) &&
            (identical(other.create, create) || other.create == create));
  }

  @override
  int get hashCode => Object.hash(runtimeType, family, create);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ZacStateCreateCopyWith<_$ZacStateCreate> get copyWith =>
      __$$ZacStateCreateCopyWithImpl<_$ZacStateCreate>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            String family, Object? Function(ProviderRef<Object?>) create)
        $default, {
    required TResult Function(
            String family, Object? value, ZacStateUpdate udpate)
        provided,
  }) {
    return $default(family, create);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(
            String family, Object? Function(ProviderRef<Object?>) create)?
        $default, {
    TResult? Function(String family, Object? value, ZacStateUpdate udpate)?
        provided,
  }) {
    return $default?.call(family, create);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            String family, Object? Function(ProviderRef<Object?>) create)?
        $default, {
    TResult Function(String family, Object? value, ZacStateUpdate udpate)?
        provided,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(family, create);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(ZacStateCreate value) $default, {
    required TResult Function(ZacStateProvided value) provided,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(ZacStateCreate value)? $default, {
    TResult? Function(ZacStateProvided value)? provided,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(ZacStateCreate value)? $default, {
    TResult Function(ZacStateProvided value)? provided,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }
}

abstract class ZacStateCreate implements ZacState {
  factory ZacStateCreate(final String family,
      final Object? Function(ProviderRef<Object?>) create) = _$ZacStateCreate;

  @override
  String get family;
  Object? Function(ProviderRef<Object?>) get create;
  @override
  @JsonKey(ignore: true)
  _$$ZacStateCreateCopyWith<_$ZacStateCreate> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ZacStateProvidedCopyWith<$Res>
    implements $ZacStateCopyWith<$Res> {
  factory _$$ZacStateProvidedCopyWith(
          _$ZacStateProvided value, $Res Function(_$ZacStateProvided) then) =
      __$$ZacStateProvidedCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String family, Object? value, ZacStateUpdate udpate});
}

/// @nodoc
class __$$ZacStateProvidedCopyWithImpl<$Res>
    extends _$ZacStateCopyWithImpl<$Res, _$ZacStateProvided>
    implements _$$ZacStateProvidedCopyWith<$Res> {
  __$$ZacStateProvidedCopyWithImpl(
      _$ZacStateProvided _value, $Res Function(_$ZacStateProvided) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? family = null,
    Object? value = freezed,
    Object? udpate = null,
  }) {
    return _then(_$ZacStateProvided(
      null == family
          ? _value.family
          : family // ignore: cast_nullable_to_non_nullable
              as String,
      freezed == value ? _value.value : value,
      null == udpate
          ? _value.udpate
          : udpate // ignore: cast_nullable_to_non_nullable
              as ZacStateUpdate,
    ));
  }
}

/// @nodoc

class _$ZacStateProvided implements ZacStateProvided {
  _$ZacStateProvided(this.family, this.value, this.udpate);

  @override
  final String family;
  @override
  final Object? value;
  @override
  final ZacStateUpdate udpate;

  @override
  String toString() {
    return 'ZacState.provided(family: $family, value: $value, udpate: $udpate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ZacStateProvided &&
            (identical(other.family, family) || other.family == family) &&
            const DeepCollectionEquality().equals(other.value, value) &&
            (identical(other.udpate, udpate) || other.udpate == udpate));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, family, const DeepCollectionEquality().hash(value), udpate);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ZacStateProvidedCopyWith<_$ZacStateProvided> get copyWith =>
      __$$ZacStateProvidedCopyWithImpl<_$ZacStateProvided>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(
            String family, Object? Function(ProviderRef<Object?>) create)
        $default, {
    required TResult Function(
            String family, Object? value, ZacStateUpdate udpate)
        provided,
  }) {
    return provided(family, value, udpate);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(
            String family, Object? Function(ProviderRef<Object?>) create)?
        $default, {
    TResult? Function(String family, Object? value, ZacStateUpdate udpate)?
        provided,
  }) {
    return provided?.call(family, value, udpate);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(
            String family, Object? Function(ProviderRef<Object?>) create)?
        $default, {
    TResult Function(String family, Object? value, ZacStateUpdate udpate)?
        provided,
    required TResult orElse(),
  }) {
    if (provided != null) {
      return provided(family, value, udpate);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(ZacStateCreate value) $default, {
    required TResult Function(ZacStateProvided value) provided,
  }) {
    return provided(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(ZacStateCreate value)? $default, {
    TResult? Function(ZacStateProvided value)? provided,
  }) {
    return provided?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(ZacStateCreate value)? $default, {
    TResult Function(ZacStateProvided value)? provided,
    required TResult orElse(),
  }) {
    if (provided != null) {
      return provided(this);
    }
    return orElse();
  }
}

abstract class ZacStateProvided implements ZacState {
  factory ZacStateProvided(final String family, final Object? value,
      final ZacStateUpdate udpate) = _$ZacStateProvided;

  @override
  String get family;
  Object? get value;
  ZacStateUpdate get udpate;
  @override
  @JsonKey(ignore: true)
  _$$ZacStateProvidedCopyWith<_$ZacStateProvided> get copyWith =>
      throw _privateConstructorUsedError;
}

ZacStateProvide _$ZacStateProvideFromJson(Map<String, dynamic> json) {
  return _ZacStateProvide.fromJson(json);
}

/// @nodoc
mixin _$ZacStateProvide {
  String get family => throw _privateConstructorUsedError;
  Object? get value => throw _privateConstructorUsedError;
  bool get mayConvertToBuilder => throw _privateConstructorUsedError;
  bool get mayBuildBuilder => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_ZacStateProvide value) $default,
  ) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_ZacStateProvide extends _ZacStateProvide {
  _$_ZacStateProvide(
      {required this.family,
      this.value,
      this.mayConvertToBuilder = true,
      this.mayBuildBuilder = false})
      : super._();

  factory _$_ZacStateProvide.fromJson(Map<String, dynamic> json) =>
      _$$_ZacStateProvideFromJson(json);

  @override
  final String family;
  @override
  final Object? value;
  @override
  @JsonKey()
  final bool mayConvertToBuilder;
  @override
  @JsonKey()
  final bool mayBuildBuilder;

  @override
  String toString() {
    return 'ZacStateProvide(family: $family, value: $value, mayConvertToBuilder: $mayConvertToBuilder, mayBuildBuilder: $mayBuildBuilder)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ZacStateProvide &&
            (identical(other.family, family) || other.family == family) &&
            const DeepCollectionEquality().equals(other.value, value) &&
            (identical(other.mayConvertToBuilder, mayConvertToBuilder) ||
                other.mayConvertToBuilder == mayConvertToBuilder) &&
            (identical(other.mayBuildBuilder, mayBuildBuilder) ||
                other.mayBuildBuilder == mayBuildBuilder));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      family,
      const DeepCollectionEquality().hash(value),
      mayConvertToBuilder,
      mayBuildBuilder);

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_ZacStateProvide value) $default,
  ) {
    return $default(this);
  }
}

abstract class _ZacStateProvide extends ZacStateProvide {
  factory _ZacStateProvide(
      {required final String family,
      final Object? value,
      final bool mayConvertToBuilder,
      final bool mayBuildBuilder}) = _$_ZacStateProvide;
  _ZacStateProvide._() : super._();

  factory _ZacStateProvide.fromJson(Map<String, dynamic> json) =
      _$_ZacStateProvide.fromJson;

  @override
  String get family;
  @override
  Object? get value;
  @override
  bool get mayConvertToBuilder;
  @override
  bool get mayBuildBuilder;
}

ZacStatesProvider _$ZacStatesProviderFromJson(Map<String, dynamic> json) {
  return _ZacStatesProvider.fromJson(json);
}

/// @nodoc
mixin _$ZacStatesProvider {
  List<ZacBuilder<ZacState>> get states => throw _privateConstructorUsedError;
  ZacBuilder<Widget> get child => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_ZacStatesProvider value) $default,
  ) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_ZacStatesProvider extends _ZacStatesProvider {
  _$_ZacStatesProvider(
      {required final List<ZacBuilder<ZacState>> states, required this.child})
      : _states = states,
        super._();

  factory _$_ZacStatesProvider.fromJson(Map<String, dynamic> json) =>
      _$$_ZacStatesProviderFromJson(json);

  final List<ZacBuilder<ZacState>> _states;
  @override
  List<ZacBuilder<ZacState>> get states {
    if (_states is EqualUnmodifiableListView) return _states;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_states);
  }

  @override
  final ZacBuilder<Widget> child;

  @override
  String toString() {
    return 'ZacStatesProvider(states: $states, child: $child)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ZacStatesProvider &&
            const DeepCollectionEquality().equals(other._states, _states) &&
            (identical(other.child, child) || other.child == child));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_states), child);

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_ZacStatesProvider value) $default,
  ) {
    return $default(this);
  }
}

abstract class _ZacStatesProvider extends ZacStatesProvider {
  factory _ZacStatesProvider(
      {required final List<ZacBuilder<ZacState>> states,
      required final ZacBuilder<Widget> child}) = _$_ZacStatesProvider;
  _ZacStatesProvider._() : super._();

  factory _ZacStatesProvider.fromJson(Map<String, dynamic> json) =
      _$_ZacStatesProvider.fromJson;

  @override
  List<ZacBuilder<ZacState>> get states;
  @override
  ZacBuilder<Widget> get child;
}

ZacStateConsume<T> _$ZacStateConsumeFromJson<T>(Map<String, dynamic> json) {
  return _ZacStateConsume<T>.fromJson(json);
}

/// @nodoc
mixin _$ZacStateConsume<T> {
  String get family => throw _privateConstructorUsedError;
  bool get mayBuildBuilder => throw _privateConstructorUsedError;
  ZacBuilder<List<ZacTransform>?>? get transformer =>
      throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_ZacStateConsume<T> value) $default,
  ) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_ZacStateConsume<T> extends _ZacStateConsume<T> {
  _$_ZacStateConsume(
      {required this.family, this.mayBuildBuilder = true, this.transformer})
      : super._();

  factory _$_ZacStateConsume.fromJson(Map<String, dynamic> json) =>
      _$$_ZacStateConsumeFromJson(json);

  @override
  final String family;
  @override
  @JsonKey()
  final bool mayBuildBuilder;
  @override
  final ZacBuilder<List<ZacTransform>?>? transformer;

  @override
  String toString() {
    return 'ZacStateConsume<$T>(family: $family, mayBuildBuilder: $mayBuildBuilder, transformer: $transformer)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ZacStateConsume<T> &&
            (identical(other.family, family) || other.family == family) &&
            (identical(other.mayBuildBuilder, mayBuildBuilder) ||
                other.mayBuildBuilder == mayBuildBuilder) &&
            (identical(other.transformer, transformer) ||
                other.transformer == transformer));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, family, mayBuildBuilder, transformer);

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_ZacStateConsume<T> value) $default,
  ) {
    return $default(this);
  }
}

abstract class _ZacStateConsume<T> extends ZacStateConsume<T> {
  factory _ZacStateConsume(
          {required final String family,
          final bool mayBuildBuilder,
          final ZacBuilder<List<ZacTransform>?>? transformer}) =
      _$_ZacStateConsume<T>;
  _ZacStateConsume._() : super._();

  factory _ZacStateConsume.fromJson(Map<String, dynamic> json) =
      _$_ZacStateConsume<T>.fromJson;

  @override
  String get family;
  @override
  bool get mayBuildBuilder;
  @override
  ZacBuilder<List<ZacTransform>?>? get transformer;
}

StateActions _$StateActionsFromJson(Map<String, dynamic> json) {
  return _StateActionsUpdate.fromJson(json);
}

/// @nodoc
mixin _$StateActions {
  String get family => throw _privateConstructorUsedError;
  ZacBuilder<Object?> get withValue => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_StateActionsUpdate value) update,
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_StateActionsUpdate extends _StateActionsUpdate {
  _$_StateActionsUpdate({required this.family, required this.withValue})
      : super._();

  factory _$_StateActionsUpdate.fromJson(Map<String, dynamic> json) =>
      _$$_StateActionsUpdateFromJson(json);

  @override
  final String family;
  @override
  final ZacBuilder<Object?> withValue;

  @override
  String toString() {
    return 'StateActions.update(family: $family, withValue: $withValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_StateActionsUpdate &&
            (identical(other.family, family) || other.family == family) &&
            (identical(other.withValue, withValue) ||
                other.withValue == withValue));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, family, withValue);

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_StateActionsUpdate value) update,
  }) {
    return update(this);
  }
}

abstract class _StateActionsUpdate extends StateActions {
  factory _StateActionsUpdate(
      {required final String family,
      required final ZacBuilder<Object?> withValue}) = _$_StateActionsUpdate;
  _StateActionsUpdate._() : super._();

  factory _StateActionsUpdate.fromJson(Map<String, dynamic> json) =
      _$_StateActionsUpdate.fromJson;

  @override
  String get family;
  @override
  ZacBuilder<Object?> get withValue;
}
