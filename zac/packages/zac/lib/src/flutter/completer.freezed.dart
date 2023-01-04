// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'completer.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ZacCompleterVoidProvider _$ZacCompleterVoidProviderFromJson(
    Map<String, dynamic> json) {
  return _ZacCompleterVoidProvider.fromJson(json);
}

/// @nodoc
mixin _$ZacCompleterVoidProvider {
  Object get family => throw _privateConstructorUsedError;
  ZacBuilder<Widget> get child => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_ZacCompleterVoidProvider value) $default,
  ) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_ZacCompleterVoidProvider extends _ZacCompleterVoidProvider {
  _$_ZacCompleterVoidProvider({required this.family, required this.child})
      : super._();

  factory _$_ZacCompleterVoidProvider.fromJson(Map<String, dynamic> json) =>
      _$$_ZacCompleterVoidProviderFromJson(json);

  @override
  final Object family;
  @override
  final ZacBuilder<Widget> child;

  @override
  String toString() {
    return 'ZacCompleterVoidProvider(family: $family, child: $child)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ZacCompleterVoidProvider &&
            const DeepCollectionEquality().equals(other.family, family) &&
            (identical(other.child, child) || other.child == child));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(family), child);

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_ZacCompleterVoidProvider value) $default,
  ) {
    return $default(this);
  }
}

abstract class _ZacCompleterVoidProvider extends ZacCompleterVoidProvider {
  factory _ZacCompleterVoidProvider(
      {required final Object family,
      required final ZacBuilder<Widget> child}) = _$_ZacCompleterVoidProvider;
  _ZacCompleterVoidProvider._() : super._();

  factory _ZacCompleterVoidProvider.fromJson(Map<String, dynamic> json) =
      _$_ZacCompleterVoidProvider.fromJson;

  @override
  Object get family;
  @override
  ZacBuilder<Widget> get child;
}

ZacCompleterActions _$ZacCompleterActionsFromJson(Map<String, dynamic> json) {
  return _ZacCompleterActionsVoid.fromJson(json);
}

/// @nodoc
mixin _$ZacCompleterActions {
  ZacBuilder<Completer> get completer => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ZacCompleterActionsVoid value) completeVoid,
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_ZacCompleterActionsVoid extends _ZacCompleterActionsVoid {
  _$_ZacCompleterActionsVoid({required this.completer}) : super._();

  factory _$_ZacCompleterActionsVoid.fromJson(Map<String, dynamic> json) =>
      _$$_ZacCompleterActionsVoidFromJson(json);

  @override
  final ZacBuilder<Completer> completer;

  @override
  String toString() {
    return 'ZacCompleterActions.completeVoid(completer: $completer)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ZacCompleterActionsVoid &&
            (identical(other.completer, completer) ||
                other.completer == completer));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, completer);

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ZacCompleterActionsVoid value) completeVoid,
  }) {
    return completeVoid(this);
  }
}

abstract class _ZacCompleterActionsVoid extends ZacCompleterActions {
  factory _ZacCompleterActionsVoid(
          {required final ZacBuilder<Completer> completer}) =
      _$_ZacCompleterActionsVoid;
  _ZacCompleterActionsVoid._() : super._();

  factory _ZacCompleterActionsVoid.fromJson(Map<String, dynamic> json) =
      _$_ZacCompleterActionsVoid.fromJson;

  @override
  ZacBuilder<Completer> get completer;
}
