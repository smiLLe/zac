// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'rendering.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FlutterHitTestBehavior _$FlutterHitTestBehaviorFromJson(
    Map<String, dynamic> json) {
  switch (json['converter']) {
    case 'f:1:HitTestBehavior.deferToChild':
      return _FlutterHitTestBehaviordeferToChild.fromJson(json);
    case 'f:1:HitTestBehavior.opaque':
      return _FlutterHitTestBehavioropaque.fromJson(json);
    case 'f:1:HitTestBehavior.translucent':
      return _FlutterHitTestBehaviortranslucent.fromJson(json);

    default:
      throw CheckedFromJsonException(
          json,
          'converter',
          'FlutterHitTestBehavior',
          'Invalid union type "${json['converter']}"!');
  }
}

/// @nodoc
mixin _$FlutterHitTestBehavior {
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FlutterHitTestBehaviordeferToChild value)
        deferToChild,
    required TResult Function(_FlutterHitTestBehavioropaque value) opaque,
    required TResult Function(_FlutterHitTestBehaviortranslucent value)
        translucent,
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_FlutterHitTestBehaviordeferToChild
    extends _FlutterHitTestBehaviordeferToChild {
  _$_FlutterHitTestBehaviordeferToChild({final String? $type})
      : $type = $type ?? 'f:1:HitTestBehavior.deferToChild',
        super._();

  factory _$_FlutterHitTestBehaviordeferToChild.fromJson(
          Map<String, dynamic> json) =>
      _$$_FlutterHitTestBehaviordeferToChildFromJson(json);

  @JsonKey(name: 'converter')
  final String $type;

  @override
  String toString() {
    return 'FlutterHitTestBehavior.deferToChild()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FlutterHitTestBehaviordeferToChild);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FlutterHitTestBehaviordeferToChild value)
        deferToChild,
    required TResult Function(_FlutterHitTestBehavioropaque value) opaque,
    required TResult Function(_FlutterHitTestBehaviortranslucent value)
        translucent,
  }) {
    return deferToChild(this);
  }
}

abstract class _FlutterHitTestBehaviordeferToChild
    extends FlutterHitTestBehavior {
  factory _FlutterHitTestBehaviordeferToChild() =
      _$_FlutterHitTestBehaviordeferToChild;
  _FlutterHitTestBehaviordeferToChild._() : super._();

  factory _FlutterHitTestBehaviordeferToChild.fromJson(
          Map<String, dynamic> json) =
      _$_FlutterHitTestBehaviordeferToChild.fromJson;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_FlutterHitTestBehavioropaque extends _FlutterHitTestBehavioropaque {
  _$_FlutterHitTestBehavioropaque({final String? $type})
      : $type = $type ?? 'f:1:HitTestBehavior.opaque',
        super._();

  factory _$_FlutterHitTestBehavioropaque.fromJson(Map<String, dynamic> json) =>
      _$$_FlutterHitTestBehavioropaqueFromJson(json);

  @JsonKey(name: 'converter')
  final String $type;

  @override
  String toString() {
    return 'FlutterHitTestBehavior.opaque()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FlutterHitTestBehavioropaque);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FlutterHitTestBehaviordeferToChild value)
        deferToChild,
    required TResult Function(_FlutterHitTestBehavioropaque value) opaque,
    required TResult Function(_FlutterHitTestBehaviortranslucent value)
        translucent,
  }) {
    return opaque(this);
  }
}

abstract class _FlutterHitTestBehavioropaque extends FlutterHitTestBehavior {
  factory _FlutterHitTestBehavioropaque() = _$_FlutterHitTestBehavioropaque;
  _FlutterHitTestBehavioropaque._() : super._();

  factory _FlutterHitTestBehavioropaque.fromJson(Map<String, dynamic> json) =
      _$_FlutterHitTestBehavioropaque.fromJson;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_FlutterHitTestBehaviortranslucent
    extends _FlutterHitTestBehaviortranslucent {
  _$_FlutterHitTestBehaviortranslucent({final String? $type})
      : $type = $type ?? 'f:1:HitTestBehavior.translucent',
        super._();

  factory _$_FlutterHitTestBehaviortranslucent.fromJson(
          Map<String, dynamic> json) =>
      _$$_FlutterHitTestBehaviortranslucentFromJson(json);

  @JsonKey(name: 'converter')
  final String $type;

  @override
  String toString() {
    return 'FlutterHitTestBehavior.translucent()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FlutterHitTestBehaviortranslucent);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FlutterHitTestBehaviordeferToChild value)
        deferToChild,
    required TResult Function(_FlutterHitTestBehavioropaque value) opaque,
    required TResult Function(_FlutterHitTestBehaviortranslucent value)
        translucent,
  }) {
    return translucent(this);
  }
}

abstract class _FlutterHitTestBehaviortranslucent
    extends FlutterHitTestBehavior {
  factory _FlutterHitTestBehaviortranslucent() =
      _$_FlutterHitTestBehaviortranslucent;
  _FlutterHitTestBehaviortranslucent._() : super._();

  factory _FlutterHitTestBehaviortranslucent.fromJson(
          Map<String, dynamic> json) =
      _$_FlutterHitTestBehaviortranslucent.fromJson;
}

FlutterCrossAxisAlignment _$FlutterCrossAxisAlignmentFromJson(
    Map<String, dynamic> json) {
  switch (json['converter']) {
    case 'f:1:CrossAxisAlignment.baseline':
      return _FlutterCrossAxisAlignmentBaseline.fromJson(json);
    case 'f:1:CrossAxisAlignment.center':
      return _FlutterCrossAxisAlignmentCenter.fromJson(json);
    case 'f:1:CrossAxisAlignment.end':
      return _FlutterCrossAxisAlignmentEnd.fromJson(json);
    case 'f:1:CrossAxisAlignment.start':
      return _FlutterCrossAxisAlignmentStart.fromJson(json);
    case 'f:1:CrossAxisAlignment.stretch':
      return _FlutterCrossAxisAlignmentStretch.fromJson(json);

    default:
      throw CheckedFromJsonException(
          json,
          'converter',
          'FlutterCrossAxisAlignment',
          'Invalid union type "${json['converter']}"!');
  }
}

/// @nodoc
mixin _$FlutterCrossAxisAlignment {
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FlutterCrossAxisAlignmentBaseline value)
        baseline,
    required TResult Function(_FlutterCrossAxisAlignmentCenter value) center,
    required TResult Function(_FlutterCrossAxisAlignmentEnd value) end,
    required TResult Function(_FlutterCrossAxisAlignmentStart value) start,
    required TResult Function(_FlutterCrossAxisAlignmentStretch value) stretch,
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_FlutterCrossAxisAlignmentBaseline
    extends _FlutterCrossAxisAlignmentBaseline {
  _$_FlutterCrossAxisAlignmentBaseline({final String? $type})
      : $type = $type ?? 'f:1:CrossAxisAlignment.baseline',
        super._();

  factory _$_FlutterCrossAxisAlignmentBaseline.fromJson(
          Map<String, dynamic> json) =>
      _$$_FlutterCrossAxisAlignmentBaselineFromJson(json);

  @JsonKey(name: 'converter')
  final String $type;

  @override
  String toString() {
    return 'FlutterCrossAxisAlignment.baseline()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FlutterCrossAxisAlignmentBaseline);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FlutterCrossAxisAlignmentBaseline value)
        baseline,
    required TResult Function(_FlutterCrossAxisAlignmentCenter value) center,
    required TResult Function(_FlutterCrossAxisAlignmentEnd value) end,
    required TResult Function(_FlutterCrossAxisAlignmentStart value) start,
    required TResult Function(_FlutterCrossAxisAlignmentStretch value) stretch,
  }) {
    return baseline(this);
  }
}

