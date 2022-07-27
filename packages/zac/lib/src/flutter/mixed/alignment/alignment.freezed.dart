// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'alignment.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FlutterAlignment _$FlutterAlignmentFromJson(Map<String, dynamic> json) {
  switch (json['_converter']) {
    case 'f:1:Alignment':
      return _FlutterAlignment.fromJson(json);
    case 'f:1:Alignment.bottomCenter':
      return _FlutterAlignmentbottomCenter.fromJson(json);
    case 'f:1:Alignment.bottomLeft':
      return _FlutterAlignmentbottomLeft.fromJson(json);
    case 'f:1:Alignment.bottomRight':
      return _FlutterAlignmentbottomRight.fromJson(json);
    case 'f:1:Alignment.center':
      return _FlutterAlignmentcenter.fromJson(json);
    case 'f:1:Alignment.centerLeft':
      return _FlutterAlignmentcenterLeft.fromJson(json);
    case 'f:1:Alignment.centerRight':
      return _FlutterAlignmentcenterRight.fromJson(json);
    case 'f:1:Alignment.topCenter':
      return _FlutterAlignmenttopCenter.fromJson(json);
    case 'f:1:Alignment.topLeft':
      return _FlutterAlignmenttopLeft.fromJson(json);
    case 'f:1:Alignment.topRight':
      return _FlutterAlignmenttopRight.fromJson(json);

    default:
      throw CheckedFromJsonException(json, '_converter', 'FlutterAlignment',
          'Invalid union type "${json['_converter']}"!');
  }
}

/// @nodoc
mixin _$FlutterAlignment {
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_FlutterAlignment value) $default, {
    required TResult Function(_FlutterAlignmentbottomCenter value) bottomCenter,
    required TResult Function(_FlutterAlignmentbottomLeft value) bottomLeft,
    required TResult Function(_FlutterAlignmentbottomRight value) bottomRight,
    required TResult Function(_FlutterAlignmentcenter value) center,
    required TResult Function(_FlutterAlignmentcenterLeft value) centerLeft,
    required TResult Function(_FlutterAlignmentcenterRight value) centerRight,
    required TResult Function(_FlutterAlignmenttopCenter value) topCenter,
    required TResult Function(_FlutterAlignmenttopLeft value) topLeft,
    required TResult Function(_FlutterAlignmenttopRight value) topRight,
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_FlutterAlignment extends _FlutterAlignment {
  _$_FlutterAlignment(this.x, this.y, {final String? $type})
      : $type = $type ?? 'f:1:Alignment',
        super._();

  factory _$_FlutterAlignment.fromJson(Map<String, dynamic> json) =>
      _$$_FlutterAlignmentFromJson(json);

  @override
  final ZacDouble x;
  @override
  final ZacDouble y;

  @JsonKey(name: '_converter')
  final String $type;

  @override
  String toString() {
    return 'FlutterAlignment(x: $x, y: $y)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FlutterAlignment &&
            const DeepCollectionEquality().equals(other.x, x) &&
            const DeepCollectionEquality().equals(other.y, y));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(x),
      const DeepCollectionEquality().hash(y));

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_FlutterAlignment value) $default, {
    required TResult Function(_FlutterAlignmentbottomCenter value) bottomCenter,
    required TResult Function(_FlutterAlignmentbottomLeft value) bottomLeft,
    required TResult Function(_FlutterAlignmentbottomRight value) bottomRight,
    required TResult Function(_FlutterAlignmentcenter value) center,
    required TResult Function(_FlutterAlignmentcenterLeft value) centerLeft,
    required TResult Function(_FlutterAlignmentcenterRight value) centerRight,
    required TResult Function(_FlutterAlignmenttopCenter value) topCenter,
    required TResult Function(_FlutterAlignmenttopLeft value) topLeft,
    required TResult Function(_FlutterAlignmenttopRight value) topRight,
  }) {
    return $default(this);
  }
}

abstract class _FlutterAlignment extends FlutterAlignment {
  factory _FlutterAlignment(final ZacDouble x, final ZacDouble y) =
      _$_FlutterAlignment;
  _FlutterAlignment._() : super._();

  factory _FlutterAlignment.fromJson(Map<String, dynamic> json) =
      _$_FlutterAlignment.fromJson;

  ZacDouble get x;
  ZacDouble get y;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_FlutterAlignmentbottomCenter extends _FlutterAlignmentbottomCenter {
  _$_FlutterAlignmentbottomCenter({final String? $type})
      : $type = $type ?? 'f:1:Alignment.bottomCenter',
        super._();

  factory _$_FlutterAlignmentbottomCenter.fromJson(Map<String, dynamic> json) =>
      _$$_FlutterAlignmentbottomCenterFromJson(json);

  @JsonKey(name: '_converter')
  final String $type;

  @override
  String toString() {
    return 'FlutterAlignment.bottomCenter()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FlutterAlignmentbottomCenter);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_FlutterAlignment value) $default, {
    required TResult Function(_FlutterAlignmentbottomCenter value) bottomCenter,
    required TResult Function(_FlutterAlignmentbottomLeft value) bottomLeft,
    required TResult Function(_FlutterAlignmentbottomRight value) bottomRight,
    required TResult Function(_FlutterAlignmentcenter value) center,
    required TResult Function(_FlutterAlignmentcenterLeft value) centerLeft,
    required TResult Function(_FlutterAlignmentcenterRight value) centerRight,
    required TResult Function(_FlutterAlignmenttopCenter value) topCenter,
    required TResult Function(_FlutterAlignmenttopLeft value) topLeft,
    required TResult Function(_FlutterAlignmenttopRight value) topRight,
  }) {
    return bottomCenter(this);
  }
}

