// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'interactions.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ZacInteractions _$ZacInteractionsFromJson(Map<String, dynamic> json) {
  return _ZacInteractions.fromJson(json);
}

/// @nodoc
mixin _$ZacInteractions {
  List<ZacInteraction> get interactions => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_ZacInteractions value) $default,
  ) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_ZacInteractions extends _ZacInteractions {
  _$_ZacInteractions(final List<ZacInteraction> interactions)
      : _interactions = interactions,
        super._();

  factory _$_ZacInteractions.fromJson(Map<String, dynamic> json) =>
      _$$_ZacInteractionsFromJson(json);

  final List<ZacInteraction> _interactions;
  @override
  List<ZacInteraction> get interactions {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_interactions);
  }

  @override
  String toString() {
    return 'ZacInteractions(interactions: $interactions)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ZacInteractions &&
            const DeepCollectionEquality()
                .equals(other._interactions, _interactions));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_interactions));

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_ZacInteractions value) $default,
  ) {
    return $default(this);
  }
}

abstract class _ZacInteractions extends ZacInteractions {
  factory _ZacInteractions(final List<ZacInteraction> interactions) =
      _$_ZacInteractions;
  _ZacInteractions._() : super._();

  factory _ZacInteractions.fromJson(Map<String, dynamic> json) =
      _$_ZacInteractions.fromJson;

  @override
  List<ZacInteraction> get interactions;
}

ZacExecuteActionsBuilder _$ZacExecuteActionsBuilderFromJson(
    Map<String, dynamic> json) {
  switch (json['_converter']) {
    case 'z:1:ExecuteActions.once':
      return _ZacExecuteActionsBuilderOnce.fromJson(json);
    case 'z:1:ExecuteActions.listen':
      return _ZacExecuteActionsBuilderListen.fromJson(json);

    default:
      throw CheckedFromJsonException(
          json,
          '_converter',
          'ZacExecuteActionsBuilder',
          'Invalid union type "${json['_converter']}"!');
  }
}

/// @nodoc
mixin _$ZacExecuteActionsBuilder {
  ZacInteractions get interactions => throw _privateConstructorUsedError;
  FlutterWidget? get child => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ZacExecuteActionsBuilderOnce value) once,
    required TResult Function(_ZacExecuteActionsBuilderListen value) listen,
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_ZacExecuteActionsBuilderOnce extends _ZacExecuteActionsBuilderOnce {
  _$_ZacExecuteActionsBuilderOnce(
      {required this.interactions, this.child, final String? $type})
      : $type = $type ?? 'z:1:ExecuteActions.once',
        super._();

  factory _$_ZacExecuteActionsBuilderOnce.fromJson(Map<String, dynamic> json) =>
      _$$_ZacExecuteActionsBuilderOnceFromJson(json);

  @override
  final ZacInteractions interactions;
  @override
  final FlutterWidget? child;

  @JsonKey(name: '_converter')
  final String $type;

  @override
  String toString() {
    return 'ZacExecuteActionsBuilder.once(interactions: $interactions, child: $child)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ZacExecuteActionsBuilderOnce &&
            const DeepCollectionEquality()
                .equals(other.interactions, interactions) &&
            const DeepCollectionEquality().equals(other.child, child));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(interactions),
      const DeepCollectionEquality().hash(child));

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ZacExecuteActionsBuilderOnce value) once,
    required TResult Function(_ZacExecuteActionsBuilderListen value) listen,
  }) {
    return once(this);
  }
}

abstract class _ZacExecuteActionsBuilderOnce extends ZacExecuteActionsBuilder {
  factory _ZacExecuteActionsBuilderOnce(
      {required final ZacInteractions interactions,
      final FlutterWidget? child}) = _$_ZacExecuteActionsBuilderOnce;
  _ZacExecuteActionsBuilderOnce._() : super._();

  factory _ZacExecuteActionsBuilderOnce.fromJson(Map<String, dynamic> json) =
      _$_ZacExecuteActionsBuilderOnce.fromJson;

  @override
  ZacInteractions get interactions;
  @override
  FlutterWidget? get child;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_ZacExecuteActionsBuilderListen
    extends _ZacExecuteActionsBuilderListen {
  _$_ZacExecuteActionsBuilderListen(
      {required this.interactions,
      required this.family,
      this.child,
      final String? $type})
      : $type = $type ?? 'z:1:ExecuteActions.listen',
        super._();

  factory _$_ZacExecuteActionsBuilderListen.fromJson(
          Map<String, dynamic> json) =>
      _$$_ZacExecuteActionsBuilderListenFromJson(json);

  @override
  final ZacInteractions interactions;
  @override
  final Object family;
  @override
  final FlutterWidget? child;

  @JsonKey(name: '_converter')
  final String $type;

  @override
  String toString() {
    return 'ZacExecuteActionsBuilder.listen(interactions: $interactions, family: $family, child: $child)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ZacExecuteActionsBuilderListen &&
            const DeepCollectionEquality()
                .equals(other.interactions, interactions) &&
            const DeepCollectionEquality().equals(other.family, family) &&
            const DeepCollectionEquality().equals(other.child, child));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(interactions),
      const DeepCollectionEquality().hash(family),
      const DeepCollectionEquality().hash(child));

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ZacExecuteActionsBuilderOnce value) once,
    required TResult Function(_ZacExecuteActionsBuilderListen value) listen,
  }) {
    return listen(this);
  }
}

