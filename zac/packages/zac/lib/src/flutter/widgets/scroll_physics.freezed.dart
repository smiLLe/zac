// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'scroll_physics.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FlutterScrollPhysics _$FlutterScrollPhysicsFromJson(Map<String, dynamic> json) {
  switch (json['converter']) {
    case 'f:1:AlwaysScrollableScrollPhysics':
      return _FlutterScrollPhysicsalwaysScrollable.fromJson(json);
    case 'f:1:BouncingScrollPhysics':
      return _FlutterScrollPhysicsBouncingScroll.fromJson(json);
    case 'f:1:ClampingScrollPhysics':
      return _FlutterScrollPhysicsClampingScrollPhysics.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'converter', 'FlutterScrollPhysics',
          'Invalid union type "${json['converter']}"!');
  }
}

/// @nodoc
mixin _$FlutterScrollPhysics {
  FlutterScrollPhysics? get parent => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FlutterScrollPhysicsalwaysScrollable value)
        alwaysScrollable,
    required TResult Function(_FlutterScrollPhysicsBouncingScroll value)
        bouncingScroll,
    required TResult Function(_FlutterScrollPhysicsClampingScrollPhysics value)
        clampingScrollPhysics,
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_FlutterScrollPhysicsalwaysScrollable
    extends _FlutterScrollPhysicsalwaysScrollable {
  _$_FlutterScrollPhysicsalwaysScrollable({this.parent, final String? $type})
      : $type = $type ?? 'f:1:AlwaysScrollableScrollPhysics',
        super._();

  factory _$_FlutterScrollPhysicsalwaysScrollable.fromJson(
          Map<String, dynamic> json) =>
      _$$_FlutterScrollPhysicsalwaysScrollableFromJson(json);

  @override
  final FlutterScrollPhysics? parent;

  @JsonKey(name: 'converter')
  final String $type;

  @override
  String toString() {
    return 'FlutterScrollPhysics.alwaysScrollable(parent: $parent)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FlutterScrollPhysicsalwaysScrollable &&
            (identical(other.parent, parent) || other.parent == parent));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, parent);

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FlutterScrollPhysicsalwaysScrollable value)
        alwaysScrollable,
    required TResult Function(_FlutterScrollPhysicsBouncingScroll value)
        bouncingScroll,
    required TResult Function(_FlutterScrollPhysicsClampingScrollPhysics value)
        clampingScrollPhysics,
  }) {
    return alwaysScrollable(this);
  }
}

abstract class _FlutterScrollPhysicsalwaysScrollable
    extends FlutterScrollPhysics {
  factory _FlutterScrollPhysicsalwaysScrollable(
          {final FlutterScrollPhysics? parent}) =
      _$_FlutterScrollPhysicsalwaysScrollable;
  _FlutterScrollPhysicsalwaysScrollable._() : super._();

  factory _FlutterScrollPhysicsalwaysScrollable.fromJson(
          Map<String, dynamic> json) =
      _$_FlutterScrollPhysicsalwaysScrollable.fromJson;

  @override
  FlutterScrollPhysics? get parent;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_FlutterScrollPhysicsBouncingScroll
    extends _FlutterScrollPhysicsBouncingScroll {
  _$_FlutterScrollPhysicsBouncingScroll({this.parent, final String? $type})
      : $type = $type ?? 'f:1:BouncingScrollPhysics',
        super._();

  factory _$_FlutterScrollPhysicsBouncingScroll.fromJson(
          Map<String, dynamic> json) =>
      _$$_FlutterScrollPhysicsBouncingScrollFromJson(json);

  @override
  final FlutterScrollPhysics? parent;

  @JsonKey(name: 'converter')
  final String $type;

  @override
  String toString() {
    return 'FlutterScrollPhysics.bouncingScroll(parent: $parent)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FlutterScrollPhysicsBouncingScroll &&
            (identical(other.parent, parent) || other.parent == parent));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, parent);

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FlutterScrollPhysicsalwaysScrollable value)
        alwaysScrollable,
    required TResult Function(_FlutterScrollPhysicsBouncingScroll value)
        bouncingScroll,
    required TResult Function(_FlutterScrollPhysicsClampingScrollPhysics value)
        clampingScrollPhysics,
  }) {
    return bouncingScroll(this);
  }
}

abstract class _FlutterScrollPhysicsBouncingScroll
    extends FlutterScrollPhysics {
  factory _FlutterScrollPhysicsBouncingScroll(
          {final FlutterScrollPhysics? parent}) =
      _$_FlutterScrollPhysicsBouncingScroll;
  _FlutterScrollPhysicsBouncingScroll._() : super._();

  factory _FlutterScrollPhysicsBouncingScroll.fromJson(
          Map<String, dynamic> json) =
      _$_FlutterScrollPhysicsBouncingScroll.fromJson;

  @override
  FlutterScrollPhysics? get parent;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_FlutterScrollPhysicsClampingScrollPhysics
    extends _FlutterScrollPhysicsClampingScrollPhysics {
  _$_FlutterScrollPhysicsClampingScrollPhysics(
      {this.parent, final String? $type})
      : $type = $type ?? 'f:1:ClampingScrollPhysics',
        super._();

  factory _$_FlutterScrollPhysicsClampingScrollPhysics.fromJson(
          Map<String, dynamic> json) =>
      _$$_FlutterScrollPhysicsClampingScrollPhysicsFromJson(json);

  @override
  final FlutterScrollPhysics? parent;

  @JsonKey(name: 'converter')
  final String $type;

  @override
  String toString() {
    return 'FlutterScrollPhysics.clampingScrollPhysics(parent: $parent)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FlutterScrollPhysicsClampingScrollPhysics &&
            (identical(other.parent, parent) || other.parent == parent));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, parent);

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FlutterScrollPhysicsalwaysScrollable value)
        alwaysScrollable,
    required TResult Function(_FlutterScrollPhysicsBouncingScroll value)
        bouncingScroll,
    required TResult Function(_FlutterScrollPhysicsClampingScrollPhysics value)
        clampingScrollPhysics,
  }) {
    return clampingScrollPhysics(this);
  }
}

abstract class _FlutterScrollPhysicsClampingScrollPhysics
    extends FlutterScrollPhysics {
  factory _FlutterScrollPhysicsClampingScrollPhysics(
          {final FlutterScrollPhysics? parent}) =
      _$_FlutterScrollPhysicsClampingScrollPhysics;
  _FlutterScrollPhysicsClampingScrollPhysics._() : super._();

  factory _FlutterScrollPhysicsClampingScrollPhysics.fromJson(
          Map<String, dynamic> json) =
      _$_FlutterScrollPhysicsClampingScrollPhysics.fromJson;

  @override
  FlutterScrollPhysics? get parent;
}