abstract class _FlutterAlignmentbottomCenter extends FlutterAlignment {
  factory _FlutterAlignmentbottomCenter() = _$_FlutterAlignmentbottomCenter;
  _FlutterAlignmentbottomCenter._() : super._();

  factory _FlutterAlignmentbottomCenter.fromJson(Map<String, dynamic> json) =
      _$_FlutterAlignmentbottomCenter.fromJson;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_FlutterAlignmentbottomLeft extends _FlutterAlignmentbottomLeft {
  _$_FlutterAlignmentbottomLeft({final String? $type})
      : $type = $type ?? 'f:1:Alignment.bottomLeft',
        super._();

  factory _$_FlutterAlignmentbottomLeft.fromJson(Map<String, dynamic> json) =>
      _$$_FlutterAlignmentbottomLeftFromJson(json);

  @JsonKey(name: '_converter')
  final String $type;

  @override
  String toString() {
    return 'FlutterAlignment.bottomLeft()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FlutterAlignmentbottomLeft);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_FlutterAlignment value) $default, {
    required TResult Function(_FlutterAlignmentbottomCenter value) bottomCenter,
    required TResult Function(_FlutterAlignmentbottomLeft value) bottomLeft,
    required TResult Function(_FlutterAlignmentbottomRight value) bottomRight,
    required TResult Function(_FlutterAlignmentcenter value) center,
    required TResult Function(_FlutterAlignmentcenterLeft value) centerLeft,
    required TResult Function(_FlutterAlignmentcenterRight value) centerRight,
    required TResult Function(_FlutterAlignmenttopCenter value) topCenter,
    required TResult Function(_FlutterAlignmenttopLeft value) topLeft,
    required TResult Function(_FlutterAlignmenttopRight value) topRight,
  }) {
    return bottomLeft(this);
  }
}

abstract class _FlutterAlignmentbottomLeft extends FlutterAlignment {
  factory _FlutterAlignmentbottomLeft() = _$_FlutterAlignmentbottomLeft;
  _FlutterAlignmentbottomLeft._() : super._();

  factory _FlutterAlignmentbottomLeft.fromJson(Map<String, dynamic> json) =
      _$_FlutterAlignmentbottomLeft.fromJson;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_FlutterAlignmentbottomRight extends _FlutterAlignmentbottomRight {
  _$_FlutterAlignmentbottomRight({final String? $type})
      : $type = $type ?? 'f:1:Alignment.bottomRight',
        super._();

  factory _$_FlutterAlignmentbottomRight.fromJson(Map<String, dynamic> json) =>
      _$$_FlutterAlignmentbottomRightFromJson(json);

  @JsonKey(name: '_converter')
  final String $type;

  @override
  String toString() {
    return 'FlutterAlignment.bottomRight()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FlutterAlignmentbottomRight);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_FlutterAlignment value) $default, {
    required TResult Function(_FlutterAlignmentbottomCenter value) bottomCenter,
    required TResult Function(_FlutterAlignmentbottomLeft value) bottomLeft,
    required TResult Function(_FlutterAlignmentbottomRight value) bottomRight,
    required TResult Function(_FlutterAlignmentcenter value) center,
    required TResult Function(_FlutterAlignmentcenterLeft value) centerLeft,
    required TResult Function(_FlutterAlignmentcenterRight value) centerRight,
    required TResult Function(_FlutterAlignmenttopCenter value) topCenter,
    required TResult Function(_FlutterAlignmenttopLeft value) topLeft,
    required TResult Function(_FlutterAlignmenttopRight value) topRight,
  }) {
    return bottomRight(this);
  }
}

abstract class _FlutterAlignmentbottomRight extends FlutterAlignment {
  factory _FlutterAlignmentbottomRight() = _$_FlutterAlignmentbottomRight;
  _FlutterAlignmentbottomRight._() : super._();

  factory _FlutterAlignmentbottomRight.fromJson(Map<String, dynamic> json) =
      _$_FlutterAlignmentbottomRight.fromJson;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_FlutterAlignmentcenter extends _FlutterAlignmentcenter {
  _$_FlutterAlignmentcenter({final String? $type})
      : $type = $type ?? 'f:1:Alignment.center',
        super._();

  factory _$_FlutterAlignmentcenter.fromJson(Map<String, dynamic> json) =>
      _$$_FlutterAlignmentcenterFromJson(json);

  @JsonKey(name: '_converter')
  final String $type;

  @override
  String toString() {
    return 'FlutterAlignment.center()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FlutterAlignmentcenter);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_FlutterAlignment value) $default, {
    required TResult Function(_FlutterAlignmentbottomCenter value) bottomCenter,
    required TResult Function(_FlutterAlignmentbottomLeft value) bottomLeft,
    required TResult Function(_FlutterAlignmentbottomRight value) bottomRight,
    required TResult Function(_FlutterAlignmentcenter value) center,
    required TResult Function(_FlutterAlignmentcenterLeft value) centerLeft,
    required TResult Function(_FlutterAlignmentcenterRight value) centerRight,
    required TResult Function(_FlutterAlignmenttopCenter value) topCenter,
    required TResult Function(_FlutterAlignmenttopLeft value) topLeft,
    required TResult Function(_FlutterAlignmenttopRight value) topRight,
  }) {
    return center(this);
  }
}

