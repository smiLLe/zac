// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'keyboard.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FlutterScrollViewKeyboardDismissBehavior
    _$FlutterScrollViewKeyboardDismissBehaviorFromJson(
        Map<String, dynamic> json) {
  switch (json['_converter']) {
    case 'f:1:ScrollViewKeyboardDismissBehavior.manual':
      return _FlutterScrollViewKeyboardDismissBehaviorManual.fromJson(json);
    case 'f:1:ScrollViewKeyboardDismissBehavior.onDrag':
      return _FlutterScrollViewKeyboardDismissBehaviorOnDrag.fromJson(json);

    default:
      throw CheckedFromJsonException(
          json,
          '_converter',
          'FlutterScrollViewKeyboardDismissBehavior',
          'Invalid union type "${json['_converter']}"!');
  }
}

/// @nodoc
mixin _$FlutterScrollViewKeyboardDismissBehavior {
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(
            _FlutterScrollViewKeyboardDismissBehaviorManual value)
        manual,
    required TResult Function(
            _FlutterScrollViewKeyboardDismissBehaviorOnDrag value)
        onDrag,
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_FlutterScrollViewKeyboardDismissBehaviorManual
    extends _FlutterScrollViewKeyboardDismissBehaviorManual {
  _$_FlutterScrollViewKeyboardDismissBehaviorManual({final String? $type})
      : $type = $type ?? 'f:1:ScrollViewKeyboardDismissBehavior.manual',
        super._();

  factory _$_FlutterScrollViewKeyboardDismissBehaviorManual.fromJson(
          Map<String, dynamic> json) =>
      _$$_FlutterScrollViewKeyboardDismissBehaviorManualFromJson(json);

  @JsonKey(name: '_converter')
  final String $type;

  @override
  String toString() {
    return 'FlutterScrollViewKeyboardDismissBehavior.manual()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FlutterScrollViewKeyboardDismissBehaviorManual);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(
            _FlutterScrollViewKeyboardDismissBehaviorManual value)
        manual,
    required TResult Function(
            _FlutterScrollViewKeyboardDismissBehaviorOnDrag value)
        onDrag,
  }) {
    return manual(this);
  }
}

abstract class _FlutterScrollViewKeyboardDismissBehaviorManual
    extends FlutterScrollViewKeyboardDismissBehavior {
  factory _FlutterScrollViewKeyboardDismissBehaviorManual() =
      _$_FlutterScrollViewKeyboardDismissBehaviorManual;
  _FlutterScrollViewKeyboardDismissBehaviorManual._() : super._();

  factory _FlutterScrollViewKeyboardDismissBehaviorManual.fromJson(
          Map<String, dynamic> json) =
      _$_FlutterScrollViewKeyboardDismissBehaviorManual.fromJson;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_FlutterScrollViewKeyboardDismissBehaviorOnDrag
    extends _FlutterScrollViewKeyboardDismissBehaviorOnDrag {
  _$_FlutterScrollViewKeyboardDismissBehaviorOnDrag({final String? $type})
      : $type = $type ?? 'f:1:ScrollViewKeyboardDismissBehavior.onDrag',
        super._();

  factory _$_FlutterScrollViewKeyboardDismissBehaviorOnDrag.fromJson(
          Map<String, dynamic> json) =>
      _$$_FlutterScrollViewKeyboardDismissBehaviorOnDragFromJson(json);

  @JsonKey(name: '_converter')
  final String $type;

  @override
  String toString() {
    return 'FlutterScrollViewKeyboardDismissBehavior.onDrag()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FlutterScrollViewKeyboardDismissBehaviorOnDrag);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(
            _FlutterScrollViewKeyboardDismissBehaviorManual value)
        manual,
    required TResult Function(
            _FlutterScrollViewKeyboardDismissBehaviorOnDrag value)
        onDrag,
  }) {
    return onDrag(this);
  }
}

abstract class _FlutterScrollViewKeyboardDismissBehaviorOnDrag
    extends FlutterScrollViewKeyboardDismissBehavior {
  factory _FlutterScrollViewKeyboardDismissBehaviorOnDrag() =
      _$_FlutterScrollViewKeyboardDismissBehaviorOnDrag;
  _FlutterScrollViewKeyboardDismissBehaviorOnDrag._() : super._();

  factory _FlutterScrollViewKeyboardDismissBehaviorOnDrag.fromJson(
          Map<String, dynamic> json) =
      _$_FlutterScrollViewKeyboardDismissBehaviorOnDrag.fromJson;
}