abstract class _FlutterCrossAxisAlignmentBaseline
    extends FlutterCrossAxisAlignment {
  factory _FlutterCrossAxisAlignmentBaseline() =
      _$_FlutterCrossAxisAlignmentBaseline;
  _FlutterCrossAxisAlignmentBaseline._() : super._();

  factory _FlutterCrossAxisAlignmentBaseline.fromJson(
          Map<String, dynamic> json) =
      _$_FlutterCrossAxisAlignmentBaseline.fromJson;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_FlutterCrossAxisAlignmentCenter
    extends _FlutterCrossAxisAlignmentCenter {
  _$_FlutterCrossAxisAlignmentCenter({final String? $type})
      : $type = $type ?? 'f:1:CrossAxisAlignment.center',
        super._();

  factory _$_FlutterCrossAxisAlignmentCenter.fromJson(
          Map<String, dynamic> json) =>
      _$$_FlutterCrossAxisAlignmentCenterFromJson(json);

  @JsonKey(name: 'converter')
  final String $type;

  @override
  String toString() {
    return 'FlutterCrossAxisAlignment.center()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FlutterCrossAxisAlignmentCenter);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FlutterCrossAxisAlignmentBaseline value)
        baseline,
    required TResult Function(_FlutterCrossAxisAlignmentCenter value) center,
    required TResult Function(_FlutterCrossAxisAlignmentEnd value) end,
    required TResult Function(_FlutterCrossAxisAlignmentStart value) start,
    required TResult Function(_FlutterCrossAxisAlignmentStretch value) stretch,
  }) {
    return center(this);
  }
}

abstract class _FlutterCrossAxisAlignmentCenter
    extends FlutterCrossAxisAlignment {
  factory _FlutterCrossAxisAlignmentCenter() =
      _$_FlutterCrossAxisAlignmentCenter;
  _FlutterCrossAxisAlignmentCenter._() : super._();

  factory _FlutterCrossAxisAlignmentCenter.fromJson(Map<String, dynamic> json) =
      _$_FlutterCrossAxisAlignmentCenter.fromJson;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_FlutterCrossAxisAlignmentEnd extends _FlutterCrossAxisAlignmentEnd {
  _$_FlutterCrossAxisAlignmentEnd({final String? $type})
      : $type = $type ?? 'f:1:CrossAxisAlignment.end',
        super._();

  factory _$_FlutterCrossAxisAlignmentEnd.fromJson(Map<String, dynamic> json) =>
      _$$_FlutterCrossAxisAlignmentEndFromJson(json);

  @JsonKey(name: 'converter')
  final String $type;

  @override
  String toString() {
    return 'FlutterCrossAxisAlignment.end()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FlutterCrossAxisAlignmentEnd);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FlutterCrossAxisAlignmentBaseline value)
        baseline,
    required TResult Function(_FlutterCrossAxisAlignmentCenter value) center,
    required TResult Function(_FlutterCrossAxisAlignmentEnd value) end,
    required TResult Function(_FlutterCrossAxisAlignmentStart value) start,
    required TResult Function(_FlutterCrossAxisAlignmentStretch value) stretch,
  }) {
    return end(this);
  }
}

abstract class _FlutterCrossAxisAlignmentEnd extends FlutterCrossAxisAlignment {
  factory _FlutterCrossAxisAlignmentEnd() = _$_FlutterCrossAxisAlignmentEnd;
  _FlutterCrossAxisAlignmentEnd._() : super._();

  factory _FlutterCrossAxisAlignmentEnd.fromJson(Map<String, dynamic> json) =
      _$_FlutterCrossAxisAlignmentEnd.fromJson;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_FlutterCrossAxisAlignmentStart
    extends _FlutterCrossAxisAlignmentStart {
  _$_FlutterCrossAxisAlignmentStart({final String? $type})
      : $type = $type ?? 'f:1:CrossAxisAlignment.start',
        super._();

  factory _$_FlutterCrossAxisAlignmentStart.fromJson(
          Map<String, dynamic> json) =>
      _$$_FlutterCrossAxisAlignmentStartFromJson(json);

  @JsonKey(name: 'converter')
  final String $type;

  @override
  String toString() {
    return 'FlutterCrossAxisAlignment.start()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FlutterCrossAxisAlignmentStart);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FlutterCrossAxisAlignmentBaseline value)
        baseline,
    required TResult Function(_FlutterCrossAxisAlignmentCenter value) center,
    required TResult Function(_FlutterCrossAxisAlignmentEnd value) end,
    required TResult Function(_FlutterCrossAxisAlignmentStart value) start,
    required TResult Function(_FlutterCrossAxisAlignmentStretch value) stretch,
  }) {
    return start(this);
  }
}

abstract class _FlutterCrossAxisAlignmentStart
    extends FlutterCrossAxisAlignment {
  factory _FlutterCrossAxisAlignmentStart() = _$_FlutterCrossAxisAlignmentStart;
  _FlutterCrossAxisAlignmentStart._() : super._();

  factory _FlutterCrossAxisAlignmentStart.fromJson(Map<String, dynamic> json) =
      _$_FlutterCrossAxisAlignmentStart.fromJson;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_FlutterCrossAxisAlignmentStretch
    extends _FlutterCrossAxisAlignmentStretch {
  _$_FlutterCrossAxisAlignmentStretch({final String? $type})
      : $type = $type ?? 'f:1:CrossAxisAlignment.stretch',
        super._();

  factory _$_FlutterCrossAxisAlignmentStretch.fromJson(
          Map<String, dynamic> json) =>
      _$$_FlutterCrossAxisAlignmentStretchFromJson(json);

  @JsonKey(name: 'converter')
  final String $type;

  @override
  String toString() {
    return 'FlutterCrossAxisAlignment.stretch()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FlutterCrossAxisAlignmentStretch);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FlutterCrossAxisAlignmentBaseline value)
        baseline,
    required TResult Function(_FlutterCrossAxisAlignmentCenter value) center,
    required TResult Function(_FlutterCrossAxisAlignmentEnd value) end,
    required TResult Function(_FlutterCrossAxisAlignmentStart value) start,
    required TResult Function(_FlutterCrossAxisAlignmentStretch value) stretch,
  }) {
    return stretch(this);
  }
}

abstract class _FlutterCrossAxisAlignmentStretch
    extends FlutterCrossAxisAlignment {
  factory _FlutterCrossAxisAlignmentStretch() =
      _$_FlutterCrossAxisAlignmentStretch;
  _FlutterCrossAxisAlignmentStretch._() : super._();

  factory _FlutterCrossAxisAlignmentStretch.fromJson(
      Map<String, dynamic> json) = _$_FlutterCrossAxisAlignmentStretch.fromJson;
}

FlutterMainAxisAlignment _$FlutterMainAxisAlignmentFromJson(
    Map<String, dynamic> json) {
  switch (json['converter']) {
    case 'f:1:MainAxisAlignment.start':
      return _FlutterMainAxisAlignmentStart.fromJson(json);
    case 'f:1:MainAxisAlignment.end':
      return _FlutterMainAxisAlignmentEnd.fromJson(json);
    case 'f:1:MainAxisAlignment.center':
      return _FlutterMainAxisAlignmentCenter.fromJson(json);
    case 'f:1:MainAxisAlignment.spaceBetween':
      return _FlutterMainAxisAlignmentSpaceBetween.fromJson(json);
    case 'f:1:MainAxisAlignment.spaceAround':
      return _FlutterMainAxisAlignmentAround.fromJson(json);
    case 'f:1:MainAxisAlignment.spaceEvenly':
      return _FlutterMainAxisAlignmentEvenly.fromJson(json);

    default:
      throw CheckedFromJsonException(
          json,
          'converter',
          'FlutterMainAxisAlignment',
          'Invalid union type "${json['converter']}"!');
  }
}

/// @nodoc
mixin _$FlutterMainAxisAlignment {
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FlutterMainAxisAlignmentStart value) start,
    required TResult Function(_FlutterMainAxisAlignmentEnd value) end,
    required TResult Function(_FlutterMainAxisAlignmentCenter value) center,
    required TResult Function(_FlutterMainAxisAlignmentSpaceBetween value)
        spaceBetween,
    required TResult Function(_FlutterMainAxisAlignmentAround value)
        spaceAround,
    required TResult Function(_FlutterMainAxisAlignmentEvenly value)
        spaceEvenly,
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_FlutterMainAxisAlignmentStart extends _FlutterMainAxisAlignmentStart {
  _$_FlutterMainAxisAlignmentStart({final String? $type})
      : $type = $type ?? 'f:1:MainAxisAlignment.start',
        super._();

  factory _$_FlutterMainAxisAlignmentStart.fromJson(
          Map<String, dynamic> json) =>
      _$$_FlutterMainAxisAlignmentStartFromJson(json);

  @JsonKey(name: 'converter')
  final String $type;

  @override
  String toString() {
    return 'FlutterMainAxisAlignment.start()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FlutterMainAxisAlignmentStart);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FlutterMainAxisAlignmentStart value) start,
    required TResult Function(_FlutterMainAxisAlignmentEnd value) end,
    required TResult Function(_FlutterMainAxisAlignmentCenter value) center,
    required TResult Function(_FlutterMainAxisAlignmentSpaceBetween value)
        spaceBetween,
    required TResult Function(_FlutterMainAxisAlignmentAround value)
        spaceAround,
    required TResult Function(_FlutterMainAxisAlignmentEvenly value)
        spaceEvenly,
  }) {
    return start(this);
  }
}