abstract class _FlutterAlignmentcenter extends FlutterAlignment {
  factory _FlutterAlignmentcenter() = _$_FlutterAlignmentcenter;
  _FlutterAlignmentcenter._() : super._();

  factory _FlutterAlignmentcenter.fromJson(Map<String, dynamic> json) =
      _$_FlutterAlignmentcenter.fromJson;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_FlutterAlignmentcenterLeft extends _FlutterAlignmentcenterLeft {
  _$_FlutterAlignmentcenterLeft({final String? $type})
      : $type = $type ?? 'f:1:Alignment.centerLeft',
        super._();

  factory _$_FlutterAlignmentcenterLeft.fromJson(Map<String, dynamic> json) =>
      _$$_FlutterAlignmentcenterLeftFromJson(json);

  @JsonKey(name: '_converter')
  final String $type;

  @override
  String toString() {
    return 'FlutterAlignment.centerLeft()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FlutterAlignmentcenterLeft);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_FlutterAlignment value) $default, {
    required TResult Function(_FlutterAlignmentbottomCenter value) bottomCenter,
    required TResult Function(_FlutterAlignmentbottomLeft value) bottomLeft,
    required TResult Function(_FlutterAlignmentbottomRight value) bottomRight,
    required TResult Function(_FlutterAlignmentcenter value) center,
    required TResult Function(_FlutterAlignmentcenterLeft value) centerLeft,
    required TResult Function(_FlutterAlignmentcenterRight value) centerRight,
    required TResult Function(_FlutterAlignmenttopCenter value) topCenter,
    required TResult Function(_FlutterAlignmenttopLeft value) topLeft,
    required TResult Function(_FlutterAlignmenttopRight value) topRight,
  }) {
    return centerLeft(this);
  }
}

abstract class _FlutterAlignmentcenterLeft extends FlutterAlignment {
  factory _FlutterAlignmentcenterLeft() = _$_FlutterAlignmentcenterLeft;
  _FlutterAlignmentcenterLeft._() : super._();

  factory _FlutterAlignmentcenterLeft.fromJson(Map<String, dynamic> json) =
      _$_FlutterAlignmentcenterLeft.fromJson;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_FlutterAlignmentcenterRight extends _FlutterAlignmentcenterRight {
  _$_FlutterAlignmentcenterRight({final String? $type})
      : $type = $type ?? 'f:1:Alignment.centerRight',
        super._();

  factory _$_FlutterAlignmentcenterRight.fromJson(Map<String, dynamic> json) =>
      _$$_FlutterAlignmentcenterRightFromJson(json);

  @JsonKey(name: '_converter')
  final String $type;

  @override
  String toString() {
    return 'FlutterAlignment.centerRight()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FlutterAlignmentcenterRight);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_FlutterAlignment value) $default, {
    required TResult Function(_FlutterAlignmentbottomCenter value) bottomCenter,
    required TResult Function(_FlutterAlignmentbottomLeft value) bottomLeft,
    required TResult Function(_FlutterAlignmentbottomRight value) bottomRight,
    required TResult Function(_FlutterAlignmentcenter value) center,
    required TResult Function(_FlutterAlignmentcenterLeft value) centerLeft,
    required TResult Function(_FlutterAlignmentcenterRight value) centerRight,
    required TResult Function(_FlutterAlignmenttopCenter value) topCenter,
    required TResult Function(_FlutterAlignmenttopLeft value) topLeft,
    required TResult Function(_FlutterAlignmenttopRight value) topRight,
  }) {
    return centerRight(this);
  }
}

abstract class _FlutterAlignmentcenterRight extends FlutterAlignment {
  factory _FlutterAlignmentcenterRight() = _$_FlutterAlignmentcenterRight;
  _FlutterAlignmentcenterRight._() : super._();

  factory _FlutterAlignmentcenterRight.fromJson(Map<String, dynamic> json) =
      _$_FlutterAlignmentcenterRight.fromJson;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_FlutterAlignmenttopCenter extends _FlutterAlignmenttopCenter {
  _$_FlutterAlignmenttopCenter({final String? $type})
      : $type = $type ?? 'f:1:Alignment.topCenter',
        super._();

  factory _$_FlutterAlignmenttopCenter.fromJson(Map<String, dynamic> json) =>
      _$$_FlutterAlignmenttopCenterFromJson(json);

  @JsonKey(name: '_converter')
  final String $type;

  @override
  String toString() {
    return 'FlutterAlignment.topCenter()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FlutterAlignmenttopCenter);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_FlutterAlignment value) $default, {
    required TResult Function(_FlutterAlignmentbottomCenter value) bottomCenter,
    required TResult Function(_FlutterAlignmentbottomLeft value) bottomLeft,
    required TResult Function(_FlutterAlignmentbottomRight value) bottomRight,
    required TResult Function(_FlutterAlignmentcenter value) center,
    required TResult Function(_FlutterAlignmentcenterLeft value) centerLeft,
    required TResult Function(_FlutterAlignmentcenterRight value) centerRight,
    required TResult Function(_FlutterAlignmenttopCenter value) topCenter,
    required TResult Function(_FlutterAlignmenttopLeft value) topLeft,
    required TResult Function(_FlutterAlignmenttopRight value) topRight,
  }) {
    return topCenter(this);
  }
}

abstract class _FlutterAlignmenttopCenter extends FlutterAlignment {
  factory _FlutterAlignmenttopCenter() = _$_FlutterAlignmenttopCenter;
  _FlutterAlignmenttopCenter._() : super._();

