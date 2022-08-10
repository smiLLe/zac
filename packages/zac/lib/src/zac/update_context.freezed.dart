// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'update_context.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ZacBuildContext {
  BuildContext get context => throw _privateConstructorUsedError;
  WidgetRef get ref => throw _privateConstructorUsedError;
  bool Function() get isMounted => throw _privateConstructorUsedError;
  void Function(void Function()) get onUnmount =>
      throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_ZacBuildContext value) $default,
  ) =>
      throw _privateConstructorUsedError;
}

/// @nodoc

class _$_ZacBuildContext implements _ZacBuildContext {
  _$_ZacBuildContext(
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
    return 'ZacBuildContext(context: $context, ref: $ref, isMounted: $isMounted, onUnmount: $onUnmount)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ZacBuildContext &&
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

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_ZacBuildContext value) $default,
  ) {
    return $default(this);
  }
}

abstract class _ZacBuildContext implements ZacBuildContext {
  factory _ZacBuildContext(
          {required final BuildContext context,
          required final WidgetRef ref,
          required final bool Function() isMounted,
          required final void Function(void Function()) onUnmount}) =
      _$_ZacBuildContext;

  @override
  BuildContext get context;
  @override
  WidgetRef get ref;
  @override
  bool Function() get isMounted;
  @override
  void Function(void Function()) get onUnmount;
}

ZacUpdateContextBuilder _$ZacUpdateContextBuilderFromJson(
    Map<String, dynamic> json) {
  return _ZacUpdateContextBuilder.fromJson(json);
}

/// @nodoc
mixin _$ZacUpdateContextBuilder {
  FlutterKey? get key => throw _privateConstructorUsedError;
  ZacWidget get child => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_ZacUpdateContextBuilder value) $default,
  ) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_ZacUpdateContextBuilder extends _ZacUpdateContextBuilder {
  _$_ZacUpdateContextBuilder({this.key, required this.child}) : super._();

  factory _$_ZacUpdateContextBuilder.fromJson(Map<String, dynamic> json) =>
      _$$_ZacUpdateContextBuilderFromJson(json);

  @override
  final FlutterKey? key;
  @override
  final ZacWidget child;

  @override
  String toString() {
    return 'ZacUpdateContextBuilder(key: $key, child: $child)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ZacUpdateContextBuilder &&
            const DeepCollectionEquality().equals(other.key, key) &&
            const DeepCollectionEquality().equals(other.child, child));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(key),
      const DeepCollectionEquality().hash(child));

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_ZacUpdateContextBuilder value) $default,
  ) {
    return $default(this);
  }
}

abstract class _ZacUpdateContextBuilder extends ZacUpdateContextBuilder {
  factory _ZacUpdateContextBuilder(
      {final FlutterKey? key,
      required final ZacWidget child}) = _$_ZacUpdateContextBuilder;
  _ZacUpdateContextBuilder._() : super._();

  factory _ZacUpdateContextBuilder.fromJson(Map<String, dynamic> json) =
      _$_ZacUpdateContextBuilder.fromJson;

  @override
  FlutterKey? get key;
  @override
  ZacWidget get child;
}