abstract class _FlutterMainAxisAlignmentStart extends FlutterMainAxisAlignment {
  factory _FlutterMainAxisAlignmentStart() = _$_FlutterMainAxisAlignmentStart;
  _FlutterMainAxisAlignmentStart._() : super._();

  factory _FlutterMainAxisAlignmentStart.fromJson(Map<String, dynamic> json) =
      _$_FlutterMainAxisAlignmentStart.fromJson;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_FlutterMainAxisAlignmentEnd extends _FlutterMainAxisAlignmentEnd {
  _$_FlutterMainAxisAlignmentEnd({final String? $type})
      : $type = $type ?? 'f:1:MainAxisAlignment.end',
        super._();

  factory _$_FlutterMainAxisAlignmentEnd.fromJson(Map<String, dynamic> json) =>
      _$$_FlutterMainAxisAlignmentEndFromJson(json);

  @JsonKey(name: 'converter')
  final String $type;

  @override
  String toString() {
    return 'FlutterMainAxisAlignment.end()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FlutterMainAxisAlignmentEnd);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FlutterMainAxisAlignmentStart value) start,
    required TResult Function(_FlutterMainAxisAlignmentEnd value) end,
    required TResult Function(_FlutterMainAxisAlignmentCenter value) center,
    required TResult Function(_FlutterMainAxisAlignmentSpaceBetween value)
        spaceBetween,
    required TResult Function(_FlutterMainAxisAlignmentAround value)
        spaceAround,
    required TResult Function(_FlutterMainAxisAlignmentEvenly value)
        spaceEvenly,
  }) {
    return end(this);
  }
}

abstract class _FlutterMainAxisAlignmentEnd extends FlutterMainAxisAlignment {
  factory _FlutterMainAxisAlignmentEnd() = _$_FlutterMainAxisAlignmentEnd;
  _FlutterMainAxisAlignmentEnd._() : super._();

  factory _FlutterMainAxisAlignmentEnd.fromJson(Map<String, dynamic> json) =
      _$_FlutterMainAxisAlignmentEnd.fromJson;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_FlutterMainAxisAlignmentCenter
    extends _FlutterMainAxisAlignmentCenter {
  _$_FlutterMainAxisAlignmentCenter({final String? $type})
      : $type = $type ?? 'f:1:MainAxisAlignment.center',
        super._();

  factory _$_FlutterMainAxisAlignmentCenter.fromJson(
          Map<String, dynamic> json) =>
      _$$_FlutterMainAxisAlignmentCenterFromJson(json);

  @JsonKey(name: 'converter')
  final String $type;

  @override
  String toString() {
    return 'FlutterMainAxisAlignment.center()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FlutterMainAxisAlignmentCenter);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FlutterMainAxisAlignmentStart value) start,
    required TResult Function(_FlutterMainAxisAlignmentEnd value) end,
    required TResult Function(_FlutterMainAxisAlignmentCenter value) center,
    required TResult Function(_FlutterMainAxisAlignmentSpaceBetween value)
        spaceBetween,
    required TResult Function(_FlutterMainAxisAlignmentAround value)
        spaceAround,
    required TResult Function(_FlutterMainAxisAlignmentEvenly value)
        spaceEvenly,
  }) {
    return center(this);
  }
}

abstract class _FlutterMainAxisAlignmentCenter
    extends FlutterMainAxisAlignment {
  factory _FlutterMainAxisAlignmentCenter() = _$_FlutterMainAxisAlignmentCenter;
  _FlutterMainAxisAlignmentCenter._() : super._();

  factory _FlutterMainAxisAlignmentCenter.fromJson(Map<String, dynamic> json) =
      _$_FlutterMainAxisAlignmentCenter.fromJson;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_FlutterMainAxisAlignmentSpaceBetween
    extends _FlutterMainAxisAlignmentSpaceBetween {
  _$_FlutterMainAxisAlignmentSpaceBetween({final String? $type})
      : $type = $type ?? 'f:1:MainAxisAlignment.spaceBetween',
        super._();

  factory _$_FlutterMainAxisAlignmentSpaceBetween.fromJson(
          Map<String, dynamic> json) =>
      _$$_FlutterMainAxisAlignmentSpaceBetweenFromJson(json);

  @JsonKey(name: 'converter')
  final String $type;

  @override
  String toString() {
    return 'FlutterMainAxisAlignment.spaceBetween()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FlutterMainAxisAlignmentSpaceBetween);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FlutterMainAxisAlignmentStart value) start,
    required TResult Function(_FlutterMainAxisAlignmentEnd value) end,
    required TResult Function(_FlutterMainAxisAlignmentCenter value) center,
    required TResult Function(_FlutterMainAxisAlignmentSpaceBetween value)
        spaceBetween,
    required TResult Function(_FlutterMainAxisAlignmentAround value)
        spaceAround,
    required TResult Function(_FlutterMainAxisAlignmentEvenly value)
        spaceEvenly,
  }) {
    return spaceBetween(this);
  }
}

abstract class _FlutterMainAxisAlignmentSpaceBetween
    extends FlutterMainAxisAlignment {
  factory _FlutterMainAxisAlignmentSpaceBetween() =
      _$_FlutterMainAxisAlignmentSpaceBetween;
  _FlutterMainAxisAlignmentSpaceBetween._() : super._();

  factory _FlutterMainAxisAlignmentSpaceBetween.fromJson(
          Map<String, dynamic> json) =
      _$_FlutterMainAxisAlignmentSpaceBetween.fromJson;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_FlutterMainAxisAlignmentAround
    extends _FlutterMainAxisAlignmentAround {
  _$_FlutterMainAxisAlignmentAround({final String? $type})
      : $type = $type ?? 'f:1:MainAxisAlignment.spaceAround',
        super._();

  factory _$_FlutterMainAxisAlignmentAround.fromJson(
          Map<String, dynamic> json) =>
      _$$_FlutterMainAxisAlignmentAroundFromJson(json);

  @JsonKey(name: 'converter')
  final String $type;

  @override
  String toString() {
    return 'FlutterMainAxisAlignment.spaceAround()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FlutterMainAxisAlignmentAround);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FlutterMainAxisAlignmentStart value) start,
    required TResult Function(_FlutterMainAxisAlignmentEnd value) end,
    required TResult Function(_FlutterMainAxisAlignmentCenter value) center,
    required TResult Function(_FlutterMainAxisAlignmentSpaceBetween value)
        spaceBetween,
    required TResult Function(_FlutterMainAxisAlignmentAround value)
        spaceAround,
    required TResult Function(_FlutterMainAxisAlignmentEvenly value)
        spaceEvenly,
  }) {
    return spaceAround(this);
  }
}

abstract class _FlutterMainAxisAlignmentAround
    extends FlutterMainAxisAlignment {
  factory _FlutterMainAxisAlignmentAround() = _$_FlutterMainAxisAlignmentAround;
  _FlutterMainAxisAlignmentAround._() : super._();

  factory _FlutterMainAxisAlignmentAround.fromJson(Map<String, dynamic> json) =
      _$_FlutterMainAxisAlignmentAround.fromJson;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_FlutterMainAxisAlignmentEvenly
    extends _FlutterMainAxisAlignmentEvenly {
  _$_FlutterMainAxisAlignmentEvenly({final String? $type})
      : $type = $type ?? 'f:1:MainAxisAlignment.spaceEvenly',
        super._();

  factory _$_FlutterMainAxisAlignmentEvenly.fromJson(
          Map<String, dynamic> json) =>
      _$$_FlutterMainAxisAlignmentEvenlyFromJson(json);

  @JsonKey(name: 'converter')
  final String $type;

  @override
  String toString() {
    return 'FlutterMainAxisAlignment.spaceEvenly()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FlutterMainAxisAlignmentEvenly);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FlutterMainAxisAlignmentStart value) start,
    required TResult Function(_FlutterMainAxisAlignmentEnd value) end,
    required TResult Function(_FlutterMainAxisAlignmentCenter value) center,
    required TResult Function(_FlutterMainAxisAlignmentSpaceBetween value)
        spaceBetween,
    required TResult Function(_FlutterMainAxisAlignmentAround value)
        spaceAround,
    required TResult Function(_FlutterMainAxisAlignmentEvenly value)
        spaceEvenly,
  }) {
    return spaceEvenly(this);
  }
}