  factory _FlutterAlignmenttopCenter.fromJson(Map<String, dynamic> json) =
      _$_FlutterAlignmenttopCenter.fromJson;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_FlutterAlignmenttopLeft extends _FlutterAlignmenttopLeft {
  _$_FlutterAlignmenttopLeft({final String? $type})
      : $type = $type ?? 'f:1:Alignment.topLeft',
        super._();

  factory _$_FlutterAlignmenttopLeft.fromJson(Map<String, dynamic> json) =>
      _$$_FlutterAlignmenttopLeftFromJson(json);

  @JsonKey(name: '_converter')
  final String $type;

  @override
  String toString() {
    return 'FlutterAlignment.topLeft()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FlutterAlignmenttopLeft);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_FlutterAlignment value) $default, {
    required TResult Function(_FlutterAlignmentbottomCenter value) bottomCenter,
    required TResult Function(_FlutterAlignmentbottomLeft value) bottomLeft,
    required TResult Function(_FlutterAlignmentbottomRight value) bottomRight,
    required TResult Function(_FlutterAlignmentcenter value) center,
    required TResult Function(_FlutterAlignmentcenterLeft value) centerLeft,
    required TResult Function(_FlutterAlignmentcenterRight value) centerRight,
    required TResult Function(_FlutterAlignmenttopCenter value) topCenter,
    required TResult Function(_FlutterAlignmenttopLeft value) topLeft,
    required TResult Function(_FlutterAlignmenttopRight value) topRight,
  }) {
    return topLeft(this);
  }
}

abstract class _FlutterAlignmenttopLeft extends FlutterAlignment {
  factory _FlutterAlignmenttopLeft() = _$_FlutterAlignmenttopLeft;
  _FlutterAlignmenttopLeft._() : super._();

  factory _FlutterAlignmenttopLeft.fromJson(Map<String, dynamic> json) =
      _$_FlutterAlignmenttopLeft.fromJson;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_FlutterAlignmenttopRight extends _FlutterAlignmenttopRight {
  _$_FlutterAlignmenttopRight({final String? $type})
      : $type = $type ?? 'f:1:Alignment.topRight',
        super._();

  factory _$_FlutterAlignmenttopRight.fromJson(Map<String, dynamic> json) =>
      _$$_FlutterAlignmenttopRightFromJson(json);

  @JsonKey(name: '_converter')
  final String $type;

  @override
  String toString() {
    return 'FlutterAlignment.topRight()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FlutterAlignmenttopRight);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_FlutterAlignment value) $default, {
    required TResult Function(_FlutterAlignmentbottomCenter value) bottomCenter,
    required TResult Function(_FlutterAlignmentbottomLeft value) bottomLeft,
    required TResult Function(_FlutterAlignmentbottomRight value) bottomRight,
    required TResult Function(_FlutterAlignmentcenter value) center,
    required TResult Function(_FlutterAlignmentcenterLeft value) centerLeft,
    required TResult Function(_FlutterAlignmentcenterRight value) centerRight,
    required TResult Function(_FlutterAlignmenttopCenter value) topCenter,
    required TResult Function(_FlutterAlignmenttopLeft value) topLeft,
    required TResult Function(_FlutterAlignmenttopRight value) topRight,
  }) {
    return topRight(this);
  }
}

abstract class _FlutterAlignmenttopRight extends FlutterAlignment {
  factory _FlutterAlignmenttopRight() = _$_FlutterAlignmenttopRight;
  _FlutterAlignmenttopRight._() : super._();

  factory _FlutterAlignmenttopRight.fromJson(Map<String, dynamic> json) =
      _$_FlutterAlignmenttopRight.fromJson;
}

FlutterAlignmentDirectional _$FlutterAlignmentDirectionalFromJson(
    Map<String, dynamic> json) {
  switch (json['_converter']) {
    case 'f:1:AlignmentDirectional':
      return _FlutterAlignmentDirectional.fromJson(json);
    case 'f:1:AlignmentDirectional.bottomCenter':
      return _FlutterAlignmentDirectionalbottomCenter.fromJson(json);
    case 'f:1:AlignmentDirectional.bottomStart':
      return _FlutterAlignmentDirectionalbottomStart.fromJson(json);
    case 'f:1:AlignmentDirectional.bottomEnd':
      return _FlutterAlignmentDirectionalbottomEnd.fromJson(json);
    case 'f:1:AlignmentDirectional.center':
      return _FlutterAlignmentDirectionalcenter.fromJson(json);
    case 'f:1:AlignmentDirectional.centerStart':
      return _FlutterAlignmentDirectionalcenterStart.fromJson(json);
    case 'f:1:AlignmentDirectional.centerEnd':
      return _FlutterAlignmentDirectionalcenterEnd.fromJson(json);
    case 'f:1:AlignmentDirectional.topCenter':
      return _FlutterAlignmentDirectionaltopCenter.fromJson(json);
    case 'f:1:AlignmentDirectional.topStart':
      return _FlutterAlignmentDirectionaltopStart.fromJson(json);
    case 'f:1:AlignmentDirectional.topEnd':
      return _FlutterAlignmentDirectionaltopEnd.fromJson(json);

    default:
      throw CheckedFromJsonException(
          json,
          '_converter',
          'FlutterAlignmentDirectional',
          'Invalid union type "${json['_converter']}"!');
  }
}

