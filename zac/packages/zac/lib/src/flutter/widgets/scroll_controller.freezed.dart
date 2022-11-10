// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'scroll_controller.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ZacScrollController {
  ScrollController get controller => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_ZacScrollController value) $default,
  ) =>
      throw _privateConstructorUsedError;
}

/// @nodoc

class _$_ZacScrollController extends _ZacScrollController {
  _$_ZacScrollController(this.controller) : super._();

  @override
  final ScrollController controller;

  @override
  String toString() {
    return 'ZacScrollController(controller: $controller)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ZacScrollController &&
            (identical(other.controller, controller) ||
                other.controller == controller));
  }

  @override
  int get hashCode => Object.hash(runtimeType, controller);

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_ZacScrollController value) $default,
  ) {
    return $default(this);
  }
}

abstract class _ZacScrollController extends ZacScrollController {
  factory _ZacScrollController(final ScrollController controller) =
      _$_ZacScrollController;
  _ZacScrollController._() : super._();

  @override
  ScrollController get controller;
}