abstract class _FlutterMainAxisAlignmentEvenly
    extends FlutterMainAxisAlignment {
  factory _FlutterMainAxisAlignmentEvenly() = _$_FlutterMainAxisAlignmentEvenly;
  _FlutterMainAxisAlignmentEvenly._() : super._();

  factory _FlutterMainAxisAlignmentEvenly.fromJson(Map<String, dynamic> json) =
      _$_FlutterMainAxisAlignmentEvenly.fromJson;
}

FlutterMainAxisSize _$FlutterMainAxisSizeFromJson(Map<String, dynamic> json) {
  switch (json['converter']) {
    case 'f:1:MainAxisSize.min':
      return _FlutterMainAxisSizeMin.fromJson(json);
    case 'f:1:MainAxisSize.max':
      return _FlutterMainAxisSizeMax.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'converter', 'FlutterMainAxisSize',
          'Invalid union type "${json['converter']}"!');
  }
}

/// @nodoc
mixin _$FlutterMainAxisSize {
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FlutterMainAxisSizeMin value) min,
    required TResult Function(_FlutterMainAxisSizeMax value) max,
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_FlutterMainAxisSizeMin extends _FlutterMainAxisSizeMin {
  _$_FlutterMainAxisSizeMin({final String? $type})
      : $type = $type ?? 'f:1:MainAxisSize.min',
        super._();

  factory _$_FlutterMainAxisSizeMin.fromJson(Map<String, dynamic> json) =>
      _$$_FlutterMainAxisSizeMinFromJson(json);

  @JsonKey(name: 'converter')
  final String $type;

  @override
  String toString() {
    return 'FlutterMainAxisSize.min()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FlutterMainAxisSizeMin);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FlutterMainAxisSizeMin value) min,
    required TResult Function(_FlutterMainAxisSizeMax value) max,
  }) {
    return min(this);
  }
}

abstract class _FlutterMainAxisSizeMin extends FlutterMainAxisSize {
  factory _FlutterMainAxisSizeMin() = _$_FlutterMainAxisSizeMin;
  _FlutterMainAxisSizeMin._() : super._();

  factory _FlutterMainAxisSizeMin.fromJson(Map<String, dynamic> json) =
      _$_FlutterMainAxisSizeMin.fromJson;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_FlutterMainAxisSizeMax extends _FlutterMainAxisSizeMax {
  _$_FlutterMainAxisSizeMax({final String? $type})
      : $type = $type ?? 'f:1:MainAxisSize.max',
        super._();

  factory _$_FlutterMainAxisSizeMax.fromJson(Map<String, dynamic> json) =>
      _$$_FlutterMainAxisSizeMaxFromJson(json);

  @JsonKey(name: 'converter')
  final String $type;

  @override
  String toString() {
    return 'FlutterMainAxisSize.max()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FlutterMainAxisSizeMax);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FlutterMainAxisSizeMin value) min,
    required TResult Function(_FlutterMainAxisSizeMax value) max,
  }) {
    return max(this);
  }
}

abstract class _FlutterMainAxisSizeMax extends FlutterMainAxisSize {
  factory _FlutterMainAxisSizeMax() = _$_FlutterMainAxisSizeMax;
  _FlutterMainAxisSizeMax._() : super._();

  factory _FlutterMainAxisSizeMax.fromJson(Map<String, dynamic> json) =
      _$_FlutterMainAxisSizeMax.fromJson;
}

FlutterFlexFit _$FlutterFlexFitFromJson(Map<String, dynamic> json) {
  switch (json['converter']) {
    case 'f:1:FlexFit.tight':
      return _FlutterFlexFitTight.fromJson(json);
    case 'f:1:FlexFit.loose':
      return _FlutterFlexFitLoose.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'converter', 'FlutterFlexFit',
          'Invalid union type "${json['converter']}"!');
  }
}

/// @nodoc
mixin _$FlutterFlexFit {
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FlutterFlexFitTight value) tight,
    required TResult Function(_FlutterFlexFitLoose value) loose,
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_FlutterFlexFitTight extends _FlutterFlexFitTight {
  _$_FlutterFlexFitTight({final String? $type})
      : $type = $type ?? 'f:1:FlexFit.tight',
        super._();

  factory _$_FlutterFlexFitTight.fromJson(Map<String, dynamic> json) =>
      _$$_FlutterFlexFitTightFromJson(json);

  @JsonKey(name: 'converter')
  final String $type;

  @override
  String toString() {
    return 'FlutterFlexFit.tight()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_FlutterFlexFitTight);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FlutterFlexFitTight value) tight,
    required TResult Function(_FlutterFlexFitLoose value) loose,
  }) {
    return tight(this);
  }
}

abstract class _FlutterFlexFitTight extends FlutterFlexFit {
  factory _FlutterFlexFitTight() = _$_FlutterFlexFitTight;
  _FlutterFlexFitTight._() : super._();

  factory _FlutterFlexFitTight.fromJson(Map<String, dynamic> json) =
      _$_FlutterFlexFitTight.fromJson;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_FlutterFlexFitLoose extends _FlutterFlexFitLoose {
  _$_FlutterFlexFitLoose({final String? $type})
      : $type = $type ?? 'f:1:FlexFit.loose',
        super._();

  factory _$_FlutterFlexFitLoose.fromJson(Map<String, dynamic> json) =>
      _$$_FlutterFlexFitLooseFromJson(json);

  @JsonKey(name: 'converter')
  final String $type;

  @override
  String toString() {
    return 'FlutterFlexFit.loose()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_FlutterFlexFitLoose);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FlutterFlexFitTight value) tight,
    required TResult Function(_FlutterFlexFitLoose value) loose,
  }) {
    return loose(this);
  }
}

abstract class _FlutterFlexFitLoose extends FlutterFlexFit {
  factory _FlutterFlexFitLoose() = _$_FlutterFlexFitLoose;
  _FlutterFlexFitLoose._() : super._();

  factory _FlutterFlexFitLoose.fromJson(Map<String, dynamic> json) =
      _$_FlutterFlexFitLoose.fromJson;
}

FlutterWrapAlignment _$FlutterWrapAlignmentFromJson(Map<String, dynamic> json) {
  switch (json['converter']) {
    case 'f:1:WrapAlignment.start':
      return _FlutterWrapAlignmentStart.fromJson(json);
    case 'f:1:WrapAlignment.end':
      return _FlutterWrapAlignmentEnd.fromJson(json);
    case 'f:1:WrapAlignment.center':
      return _FlutterWrapAlignmentCenter.fromJson(json);
    case 'f:1:WrapAlignment.spaceBetween':
      return _FlutterWrapAlignmentSpaceBetween.fromJson(json);
    case 'f:1:WrapAlignment.spaceAround':
      return _FlutterWrapAlignmentSpaceAround.fromJson(json);
    case 'f:1:WrapAlignment.spaceEvenly':
      return _FlutterWrapAlignmentSpaceEvenly.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'converter', 'FlutterWrapAlignment',
          'Invalid union type "${json['converter']}"!');
  }
}

/// @nodoc
mixin _$FlutterWrapAlignment {
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FlutterWrapAlignmentStart value) start,
    required TResult Function(_FlutterWrapAlignmentEnd value) end,
    required TResult Function(_FlutterWrapAlignmentCenter value) center,
    required TResult Function(_FlutterWrapAlignmentSpaceBetween value)
        spaceBetween,
    required TResult Function(_FlutterWrapAlignmentSpaceAround value)
        spaceAround,
    required TResult Function(_FlutterWrapAlignmentSpaceEvenly value)
        spaceEvenly,
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_FlutterWrapAlignmentStart extends _FlutterWrapAlignmentStart {
  _$_FlutterWrapAlignmentStart({final String? $type})
      : $type = $type ?? 'f:1:WrapAlignment.start',
        super._();

  factory _$_FlutterWrapAlignmentStart.fromJson(Map<String, dynamic> json) =>
      _$$_FlutterWrapAlignmentStartFromJson(json);

  @JsonKey(name: 'converter')
  final String $type;

  @override
  String toString() {
    return 'FlutterWrapAlignment.start()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FlutterWrapAlignmentStart);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FlutterWrapAlignmentStart value) start,
    required TResult Function(_FlutterWrapAlignmentEnd value) end,
    required TResult Function(_FlutterWrapAlignmentCenter value) center,
    required TResult Function(_FlutterWrapAlignmentSpaceBetween value)
        spaceBetween,
    required TResult Function(_FlutterWrapAlignmentSpaceAround value)
        spaceAround,
    required TResult Function(_FlutterWrapAlignmentSpaceEvenly value)
        spaceEvenly,
  }) {
    return start(this);
  }
}