/// @nodoc
mixin _$FlutterAlignmentDirectional {
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_FlutterAlignmentDirectional value) $default, {
    required TResult Function(_FlutterAlignmentDirectionalbottomCenter value)
        bottomCenter,
    required TResult Function(_FlutterAlignmentDirectionalbottomStart value)
        bottomStart,
    required TResult Function(_FlutterAlignmentDirectionalbottomEnd value)
        bottomEnd,
    required TResult Function(_FlutterAlignmentDirectionalcenter value) center,
    required TResult Function(_FlutterAlignmentDirectionalcenterStart value)
        centerStart,
    required TResult Function(_FlutterAlignmentDirectionalcenterEnd value)
        centerEnd,
    required TResult Function(_FlutterAlignmentDirectionaltopCenter value)
        topCenter,
    required TResult Function(_FlutterAlignmentDirectionaltopStart value)
        topStart,
    required TResult Function(_FlutterAlignmentDirectionaltopEnd value) topEnd,
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_FlutterAlignmentDirectional extends _FlutterAlignmentDirectional {
  _$_FlutterAlignmentDirectional(this.start, this.y, {final String? $type})
      : $type = $type ?? 'f:1:AlignmentDirectional',
        super._();

  factory _$_FlutterAlignmentDirectional.fromJson(Map<String, dynamic> json) =>
      _$$_FlutterAlignmentDirectionalFromJson(json);

  @override
  final ZacDouble start;
  @override
  final ZacDouble y;

  @JsonKey(name: '_converter')
  final String $type;

  @override
  String toString() {
    return 'FlutterAlignmentDirectional(start: $start, y: $y)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FlutterAlignmentDirectional &&
            const DeepCollectionEquality().equals(other.start, start) &&
            const DeepCollectionEquality().equals(other.y, y));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(start),
      const DeepCollectionEquality().hash(y));

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_FlutterAlignmentDirectional value) $default, {
    required TResult Function(_FlutterAlignmentDirectionalbottomCenter value)
        bottomCenter,
    required TResult Function(_FlutterAlignmentDirectionalbottomStart value)
        bottomStart,
    required TResult Function(_FlutterAlignmentDirectionalbottomEnd value)
        bottomEnd,
    required TResult Function(_FlutterAlignmentDirectionalcenter value) center,
    required TResult Function(_FlutterAlignmentDirectionalcenterStart value)
        centerStart,
    required TResult Function(_FlutterAlignmentDirectionalcenterEnd value)
        centerEnd,
    required TResult Function(_FlutterAlignmentDirectionaltopCenter value)
        topCenter,
    required TResult Function(_FlutterAlignmentDirectionaltopStart value)
        topStart,
    required TResult Function(_FlutterAlignmentDirectionaltopEnd value) topEnd,
  }) {
    return $default(this);
  }
}

abstract class _FlutterAlignmentDirectional
    extends FlutterAlignmentDirectional {
  factory _FlutterAlignmentDirectional(
          final ZacDouble start, final ZacDouble y) =
      _$_FlutterAlignmentDirectional;
  _FlutterAlignmentDirectional._() : super._();

  factory _FlutterAlignmentDirectional.fromJson(Map<String, dynamic> json) =
      _$_FlutterAlignmentDirectional.fromJson;

  ZacDouble get start;
  ZacDouble get y;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_FlutterAlignmentDirectionalbottomCenter
    extends _FlutterAlignmentDirectionalbottomCenter {
  _$_FlutterAlignmentDirectionalbottomCenter({final String? $type})
      : $type = $type ?? 'f:1:AlignmentDirectional.bottomCenter',
        super._();

  factory _$_FlutterAlignmentDirectionalbottomCenter.fromJson(
          Map<String, dynamic> json) =>
      _$$_FlutterAlignmentDirectionalbottomCenterFromJson(json);

  @JsonKey(name: '_converter')
  final String $type;

  @override
  String toString() {
    return 'FlutterAlignmentDirectional.bottomCenter()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FlutterAlignmentDirectionalbottomCenter);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_FlutterAlignmentDirectional value) $default, {
    required TResult Function(_FlutterAlignmentDirectionalbottomCenter value)
        bottomCenter,
    required TResult Function(_FlutterAlignmentDirectionalbottomStart value)
        bottomStart,
    required TResult Function(_FlutterAlignmentDirectionalbottomEnd value)
        bottomEnd,
    required TResult Function(_FlutterAlignmentDirectionalcenter value) center,
    required TResult Function(_FlutterAlignmentDirectionalcenterStart value)
        centerStart,
    required TResult Function(_FlutterAlignmentDirectionalcenterEnd value)
        centerEnd,
    required TResult Function(_FlutterAlignmentDirectionaltopCenter value)
        topCenter,
    required TResult Function(_FlutterAlignmentDirectionaltopStart value)
        topStart,
    required TResult Function(_FlutterAlignmentDirectionaltopEnd value) topEnd,
  }) {
    return bottomCenter(this);
  }
}

