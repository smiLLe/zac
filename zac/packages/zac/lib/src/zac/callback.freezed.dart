// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'callback.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ZacCallbackExecute {
  void Function(BuildContext, ZacContext, Ref<Object?>) get execute =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ZacCallbackExecuteCopyWith<ZacCallbackExecute> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ZacCallbackExecuteCopyWith<$Res> {
  factory $ZacCallbackExecuteCopyWith(
          ZacCallbackExecute value, $Res Function(ZacCallbackExecute) then) =
      _$ZacCallbackExecuteCopyWithImpl<$Res, ZacCallbackExecute>;
  @useResult
  $Res call({void Function(BuildContext, ZacContext, Ref<Object?>) execute});
}

/// @nodoc
class _$ZacCallbackExecuteCopyWithImpl<$Res, $Val extends ZacCallbackExecute>
    implements $ZacCallbackExecuteCopyWith<$Res> {
  _$ZacCallbackExecuteCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? execute = null,
  }) {
    return _then(_value.copyWith(
      execute: null == execute
          ? _value.execute
          : execute // ignore: cast_nullable_to_non_nullable
              as void Function(BuildContext, ZacContext, Ref<Object?>),
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ZacCallbackCopyWith<$Res>
    implements $ZacCallbackExecuteCopyWith<$Res> {
  factory _$$_ZacCallbackCopyWith(
          _$_ZacCallback value, $Res Function(_$_ZacCallback) then) =
      __$$_ZacCallbackCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({void Function(BuildContext, ZacContext, Ref<Object?>) execute});
}

/// @nodoc
class __$$_ZacCallbackCopyWithImpl<$Res>
    extends _$ZacCallbackExecuteCopyWithImpl<$Res, _$_ZacCallback>
    implements _$$_ZacCallbackCopyWith<$Res> {
  __$$_ZacCallbackCopyWithImpl(
      _$_ZacCallback _value, $Res Function(_$_ZacCallback) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? execute = null,
  }) {
    return _then(_$_ZacCallback(
      null == execute
          ? _value.execute
          : execute // ignore: cast_nullable_to_non_nullable
              as void Function(BuildContext, ZacContext, Ref<Object?>),
    ));
  }
}

/// @nodoc

class _$_ZacCallback implements _ZacCallback {
  _$_ZacCallback(this.execute);

  @override
  final void Function(BuildContext, ZacContext, Ref<Object?>) execute;

  @override
  String toString() {
    return 'ZacCallbackExecute(execute: $execute)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ZacCallback &&
            (identical(other.execute, execute) || other.execute == execute));
  }

  @override
  int get hashCode => Object.hash(runtimeType, execute);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ZacCallbackCopyWith<_$_ZacCallback> get copyWith =>
      __$$_ZacCallbackCopyWithImpl<_$_ZacCallback>(this, _$identity);
}

abstract class _ZacCallback implements ZacCallbackExecute {
  factory _ZacCallback(
          final void Function(BuildContext, ZacContext, Ref<Object?>) execute) =
      _$_ZacCallback;

  @override
  void Function(BuildContext, ZacContext, Ref<Object?>) get execute;
  @override
  @JsonKey(ignore: true)
  _$$_ZacCallbackCopyWith<_$_ZacCallback> get copyWith =>
      throw _privateConstructorUsedError;
}

ZacCallbacksProvider _$ZacCallbacksProviderFromJson(Map<String, dynamic> json) {
  return _ZacCallbacksProvider.fromJson(json);
}

/// @nodoc
mixin _$ZacCallbacksProvider {
  Map<String, ZacBuilder<ZacCallbackExecute>> get callbacks =>
      throw _privateConstructorUsedError;
  ZacBuilder<Widget> get child => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_ZacCallbacksProvider value) $default,
  ) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_ZacCallbacksProvider extends _ZacCallbacksProvider {
  _$_ZacCallbacksProvider(
      {required final Map<String, ZacBuilder<ZacCallbackExecute>> callbacks,
      required this.child})
      : _callbacks = callbacks,
        super._();

  factory _$_ZacCallbacksProvider.fromJson(Map<String, dynamic> json) =>
      _$$_ZacCallbacksProviderFromJson(json);

  final Map<String, ZacBuilder<ZacCallbackExecute>> _callbacks;
  @override
  Map<String, ZacBuilder<ZacCallbackExecute>> get callbacks {
    if (_callbacks is EqualUnmodifiableMapView) return _callbacks;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_callbacks);
  }

  @override
  final ZacBuilder<Widget> child;

  @override
  String toString() {
    return 'ZacCallbacksProvider(callbacks: $callbacks, child: $child)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ZacCallbacksProvider &&
            const DeepCollectionEquality()
                .equals(other._callbacks, _callbacks) &&
            (identical(other.child, child) || other.child == child));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_callbacks), child);

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_ZacCallbacksProvider value) $default,
  ) {
    return $default(this);
  }
}

abstract class _ZacCallbacksProvider extends ZacCallbacksProvider {
  factory _ZacCallbacksProvider(
      {required final Map<String, ZacBuilder<ZacCallbackExecute>> callbacks,
      required final ZacBuilder<Widget> child}) = _$_ZacCallbacksProvider;
  _ZacCallbacksProvider._() : super._();

  factory _ZacCallbacksProvider.fromJson(Map<String, dynamic> json) =
      _$_ZacCallbacksProvider.fromJson;

  @override
  Map<String, ZacBuilder<ZacCallbackExecute>> get callbacks;
  @override
  ZacBuilder<Widget> get child;
}

ZacCallbacks _$ZacCallbacksFromJson(Map<String, dynamic> json) {
  return _ZacCallbacks.fromJson(json);
}

/// @nodoc
mixin _$ZacCallbacks {
  List<String> get families => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_ZacCallbacks value) $default,
  ) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_ZacCallbacks extends _ZacCallbacks {
  _$_ZacCallbacks({required final List<String> families})
      : _families = families,
        super._();

  factory _$_ZacCallbacks.fromJson(Map<String, dynamic> json) =>
      _$$_ZacCallbacksFromJson(json);

  final List<String> _families;
  @override
  List<String> get families {
    if (_families is EqualUnmodifiableListView) return _families;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_families);
  }

  @override
  String toString() {
    return 'ZacCallbacks(families: $families)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ZacCallbacks &&
            const DeepCollectionEquality().equals(other._families, _families));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_families));

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_ZacCallbacks value) $default,
  ) {
    return $default(this);
  }
}

abstract class _ZacCallbacks extends ZacCallbacks {
  factory _ZacCallbacks({required final List<String> families}) =
      _$_ZacCallbacks;
  _ZacCallbacks._() : super._();

  factory _ZacCallbacks.fromJson(Map<String, dynamic> json) =
      _$_ZacCallbacks.fromJson;

  @override
  List<String> get families;
}