abstract class _FlutterWrapAlignmentStart extends FlutterWrapAlignment {
  factory _FlutterWrapAlignmentStart() = _$_FlutterWrapAlignmentStart;
  _FlutterWrapAlignmentStart._() : super._();

  factory _FlutterWrapAlignmentStart.fromJson(Map<String, dynamic> json) =
      _$_FlutterWrapAlignmentStart.fromJson;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_FlutterWrapAlignmentEnd extends _FlutterWrapAlignmentEnd {
  _$_FlutterWrapAlignmentEnd({final String? $type})
      : $type = $type ?? 'f:1:WrapAlignment.end',
        super._();

  factory _$_FlutterWrapAlignmentEnd.fromJson(Map<String, dynamic> json) =>
      _$$_FlutterWrapAlignmentEndFromJson(json);

  @JsonKey(name: 'converter')
  final String $type;

  @override
  String toString() {
    return 'FlutterWrapAlignment.end()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FlutterWrapAlignmentEnd);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FlutterWrapAlignmentStart value) start,
    required TResult Function(_FlutterWrapAlignmentEnd value) end,
    required TResult Function(_FlutterWrapAlignmentCenter value) center,
    required TResult Function(_FlutterWrapAlignmentSpaceBetween value)
        spaceBetween,
    required TResult Function(_FlutterWrapAlignmentSpaceAround value)
        spaceAround,
    required TResult Function(_FlutterWrapAlignmentSpaceEvenly value)
        spaceEvenly,
  }) {
    return end(this);
  }
}

abstract class _FlutterWrapAlignmentEnd extends FlutterWrapAlignment {
  factory _FlutterWrapAlignmentEnd() = _$_FlutterWrapAlignmentEnd;
  _FlutterWrapAlignmentEnd._() : super._();

  factory _FlutterWrapAlignmentEnd.fromJson(Map<String, dynamic> json) =
      _$_FlutterWrapAlignmentEnd.fromJson;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_FlutterWrapAlignmentCenter extends _FlutterWrapAlignmentCenter {
  _$_FlutterWrapAlignmentCenter({final String? $type})
      : $type = $type ?? 'f:1:WrapAlignment.center',
        super._();

  factory _$_FlutterWrapAlignmentCenter.fromJson(Map<String, dynamic> json) =>
      _$$_FlutterWrapAlignmentCenterFromJson(json);

  @JsonKey(name: 'converter')
  final String $type;

  @override
  String toString() {
    return 'FlutterWrapAlignment.center()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FlutterWrapAlignmentCenter);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FlutterWrapAlignmentStart value) start,
    required TResult Function(_FlutterWrapAlignmentEnd value) end,
    required TResult Function(_FlutterWrapAlignmentCenter value) center,
    required TResult Function(_FlutterWrapAlignmentSpaceBetween value)
        spaceBetween,
    required TResult Function(_FlutterWrapAlignmentSpaceAround value)
        spaceAround,
    required TResult Function(_FlutterWrapAlignmentSpaceEvenly value)
        spaceEvenly,
  }) {
    return center(this);
  }
}

abstract class _FlutterWrapAlignmentCenter extends FlutterWrapAlignment {
  factory _FlutterWrapAlignmentCenter() = _$_FlutterWrapAlignmentCenter;
  _FlutterWrapAlignmentCenter._() : super._();

  factory _FlutterWrapAlignmentCenter.fromJson(Map<String, dynamic> json) =
      _$_FlutterWrapAlignmentCenter.fromJson;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_FlutterWrapAlignmentSpaceBetween
    extends _FlutterWrapAlignmentSpaceBetween {
  _$_FlutterWrapAlignmentSpaceBetween({final String? $type})
      : $type = $type ?? 'f:1:WrapAlignment.spaceBetween',
        super._();

  factory _$_FlutterWrapAlignmentSpaceBetween.fromJson(
          Map<String, dynamic> json) =>
      _$$_FlutterWrapAlignmentSpaceBetweenFromJson(json);

  @JsonKey(name: 'converter')
  final String $type;

  @override
  String toString() {
    return 'FlutterWrapAlignment.spaceBetween()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FlutterWrapAlignmentSpaceBetween);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FlutterWrapAlignmentStart value) start,
    required TResult Function(_FlutterWrapAlignmentEnd value) end,
    required TResult Function(_FlutterWrapAlignmentCenter value) center,
    required TResult Function(_FlutterWrapAlignmentSpaceBetween value)
        spaceBetween,
    required TResult Function(_FlutterWrapAlignmentSpaceAround value)
        spaceAround,
    required TResult Function(_FlutterWrapAlignmentSpaceEvenly value)
        spaceEvenly,
  }) {
    return spaceBetween(this);
  }
}

abstract class _FlutterWrapAlignmentSpaceBetween extends FlutterWrapAlignment {
  factory _FlutterWrapAlignmentSpaceBetween() =
      _$_FlutterWrapAlignmentSpaceBetween;
  _FlutterWrapAlignmentSpaceBetween._() : super._();

  factory _FlutterWrapAlignmentSpaceBetween.fromJson(
      Map<String, dynamic> json) = _$_FlutterWrapAlignmentSpaceBetween.fromJson;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_FlutterWrapAlignmentSpaceAround
    extends _FlutterWrapAlignmentSpaceAround {
  _$_FlutterWrapAlignmentSpaceAround({final String? $type})
      : $type = $type ?? 'f:1:WrapAlignment.spaceAround',
        super._();

  factory _$_FlutterWrapAlignmentSpaceAround.fromJson(
          Map<String, dynamic> json) =>
      _$$_FlutterWrapAlignmentSpaceAroundFromJson(json);

  @JsonKey(name: 'converter')
  final String $type;

  @override
  String toString() {
    return 'FlutterWrapAlignment.spaceAround()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FlutterWrapAlignmentSpaceAround);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FlutterWrapAlignmentStart value) start,
    required TResult Function(_FlutterWrapAlignmentEnd value) end,
    required TResult Function(_FlutterWrapAlignmentCenter value) center,
    required TResult Function(_FlutterWrapAlignmentSpaceBetween value)
        spaceBetween,
    required TResult Function(_FlutterWrapAlignmentSpaceAround value)
        spaceAround,
    required TResult Function(_FlutterWrapAlignmentSpaceEvenly value)
        spaceEvenly,
  }) {
    return spaceAround(this);
  }
}

abstract class _FlutterWrapAlignmentSpaceAround extends FlutterWrapAlignment {
  factory _FlutterWrapAlignmentSpaceAround() =
      _$_FlutterWrapAlignmentSpaceAround;
  _FlutterWrapAlignmentSpaceAround._() : super._();

  factory _FlutterWrapAlignmentSpaceAround.fromJson(Map<String, dynamic> json) =
      _$_FlutterWrapAlignmentSpaceAround.fromJson;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_FlutterWrapAlignmentSpaceEvenly
    extends _FlutterWrapAlignmentSpaceEvenly {
  _$_FlutterWrapAlignmentSpaceEvenly({final String? $type})
      : $type = $type ?? 'f:1:WrapAlignment.spaceEvenly',
        super._();

  factory _$_FlutterWrapAlignmentSpaceEvenly.fromJson(
          Map<String, dynamic> json) =>
      _$$_FlutterWrapAlignmentSpaceEvenlyFromJson(json);

  @JsonKey(name: 'converter')
  final String $type;

  @override
  String toString() {
    return 'FlutterWrapAlignment.spaceEvenly()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FlutterWrapAlignmentSpaceEvenly);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FlutterWrapAlignmentStart value) start,
    required TResult Function(_FlutterWrapAlignmentEnd value) end,
    required TResult Function(_FlutterWrapAlignmentCenter value) center,
    required TResult Function(_FlutterWrapAlignmentSpaceBetween value)
        spaceBetween,
    required TResult Function(_FlutterWrapAlignmentSpaceAround value)
        spaceAround,
    required TResult Function(_FlutterWrapAlignmentSpaceEvenly value)
        spaceEvenly,
  }) {
    return spaceEvenly(this);
  }
}