abstract class _FlutterAlignmentDirectionalbottomCenter
    extends FlutterAlignmentDirectional {
  factory _FlutterAlignmentDirectionalbottomCenter() =
      _$_FlutterAlignmentDirectionalbottomCenter;
  _FlutterAlignmentDirectionalbottomCenter._() : super._();

  factory _FlutterAlignmentDirectionalbottomCenter.fromJson(
          Map<String, dynamic> json) =
      _$_FlutterAlignmentDirectionalbottomCenter.fromJson;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_FlutterAlignmentDirectionalbottomStart
    extends _FlutterAlignmentDirectionalbottomStart {
  _$_FlutterAlignmentDirectionalbottomStart({final String? $type})
      : $type = $type ?? 'f:1:AlignmentDirectional.bottomStart',
        super._();

  factory _$_FlutterAlignmentDirectionalbottomStart.fromJson(
          Map<String, dynamic> json) =>
      _$$_FlutterAlignmentDirectionalbottomStartFromJson(json);

  @JsonKey(name: '_converter')
  final String $type;

  @override
  String toString() {
    return 'FlutterAlignmentDirectional.bottomStart()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FlutterAlignmentDirectionalbottomStart);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_FlutterAlignmentDirectional value) $default, {
    required TResult Function(_FlutterAlignmentDirectionalbottomCenter value)
        bottomCenter,
    required TResult Function(_FlutterAlignmentDirectionalbottomStart value)
        bottomStart,
    required TResult Function(_FlutterAlignmentDirectionalbottomEnd value)
        bottomEnd,
    required TResult Function(_FlutterAlignmentDirectionalcenter value) center,
    required TResult Function(_FlutterAlignmentDirectionalcenterStart value)
        centerStart,
    required TResult Function(_FlutterAlignmentDirectionalcenterEnd value)
        centerEnd,
    required TResult Function(_FlutterAlignmentDirectionaltopCenter value)
        topCenter,
    required TResult Function(_FlutterAlignmentDirectionaltopStart value)
        topStart,
    required TResult Function(_FlutterAlignmentDirectionaltopEnd value) topEnd,
  }) {
    return bottomStart(this);
  }
}

abstract class _FlutterAlignmentDirectionalbottomStart
    extends FlutterAlignmentDirectional {
  factory _FlutterAlignmentDirectionalbottomStart() =
      _$_FlutterAlignmentDirectionalbottomStart;
  _FlutterAlignmentDirectionalbottomStart._() : super._();

  factory _FlutterAlignmentDirectionalbottomStart.fromJson(
          Map<String, dynamic> json) =
      _$_FlutterAlignmentDirectionalbottomStart.fromJson;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_FlutterAlignmentDirectionalbottomEnd
    extends _FlutterAlignmentDirectionalbottomEnd {
  _$_FlutterAlignmentDirectionalbottomEnd({final String? $type})
      : $type = $type ?? 'f:1:AlignmentDirectional.bottomEnd',
        super._();

  factory _$_FlutterAlignmentDirectionalbottomEnd.fromJson(
          Map<String, dynamic> json) =>
      _$$_FlutterAlignmentDirectionalbottomEndFromJson(json);

  @JsonKey(name: '_converter')
  final String $type;

  @override
  String toString() {
    return 'FlutterAlignmentDirectional.bottomEnd()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FlutterAlignmentDirectionalbottomEnd);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_FlutterAlignmentDirectional value) $default, {
    required TResult Function(_FlutterAlignmentDirectionalbottomCenter value)
        bottomCenter,
    required TResult Function(_FlutterAlignmentDirectionalbottomStart value)
        bottomStart,
    required TResult Function(_FlutterAlignmentDirectionalbottomEnd value)
        bottomEnd,
    required TResult Function(_FlutterAlignmentDirectionalcenter value) center,
    required TResult Function(_FlutterAlignmentDirectionalcenterStart value)
        centerStart,
    required TResult Function(_FlutterAlignmentDirectionalcenterEnd value)
        centerEnd,
    required TResult Function(_FlutterAlignmentDirectionaltopCenter value)
        topCenter,
    required TResult Function(_FlutterAlignmentDirectionaltopStart value)
        topStart,
    required TResult Function(_FlutterAlignmentDirectionaltopEnd value) topEnd,
  }) {
    return bottomEnd(this);
  }
}

abstract class _FlutterAlignmentDirectionalbottomEnd
    extends FlutterAlignmentDirectional {
  factory _FlutterAlignmentDirectionalbottomEnd() =
      _$_FlutterAlignmentDirectionalbottomEnd;
  _FlutterAlignmentDirectionalbottomEnd._() : super._();

  factory _FlutterAlignmentDirectionalbottomEnd.fromJson(
          Map<String, dynamic> json) =
      _$_FlutterAlignmentDirectionalbottomEnd.fromJson;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_FlutterAlignmentDirectionalcenter
    extends _FlutterAlignmentDirectionalcenter {
  _$_FlutterAlignmentDirectionalcenter({final String? $type})
      : $type = $type ?? 'f:1:AlignmentDirectional.center',
        super._();

  factory _$_FlutterAlignmentDirectionalcenter.fromJson(
          Map<String, dynamic> json) =>
      _$$_FlutterAlignmentDirectionalcenterFromJson(json);

  @JsonKey(name: '_converter')
  final String $type;

  @override
  String toString() {
    return 'FlutterAlignmentDirectional.center()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FlutterAlignmentDirectionalcenter);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_FlutterAlignmentDirectional value) $default, {
    required TResult Function(_FlutterAlignmentDirectionalbottomCenter value)
        bottomCenter,
    required TResult Function(_FlutterAlignmentDirectionalbottomStart value)
        bottomStart,
    required TResult Function(_FlutterAlignmentDirectionalbottomEnd value)
        bottomEnd,
    required TResult Function(_FlutterAlignmentDirectionalcenter value) center,
    required TResult Function(_FlutterAlignmentDirectionalcenterStart value)
        centerStart,
    required TResult Function(_FlutterAlignmentDirectionalcenterEnd value)
        centerEnd,
    required TResult Function(_FlutterAlignmentDirectionaltopCenter value)
        topCenter,
    required TResult Function(_FlutterAlignmentDirectionaltopStart value)
        topStart,
    required TResult Function(_FlutterAlignmentDirectionaltopEnd value) topEnd,
  }) {
    return center(this);
  }
}

