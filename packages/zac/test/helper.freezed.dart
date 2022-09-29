// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'helper.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$LeakUiAction {
  void Function(BuildContext, WidgetRef, ZacActionHelper, ContextBag) get cb =>
      throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_LeakUiAction value) $default,
  ) =>
      throw _privateConstructorUsedError;
}

/// @nodoc

class _$_LeakUiAction extends _LeakUiAction {
  _$_LeakUiAction(this.cb) : super._();

  @override
  final void Function(BuildContext, WidgetRef, ZacActionHelper, ContextBag) cb;

  @override
  String toString() {
    return 'LeakUiAction(cb: $cb)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LeakUiAction &&
            (identical(other.cb, cb) || other.cb == cb));
  }

  @override
  int get hashCode => Object.hash(runtimeType, cb);

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_LeakUiAction value) $default,
  ) {
    return $default(this);
  }
}

abstract class _LeakUiAction extends LeakUiAction {
  factory _LeakUiAction(
      final void Function(BuildContext, WidgetRef, ZacActionHelper, ContextBag)
          cb) = _$_LeakUiAction;
  _LeakUiAction._() : super._();

  @override
  void Function(BuildContext, WidgetRef, ZacActionHelper, ContextBag) get cb;
}

/// @nodoc
mixin _$LeakBagContentAction {
  void Function(Map<String, dynamic>) get cb =>
      throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_LeakBagContentAction value) $default,
  ) =>
      throw _privateConstructorUsedError;
}

/// @nodoc

class _$_LeakBagContentAction extends _LeakBagContentAction {
  _$_LeakBagContentAction(this.cb) : super._();

  @override
  final void Function(Map<String, dynamic>) cb;

  @override
  String toString() {
    return 'LeakBagContentAction(cb: $cb)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LeakBagContentAction &&
            (identical(other.cb, cb) || other.cb == cb));
  }

  @override
  int get hashCode => Object.hash(runtimeType, cb);

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_LeakBagContentAction value) $default,
  ) {
    return $default(this);
  }
}

abstract class _LeakBagContentAction extends LeakBagContentAction {
  factory _LeakBagContentAction(final void Function(Map<String, dynamic>) cb) =
      _$_LeakBagContentAction;
  _LeakBagContentAction._() : super._();

  @override
  void Function(Map<String, dynamic>) get cb;
}

NoopAction _$NoopActionFromJson(Map<String, dynamic> json) {
  return _NoopAction.fromJson(json);
}

/// @nodoc
mixin _$NoopAction {
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_NoopAction value) $default,
  ) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_NoopAction extends _NoopAction {
  const _$_NoopAction() : super._();

  factory _$_NoopAction.fromJson(Map<String, dynamic> json) =>
      _$$_NoopActionFromJson(json);

  @override
  String toString() {
    return 'NoopAction()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_NoopAction);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_NoopAction value) $default,
  ) {
    return $default(this);
  }
}

abstract class _NoopAction extends NoopAction {
  const factory _NoopAction() = _$_NoopAction;
  const _NoopAction._() : super._();

  factory _NoopAction.fromJson(Map<String, dynamic> json) =
      _$_NoopAction.fromJson;
}

/// @nodoc
mixin _$LeakContext {
  void Function(BuildContext, WidgetRef, ZacActionHelper) get cb =>
      throw _privateConstructorUsedError;
  ZacWidget? get child => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_LeakContext value) $default,
  ) =>
      throw _privateConstructorUsedError;
}

/// @nodoc

class _$_LeakContext extends _LeakContext {
  _$_LeakContext({required this.cb, this.child}) : super._();

  @override
  final void Function(BuildContext, WidgetRef, ZacActionHelper) cb;
  @override
  final ZacWidget? child;

  @override
  String toString() {
    return 'LeakContext(cb: $cb, child: $child)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LeakContext &&
            (identical(other.cb, cb) || other.cb == cb) &&
            const DeepCollectionEquality().equals(other.child, child));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, cb, const DeepCollectionEquality().hash(child));

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_LeakContext value) $default,
  ) {
    return $default(this);
  }
}

abstract class _LeakContext extends LeakContext {
  factory _LeakContext(
      {required final void Function(BuildContext, WidgetRef, ZacActionHelper)
          cb,
      final ZacWidget? child}) = _$_LeakContext;
  _LeakContext._() : super._();

  @override
  void Function(BuildContext, WidgetRef, ZacActionHelper) get cb;
  @override
  ZacWidget? get child;
}