abstract class _FlutterWrapAlignmentSpaceEvenly extends FlutterWrapAlignment {
  factory _FlutterWrapAlignmentSpaceEvenly() =
      _$_FlutterWrapAlignmentSpaceEvenly;
  _FlutterWrapAlignmentSpaceEvenly._() : super._();

  factory _FlutterWrapAlignmentSpaceEvenly.fromJson(Map<String, dynamic> json) =
      _$_FlutterWrapAlignmentSpaceEvenly.fromJson;
}

FlutterWrapCrossAlignment _$FlutterWrapCrossAlignmentFromJson(
    Map<String, dynamic> json) {
  switch (json['converter']) {
    case 'f:1:WrapCrossAlignment.center':
      return _FlutterWrapCrossAlignmentCenter.fromJson(json);
    case 'f:1:WrapCrossAlignment.end':
      return _FlutterWrapCrossAlignmentEnd.fromJson(json);
    case 'f:1:WrapCrossAlignment.start':
      return _FlutterWrapCrossAlignmentStart.fromJson(json);

    default:
      throw CheckedFromJsonException(
          json,
          'converter',
          'FlutterWrapCrossAlignment',
          'Invalid union type "${json['converter']}"!');
  }
}

/// @nodoc
mixin _$FlutterWrapCrossAlignment {
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FlutterWrapCrossAlignmentCenter value) center,
    required TResult Function(_FlutterWrapCrossAlignmentEnd value) end,
    required TResult Function(_FlutterWrapCrossAlignmentStart value) start,
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_FlutterWrapCrossAlignmentCenter
    extends _FlutterWrapCrossAlignmentCenter {
  _$_FlutterWrapCrossAlignmentCenter({final String? $type})
      : $type = $type ?? 'f:1:WrapCrossAlignment.center',
        super._();

  factory _$_FlutterWrapCrossAlignmentCenter.fromJson(
          Map<String, dynamic> json) =>
      _$$_FlutterWrapCrossAlignmentCenterFromJson(json);

  @JsonKey(name: 'converter')
  final String $type;

  @override
  String toString() {
    return 'FlutterWrapCrossAlignment.center()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FlutterWrapCrossAlignmentCenter);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FlutterWrapCrossAlignmentCenter value) center,
    required TResult Function(_FlutterWrapCrossAlignmentEnd value) end,
    required TResult Function(_FlutterWrapCrossAlignmentStart value) start,
  }) {
    return center(this);
  }
}

abstract class _FlutterWrapCrossAlignmentCenter
    extends FlutterWrapCrossAlignment {
  factory _FlutterWrapCrossAlignmentCenter() =
      _$_FlutterWrapCrossAlignmentCenter;
  _FlutterWrapCrossAlignmentCenter._() : super._();

  factory _FlutterWrapCrossAlignmentCenter.fromJson(Map<String, dynamic> json) =
      _$_FlutterWrapCrossAlignmentCenter.fromJson;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_FlutterWrapCrossAlignmentEnd extends _FlutterWrapCrossAlignmentEnd {
  _$_FlutterWrapCrossAlignmentEnd({final String? $type})
      : $type = $type ?? 'f:1:WrapCrossAlignment.end',
        super._();

  factory _$_FlutterWrapCrossAlignmentEnd.fromJson(Map<String, dynamic> json) =>
      _$$_FlutterWrapCrossAlignmentEndFromJson(json);

  @JsonKey(name: 'converter')
  final String $type;

  @override
  String toString() {
    return 'FlutterWrapCrossAlignment.end()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FlutterWrapCrossAlignmentEnd);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FlutterWrapCrossAlignmentCenter value) center,
    required TResult Function(_FlutterWrapCrossAlignmentEnd value) end,
    required TResult Function(_FlutterWrapCrossAlignmentStart value) start,
  }) {
    return end(this);
  }
}

abstract class _FlutterWrapCrossAlignmentEnd extends FlutterWrapCrossAlignment {
  factory _FlutterWrapCrossAlignmentEnd() = _$_FlutterWrapCrossAlignmentEnd;
  _FlutterWrapCrossAlignmentEnd._() : super._();

  factory _FlutterWrapCrossAlignmentEnd.fromJson(Map<String, dynamic> json) =
      _$_FlutterWrapCrossAlignmentEnd.fromJson;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_FlutterWrapCrossAlignmentStart
    extends _FlutterWrapCrossAlignmentStart {
  _$_FlutterWrapCrossAlignmentStart({final String? $type})
      : $type = $type ?? 'f:1:WrapCrossAlignment.start',
        super._();

  factory _$_FlutterWrapCrossAlignmentStart.fromJson(
          Map<String, dynamic> json) =>
      _$$_FlutterWrapCrossAlignmentStartFromJson(json);

  @JsonKey(name: 'converter')
  final String $type;

  @override
  String toString() {
    return 'FlutterWrapCrossAlignment.start()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FlutterWrapCrossAlignmentStart);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FlutterWrapCrossAlignmentCenter value) center,
    required TResult Function(_FlutterWrapCrossAlignmentEnd value) end,
    required TResult Function(_FlutterWrapCrossAlignmentStart value) start,
  }) {
    return start(this);
  }
}

abstract class _FlutterWrapCrossAlignmentStart
    extends FlutterWrapCrossAlignment {
  factory _FlutterWrapCrossAlignmentStart() = _$_FlutterWrapCrossAlignmentStart;
  _FlutterWrapCrossAlignmentStart._() : super._();

  factory _FlutterWrapCrossAlignmentStart.fromJson(Map<String, dynamic> json) =
      _$_FlutterWrapCrossAlignmentStart.fromJson;
}

FlutterStackFit _$FlutterStackFitFromJson(Map<String, dynamic> json) {
  switch (json['converter']) {
    case 'f:1:StackFit.expand':
      return _FlutterStackFitExpand.fromJson(json);
    case 'f:1:StackFit.loose':
      return _FlutterStackFitLoose.fromJson(json);
    case 'f:1:StackFit.passthrough':
      return _FlutterStackFit.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'converter', 'FlutterStackFit',
          'Invalid union type "${json['converter']}"!');
  }
}

/// @nodoc
mixin _$FlutterStackFit {
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FlutterStackFitExpand value) expand,
    required TResult Function(_FlutterStackFitLoose value) loose,
    required TResult Function(_FlutterStackFit value) passthrough,
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_FlutterStackFitExpand extends _FlutterStackFitExpand {
  _$_FlutterStackFitExpand({final String? $type})
      : $type = $type ?? 'f:1:StackFit.expand',
        super._();

  factory _$_FlutterStackFitExpand.fromJson(Map<String, dynamic> json) =>
      _$$_FlutterStackFitExpandFromJson(json);

  @JsonKey(name: 'converter')
  final String $type;

  @override
  String toString() {
    return 'FlutterStackFit.expand()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_FlutterStackFitExpand);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FlutterStackFitExpand value) expand,
    required TResult Function(_FlutterStackFitLoose value) loose,
    required TResult Function(_FlutterStackFit value) passthrough,
  }) {
    return expand(this);
  }
}

abstract class _FlutterStackFitExpand extends FlutterStackFit {
  factory _FlutterStackFitExpand() = _$_FlutterStackFitExpand;
  _FlutterStackFitExpand._() : super._();

  factory _FlutterStackFitExpand.fromJson(Map<String, dynamic> json) =
      _$_FlutterStackFitExpand.fromJson;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_FlutterStackFitLoose extends _FlutterStackFitLoose {
  _$_FlutterStackFitLoose({final String? $type})
      : $type = $type ?? 'f:1:StackFit.loose',
        super._();

  factory _$_FlutterStackFitLoose.fromJson(Map<String, dynamic> json) =>
      _$$_FlutterStackFitLooseFromJson(json);

  @JsonKey(name: 'converter')
  final String $type;

  @override
  String toString() {
    return 'FlutterStackFit.loose()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_FlutterStackFitLoose);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FlutterStackFitExpand value) expand,
    required TResult Function(_FlutterStackFitLoose value) loose,
    required TResult Function(_FlutterStackFit value) passthrough,
  }) {
    return loose(this);
  }
}

abstract class _FlutterStackFitLoose extends FlutterStackFit {
  factory _FlutterStackFitLoose() = _$_FlutterStackFitLoose;
  _FlutterStackFitLoose._() : super._();