abstract class _FlutterAlignmentDirectionalcenter
    extends FlutterAlignmentDirectional {
  factory _FlutterAlignmentDirectionalcenter() =
      _$_FlutterAlignmentDirectionalcenter;
  _FlutterAlignmentDirectionalcenter._() : super._();

  factory _FlutterAlignmentDirectionalcenter.fromJson(
          Map<String, dynamic> json) =
      _$_FlutterAlignmentDirectionalcenter.fromJson;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_FlutterAlignmentDirectionalcenterStart
    extends _FlutterAlignmentDirectionalcenterStart {
  _$_FlutterAlignmentDirectionalcenterStart({final String? $type})
      : $type = $type ?? 'f:1:AlignmentDirectional.centerStart',
        super._();

  factory _$_FlutterAlignmentDirectionalcenterStart.fromJson(
          Map<String, dynamic> json) =>
      _$$_FlutterAlignmentDirectionalcenterStartFromJson(json);

  @JsonKey(name: '_converter')
  final String $type;

  @override
  String toString() {
    return 'FlutterAlignmentDirectional.centerStart()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FlutterAlignmentDirectionalcenterStart);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_FlutterAlignmentDirectional value) $default, {
    required TResult Function(_FlutterAlignmentDirectionalbottomCenter value)
        bottomCenter,
    required TResult Function(_FlutterAlignmentDirectionalbottomStart value)
        bottomStart,
    required TResult Function(_FlutterAlignmentDirectionalbottomEnd value)
        bottomEnd,
    required TResult Function(_FlutterAlignmentDirectionalcenter value) center,
    required TResult Function(_FlutterAlignmentDirectionalcenterStart value)
        centerStart,
    required TResult Function(_FlutterAlignmentDirectionalcenterEnd value)
        centerEnd,
    required TResult Function(_FlutterAlignmentDirectionaltopCenter value)
        topCenter,
    required TResult Function(_FlutterAlignmentDirectionaltopStart value)
        topStart,
    required TResult Function(_FlutterAlignmentDirectionaltopEnd value) topEnd,
  }) {
    return centerStart(this);
  }
}

abstract class _FlutterAlignmentDirectionalcenterStart
    extends FlutterAlignmentDirectional {
  factory _FlutterAlignmentDirectionalcenterStart() =
      _$_FlutterAlignmentDirectionalcenterStart;
  _FlutterAlignmentDirectionalcenterStart._() : super._();

  factory _FlutterAlignmentDirectionalcenterStart.fromJson(
          Map<String, dynamic> json) =
      _$_FlutterAlignmentDirectionalcenterStart.fromJson;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_FlutterAlignmentDirectionalcenterEnd
    extends _FlutterAlignmentDirectionalcenterEnd {
  _$_FlutterAlignmentDirectionalcenterEnd({final String? $type})
      : $type = $type ?? 'f:1:AlignmentDirectional.centerEnd',
        super._();

  factory _$_FlutterAlignmentDirectionalcenterEnd.fromJson(
          Map<String, dynamic> json) =>
      _$$_FlutterAlignmentDirectionalcenterEndFromJson(json);

  @JsonKey(name: '_converter')
  final String $type;

  @override
  String toString() {
    return 'FlutterAlignmentDirectional.centerEnd()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FlutterAlignmentDirectionalcenterEnd);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_FlutterAlignmentDirectional value) $default, {
    required TResult Function(_FlutterAlignmentDirectionalbottomCenter value)
        bottomCenter,
    required TResult Function(_FlutterAlignmentDirectionalbottomStart value)
        bottomStart,
    required TResult Function(_FlutterAlignmentDirectionalbottomEnd value)
        bottomEnd,
    required TResult Function(_FlutterAlignmentDirectionalcenter value) center,
    required TResult Function(_FlutterAlignmentDirectionalcenterStart value)
        centerStart,
    required TResult Function(_FlutterAlignmentDirectionalcenterEnd value)
        centerEnd,
    required TResult Function(_FlutterAlignmentDirectionaltopCenter value)
        topCenter,
    required TResult Function(_FlutterAlignmentDirectionaltopStart value)
        topStart,
    required TResult Function(_FlutterAlignmentDirectionaltopEnd value) topEnd,
  }) {
    return centerEnd(this);
  }
}

abstract class _FlutterAlignmentDirectionalcenterEnd
    extends FlutterAlignmentDirectional {
  factory _FlutterAlignmentDirectionalcenterEnd() =
      _$_FlutterAlignmentDirectionalcenterEnd;
  _FlutterAlignmentDirectionalcenterEnd._() : super._();

  factory _FlutterAlignmentDirectionalcenterEnd.fromJson(
          Map<String, dynamic> json) =
      _$_FlutterAlignmentDirectionalcenterEnd.fromJson;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_FlutterAlignmentDirectionaltopCenter
    extends _FlutterAlignmentDirectionaltopCenter {
  _$_FlutterAlignmentDirectionaltopCenter({final String? $type})
      : $type = $type ?? 'f:1:AlignmentDirectional.topCenter',
        super._();

  factory _$_FlutterAlignmentDirectionaltopCenter.fromJson(
          Map<String, dynamic> json) =>
      _$$_FlutterAlignmentDirectionaltopCenterFromJson(json);

  @JsonKey(name: '_converter')
  final String $type;

  @override
  String toString() {
    return 'FlutterAlignmentDirectional.topCenter()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FlutterAlignmentDirectionaltopCenter);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_FlutterAlignmentDirectional value) $default, {
    required TResult Function(_FlutterAlignmentDirectionalbottomCenter value)
        bottomCenter,
    required TResult Function(_FlutterAlignmentDirectionalbottomStart value)
        bottomStart,
    required TResult Function(_FlutterAlignmentDirectionalbottomEnd value)
        bottomEnd,
    required TResult Function(_FlutterAlignmentDirectionalcenter value) center,
    required TResult Function(_FlutterAlignmentDirectionalcenterStart value)
        centerStart,
    required TResult Function(_FlutterAlignmentDirectionalcenterEnd value)
        centerEnd,
    required TResult Function(_FlutterAlignmentDirectionaltopCenter value)
        topCenter,
    required TResult Function(_FlutterAlignmentDirectionaltopStart value)
        topStart,
    required TResult Function(_FlutterAlignmentDirectionaltopEnd value) topEnd,
  }) {
    return topCenter(this);
  }
}