abstract class _ZacExecuteActionsBuilderListen
    extends ZacExecuteActionsBuilder {
  factory _ZacExecuteActionsBuilderListen(
      {required final ZacInteractions interactions,
      required final Object family,
      final FlutterWidget? child}) = _$_ZacExecuteActionsBuilderListen;
  _ZacExecuteActionsBuilderListen._() : super._();

  factory _ZacExecuteActionsBuilderListen.fromJson(Map<String, dynamic> json) =
      _$_ZacExecuteActionsBuilderListen.fromJson;

  @override
  ZacInteractions get interactions;
  Object get family;
  @override
  FlutterWidget? get child;
}

/// @nodoc
mixin _$ZacInteractionLifetime {
  bool Function() get isMounted => throw _privateConstructorUsedError;
  void Function(void Function()) get onUnmount =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ZacInteractionLifetimeCopyWith<ZacInteractionLifetime> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ZacInteractionLifetimeCopyWith<$Res> {
  factory $ZacInteractionLifetimeCopyWith(ZacInteractionLifetime value,
          $Res Function(ZacInteractionLifetime) then) =
      _$ZacInteractionLifetimeCopyWithImpl<$Res>;
  $Res call(
      {bool Function() isMounted, void Function(void Function()) onUnmount});
}

/// @nodoc
class _$ZacInteractionLifetimeCopyWithImpl<$Res>
    implements $ZacInteractionLifetimeCopyWith<$Res> {
  _$ZacInteractionLifetimeCopyWithImpl(this._value, this._then);

  final ZacInteractionLifetime _value;
  // ignore: unused_field
  final $Res Function(ZacInteractionLifetime) _then;

  @override
  $Res call({
    Object? isMounted = freezed,
    Object? onUnmount = freezed,
  }) {
    return _then(_value.copyWith(
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
abstract class _$$_ZacInteractionLifetimeCopyWith<$Res>
    implements $ZacInteractionLifetimeCopyWith<$Res> {
  factory _$$_ZacInteractionLifetimeCopyWith(_$_ZacInteractionLifetime value,
          $Res Function(_$_ZacInteractionLifetime) then) =
      __$$_ZacInteractionLifetimeCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool Function() isMounted, void Function(void Function()) onUnmount});
}

/// @nodoc
class __$$_ZacInteractionLifetimeCopyWithImpl<$Res>
    extends _$ZacInteractionLifetimeCopyWithImpl<$Res>
    implements _$$_ZacInteractionLifetimeCopyWith<$Res> {
  __$$_ZacInteractionLifetimeCopyWithImpl(_$_ZacInteractionLifetime _value,
      $Res Function(_$_ZacInteractionLifetime) _then)
      : super(_value, (v) => _then(v as _$_ZacInteractionLifetime));

  @override
  _$_ZacInteractionLifetime get _value =>
      super._value as _$_ZacInteractionLifetime;

  @override
  $Res call({
    Object? isMounted = freezed,
    Object? onUnmount = freezed,
  }) {
    return _then(_$_ZacInteractionLifetime(
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

class _$_ZacInteractionLifetime implements _ZacInteractionLifetime {
  _$_ZacInteractionLifetime({required this.isMounted, required this.onUnmount});

  @override
  final bool Function() isMounted;
  @override
  final void Function(void Function()) onUnmount;

  @override
  String toString() {
    return 'ZacInteractionLifetime(isMounted: $isMounted, onUnmount: $onUnmount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ZacInteractionLifetime &&
            (identical(other.isMounted, isMounted) ||
                other.isMounted == isMounted) &&
            (identical(other.onUnmount, onUnmount) ||
                other.onUnmount == onUnmount));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isMounted, onUnmount);

  @JsonKey(ignore: true)
  @override
  _$$_ZacInteractionLifetimeCopyWith<_$_ZacInteractionLifetime> get copyWith =>
      __$$_ZacInteractionLifetimeCopyWithImpl<_$_ZacInteractionLifetime>(
          this, _$identity);
}

abstract class _ZacInteractionLifetime implements ZacInteractionLifetime {
  factory _ZacInteractionLifetime(
          {required final bool Function() isMounted,
          required final void Function(void Function()) onUnmount}) =
      _$_ZacInteractionLifetime;

  @override
  bool Function() get isMounted;
  @override
  void Function(void Function()) get onUnmount;
  @override
  @JsonKey(ignore: true)
  _$$_ZacInteractionLifetimeCopyWith<_$_ZacInteractionLifetime> get copyWith =>
      throw _privateConstructorUsedError;
}