  factory _FlutterStackFitLoose.fromJson(Map<String, dynamic> json) =
      _$_FlutterStackFitLoose.fromJson;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_FlutterStackFit extends _FlutterStackFit {
  _$_FlutterStackFit({final String? $type})
      : $type = $type ?? 'f:1:StackFit.passthrough',
        super._();

  factory _$_FlutterStackFit.fromJson(Map<String, dynamic> json) =>
      _$$_FlutterStackFitFromJson(json);

  @JsonKey(name: 'converter')
  final String $type;

  @override
  String toString() {
    return 'FlutterStackFit.passthrough()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_FlutterStackFit);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FlutterStackFitExpand value) expand,
    required TResult Function(_FlutterStackFitLoose value) loose,
    required TResult Function(_FlutterStackFit value) passthrough,
  }) {
    return passthrough(this);
  }
}

abstract class _FlutterStackFit extends FlutterStackFit {
  factory _FlutterStackFit() = _$_FlutterStackFit;
  _FlutterStackFit._() : super._();

  factory _FlutterStackFit.fromJson(Map<String, dynamic> json) =
      _$_FlutterStackFit.fromJson;
}

FlutterBoxConstraints _$FlutterBoxConstraintsFromJson(
    Map<String, dynamic> json) {
  switch (json['converter']) {
    case 'f:1:BoxConstraints':
      return _FlutterBoxConstraints.fromJson(json);
    case 'f:1:BoxConstraints.expand':
      return _FlutterBoxConstraintsExpand.fromJson(json);
    case 'f:1:BoxConstraints.loose':
      return _FlutterBoxConstraintsLoose.fromJson(json);
    case 'f:1:BoxConstraints.tight':
      return _FlutterBoxConstraintsTight.fromJson(json);
    case 'f:1:BoxConstraints.tightFor':
      return _FlutterBoxConstraintsTightFor.fromJson(json);
    case 'f:1:BoxConstraints.tightForFinite':
      return _FlutterBoxConstraintsTightForFinite.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'converter', 'FlutterBoxConstraints',
          'Invalid union type "${json['converter']}"!');
  }
}

/// @nodoc
mixin _$FlutterBoxConstraints {
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_FlutterBoxConstraints value) $default, {
    required TResult Function(_FlutterBoxConstraintsExpand value) expand,
    required TResult Function(_FlutterBoxConstraintsLoose value) loose,
    required TResult Function(_FlutterBoxConstraintsTight value) tight,
    required TResult Function(_FlutterBoxConstraintsTightFor value) tightFor,
    required TResult Function(_FlutterBoxConstraintsTightForFinite value)
        tightForFinite,
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_FlutterBoxConstraints extends _FlutterBoxConstraints {
  _$_FlutterBoxConstraints(
      {this.minWidth,
      this.maxWidth,
      this.minHeight,
      this.maxHeight,
      final String? $type})
      : $type = $type ?? 'f:1:BoxConstraints',
        super._();

  factory _$_FlutterBoxConstraints.fromJson(Map<String, dynamic> json) =>
      _$$_FlutterBoxConstraintsFromJson(json);

  @override
  final ZacValue<double>? minWidth;
  @override
  final ZacValue<double>? maxWidth;
  @override
  final ZacValue<double>? minHeight;
  @override
  final ZacValue<double>? maxHeight;

  @JsonKey(name: 'converter')
  final String $type;

  @override
  String toString() {
    return 'FlutterBoxConstraints(minWidth: $minWidth, maxWidth: $maxWidth, minHeight: $minHeight, maxHeight: $maxHeight)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FlutterBoxConstraints &&
            (identical(other.minWidth, minWidth) ||
                other.minWidth == minWidth) &&
            (identical(other.maxWidth, maxWidth) ||
                other.maxWidth == maxWidth) &&
            (identical(other.minHeight, minHeight) ||
                other.minHeight == minHeight) &&
            (identical(other.maxHeight, maxHeight) ||
                other.maxHeight == maxHeight));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, minWidth, maxWidth, minHeight, maxHeight);

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_FlutterBoxConstraints value) $default, {
    required TResult Function(_FlutterBoxConstraintsExpand value) expand,
    required TResult Function(_FlutterBoxConstraintsLoose value) loose,
    required TResult Function(_FlutterBoxConstraintsTight value) tight,
    required TResult Function(_FlutterBoxConstraintsTightFor value) tightFor,
    required TResult Function(_FlutterBoxConstraintsTightForFinite value)
        tightForFinite,
  }) {
    return $default(this);
  }
}

abstract class _FlutterBoxConstraints extends FlutterBoxConstraints {
  factory _FlutterBoxConstraints(
      {final ZacValue<double>? minWidth,
      final ZacValue<double>? maxWidth,
      final ZacValue<double>? minHeight,
      final ZacValue<double>? maxHeight}) = _$_FlutterBoxConstraints;
  _FlutterBoxConstraints._() : super._();

  factory _FlutterBoxConstraints.fromJson(Map<String, dynamic> json) =
      _$_FlutterBoxConstraints.fromJson;

  ZacValue<double>? get minWidth;
  ZacValue<double>? get maxWidth;
  ZacValue<double>? get minHeight;
  ZacValue<double>? get maxHeight;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_FlutterBoxConstraintsExpand extends _FlutterBoxConstraintsExpand {
  _$_FlutterBoxConstraintsExpand({this.width, this.height, final String? $type})
      : $type = $type ?? 'f:1:BoxConstraints.expand',
        super._();

  factory _$_FlutterBoxConstraintsExpand.fromJson(Map<String, dynamic> json) =>
      _$$_FlutterBoxConstraintsExpandFromJson(json);

  @override
  final ZacValue<double>? width;
  @override
  final ZacValue<double>? height;

  @JsonKey(name: 'converter')
  final String $type;

  @override
  String toString() {
    return 'FlutterBoxConstraints.expand(width: $width, height: $height)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FlutterBoxConstraintsExpand &&
            (identical(other.width, width) || other.width == width) &&
            (identical(other.height, height) || other.height == height));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, width, height);

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_FlutterBoxConstraints value) $default, {
    required TResult Function(_FlutterBoxConstraintsExpand value) expand,
    required TResult Function(_FlutterBoxConstraintsLoose value) loose,
    required TResult Function(_FlutterBoxConstraintsTight value) tight,
    required TResult Function(_FlutterBoxConstraintsTightFor value) tightFor,
    required TResult Function(_FlutterBoxConstraintsTightForFinite value)
        tightForFinite,
  }) {
    return expand(this);
  }
}

abstract class _FlutterBoxConstraintsExpand extends FlutterBoxConstraints {
  factory _FlutterBoxConstraintsExpand(
      {final ZacValue<double>? width,
      final ZacValue<double>? height}) = _$_FlutterBoxConstraintsExpand;
  _FlutterBoxConstraintsExpand._() : super._();

  factory _FlutterBoxConstraintsExpand.fromJson(Map<String, dynamic> json) =
      _$_FlutterBoxConstraintsExpand.fromJson;

  ZacValue<double>? get width;
  ZacValue<double>? get height;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_FlutterBoxConstraintsLoose extends _FlutterBoxConstraintsLoose {
  _$_FlutterBoxConstraintsLoose(this.size, {final String? $type})
      : $type = $type ?? 'f:1:BoxConstraints.loose',
        super._();

  factory _$_FlutterBoxConstraintsLoose.fromJson(Map<String, dynamic> json) =>
      _$$_FlutterBoxConstraintsLooseFromJson(json);

  @override
  final FlutterSize size;

  @JsonKey(name: 'converter')
  final String $type;

  @override
  String toString() {
    return 'FlutterBoxConstraints.loose(size: $size)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FlutterBoxConstraintsLoose &&
            (identical(other.size, size) || other.size == size));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, size);

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_FlutterBoxConstraints value) $default, {
    required TResult Function(_FlutterBoxConstraintsExpand value) expand,
    required TResult Function(_FlutterBoxConstraintsLoose value) loose,
    required TResult Function(_FlutterBoxConstraintsTight value) tight,
    required TResult Function(_FlutterBoxConstraintsTightFor value) tightFor,
    required TResult Function(_FlutterBoxConstraintsTightForFinite value)
        tightForFinite,
  }) {
    return loose(this);
  }
}

abstract class _FlutterBoxConstraintsLoose extends FlutterBoxConstraints {
  factory _FlutterBoxConstraintsLoose(final FlutterSize size) =
      _$_FlutterBoxConstraintsLoose;
  _FlutterBoxConstraintsLoose._() : super._();

  factory _FlutterBoxConstraintsLoose.fromJson(Map<String, dynamic> json) =
      _$_FlutterBoxConstraintsLoose.fromJson;