abstract class _FlutterAlignmentDirectionaltopCenter
    extends FlutterAlignmentDirectional {
  factory _FlutterAlignmentDirectionaltopCenter() =
      _$_FlutterAlignmentDirectionaltopCenter;
  _FlutterAlignmentDirectionaltopCenter._() : super._();

  factory _FlutterAlignmentDirectionaltopCenter.fromJson(
          Map<String, dynamic> json) =
      _$_FlutterAlignmentDirectionaltopCenter.fromJson;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_FlutterAlignmentDirectionaltopStart
    extends _FlutterAlignmentDirectionaltopStart {
  _$_FlutterAlignmentDirectionaltopStart({final String? $type})
      : $type = $type ?? 'f:1:AlignmentDirectional.topStart',
        super._();

  factory _$_FlutterAlignmentDirectionaltopStart.fromJson(
          Map<String, dynamic> json) =>
      _$$_FlutterAlignmentDirectionaltopStartFromJson(json);

  @JsonKey(name: '_converter')
  final String $type;

  @override
  String toString() {
    return 'FlutterAlignmentDirectional.topStart()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FlutterAlignmentDirectionaltopStart);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_FlutterAlignmentDirectional value) $default, {
    required TResult Function(_FlutterAlignmentDirectionalbottomCenter value)
        bottomCenter,
    required TResult Function(_FlutterAlignmentDirectionalbottomStart value)
        bottomStart,
    required TResult Function(_FlutterAlignmentDirectionalbottomEnd value)
        bottomEnd,
    required TResult Function(_FlutterAlignmentDirectionalcenter value) center,
    required TResult Function(_FlutterAlignmentDirectionalcenterStart value)
        centerStart,
    required TResult Function(_FlutterAlignmentDirectionalcenterEnd value)
        centerEnd,
    required TResult Function(_FlutterAlignmentDirectionaltopCenter value)
        topCenter,
    required TResult Function(_FlutterAlignmentDirectionaltopStart value)
        topStart,
    required TResult Function(_FlutterAlignmentDirectionaltopEnd value) topEnd,
  }) {
    return topStart(this);
  }
}

abstract class _FlutterAlignmentDirectionaltopStart
    extends FlutterAlignmentDirectional {
  factory _FlutterAlignmentDirectionaltopStart() =
      _$_FlutterAlignmentDirectionaltopStart;
  _FlutterAlignmentDirectionaltopStart._() : super._();

  factory _FlutterAlignmentDirectionaltopStart.fromJson(
          Map<String, dynamic> json) =
      _$_FlutterAlignmentDirectionaltopStart.fromJson;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_FlutterAlignmentDirectionaltopEnd
    extends _FlutterAlignmentDirectionaltopEnd {
  _$_FlutterAlignmentDirectionaltopEnd({final String? $type})
      : $type = $type ?? 'f:1:AlignmentDirectional.topEnd',
        super._();

  factory _$_FlutterAlignmentDirectionaltopEnd.fromJson(
          Map<String, dynamic> json) =>
      _$$_FlutterAlignmentDirectionaltopEndFromJson(json);

  @JsonKey(name: '_converter')
  final String $type;

  @override
  String toString() {
    return 'FlutterAlignmentDirectional.topEnd()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FlutterAlignmentDirectionaltopEnd);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_FlutterAlignmentDirectional value) $default, {
    required TResult Function(_FlutterAlignmentDirectionalbottomCenter value)
        bottomCenter,
    required TResult Function(_FlutterAlignmentDirectionalbottomStart value)
        bottomStart,
    required TResult Function(_FlutterAlignmentDirectionalbottomEnd value)
        bottomEnd,
    required TResult Function(_FlutterAlignmentDirectionalcenter value) center,
    required TResult Function(_FlutterAlignmentDirectionalcenterStart value)
        centerStart,
    required TResult Function(_FlutterAlignmentDirectionalcenterEnd value)
        centerEnd,
    required TResult Function(_FlutterAlignmentDirectionaltopCenter value)
        topCenter,
    required TResult Function(_FlutterAlignmentDirectionaltopStart value)
        topStart,
    required TResult Function(_FlutterAlignmentDirectionaltopEnd value) topEnd,
  }) {
    return topEnd(this);
  }
}

abstract class _FlutterAlignmentDirectionaltopEnd
    extends FlutterAlignmentDirectional {
  factory _FlutterAlignmentDirectionaltopEnd() =
      _$_FlutterAlignmentDirectionaltopEnd;
  _FlutterAlignmentDirectionaltopEnd._() : super._();

  factory _FlutterAlignmentDirectionaltopEnd.fromJson(
          Map<String, dynamic> json) =
      _$_FlutterAlignmentDirectionaltopEnd.fromJson;
}