  FlutterSize get size;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_FlutterBoxConstraintsTight extends _FlutterBoxConstraintsTight {
  _$_FlutterBoxConstraintsTight(this.size, {final String? $type})
      : $type = $type ?? 'f:1:BoxConstraints.tight',
        super._();

  factory _$_FlutterBoxConstraintsTight.fromJson(Map<String, dynamic> json) =>
      _$$_FlutterBoxConstraintsTightFromJson(json);

  @override
  final FlutterSize size;

  @JsonKey(name: 'converter')
  final String $type;

  @override
  String toString() {
    return 'FlutterBoxConstraints.tight(size: $size)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FlutterBoxConstraintsTight &&
            (identical(other.size, size) || other.size == size));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, size);

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_FlutterBoxConstraints value) $default, {
    required TResult Function(_FlutterBoxConstraintsExpand value) expand,
    required TResult Function(_FlutterBoxConstraintsLoose value) loose,
    required TResult Function(_FlutterBoxConstraintsTight value) tight,
    required TResult Function(_FlutterBoxConstraintsTightFor value) tightFor,
    required TResult Function(_FlutterBoxConstraintsTightForFinite value)
        tightForFinite,
  }) {
    return tight(this);
  }
}

abstract class _FlutterBoxConstraintsTight extends FlutterBoxConstraints {
  factory _FlutterBoxConstraintsTight(final FlutterSize size) =
      _$_FlutterBoxConstraintsTight;
  _FlutterBoxConstraintsTight._() : super._();

  factory _FlutterBoxConstraintsTight.fromJson(Map<String, dynamic> json) =
      _$_FlutterBoxConstraintsTight.fromJson;

  FlutterSize get size;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_FlutterBoxConstraintsTightFor extends _FlutterBoxConstraintsTightFor {
  _$_FlutterBoxConstraintsTightFor(
      {this.width, this.height, final String? $type})
      : $type = $type ?? 'f:1:BoxConstraints.tightFor',
        super._();

  factory _$_FlutterBoxConstraintsTightFor.fromJson(
          Map<String, dynamic> json) =>
      _$$_FlutterBoxConstraintsTightForFromJson(json);

  @override
  final ZacValue<double>? width;
  @override
  final ZacValue<double>? height;

  @JsonKey(name: 'converter')
  final String $type;

  @override
  String toString() {
    return 'FlutterBoxConstraints.tightFor(width: $width, height: $height)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FlutterBoxConstraintsTightFor &&
            (identical(other.width, width) || other.width == width) &&
            (identical(other.height, height) || other.height == height));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, width, height);

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_FlutterBoxConstraints value) $default, {
    required TResult Function(_FlutterBoxConstraintsExpand value) expand,
    required TResult Function(_FlutterBoxConstraintsLoose value) loose,
    required TResult Function(_FlutterBoxConstraintsTight value) tight,
    required TResult Function(_FlutterBoxConstraintsTightFor value) tightFor,
    required TResult Function(_FlutterBoxConstraintsTightForFinite value)
        tightForFinite,
  }) {
    return tightFor(this);
  }
}

abstract class _FlutterBoxConstraintsTightFor extends FlutterBoxConstraints {
  factory _FlutterBoxConstraintsTightFor(
      {final ZacValue<double>? width,
      final ZacValue<double>? height}) = _$_FlutterBoxConstraintsTightFor;
  _FlutterBoxConstraintsTightFor._() : super._();

  factory _FlutterBoxConstraintsTightFor.fromJson(Map<String, dynamic> json) =
      _$_FlutterBoxConstraintsTightFor.fromJson;

  ZacValue<double>? get width;
  ZacValue<double>? get height;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_FlutterBoxConstraintsTightForFinite
    extends _FlutterBoxConstraintsTightForFinite {
  _$_FlutterBoxConstraintsTightForFinite(
      {this.width, this.height, final String? $type})
      : $type = $type ?? 'f:1:BoxConstraints.tightForFinite',
        super._();

  factory _$_FlutterBoxConstraintsTightForFinite.fromJson(
          Map<String, dynamic> json) =>
      _$$_FlutterBoxConstraintsTightForFiniteFromJson(json);

  @override
  final ZacValue<double>? width;
  @override
  final ZacValue<double>? height;

  @JsonKey(name: 'converter')
  final String $type;

  @override
  String toString() {
    return 'FlutterBoxConstraints.tightForFinite(width: $width, height: $height)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FlutterBoxConstraintsTightForFinite &&
            (identical(other.width, width) || other.width == width) &&
            (identical(other.height, height) || other.height == height));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, width, height);

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_FlutterBoxConstraints value) $default, {
    required TResult Function(_FlutterBoxConstraintsExpand value) expand,
    required TResult Function(_FlutterBoxConstraintsLoose value) loose,
    required TResult Function(_FlutterBoxConstraintsTight value) tight,
    required TResult Function(_FlutterBoxConstraintsTightFor value) tightFor,
    required TResult Function(_FlutterBoxConstraintsTightForFinite value)
        tightForFinite,
  }) {
    return tightForFinite(this);
  }
}

abstract class _FlutterBoxConstraintsTightForFinite
    extends FlutterBoxConstraints {
  factory _FlutterBoxConstraintsTightForFinite(
      {final ZacValue<double>? width,
      final ZacValue<double>? height}) = _$_FlutterBoxConstraintsTightForFinite;
  _FlutterBoxConstraintsTightForFinite._() : super._();

  factory _FlutterBoxConstraintsTightForFinite.fromJson(
          Map<String, dynamic> json) =
      _$_FlutterBoxConstraintsTightForFinite.fromJson;

  ZacValue<double>? get width;
  ZacValue<double>? get height;
}

FlutterDecorationPosition _$FlutterDecorationPositionFromJson(
    Map<String, dynamic> json) {
  switch (json['converter']) {
    case 'f:1:DecorationPosition.background':
      return _FlutterDecorationPositionBG.fromJson(json);
    case 'f:1:DecorationPosition.foreground':
      return _FlutterDecorationPositionFG.fromJson(json);

    default:
      throw CheckedFromJsonException(
          json,
          'converter',
          'FlutterDecorationPosition',
          'Invalid union type "${json['converter']}"!');
  }
}

/// @nodoc
mixin _$FlutterDecorationPosition {
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FlutterDecorationPositionBG value) background,
    required TResult Function(_FlutterDecorationPositionFG value) foreground,
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_FlutterDecorationPositionBG extends _FlutterDecorationPositionBG {
  _$_FlutterDecorationPositionBG({final String? $type})
      : $type = $type ?? 'f:1:DecorationPosition.background',
        super._();

  factory _$_FlutterDecorationPositionBG.fromJson(Map<String, dynamic> json) =>
      _$$_FlutterDecorationPositionBGFromJson(json);

  @JsonKey(name: 'converter')
  final String $type;

  @override
  String toString() {
    return 'FlutterDecorationPosition.background()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FlutterDecorationPositionBG);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FlutterDecorationPositionBG value) background,
    required TResult Function(_FlutterDecorationPositionFG value) foreground,
  }) {
    return background(this);
  }
}

abstract class _FlutterDecorationPositionBG extends FlutterDecorationPosition {
  factory _FlutterDecorationPositionBG() = _$_FlutterDecorationPositionBG;
  _FlutterDecorationPositionBG._() : super._();

  factory _FlutterDecorationPositionBG.fromJson(Map<String, dynamic> json) =
      _$_FlutterDecorationPositionBG.fromJson;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_FlutterDecorationPositionFG extends _FlutterDecorationPositionFG {
  _$_FlutterDecorationPositionFG({final String? $type})
      : $type = $type ?? 'f:1:DecorationPosition.foreground',
        super._();

  factory _$_FlutterDecorationPositionFG.fromJson(Map<String, dynamic> json) =>
      _$$_FlutterDecorationPositionFGFromJson(json);

  @JsonKey(name: 'converter')
  final String $type;

  @override
  String toString() {
    return 'FlutterDecorationPosition.foreground()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FlutterDecorationPositionFG);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FlutterDecorationPositionBG value) background,
    required TResult Function(_FlutterDecorationPositionFG value) foreground,
  }) {
    return foreground(this);
  }
}

abstract class _FlutterDecorationPositionFG extends FlutterDecorationPosition {
  factory _FlutterDecorationPositionFG() = _$_FlutterDecorationPositionFG;
  _FlutterDecorationPositionFG._() : super._();

  factory _FlutterDecorationPositionFG.fromJson(Map<String, dynamic> json) =
      _$_FlutterDecorationPositionFG.fromJson;
}
