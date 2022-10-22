// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'painting.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FlutterBoxShape _$FlutterBoxShapeFromJson(Map<String, dynamic> json) {
  switch (json['converter']) {
    case 'f:1:BoxShape.circle':
      return _FlutterBoxShapeCircle.fromJson(json);
    case 'f:1:BoxShape.rectangle':
      return _FlutterBoxShapeRectangle.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'converter', 'FlutterBoxShape',
          'Invalid union type "${json['converter']}"!');
  }
}

/// @nodoc
mixin _$FlutterBoxShape {
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FlutterBoxShapeCircle value) circle,
    required TResult Function(_FlutterBoxShapeRectangle value) rectangle,
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_FlutterBoxShapeCircle extends _FlutterBoxShapeCircle {
  _$_FlutterBoxShapeCircle({final String? $type})
      : $type = $type ?? 'f:1:BoxShape.circle',
        super._();

  factory _$_FlutterBoxShapeCircle.fromJson(Map<String, dynamic> json) =>
      _$$_FlutterBoxShapeCircleFromJson(json);

  @JsonKey(name: 'converter')
  final String $type;

  @override
  String toString() {
    return 'FlutterBoxShape.circle()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_FlutterBoxShapeCircle);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FlutterBoxShapeCircle value) circle,
    required TResult Function(_FlutterBoxShapeRectangle value) rectangle,
  }) {
    return circle(this);
  }
}

abstract class _FlutterBoxShapeCircle extends FlutterBoxShape {
  factory _FlutterBoxShapeCircle() = _$_FlutterBoxShapeCircle;
  _FlutterBoxShapeCircle._() : super._();

  factory _FlutterBoxShapeCircle.fromJson(Map<String, dynamic> json) =
      _$_FlutterBoxShapeCircle.fromJson;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_FlutterBoxShapeRectangle extends _FlutterBoxShapeRectangle {
  _$_FlutterBoxShapeRectangle({final String? $type})
      : $type = $type ?? 'f:1:BoxShape.rectangle',
        super._();

  factory _$_FlutterBoxShapeRectangle.fromJson(Map<String, dynamic> json) =>
      _$$_FlutterBoxShapeRectangleFromJson(json);

  @JsonKey(name: 'converter')
  final String $type;

  @override
  String toString() {
    return 'FlutterBoxShape.rectangle()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FlutterBoxShapeRectangle);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FlutterBoxShapeCircle value) circle,
    required TResult Function(_FlutterBoxShapeRectangle value) rectangle,
  }) {
    return rectangle(this);
  }
}

abstract class _FlutterBoxShapeRectangle extends FlutterBoxShape {
  factory _FlutterBoxShapeRectangle() = _$_FlutterBoxShapeRectangle;
  _FlutterBoxShapeRectangle._() : super._();

  factory _FlutterBoxShapeRectangle.fromJson(Map<String, dynamic> json) =
      _$_FlutterBoxShapeRectangle.fromJson;
}

FlutterAxis _$FlutterAxisFromJson(Map<String, dynamic> json) {
  switch (json['converter']) {
    case 'f:1:Axis.horizontal':
      return _FlutterAxisHori.fromJson(json);
    case 'f:1:Axis.vertical':
      return _FlutterAxisVertical.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'converter', 'FlutterAxis',
          'Invalid union type "${json['converter']}"!');
  }
}

/// @nodoc
mixin _$FlutterAxis {
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FlutterAxisHori value) horizontal,
    required TResult Function(_FlutterAxisVertical value) vertical,
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_FlutterAxisHori extends _FlutterAxisHori {
  _$_FlutterAxisHori({final String? $type})
      : $type = $type ?? 'f:1:Axis.horizontal',
        super._();

  factory _$_FlutterAxisHori.fromJson(Map<String, dynamic> json) =>
      _$$_FlutterAxisHoriFromJson(json);

  @JsonKey(name: 'converter')
  final String $type;

  @override
  String toString() {
    return 'FlutterAxis.horizontal()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_FlutterAxisHori);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FlutterAxisHori value) horizontal,
    required TResult Function(_FlutterAxisVertical value) vertical,
  }) {
    return horizontal(this);
  }
}

abstract class _FlutterAxisHori extends FlutterAxis {
  factory _FlutterAxisHori() = _$_FlutterAxisHori;
  _FlutterAxisHori._() : super._();

  factory _FlutterAxisHori.fromJson(Map<String, dynamic> json) =
      _$_FlutterAxisHori.fromJson;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_FlutterAxisVertical extends _FlutterAxisVertical {
  _$_FlutterAxisVertical({final String? $type})
      : $type = $type ?? 'f:1:Axis.vertical',
        super._();

  factory _$_FlutterAxisVertical.fromJson(Map<String, dynamic> json) =>
      _$$_FlutterAxisVerticalFromJson(json);

  @JsonKey(name: 'converter')
  final String $type;

  @override
  String toString() {
    return 'FlutterAxis.vertical()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_FlutterAxisVertical);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FlutterAxisHori value) horizontal,
    required TResult Function(_FlutterAxisVertical value) vertical,
  }) {
    return vertical(this);
  }
}

abstract class _FlutterAxisVertical extends FlutterAxis {
  factory _FlutterAxisVertical() = _$_FlutterAxisVertical;
  _FlutterAxisVertical._() : super._();

  factory _FlutterAxisVertical.fromJson(Map<String, dynamic> json) =
      _$_FlutterAxisVertical.fromJson;
}

FlutterVerticalDirection _$FlutterVerticalDirectionFromJson(
    Map<String, dynamic> json) {
  switch (json['converter']) {
    case 'f:1:VerticalDirection.up':
      return _FlutterVerticalDirectionUp.fromJson(json);
    case 'f:1:VerticalDirection.down':
      return _FlutterVerticalDirectionDown.fromJson(json);

    default:
      throw CheckedFromJsonException(
          json,
          'converter',
          'FlutterVerticalDirection',
          'Invalid union type "${json['converter']}"!');
  }
}

/// @nodoc
mixin _$FlutterVerticalDirection {
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FlutterVerticalDirectionUp value) up,
    required TResult Function(_FlutterVerticalDirectionDown value) down,
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_FlutterVerticalDirectionUp extends _FlutterVerticalDirectionUp {
  _$_FlutterVerticalDirectionUp({final String? $type})
      : $type = $type ?? 'f:1:VerticalDirection.up',
        super._();

  factory _$_FlutterVerticalDirectionUp.fromJson(Map<String, dynamic> json) =>
      _$$_FlutterVerticalDirectionUpFromJson(json);

  @JsonKey(name: 'converter')
  final String $type;

  @override
  String toString() {
    return 'FlutterVerticalDirection.up()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FlutterVerticalDirectionUp);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FlutterVerticalDirectionUp value) up,
    required TResult Function(_FlutterVerticalDirectionDown value) down,
  }) {
    return up(this);
  }
}

abstract class _FlutterVerticalDirectionUp extends FlutterVerticalDirection {
  factory _FlutterVerticalDirectionUp() = _$_FlutterVerticalDirectionUp;
  _FlutterVerticalDirectionUp._() : super._();

  factory _FlutterVerticalDirectionUp.fromJson(Map<String, dynamic> json) =
      _$_FlutterVerticalDirectionUp.fromJson;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_FlutterVerticalDirectionDown extends _FlutterVerticalDirectionDown {
  _$_FlutterVerticalDirectionDown({final String? $type})
      : $type = $type ?? 'f:1:VerticalDirection.down',
        super._();

  factory _$_FlutterVerticalDirectionDown.fromJson(Map<String, dynamic> json) =>
      _$$_FlutterVerticalDirectionDownFromJson(json);

  @JsonKey(name: 'converter')
  final String $type;

  @override
  String toString() {
    return 'FlutterVerticalDirection.down()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FlutterVerticalDirectionDown);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FlutterVerticalDirectionUp value) up,
    required TResult Function(_FlutterVerticalDirectionDown value) down,
  }) {
    return down(this);
  }
}

abstract class _FlutterVerticalDirectionDown extends FlutterVerticalDirection {
  factory _FlutterVerticalDirectionDown() = _$_FlutterVerticalDirectionDown;
  _FlutterVerticalDirectionDown._() : super._();

  factory _FlutterVerticalDirectionDown.fromJson(Map<String, dynamic> json) =
      _$_FlutterVerticalDirectionDown.fromJson;
}

FlutterTextOverflow _$FlutterTextOverflowFromJson(Map<String, dynamic> json) {
  switch (json['converter']) {
    case 'f:1:TextOverflow.clip':
      return _FlutterTextOverflowClip.fromJson(json);
    case 'f:1:TextOverflow.ellipsis':
      return _FlutterTextOverflowEllipsis.fromJson(json);
    case 'f:1:TextOverflow.fade':
      return _FlutterTextOverflowFade.fromJson(json);
    case 'f:1:TextOverflow.visible':
      return _FlutterTextOverflowVisible.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'converter', 'FlutterTextOverflow',
          'Invalid union type "${json['converter']}"!');
  }
}

/// @nodoc
mixin _$FlutterTextOverflow {
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FlutterTextOverflowClip value) clip,
    required TResult Function(_FlutterTextOverflowEllipsis value) ellipsis,
    required TResult Function(_FlutterTextOverflowFade value) fade,
    required TResult Function(_FlutterTextOverflowVisible value) visible,
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_FlutterTextOverflowClip extends _FlutterTextOverflowClip {
  _$_FlutterTextOverflowClip({final String? $type})
      : $type = $type ?? 'f:1:TextOverflow.clip',
        super._();

  factory _$_FlutterTextOverflowClip.fromJson(Map<String, dynamic> json) =>
      _$$_FlutterTextOverflowClipFromJson(json);

  @JsonKey(name: 'converter')
  final String $type;

  @override
  String toString() {
    return 'FlutterTextOverflow.clip()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FlutterTextOverflowClip);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FlutterTextOverflowClip value) clip,
    required TResult Function(_FlutterTextOverflowEllipsis value) ellipsis,
    required TResult Function(_FlutterTextOverflowFade value) fade,
    required TResult Function(_FlutterTextOverflowVisible value) visible,
  }) {
    return clip(this);
  }
}

abstract class _FlutterTextOverflowClip extends FlutterTextOverflow {
  factory _FlutterTextOverflowClip() = _$_FlutterTextOverflowClip;
  _FlutterTextOverflowClip._() : super._();

  factory _FlutterTextOverflowClip.fromJson(Map<String, dynamic> json) =
      _$_FlutterTextOverflowClip.fromJson;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_FlutterTextOverflowEllipsis extends _FlutterTextOverflowEllipsis {
  _$_FlutterTextOverflowEllipsis({final String? $type})
      : $type = $type ?? 'f:1:TextOverflow.ellipsis',
        super._();

  factory _$_FlutterTextOverflowEllipsis.fromJson(Map<String, dynamic> json) =>
      _$$_FlutterTextOverflowEllipsisFromJson(json);

  @JsonKey(name: 'converter')
  final String $type;

  @override
  String toString() {
    return 'FlutterTextOverflow.ellipsis()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FlutterTextOverflowEllipsis);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FlutterTextOverflowClip value) clip,
    required TResult Function(_FlutterTextOverflowEllipsis value) ellipsis,
    required TResult Function(_FlutterTextOverflowFade value) fade,
    required TResult Function(_FlutterTextOverflowVisible value) visible,
  }) {
    return ellipsis(this);
  }
}

abstract class _FlutterTextOverflowEllipsis extends FlutterTextOverflow {
  factory _FlutterTextOverflowEllipsis() = _$_FlutterTextOverflowEllipsis;
  _FlutterTextOverflowEllipsis._() : super._();

  factory _FlutterTextOverflowEllipsis.fromJson(Map<String, dynamic> json) =
      _$_FlutterTextOverflowEllipsis.fromJson;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_FlutterTextOverflowFade extends _FlutterTextOverflowFade {
  _$_FlutterTextOverflowFade({final String? $type})
      : $type = $type ?? 'f:1:TextOverflow.fade',
        super._();

  factory _$_FlutterTextOverflowFade.fromJson(Map<String, dynamic> json) =>
      _$$_FlutterTextOverflowFadeFromJson(json);

  @JsonKey(name: 'converter')
  final String $type;

  @override
  String toString() {
    return 'FlutterTextOverflow.fade()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FlutterTextOverflowFade);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FlutterTextOverflowClip value) clip,
    required TResult Function(_FlutterTextOverflowEllipsis value) ellipsis,
    required TResult Function(_FlutterTextOverflowFade value) fade,
    required TResult Function(_FlutterTextOverflowVisible value) visible,
  }) {
    return fade(this);
  }
}

abstract class _FlutterTextOverflowFade extends FlutterTextOverflow {
  factory _FlutterTextOverflowFade() = _$_FlutterTextOverflowFade;
  _FlutterTextOverflowFade._() : super._();

  factory _FlutterTextOverflowFade.fromJson(Map<String, dynamic> json) =
      _$_FlutterTextOverflowFade.fromJson;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_FlutterTextOverflowVisible extends _FlutterTextOverflowVisible {
  _$_FlutterTextOverflowVisible({final String? $type})
      : $type = $type ?? 'f:1:TextOverflow.visible',
        super._();

  factory _$_FlutterTextOverflowVisible.fromJson(Map<String, dynamic> json) =>
      _$$_FlutterTextOverflowVisibleFromJson(json);

  @JsonKey(name: 'converter')
  final String $type;

  @override
  String toString() {
    return 'FlutterTextOverflow.visible()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FlutterTextOverflowVisible);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FlutterTextOverflowClip value) clip,
    required TResult Function(_FlutterTextOverflowEllipsis value) ellipsis,
    required TResult Function(_FlutterTextOverflowFade value) fade,
    required TResult Function(_FlutterTextOverflowVisible value) visible,
  }) {
    return visible(this);
  }
}

abstract class _FlutterTextOverflowVisible extends FlutterTextOverflow {
  factory _FlutterTextOverflowVisible() = _$_FlutterTextOverflowVisible;
  _FlutterTextOverflowVisible._() : super._();

  factory _FlutterTextOverflowVisible.fromJson(Map<String, dynamic> json) =
      _$_FlutterTextOverflowVisible.fromJson;
}

FlutterStrutStyle _$FlutterStrutStyleFromJson(Map<String, dynamic> json) {
  switch (json['converter']) {
    case 'f:1:StrutStyle':
      return _FlutterStrutStyle.fromJson(json);
    case 'f:1:StrutStyle.fromTextStyle':
      return _FlutterStrutStyleFromTextStyle.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'converter', 'FlutterStrutStyle',
          'Invalid union type "${json['converter']}"!');
  }
}

/// @nodoc
mixin _$FlutterStrutStyle {
  ZacValue<String>? get fontFamily => throw _privateConstructorUsedError;
  List<String>? get fontFamilyFallback => throw _privateConstructorUsedError;
  ZacValue<double>? get fontSize => throw _privateConstructorUsedError;
  ZacValue<double>? get height => throw _privateConstructorUsedError;
  FlutterTextLeadingDistribution? get leadingDistribution =>
      throw _privateConstructorUsedError;
  ZacValue<double>? get leading => throw _privateConstructorUsedError;
  FlutterFontWeight? get fontWeight => throw _privateConstructorUsedError;
  FlutterFontStyle? get fontStyle => throw _privateConstructorUsedError;
  ZacBool? get forceStrutHeight => throw _privateConstructorUsedError;
  ZacValue<String>? get debugLabel => throw _privateConstructorUsedError;
  ZacValue<String>? get package => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_FlutterStrutStyle value) $default, {
    required TResult Function(_FlutterStrutStyleFromTextStyle value)
        fromTextStyle,
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_FlutterStrutStyle extends _FlutterStrutStyle {
  _$_FlutterStrutStyle(
      {this.fontFamily,
      final List<String>? fontFamilyFallback,
      this.fontSize,
      this.height,
      this.leadingDistribution,
      this.leading,
      this.fontWeight,
      this.fontStyle,
      this.forceStrutHeight,
      this.debugLabel,
      this.package,
      final String? $type})
      : _fontFamilyFallback = fontFamilyFallback,
        $type = $type ?? 'f:1:StrutStyle',
        super._();

  factory _$_FlutterStrutStyle.fromJson(Map<String, dynamic> json) =>
      _$$_FlutterStrutStyleFromJson(json);

  @override
  final ZacValue<String>? fontFamily;
  final List<String>? _fontFamilyFallback;
  @override
  List<String>? get fontFamilyFallback {
    final value = _fontFamilyFallback;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final ZacValue<double>? fontSize;
  @override
  final ZacValue<double>? height;
  @override
  final FlutterTextLeadingDistribution? leadingDistribution;
  @override
  final ZacValue<double>? leading;
  @override
  final FlutterFontWeight? fontWeight;
  @override
  final FlutterFontStyle? fontStyle;
  @override
  final ZacBool? forceStrutHeight;
  @override
  final ZacValue<String>? debugLabel;
  @override
  final ZacValue<String>? package;

  @JsonKey(name: 'converter')
  final String $type;

  @override
  String toString() {
    return 'FlutterStrutStyle(fontFamily: $fontFamily, fontFamilyFallback: $fontFamilyFallback, fontSize: $fontSize, height: $height, leadingDistribution: $leadingDistribution, leading: $leading, fontWeight: $fontWeight, fontStyle: $fontStyle, forceStrutHeight: $forceStrutHeight, debugLabel: $debugLabel, package: $package)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FlutterStrutStyle &&
            const DeepCollectionEquality()
                .equals(other.fontFamily, fontFamily) &&
            const DeepCollectionEquality()
                .equals(other._fontFamilyFallback, _fontFamilyFallback) &&
            const DeepCollectionEquality().equals(other.fontSize, fontSize) &&
            const DeepCollectionEquality().equals(other.height, height) &&
            const DeepCollectionEquality()
                .equals(other.leadingDistribution, leadingDistribution) &&
            const DeepCollectionEquality().equals(other.leading, leading) &&
            const DeepCollectionEquality()
                .equals(other.fontWeight, fontWeight) &&
            const DeepCollectionEquality().equals(other.fontStyle, fontStyle) &&
            const DeepCollectionEquality()
                .equals(other.forceStrutHeight, forceStrutHeight) &&
            const DeepCollectionEquality()
                .equals(other.debugLabel, debugLabel) &&
            const DeepCollectionEquality().equals(other.package, package));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(fontFamily),
      const DeepCollectionEquality().hash(_fontFamilyFallback),
      const DeepCollectionEquality().hash(fontSize),
      const DeepCollectionEquality().hash(height),
      const DeepCollectionEquality().hash(leadingDistribution),
      const DeepCollectionEquality().hash(leading),
      const DeepCollectionEquality().hash(fontWeight),
      const DeepCollectionEquality().hash(fontStyle),
      const DeepCollectionEquality().hash(forceStrutHeight),
      const DeepCollectionEquality().hash(debugLabel),
      const DeepCollectionEquality().hash(package));

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_FlutterStrutStyle value) $default, {
    required TResult Function(_FlutterStrutStyleFromTextStyle value)
        fromTextStyle,
  }) {
    return $default(this);
  }
}

abstract class _FlutterStrutStyle extends FlutterStrutStyle {
  factory _FlutterStrutStyle(
      {final ZacValue<String>? fontFamily,
      final List<String>? fontFamilyFallback,
      final ZacValue<double>? fontSize,
      final ZacValue<double>? height,
      final FlutterTextLeadingDistribution? leadingDistribution,
      final ZacValue<double>? leading,
      final FlutterFontWeight? fontWeight,
      final FlutterFontStyle? fontStyle,
      final ZacBool? forceStrutHeight,
      final ZacValue<String>? debugLabel,
      final ZacValue<String>? package}) = _$_FlutterStrutStyle;
  _FlutterStrutStyle._() : super._();

  factory _FlutterStrutStyle.fromJson(Map<String, dynamic> json) =
      _$_FlutterStrutStyle.fromJson;

  @override
  ZacValue<String>? get fontFamily;
  @override
  List<String>? get fontFamilyFallback;
  @override
  ZacValue<double>? get fontSize;
  @override
  ZacValue<double>? get height;
  @override
  FlutterTextLeadingDistribution? get leadingDistribution;
  @override
  ZacValue<double>? get leading;
  @override
  FlutterFontWeight? get fontWeight;
  @override
  FlutterFontStyle? get fontStyle;
  @override
  ZacBool? get forceStrutHeight;
  @override
  ZacValue<String>? get debugLabel;
  @override
  ZacValue<String>? get package;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_FlutterStrutStyleFromTextStyle
    extends _FlutterStrutStyleFromTextStyle {
  _$_FlutterStrutStyleFromTextStyle(this.textStyle,
      {this.fontFamily,
      final List<String>? fontFamilyFallback,
      this.fontSize,
      this.height,
      this.leadingDistribution,
      this.leading,
      this.fontWeight,
      this.fontStyle,
      this.forceStrutHeight,
      this.debugLabel,
      this.package,
      final String? $type})
      : _fontFamilyFallback = fontFamilyFallback,
        $type = $type ?? 'f:1:StrutStyle.fromTextStyle',
        super._();

  factory _$_FlutterStrutStyleFromTextStyle.fromJson(
          Map<String, dynamic> json) =>
      _$$_FlutterStrutStyleFromTextStyleFromJson(json);

  @override
  final FlutterTextStyle textStyle;
  @override
  final ZacValue<String>? fontFamily;
  final List<String>? _fontFamilyFallback;
  @override
  List<String>? get fontFamilyFallback {
    final value = _fontFamilyFallback;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final ZacValue<double>? fontSize;
  @override
  final ZacValue<double>? height;
  @override
  final FlutterTextLeadingDistribution? leadingDistribution;
  @override
  final ZacValue<double>? leading;
  @override
  final FlutterFontWeight? fontWeight;
  @override
  final FlutterFontStyle? fontStyle;
  @override
  final ZacBool? forceStrutHeight;
  @override
  final ZacValue<String>? debugLabel;
  @override
  final ZacValue<String>? package;

  @JsonKey(name: 'converter')
  final String $type;

  @override
  String toString() {
    return 'FlutterStrutStyle.fromTextStyle(textStyle: $textStyle, fontFamily: $fontFamily, fontFamilyFallback: $fontFamilyFallback, fontSize: $fontSize, height: $height, leadingDistribution: $leadingDistribution, leading: $leading, fontWeight: $fontWeight, fontStyle: $fontStyle, forceStrutHeight: $forceStrutHeight, debugLabel: $debugLabel, package: $package)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FlutterStrutStyleFromTextStyle &&
            const DeepCollectionEquality().equals(other.textStyle, textStyle) &&
            const DeepCollectionEquality()
                .equals(other.fontFamily, fontFamily) &&
            const DeepCollectionEquality()
                .equals(other._fontFamilyFallback, _fontFamilyFallback) &&
            const DeepCollectionEquality().equals(other.fontSize, fontSize) &&
            const DeepCollectionEquality().equals(other.height, height) &&
            const DeepCollectionEquality()
                .equals(other.leadingDistribution, leadingDistribution) &&
            const DeepCollectionEquality().equals(other.leading, leading) &&
            const DeepCollectionEquality()
                .equals(other.fontWeight, fontWeight) &&
            const DeepCollectionEquality().equals(other.fontStyle, fontStyle) &&
            const DeepCollectionEquality()
                .equals(other.forceStrutHeight, forceStrutHeight) &&
            const DeepCollectionEquality()
                .equals(other.debugLabel, debugLabel) &&
            const DeepCollectionEquality().equals(other.package, package));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(textStyle),
      const DeepCollectionEquality().hash(fontFamily),
      const DeepCollectionEquality().hash(_fontFamilyFallback),
      const DeepCollectionEquality().hash(fontSize),
      const DeepCollectionEquality().hash(height),
      const DeepCollectionEquality().hash(leadingDistribution),
      const DeepCollectionEquality().hash(leading),
      const DeepCollectionEquality().hash(fontWeight),
      const DeepCollectionEquality().hash(fontStyle),
      const DeepCollectionEquality().hash(forceStrutHeight),
      const DeepCollectionEquality().hash(debugLabel),
      const DeepCollectionEquality().hash(package));

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_FlutterStrutStyle value) $default, {
    required TResult Function(_FlutterStrutStyleFromTextStyle value)
        fromTextStyle,
  }) {
    return fromTextStyle(this);
  }
}

abstract class _FlutterStrutStyleFromTextStyle extends FlutterStrutStyle {
  factory _FlutterStrutStyleFromTextStyle(final FlutterTextStyle textStyle,
      {final ZacValue<String>? fontFamily,
      final List<String>? fontFamilyFallback,
      final ZacValue<double>? fontSize,
      final ZacValue<double>? height,
      final FlutterTextLeadingDistribution? leadingDistribution,
      final ZacValue<double>? leading,
      final FlutterFontWeight? fontWeight,
      final FlutterFontStyle? fontStyle,
      final ZacBool? forceStrutHeight,
      final ZacValue<String>? debugLabel,
      final ZacValue<String>? package}) = _$_FlutterStrutStyleFromTextStyle;
  _FlutterStrutStyleFromTextStyle._() : super._();

  factory _FlutterStrutStyleFromTextStyle.fromJson(Map<String, dynamic> json) =
      _$_FlutterStrutStyleFromTextStyle.fromJson;

  FlutterTextStyle get textStyle;
  @override
  ZacValue<String>? get fontFamily;
  @override
  List<String>? get fontFamilyFallback;
  @override
  ZacValue<double>? get fontSize;
  @override
  ZacValue<double>? get height;
  @override
  FlutterTextLeadingDistribution? get leadingDistribution;
  @override
  ZacValue<double>? get leading;
  @override
  FlutterFontWeight? get fontWeight;
  @override
  FlutterFontStyle? get fontStyle;
  @override
  ZacBool? get forceStrutHeight;
  @override
  ZacValue<String>? get debugLabel;
  @override
  ZacValue<String>? get package;
}

FlutterTextWidthBasis _$FlutterTextWidthBasisFromJson(
    Map<String, dynamic> json) {
  switch (json['converter']) {
    case 'f:1:TextWidthBasis.longestLine':
      return _FlutterTextWidthBasisLongestLine.fromJson(json);
    case 'f:1:TextWidthBasis.parent':
      return _FlutterTextWidthBasisParent.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'converter', 'FlutterTextWidthBasis',
          'Invalid union type "${json['converter']}"!');
  }
}

/// @nodoc
mixin _$FlutterTextWidthBasis {
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FlutterTextWidthBasisLongestLine value)
        longestLine,
    required TResult Function(_FlutterTextWidthBasisParent value) parent,
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_FlutterTextWidthBasisLongestLine
    extends _FlutterTextWidthBasisLongestLine {
  _$_FlutterTextWidthBasisLongestLine({final String? $type})
      : $type = $type ?? 'f:1:TextWidthBasis.longestLine',
        super._();

  factory _$_FlutterTextWidthBasisLongestLine.fromJson(
          Map<String, dynamic> json) =>
      _$$_FlutterTextWidthBasisLongestLineFromJson(json);

  @JsonKey(name: 'converter')
  final String $type;

  @override
  String toString() {
    return 'FlutterTextWidthBasis.longestLine()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FlutterTextWidthBasisLongestLine);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FlutterTextWidthBasisLongestLine value)
        longestLine,
    required TResult Function(_FlutterTextWidthBasisParent value) parent,
  }) {
    return longestLine(this);
  }
}

abstract class _FlutterTextWidthBasisLongestLine extends FlutterTextWidthBasis {
  factory _FlutterTextWidthBasisLongestLine() =
      _$_FlutterTextWidthBasisLongestLine;
  _FlutterTextWidthBasisLongestLine._() : super._();

  factory _FlutterTextWidthBasisLongestLine.fromJson(
      Map<String, dynamic> json) = _$_FlutterTextWidthBasisLongestLine.fromJson;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_FlutterTextWidthBasisParent extends _FlutterTextWidthBasisParent {
  _$_FlutterTextWidthBasisParent({final String? $type})
      : $type = $type ?? 'f:1:TextWidthBasis.parent',
        super._();

  factory _$_FlutterTextWidthBasisParent.fromJson(Map<String, dynamic> json) =>
      _$$_FlutterTextWidthBasisParentFromJson(json);

  @JsonKey(name: 'converter')
  final String $type;

  @override
  String toString() {
    return 'FlutterTextWidthBasis.parent()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FlutterTextWidthBasisParent);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FlutterTextWidthBasisLongestLine value)
        longestLine,
    required TResult Function(_FlutterTextWidthBasisParent value) parent,
  }) {
    return parent(this);
  }
}

abstract class _FlutterTextWidthBasisParent extends FlutterTextWidthBasis {
  factory _FlutterTextWidthBasisParent() = _$_FlutterTextWidthBasisParent;
  _FlutterTextWidthBasisParent._() : super._();

  factory _FlutterTextWidthBasisParent.fromJson(Map<String, dynamic> json) =
      _$_FlutterTextWidthBasisParent.fromJson;
}

FlutterBoxFit _$FlutterBoxFitFromJson(Map<String, dynamic> json) {
  switch (json['converter']) {
    case 'f:1:BoxFit.contain':
      return _FlutterBoxFitContain.fromJson(json);
    case 'f:1:BoxFit.cover':
      return _FlutterBoxFitCover.fromJson(json);
    case 'f:1:BoxFit.fill':
      return _FlutterBoxFitFill.fromJson(json);
    case 'f:1:BoxFit.fitHeight':
      return _FlutterBoxFitFitHeight.fromJson(json);
    case 'f:1:BoxFit.fitWidth':
      return _FlutterBoxFitFitWidth.fromJson(json);
    case 'f:1:BoxFit.none':
      return _FlutterBoxFitNone.fromJson(json);
    case 'f:1:BoxFit.scaleDown':
      return _FlutterBoxFitScaleDown.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'converter', 'FlutterBoxFit',
          'Invalid union type "${json['converter']}"!');
  }
}

/// @nodoc
mixin _$FlutterBoxFit {
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FlutterBoxFitContain value) contain,
    required TResult Function(_FlutterBoxFitCover value) cover,
    required TResult Function(_FlutterBoxFitFill value) fill,
    required TResult Function(_FlutterBoxFitFitHeight value) fitHeight,
    required TResult Function(_FlutterBoxFitFitWidth value) fitWidth,
    required TResult Function(_FlutterBoxFitNone value) none,
    required TResult Function(_FlutterBoxFitScaleDown value) scaleDown,
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_FlutterBoxFitContain extends _FlutterBoxFitContain {
  _$_FlutterBoxFitContain({final String? $type})
      : $type = $type ?? 'f:1:BoxFit.contain',
        super._();

  factory _$_FlutterBoxFitContain.fromJson(Map<String, dynamic> json) =>
      _$$_FlutterBoxFitContainFromJson(json);

  @JsonKey(name: 'converter')
  final String $type;

  @override
  String toString() {
    return 'FlutterBoxFit.contain()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_FlutterBoxFitContain);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FlutterBoxFitContain value) contain,
    required TResult Function(_FlutterBoxFitCover value) cover,
    required TResult Function(_FlutterBoxFitFill value) fill,
    required TResult Function(_FlutterBoxFitFitHeight value) fitHeight,
    required TResult Function(_FlutterBoxFitFitWidth value) fitWidth,
    required TResult Function(_FlutterBoxFitNone value) none,
    required TResult Function(_FlutterBoxFitScaleDown value) scaleDown,
  }) {
    return contain(this);
  }
}

abstract class _FlutterBoxFitContain extends FlutterBoxFit {
  factory _FlutterBoxFitContain() = _$_FlutterBoxFitContain;
  _FlutterBoxFitContain._() : super._();

  factory _FlutterBoxFitContain.fromJson(Map<String, dynamic> json) =
      _$_FlutterBoxFitContain.fromJson;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_FlutterBoxFitCover extends _FlutterBoxFitCover {
  _$_FlutterBoxFitCover({final String? $type})
      : $type = $type ?? 'f:1:BoxFit.cover',
        super._();

  factory _$_FlutterBoxFitCover.fromJson(Map<String, dynamic> json) =>
      _$$_FlutterBoxFitCoverFromJson(json);

  @JsonKey(name: 'converter')
  final String $type;

  @override
  String toString() {
    return 'FlutterBoxFit.cover()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_FlutterBoxFitCover);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FlutterBoxFitContain value) contain,
    required TResult Function(_FlutterBoxFitCover value) cover,
    required TResult Function(_FlutterBoxFitFill value) fill,
    required TResult Function(_FlutterBoxFitFitHeight value) fitHeight,
    required TResult Function(_FlutterBoxFitFitWidth value) fitWidth,
    required TResult Function(_FlutterBoxFitNone value) none,
    required TResult Function(_FlutterBoxFitScaleDown value) scaleDown,
  }) {
    return cover(this);
  }
}

abstract class _FlutterBoxFitCover extends FlutterBoxFit {
  factory _FlutterBoxFitCover() = _$_FlutterBoxFitCover;
  _FlutterBoxFitCover._() : super._();

  factory _FlutterBoxFitCover.fromJson(Map<String, dynamic> json) =
      _$_FlutterBoxFitCover.fromJson;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_FlutterBoxFitFill extends _FlutterBoxFitFill {
  _$_FlutterBoxFitFill({final String? $type})
      : $type = $type ?? 'f:1:BoxFit.fill',
        super._();

  factory _$_FlutterBoxFitFill.fromJson(Map<String, dynamic> json) =>
      _$$_FlutterBoxFitFillFromJson(json);

  @JsonKey(name: 'converter')
  final String $type;

  @override
  String toString() {
    return 'FlutterBoxFit.fill()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_FlutterBoxFitFill);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FlutterBoxFitContain value) contain,
    required TResult Function(_FlutterBoxFitCover value) cover,
    required TResult Function(_FlutterBoxFitFill value) fill,
    required TResult Function(_FlutterBoxFitFitHeight value) fitHeight,
    required TResult Function(_FlutterBoxFitFitWidth value) fitWidth,
    required TResult Function(_FlutterBoxFitNone value) none,
    required TResult Function(_FlutterBoxFitScaleDown value) scaleDown,
  }) {
    return fill(this);
  }
}

abstract class _FlutterBoxFitFill extends FlutterBoxFit {
  factory _FlutterBoxFitFill() = _$_FlutterBoxFitFill;
  _FlutterBoxFitFill._() : super._();

  factory _FlutterBoxFitFill.fromJson(Map<String, dynamic> json) =
      _$_FlutterBoxFitFill.fromJson;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_FlutterBoxFitFitHeight extends _FlutterBoxFitFitHeight {
  _$_FlutterBoxFitFitHeight({final String? $type})
      : $type = $type ?? 'f:1:BoxFit.fitHeight',
        super._();

  factory _$_FlutterBoxFitFitHeight.fromJson(Map<String, dynamic> json) =>
      _$$_FlutterBoxFitFitHeightFromJson(json);

  @JsonKey(name: 'converter')
  final String $type;

  @override
  String toString() {
    return 'FlutterBoxFit.fitHeight()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FlutterBoxFitFitHeight);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FlutterBoxFitContain value) contain,
    required TResult Function(_FlutterBoxFitCover value) cover,
    required TResult Function(_FlutterBoxFitFill value) fill,
    required TResult Function(_FlutterBoxFitFitHeight value) fitHeight,
    required TResult Function(_FlutterBoxFitFitWidth value) fitWidth,
    required TResult Function(_FlutterBoxFitNone value) none,
    required TResult Function(_FlutterBoxFitScaleDown value) scaleDown,
  }) {
    return fitHeight(this);
  }
}

abstract class _FlutterBoxFitFitHeight extends FlutterBoxFit {
  factory _FlutterBoxFitFitHeight() = _$_FlutterBoxFitFitHeight;
  _FlutterBoxFitFitHeight._() : super._();

  factory _FlutterBoxFitFitHeight.fromJson(Map<String, dynamic> json) =
      _$_FlutterBoxFitFitHeight.fromJson;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_FlutterBoxFitFitWidth extends _FlutterBoxFitFitWidth {
  _$_FlutterBoxFitFitWidth({final String? $type})
      : $type = $type ?? 'f:1:BoxFit.fitWidth',
        super._();

  factory _$_FlutterBoxFitFitWidth.fromJson(Map<String, dynamic> json) =>
      _$$_FlutterBoxFitFitWidthFromJson(json);

  @JsonKey(name: 'converter')
  final String $type;

  @override
  String toString() {
    return 'FlutterBoxFit.fitWidth()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_FlutterBoxFitFitWidth);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FlutterBoxFitContain value) contain,
    required TResult Function(_FlutterBoxFitCover value) cover,
    required TResult Function(_FlutterBoxFitFill value) fill,
    required TResult Function(_FlutterBoxFitFitHeight value) fitHeight,
    required TResult Function(_FlutterBoxFitFitWidth value) fitWidth,
    required TResult Function(_FlutterBoxFitNone value) none,
    required TResult Function(_FlutterBoxFitScaleDown value) scaleDown,
  }) {
    return fitWidth(this);
  }
}

abstract class _FlutterBoxFitFitWidth extends FlutterBoxFit {
  factory _FlutterBoxFitFitWidth() = _$_FlutterBoxFitFitWidth;
  _FlutterBoxFitFitWidth._() : super._();

  factory _FlutterBoxFitFitWidth.fromJson(Map<String, dynamic> json) =
      _$_FlutterBoxFitFitWidth.fromJson;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_FlutterBoxFitNone extends _FlutterBoxFitNone {
  _$_FlutterBoxFitNone({final String? $type})
      : $type = $type ?? 'f:1:BoxFit.none',
        super._();

  factory _$_FlutterBoxFitNone.fromJson(Map<String, dynamic> json) =>
      _$$_FlutterBoxFitNoneFromJson(json);

  @JsonKey(name: 'converter')
  final String $type;

  @override
  String toString() {
    return 'FlutterBoxFit.none()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_FlutterBoxFitNone);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FlutterBoxFitContain value) contain,
    required TResult Function(_FlutterBoxFitCover value) cover,
    required TResult Function(_FlutterBoxFitFill value) fill,
    required TResult Function(_FlutterBoxFitFitHeight value) fitHeight,
    required TResult Function(_FlutterBoxFitFitWidth value) fitWidth,
    required TResult Function(_FlutterBoxFitNone value) none,
    required TResult Function(_FlutterBoxFitScaleDown value) scaleDown,
  }) {
    return none(this);
  }
}

abstract class _FlutterBoxFitNone extends FlutterBoxFit {
  factory _FlutterBoxFitNone() = _$_FlutterBoxFitNone;
  _FlutterBoxFitNone._() : super._();

  factory _FlutterBoxFitNone.fromJson(Map<String, dynamic> json) =
      _$_FlutterBoxFitNone.fromJson;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_FlutterBoxFitScaleDown extends _FlutterBoxFitScaleDown {
  _$_FlutterBoxFitScaleDown({final String? $type})
      : $type = $type ?? 'f:1:BoxFit.scaleDown',
        super._();

  factory _$_FlutterBoxFitScaleDown.fromJson(Map<String, dynamic> json) =>
      _$$_FlutterBoxFitScaleDownFromJson(json);

  @JsonKey(name: 'converter')
  final String $type;

  @override
  String toString() {
    return 'FlutterBoxFit.scaleDown()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FlutterBoxFitScaleDown);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FlutterBoxFitContain value) contain,
    required TResult Function(_FlutterBoxFitCover value) cover,
    required TResult Function(_FlutterBoxFitFill value) fill,
    required TResult Function(_FlutterBoxFitFitHeight value) fitHeight,
    required TResult Function(_FlutterBoxFitFitWidth value) fitWidth,
    required TResult Function(_FlutterBoxFitNone value) none,
    required TResult Function(_FlutterBoxFitScaleDown value) scaleDown,
  }) {
    return scaleDown(this);
  }
}

abstract class _FlutterBoxFitScaleDown extends FlutterBoxFit {
  factory _FlutterBoxFitScaleDown() = _$_FlutterBoxFitScaleDown;
  _FlutterBoxFitScaleDown._() : super._();

  factory _FlutterBoxFitScaleDown.fromJson(Map<String, dynamic> json) =
      _$_FlutterBoxFitScaleDown.fromJson;
}

FlutterImageRepeat _$FlutterImageRepeatFromJson(Map<String, dynamic> json) {
  switch (json['converter']) {
    case 'f:1:ImageRepeat.noRepeat':
      return _FlutterImageRepeatNoRepeat.fromJson(json);
    case 'f:1:ImageRepeat.repeat':
      return _FlutterImageRepeatRepeat.fromJson(json);
    case 'f:1:ImageRepeat.repeatX':
      return _FlutterImageRepeatRepeatX.fromJson(json);
    case 'f:1:ImageRepeat.repeatY':
      return _FlutterImageRepeatRepeatY.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'converter', 'FlutterImageRepeat',
          'Invalid union type "${json['converter']}"!');
  }
}

/// @nodoc
mixin _$FlutterImageRepeat {
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FlutterImageRepeatNoRepeat value) noRepeat,
    required TResult Function(_FlutterImageRepeatRepeat value) repeat,
    required TResult Function(_FlutterImageRepeatRepeatX value) repeatX,
    required TResult Function(_FlutterImageRepeatRepeatY value) repeatY,
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_FlutterImageRepeatNoRepeat extends _FlutterImageRepeatNoRepeat {
  _$_FlutterImageRepeatNoRepeat({final String? $type})
      : $type = $type ?? 'f:1:ImageRepeat.noRepeat',
        super._();

  factory _$_FlutterImageRepeatNoRepeat.fromJson(Map<String, dynamic> json) =>
      _$$_FlutterImageRepeatNoRepeatFromJson(json);

  @JsonKey(name: 'converter')
  final String $type;

  @override
  String toString() {
    return 'FlutterImageRepeat.noRepeat()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FlutterImageRepeatNoRepeat);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FlutterImageRepeatNoRepeat value) noRepeat,
    required TResult Function(_FlutterImageRepeatRepeat value) repeat,
    required TResult Function(_FlutterImageRepeatRepeatX value) repeatX,
    required TResult Function(_FlutterImageRepeatRepeatY value) repeatY,
  }) {
    return noRepeat(this);
  }
}

abstract class _FlutterImageRepeatNoRepeat extends FlutterImageRepeat {
  factory _FlutterImageRepeatNoRepeat() = _$_FlutterImageRepeatNoRepeat;
  _FlutterImageRepeatNoRepeat._() : super._();

  factory _FlutterImageRepeatNoRepeat.fromJson(Map<String, dynamic> json) =
      _$_FlutterImageRepeatNoRepeat.fromJson;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_FlutterImageRepeatRepeat extends _FlutterImageRepeatRepeat {
  _$_FlutterImageRepeatRepeat({final String? $type})
      : $type = $type ?? 'f:1:ImageRepeat.repeat',
        super._();

  factory _$_FlutterImageRepeatRepeat.fromJson(Map<String, dynamic> json) =>
      _$$_FlutterImageRepeatRepeatFromJson(json);

  @JsonKey(name: 'converter')
  final String $type;

  @override
  String toString() {
    return 'FlutterImageRepeat.repeat()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FlutterImageRepeatRepeat);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FlutterImageRepeatNoRepeat value) noRepeat,
    required TResult Function(_FlutterImageRepeatRepeat value) repeat,
    required TResult Function(_FlutterImageRepeatRepeatX value) repeatX,
    required TResult Function(_FlutterImageRepeatRepeatY value) repeatY,
  }) {
    return repeat(this);
  }
}

abstract class _FlutterImageRepeatRepeat extends FlutterImageRepeat {
  factory _FlutterImageRepeatRepeat() = _$_FlutterImageRepeatRepeat;
  _FlutterImageRepeatRepeat._() : super._();

  factory _FlutterImageRepeatRepeat.fromJson(Map<String, dynamic> json) =
      _$_FlutterImageRepeatRepeat.fromJson;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_FlutterImageRepeatRepeatX extends _FlutterImageRepeatRepeatX {
  _$_FlutterImageRepeatRepeatX({final String? $type})
      : $type = $type ?? 'f:1:ImageRepeat.repeatX',
        super._();

  factory _$_FlutterImageRepeatRepeatX.fromJson(Map<String, dynamic> json) =>
      _$$_FlutterImageRepeatRepeatXFromJson(json);

  @JsonKey(name: 'converter')
  final String $type;

  @override
  String toString() {
    return 'FlutterImageRepeat.repeatX()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FlutterImageRepeatRepeatX);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FlutterImageRepeatNoRepeat value) noRepeat,
    required TResult Function(_FlutterImageRepeatRepeat value) repeat,
    required TResult Function(_FlutterImageRepeatRepeatX value) repeatX,
    required TResult Function(_FlutterImageRepeatRepeatY value) repeatY,
  }) {
    return repeatX(this);
  }
}

abstract class _FlutterImageRepeatRepeatX extends FlutterImageRepeat {
  factory _FlutterImageRepeatRepeatX() = _$_FlutterImageRepeatRepeatX;
  _FlutterImageRepeatRepeatX._() : super._();

  factory _FlutterImageRepeatRepeatX.fromJson(Map<String, dynamic> json) =
      _$_FlutterImageRepeatRepeatX.fromJson;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_FlutterImageRepeatRepeatY extends _FlutterImageRepeatRepeatY {
  _$_FlutterImageRepeatRepeatY({final String? $type})
      : $type = $type ?? 'f:1:ImageRepeat.repeatY',
        super._();

  factory _$_FlutterImageRepeatRepeatY.fromJson(Map<String, dynamic> json) =>
      _$$_FlutterImageRepeatRepeatYFromJson(json);

  @JsonKey(name: 'converter')
  final String $type;

  @override
  String toString() {
    return 'FlutterImageRepeat.repeatY()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FlutterImageRepeatRepeatY);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FlutterImageRepeatNoRepeat value) noRepeat,
    required TResult Function(_FlutterImageRepeatRepeat value) repeat,
    required TResult Function(_FlutterImageRepeatRepeatX value) repeatX,
    required TResult Function(_FlutterImageRepeatRepeatY value) repeatY,
  }) {
    return repeatY(this);
  }
}

abstract class _FlutterImageRepeatRepeatY extends FlutterImageRepeat {
  factory _FlutterImageRepeatRepeatY() = _$_FlutterImageRepeatRepeatY;
  _FlutterImageRepeatRepeatY._() : super._();

  factory _FlutterImageRepeatRepeatY.fromJson(Map<String, dynamic> json) =
      _$_FlutterImageRepeatRepeatY.fromJson;
}

FlutterTextStyle _$FlutterTextStyleFromJson(Map<String, dynamic> json) {
  return _FlutterTextStyle.fromJson(json);
}

/// @nodoc
mixin _$FlutterTextStyle {
  ZacBool? get inherit => throw _privateConstructorUsedError;
  FlutterColor? get color => throw _privateConstructorUsedError;
  FlutterColor? get backgroundColor => throw _privateConstructorUsedError;
  ZacValue<double>? get fontSize => throw _privateConstructorUsedError;
  FlutterFontWeight? get fontWeight => throw _privateConstructorUsedError;
  FlutterFontStyle? get fontStyle => throw _privateConstructorUsedError;
  ZacValue<double>? get letterSpacing => throw _privateConstructorUsedError;
  ZacValue<double>? get wordSpacing => throw _privateConstructorUsedError;
  FlutterTextBaseline? get textBaseline => throw _privateConstructorUsedError;
  ZacValue<double>? get height => throw _privateConstructorUsedError;
  FlutterTextLeadingDistribution? get leadingDistribution =>
      throw _privateConstructorUsedError;
  FlutterLocale? get locale =>
      throw _privateConstructorUsedError; // Paint? foreground,
// Paint? background,
  List<FlutterDartUiShadow>? get shadows => throw _privateConstructorUsedError;
  List<FlutterFontFeature>? get fontFeatures =>
      throw _privateConstructorUsedError;
  FlutterTextDecoration? get decoration => throw _privateConstructorUsedError;
  FlutterColor? get decorationColor => throw _privateConstructorUsedError;
  FlutterTextDecorationStyle? get decorationStyle =>
      throw _privateConstructorUsedError;
  ZacValue<double>? get decorationThickness =>
      throw _privateConstructorUsedError;
  ZacValue<String>? get debugLabel => throw _privateConstructorUsedError;
  ZacValue<String>? get fontFamily => throw _privateConstructorUsedError;
  List<String>? get fontFamilyFallback => throw _privateConstructorUsedError;
  ZacValue<String>? get package => throw _privateConstructorUsedError;
  FlutterTextOverflow? get overflow => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_FlutterTextStyle value) $default,
  ) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_FlutterTextStyle extends _FlutterTextStyle {
  _$_FlutterTextStyle(
      {this.inherit,
      this.color,
      this.backgroundColor,
      this.fontSize,
      this.fontWeight,
      this.fontStyle,
      this.letterSpacing,
      this.wordSpacing,
      this.textBaseline,
      this.height,
      this.leadingDistribution,
      this.locale,
      final List<FlutterDartUiShadow>? shadows,
      final List<FlutterFontFeature>? fontFeatures,
      this.decoration,
      this.decorationColor,
      this.decorationStyle,
      this.decorationThickness,
      this.debugLabel,
      this.fontFamily,
      final List<String>? fontFamilyFallback,
      this.package,
      this.overflow})
      : _shadows = shadows,
        _fontFeatures = fontFeatures,
        _fontFamilyFallback = fontFamilyFallback,
        super._();

  factory _$_FlutterTextStyle.fromJson(Map<String, dynamic> json) =>
      _$$_FlutterTextStyleFromJson(json);

  @override
  final ZacBool? inherit;
  @override
  final FlutterColor? color;
  @override
  final FlutterColor? backgroundColor;
  @override
  final ZacValue<double>? fontSize;
  @override
  final FlutterFontWeight? fontWeight;
  @override
  final FlutterFontStyle? fontStyle;
  @override
  final ZacValue<double>? letterSpacing;
  @override
  final ZacValue<double>? wordSpacing;
  @override
  final FlutterTextBaseline? textBaseline;
  @override
  final ZacValue<double>? height;
  @override
  final FlutterTextLeadingDistribution? leadingDistribution;
  @override
  final FlutterLocale? locale;
// Paint? foreground,
// Paint? background,
  final List<FlutterDartUiShadow>? _shadows;
// Paint? foreground,
// Paint? background,
  @override
  List<FlutterDartUiShadow>? get shadows {
    final value = _shadows;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<FlutterFontFeature>? _fontFeatures;
  @override
  List<FlutterFontFeature>? get fontFeatures {
    final value = _fontFeatures;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final FlutterTextDecoration? decoration;
  @override
  final FlutterColor? decorationColor;
  @override
  final FlutterTextDecorationStyle? decorationStyle;
  @override
  final ZacValue<double>? decorationThickness;
  @override
  final ZacValue<String>? debugLabel;
  @override
  final ZacValue<String>? fontFamily;
  final List<String>? _fontFamilyFallback;
  @override
  List<String>? get fontFamilyFallback {
    final value = _fontFamilyFallback;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final ZacValue<String>? package;
  @override
  final FlutterTextOverflow? overflow;

  @override
  String toString() {
    return 'FlutterTextStyle(inherit: $inherit, color: $color, backgroundColor: $backgroundColor, fontSize: $fontSize, fontWeight: $fontWeight, fontStyle: $fontStyle, letterSpacing: $letterSpacing, wordSpacing: $wordSpacing, textBaseline: $textBaseline, height: $height, leadingDistribution: $leadingDistribution, locale: $locale, shadows: $shadows, fontFeatures: $fontFeatures, decoration: $decoration, decorationColor: $decorationColor, decorationStyle: $decorationStyle, decorationThickness: $decorationThickness, debugLabel: $debugLabel, fontFamily: $fontFamily, fontFamilyFallback: $fontFamilyFallback, package: $package, overflow: $overflow)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FlutterTextStyle &&
            const DeepCollectionEquality().equals(other.inherit, inherit) &&
            const DeepCollectionEquality().equals(other.color, color) &&
            const DeepCollectionEquality()
                .equals(other.backgroundColor, backgroundColor) &&
            const DeepCollectionEquality().equals(other.fontSize, fontSize) &&
            const DeepCollectionEquality()
                .equals(other.fontWeight, fontWeight) &&
            const DeepCollectionEquality().equals(other.fontStyle, fontStyle) &&
            const DeepCollectionEquality()
                .equals(other.letterSpacing, letterSpacing) &&
            const DeepCollectionEquality()
                .equals(other.wordSpacing, wordSpacing) &&
            const DeepCollectionEquality()
                .equals(other.textBaseline, textBaseline) &&
            const DeepCollectionEquality().equals(other.height, height) &&
            const DeepCollectionEquality()
                .equals(other.leadingDistribution, leadingDistribution) &&
            const DeepCollectionEquality().equals(other.locale, locale) &&
            const DeepCollectionEquality().equals(other._shadows, _shadows) &&
            const DeepCollectionEquality()
                .equals(other._fontFeatures, _fontFeatures) &&
            const DeepCollectionEquality()
                .equals(other.decoration, decoration) &&
            const DeepCollectionEquality()
                .equals(other.decorationColor, decorationColor) &&
            const DeepCollectionEquality()
                .equals(other.decorationStyle, decorationStyle) &&
            const DeepCollectionEquality()
                .equals(other.decorationThickness, decorationThickness) &&
            const DeepCollectionEquality()
                .equals(other.debugLabel, debugLabel) &&
            const DeepCollectionEquality()
                .equals(other.fontFamily, fontFamily) &&
            const DeepCollectionEquality()
                .equals(other._fontFamilyFallback, _fontFamilyFallback) &&
            const DeepCollectionEquality().equals(other.package, package) &&
            const DeepCollectionEquality().equals(other.overflow, overflow));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(inherit),
        const DeepCollectionEquality().hash(color),
        const DeepCollectionEquality().hash(backgroundColor),
        const DeepCollectionEquality().hash(fontSize),
        const DeepCollectionEquality().hash(fontWeight),
        const DeepCollectionEquality().hash(fontStyle),
        const DeepCollectionEquality().hash(letterSpacing),
        const DeepCollectionEquality().hash(wordSpacing),
        const DeepCollectionEquality().hash(textBaseline),
        const DeepCollectionEquality().hash(height),
        const DeepCollectionEquality().hash(leadingDistribution),
        const DeepCollectionEquality().hash(locale),
        const DeepCollectionEquality().hash(_shadows),
        const DeepCollectionEquality().hash(_fontFeatures),
        const DeepCollectionEquality().hash(decoration),
        const DeepCollectionEquality().hash(decorationColor),
        const DeepCollectionEquality().hash(decorationStyle),
        const DeepCollectionEquality().hash(decorationThickness),
        const DeepCollectionEquality().hash(debugLabel),
        const DeepCollectionEquality().hash(fontFamily),
        const DeepCollectionEquality().hash(_fontFamilyFallback),
        const DeepCollectionEquality().hash(package),
        const DeepCollectionEquality().hash(overflow)
      ]);

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_FlutterTextStyle value) $default,
  ) {
    return $default(this);
  }
}

abstract class _FlutterTextStyle extends FlutterTextStyle {
  factory _FlutterTextStyle(
      {final ZacBool? inherit,
      final FlutterColor? color,
      final FlutterColor? backgroundColor,
      final ZacValue<double>? fontSize,
      final FlutterFontWeight? fontWeight,
      final FlutterFontStyle? fontStyle,
      final ZacValue<double>? letterSpacing,
      final ZacValue<double>? wordSpacing,
      final FlutterTextBaseline? textBaseline,
      final ZacValue<double>? height,
      final FlutterTextLeadingDistribution? leadingDistribution,
      final FlutterLocale? locale,
      final List<FlutterDartUiShadow>? shadows,
      final List<FlutterFontFeature>? fontFeatures,
      final FlutterTextDecoration? decoration,
      final FlutterColor? decorationColor,
      final FlutterTextDecorationStyle? decorationStyle,
      final ZacValue<double>? decorationThickness,
      final ZacValue<String>? debugLabel,
      final ZacValue<String>? fontFamily,
      final List<String>? fontFamilyFallback,
      final ZacValue<String>? package,
      final FlutterTextOverflow? overflow}) = _$_FlutterTextStyle;
  _FlutterTextStyle._() : super._();

  factory _FlutterTextStyle.fromJson(Map<String, dynamic> json) =
      _$_FlutterTextStyle.fromJson;

  @override
  ZacBool? get inherit;
  @override
  FlutterColor? get color;
  @override
  FlutterColor? get backgroundColor;
  @override
  ZacValue<double>? get fontSize;
  @override
  FlutterFontWeight? get fontWeight;
  @override
  FlutterFontStyle? get fontStyle;
  @override
  ZacValue<double>? get letterSpacing;
  @override
  ZacValue<double>? get wordSpacing;
  @override
  FlutterTextBaseline? get textBaseline;
  @override
  ZacValue<double>? get height;
  @override
  FlutterTextLeadingDistribution? get leadingDistribution;
  @override
  FlutterLocale? get locale;
  @override // Paint? foreground,
// Paint? background,
  List<FlutterDartUiShadow>? get shadows;
  @override
  List<FlutterFontFeature>? get fontFeatures;
  @override
  FlutterTextDecoration? get decoration;
  @override
  FlutterColor? get decorationColor;
  @override
  FlutterTextDecorationStyle? get decorationStyle;
  @override
  ZacValue<double>? get decorationThickness;
  @override
  ZacValue<String>? get debugLabel;
  @override
  ZacValue<String>? get fontFamily;
  @override
  List<String>? get fontFamilyFallback;
  @override
  ZacValue<String>? get package;
  @override
  FlutterTextOverflow? get overflow;
}

FlutterTextAlignVertical _$FlutterTextAlignVerticalFromJson(
    Map<String, dynamic> json) {
  switch (json['converter']) {
    case 'f:1:TextAlignVertical':
      return _FlutterTextAlignVertical.fromJson(json);
    case 'f:1:TextAlignVertical.bottom':
      return _FlutterTextAlignVerticalbottom.fromJson(json);
    case 'f:1:TextAlignVertical.center':
      return _FlutterTextAlignVerticalcenter.fromJson(json);
    case 'f:1:TextAlignVertical.top':
      return _FlutterTextAlignVerticaltop.fromJson(json);

    default:
      throw CheckedFromJsonException(
          json,
          'converter',
          'FlutterTextAlignVertical',
          'Invalid union type "${json['converter']}"!');
  }
}

/// @nodoc
mixin _$FlutterTextAlignVertical {
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_FlutterTextAlignVertical value) $default, {
    required TResult Function(_FlutterTextAlignVerticalbottom value) bottom,
    required TResult Function(_FlutterTextAlignVerticalcenter value) center,
    required TResult Function(_FlutterTextAlignVerticaltop value) top,
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_FlutterTextAlignVertical extends _FlutterTextAlignVertical {
  _$_FlutterTextAlignVertical({required this.y, final String? $type})
      : $type = $type ?? 'f:1:TextAlignVertical',
        super._();

  factory _$_FlutterTextAlignVertical.fromJson(Map<String, dynamic> json) =>
      _$$_FlutterTextAlignVerticalFromJson(json);

  @override
  final ZacValue<double> y;

  @JsonKey(name: 'converter')
  final String $type;

  @override
  String toString() {
    return 'FlutterTextAlignVertical(y: $y)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FlutterTextAlignVertical &&
            const DeepCollectionEquality().equals(other.y, y));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(y));

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_FlutterTextAlignVertical value) $default, {
    required TResult Function(_FlutterTextAlignVerticalbottom value) bottom,
    required TResult Function(_FlutterTextAlignVerticalcenter value) center,
    required TResult Function(_FlutterTextAlignVerticaltop value) top,
  }) {
    return $default(this);
  }
}

abstract class _FlutterTextAlignVertical extends FlutterTextAlignVertical {
  factory _FlutterTextAlignVertical({required final ZacValue<double> y}) =
      _$_FlutterTextAlignVertical;
  _FlutterTextAlignVertical._() : super._();

  factory _FlutterTextAlignVertical.fromJson(Map<String, dynamic> json) =
      _$_FlutterTextAlignVertical.fromJson;

  ZacValue<double> get y;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_FlutterTextAlignVerticalbottom
    extends _FlutterTextAlignVerticalbottom {
  _$_FlutterTextAlignVerticalbottom({final String? $type})
      : $type = $type ?? 'f:1:TextAlignVertical.bottom',
        super._();

  factory _$_FlutterTextAlignVerticalbottom.fromJson(
          Map<String, dynamic> json) =>
      _$$_FlutterTextAlignVerticalbottomFromJson(json);

  @JsonKey(name: 'converter')
  final String $type;

  @override
  String toString() {
    return 'FlutterTextAlignVertical.bottom()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FlutterTextAlignVerticalbottom);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_FlutterTextAlignVertical value) $default, {
    required TResult Function(_FlutterTextAlignVerticalbottom value) bottom,
    required TResult Function(_FlutterTextAlignVerticalcenter value) center,
    required TResult Function(_FlutterTextAlignVerticaltop value) top,
  }) {
    return bottom(this);
  }
}

abstract class _FlutterTextAlignVerticalbottom
    extends FlutterTextAlignVertical {
  factory _FlutterTextAlignVerticalbottom() = _$_FlutterTextAlignVerticalbottom;
  _FlutterTextAlignVerticalbottom._() : super._();

  factory _FlutterTextAlignVerticalbottom.fromJson(Map<String, dynamic> json) =
      _$_FlutterTextAlignVerticalbottom.fromJson;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_FlutterTextAlignVerticalcenter
    extends _FlutterTextAlignVerticalcenter {
  _$_FlutterTextAlignVerticalcenter({final String? $type})
      : $type = $type ?? 'f:1:TextAlignVertical.center',
        super._();

  factory _$_FlutterTextAlignVerticalcenter.fromJson(
          Map<String, dynamic> json) =>
      _$$_FlutterTextAlignVerticalcenterFromJson(json);

  @JsonKey(name: 'converter')
  final String $type;

  @override
  String toString() {
    return 'FlutterTextAlignVertical.center()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FlutterTextAlignVerticalcenter);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_FlutterTextAlignVertical value) $default, {
    required TResult Function(_FlutterTextAlignVerticalbottom value) bottom,
    required TResult Function(_FlutterTextAlignVerticalcenter value) center,
    required TResult Function(_FlutterTextAlignVerticaltop value) top,
  }) {
    return center(this);
  }
}

abstract class _FlutterTextAlignVerticalcenter
    extends FlutterTextAlignVertical {
  factory _FlutterTextAlignVerticalcenter() = _$_FlutterTextAlignVerticalcenter;
  _FlutterTextAlignVerticalcenter._() : super._();

  factory _FlutterTextAlignVerticalcenter.fromJson(Map<String, dynamic> json) =
      _$_FlutterTextAlignVerticalcenter.fromJson;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_FlutterTextAlignVerticaltop extends _FlutterTextAlignVerticaltop {
  _$_FlutterTextAlignVerticaltop({final String? $type})
      : $type = $type ?? 'f:1:TextAlignVertical.top',
        super._();

  factory _$_FlutterTextAlignVerticaltop.fromJson(Map<String, dynamic> json) =>
      _$$_FlutterTextAlignVerticaltopFromJson(json);

  @JsonKey(name: 'converter')
  final String $type;

  @override
  String toString() {
    return 'FlutterTextAlignVertical.top()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FlutterTextAlignVerticaltop);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_FlutterTextAlignVertical value) $default, {
    required TResult Function(_FlutterTextAlignVerticalbottom value) bottom,
    required TResult Function(_FlutterTextAlignVerticalcenter value) center,
    required TResult Function(_FlutterTextAlignVerticaltop value) top,
  }) {
    return top(this);
  }
}

abstract class _FlutterTextAlignVerticaltop extends FlutterTextAlignVertical {
  factory _FlutterTextAlignVerticaltop() = _$_FlutterTextAlignVerticaltop;
  _FlutterTextAlignVerticaltop._() : super._();

  factory _FlutterTextAlignVerticaltop.fromJson(Map<String, dynamic> json) =
      _$_FlutterTextAlignVerticaltop.fromJson;
}

FlutterBoxShadow _$FlutterBoxShadowFromJson(Map<String, dynamic> json) {
  return _FlutterBoxShadow.fromJson(json);
}

/// @nodoc
mixin _$FlutterBoxShadow {
  FlutterColor? get color => throw _privateConstructorUsedError;
  FlutterOffset? get offset => throw _privateConstructorUsedError;
  ZacValue<double>? get blurRadius => throw _privateConstructorUsedError;
  ZacValue<double>? get spreadRadius => throw _privateConstructorUsedError;
  FlutterBlurStyle? get blurStyle => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_FlutterBoxShadow value) $default,
  ) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_FlutterBoxShadow extends _FlutterBoxShadow {
  _$_FlutterBoxShadow(
      {this.color,
      this.offset,
      this.blurRadius,
      this.spreadRadius,
      this.blurStyle})
      : super._();

  factory _$_FlutterBoxShadow.fromJson(Map<String, dynamic> json) =>
      _$$_FlutterBoxShadowFromJson(json);

  @override
  final FlutterColor? color;
  @override
  final FlutterOffset? offset;
  @override
  final ZacValue<double>? blurRadius;
  @override
  final ZacValue<double>? spreadRadius;
  @override
  final FlutterBlurStyle? blurStyle;

  @override
  String toString() {
    return 'FlutterBoxShadow(color: $color, offset: $offset, blurRadius: $blurRadius, spreadRadius: $spreadRadius, blurStyle: $blurStyle)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FlutterBoxShadow &&
            const DeepCollectionEquality().equals(other.color, color) &&
            const DeepCollectionEquality().equals(other.offset, offset) &&
            const DeepCollectionEquality()
                .equals(other.blurRadius, blurRadius) &&
            const DeepCollectionEquality()
                .equals(other.spreadRadius, spreadRadius) &&
            const DeepCollectionEquality().equals(other.blurStyle, blurStyle));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(color),
      const DeepCollectionEquality().hash(offset),
      const DeepCollectionEquality().hash(blurRadius),
      const DeepCollectionEquality().hash(spreadRadius),
      const DeepCollectionEquality().hash(blurStyle));

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_FlutterBoxShadow value) $default,
  ) {
    return $default(this);
  }
}

abstract class _FlutterBoxShadow extends FlutterBoxShadow {
  factory _FlutterBoxShadow(
      {final FlutterColor? color,
      final FlutterOffset? offset,
      final ZacValue<double>? blurRadius,
      final ZacValue<double>? spreadRadius,
      final FlutterBlurStyle? blurStyle}) = _$_FlutterBoxShadow;
  _FlutterBoxShadow._() : super._();

  factory _FlutterBoxShadow.fromJson(Map<String, dynamic> json) =
      _$_FlutterBoxShadow.fromJson;

  @override
  FlutterColor? get color;
  @override
  FlutterOffset? get offset;
  @override
  ZacValue<double>? get blurRadius;
  @override
  ZacValue<double>? get spreadRadius;
  @override
  FlutterBlurStyle? get blurStyle;
}

FlutterAlignment _$FlutterAlignmentFromJson(Map<String, dynamic> json) {
  switch (json['converter']) {
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
      throw CheckedFromJsonException(json, 'converter', 'FlutterAlignment',
          'Invalid union type "${json['converter']}"!');
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
  final ZacValue<double> x;
  @override
  final ZacValue<double> y;

  @JsonKey(name: 'converter')
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
  factory _FlutterAlignment(
      final ZacValue<double> x, final ZacValue<double> y) = _$_FlutterAlignment;
  _FlutterAlignment._() : super._();

  factory _FlutterAlignment.fromJson(Map<String, dynamic> json) =
      _$_FlutterAlignment.fromJson;

  ZacValue<double> get x;
  ZacValue<double> get y;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_FlutterAlignmentbottomCenter extends _FlutterAlignmentbottomCenter {
  _$_FlutterAlignmentbottomCenter({final String? $type})
      : $type = $type ?? 'f:1:Alignment.bottomCenter',
        super._();

  factory _$_FlutterAlignmentbottomCenter.fromJson(Map<String, dynamic> json) =>
      _$$_FlutterAlignmentbottomCenterFromJson(json);

  @JsonKey(name: 'converter')
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

  @JsonKey(name: 'converter')
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

  @JsonKey(name: 'converter')
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

  @JsonKey(name: 'converter')
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

  @JsonKey(name: 'converter')
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

  @JsonKey(name: 'converter')
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

  @JsonKey(name: 'converter')
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

  @JsonKey(name: 'converter')
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

  @JsonKey(name: 'converter')
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
  switch (json['converter']) {
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
          'converter',
          'FlutterAlignmentDirectional',
          'Invalid union type "${json['converter']}"!');
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
  final ZacValue<double> start;
  @override
  final ZacValue<double> y;

  @JsonKey(name: 'converter')
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
          final ZacValue<double> start, final ZacValue<double> y) =
      _$_FlutterAlignmentDirectional;
  _FlutterAlignmentDirectional._() : super._();

  factory _FlutterAlignmentDirectional.fromJson(Map<String, dynamic> json) =
      _$_FlutterAlignmentDirectional.fromJson;

  ZacValue<double> get start;
  ZacValue<double> get y;
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

  @JsonKey(name: 'converter')
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

  @JsonKey(name: 'converter')
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

  @JsonKey(name: 'converter')
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

  @JsonKey(name: 'converter')
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

  @JsonKey(name: 'converter')
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

  @JsonKey(name: 'converter')
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

  @JsonKey(name: 'converter')
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

  @JsonKey(name: 'converter')
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

  @JsonKey(name: 'converter')
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

FlutterFractionalOffset _$FlutterFractionalOffsetFromJson(
    Map<String, dynamic> json) {
  return _FlutterFractionalOffset.fromJson(json);
}

/// @nodoc
mixin _$FlutterFractionalOffset {
  ZacValue<double> get dx => throw _privateConstructorUsedError;
  ZacValue<double> get dy => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_FlutterFractionalOffset value) $default,
  ) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_FlutterFractionalOffset extends _FlutterFractionalOffset {
  _$_FlutterFractionalOffset(this.dx, this.dy) : super._();

  factory _$_FlutterFractionalOffset.fromJson(Map<String, dynamic> json) =>
      _$$_FlutterFractionalOffsetFromJson(json);

  @override
  final ZacValue<double> dx;
  @override
  final ZacValue<double> dy;

  @override
  String toString() {
    return 'FlutterFractionalOffset(dx: $dx, dy: $dy)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FlutterFractionalOffset &&
            const DeepCollectionEquality().equals(other.dx, dx) &&
            const DeepCollectionEquality().equals(other.dy, dy));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(dx),
      const DeepCollectionEquality().hash(dy));

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_FlutterFractionalOffset value) $default,
  ) {
    return $default(this);
  }
}

abstract class _FlutterFractionalOffset extends FlutterFractionalOffset {
  factory _FlutterFractionalOffset(
          final ZacValue<double> dx, final ZacValue<double> dy) =
      _$_FlutterFractionalOffset;
  _FlutterFractionalOffset._() : super._();

  factory _FlutterFractionalOffset.fromJson(Map<String, dynamic> json) =
      _$_FlutterFractionalOffset.fromJson;

  @override
  ZacValue<double> get dx;
  @override
  ZacValue<double> get dy;
}

FlutterBorderDirectional _$FlutterBorderDirectionalFromJson(
    Map<String, dynamic> json) {
  return _FlutterBorderDirectional.fromJson(json);
}

/// @nodoc
mixin _$FlutterBorderDirectional {
  FlutterBorderSide? get top => throw _privateConstructorUsedError;
  FlutterBorderSide? get start => throw _privateConstructorUsedError;
  FlutterBorderSide? get bottom => throw _privateConstructorUsedError;
  FlutterBorderSide? get end => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_FlutterBorderDirectional value) $default,
  ) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_FlutterBorderDirectional extends _FlutterBorderDirectional {
  _$_FlutterBorderDirectional({this.top, this.start, this.bottom, this.end})
      : super._();

  factory _$_FlutterBorderDirectional.fromJson(Map<String, dynamic> json) =>
      _$$_FlutterBorderDirectionalFromJson(json);

  @override
  final FlutterBorderSide? top;
  @override
  final FlutterBorderSide? start;
  @override
  final FlutterBorderSide? bottom;
  @override
  final FlutterBorderSide? end;

  @override
  String toString() {
    return 'FlutterBorderDirectional(top: $top, start: $start, bottom: $bottom, end: $end)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FlutterBorderDirectional &&
            const DeepCollectionEquality().equals(other.top, top) &&
            const DeepCollectionEquality().equals(other.start, start) &&
            const DeepCollectionEquality().equals(other.bottom, bottom) &&
            const DeepCollectionEquality().equals(other.end, end));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(top),
      const DeepCollectionEquality().hash(start),
      const DeepCollectionEquality().hash(bottom),
      const DeepCollectionEquality().hash(end));

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_FlutterBorderDirectional value) $default,
  ) {
    return $default(this);
  }
}

abstract class _FlutterBorderDirectional extends FlutterBorderDirectional {
  factory _FlutterBorderDirectional(
      {final FlutterBorderSide? top,
      final FlutterBorderSide? start,
      final FlutterBorderSide? bottom,
      final FlutterBorderSide? end}) = _$_FlutterBorderDirectional;
  _FlutterBorderDirectional._() : super._();

  factory _FlutterBorderDirectional.fromJson(Map<String, dynamic> json) =
      _$_FlutterBorderDirectional.fromJson;

  @override
  FlutterBorderSide? get top;
  @override
  FlutterBorderSide? get start;
  @override
  FlutterBorderSide? get bottom;
  @override
  FlutterBorderSide? get end;
}

FlutterBorder _$FlutterBorderFromJson(Map<String, dynamic> json) {
  switch (json['converter']) {
    case 'f:1:Border':
      return _FlutterBorder.fromJson(json);
    case 'f:1:Border.all':
      return _FlutterBorderAll.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'converter', 'FlutterBorder',
          'Invalid union type "${json['converter']}"!');
  }
}

/// @nodoc
mixin _$FlutterBorder {
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_FlutterBorder value) $default, {
    required TResult Function(_FlutterBorderAll value) all,
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_FlutterBorder extends _FlutterBorder {
  _$_FlutterBorder(
      {this.top, this.right, this.bottom, this.left, final String? $type})
      : $type = $type ?? 'f:1:Border',
        super._();

  factory _$_FlutterBorder.fromJson(Map<String, dynamic> json) =>
      _$$_FlutterBorderFromJson(json);

  @override
  final FlutterBorderSide? top;
  @override
  final FlutterBorderSide? right;
  @override
  final FlutterBorderSide? bottom;
  @override
  final FlutterBorderSide? left;

  @JsonKey(name: 'converter')
  final String $type;

  @override
  String toString() {
    return 'FlutterBorder(top: $top, right: $right, bottom: $bottom, left: $left)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FlutterBorder &&
            const DeepCollectionEquality().equals(other.top, top) &&
            const DeepCollectionEquality().equals(other.right, right) &&
            const DeepCollectionEquality().equals(other.bottom, bottom) &&
            const DeepCollectionEquality().equals(other.left, left));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(top),
      const DeepCollectionEquality().hash(right),
      const DeepCollectionEquality().hash(bottom),
      const DeepCollectionEquality().hash(left));

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_FlutterBorder value) $default, {
    required TResult Function(_FlutterBorderAll value) all,
  }) {
    return $default(this);
  }
}

abstract class _FlutterBorder extends FlutterBorder {
  factory _FlutterBorder(
      {final FlutterBorderSide? top,
      final FlutterBorderSide? right,
      final FlutterBorderSide? bottom,
      final FlutterBorderSide? left}) = _$_FlutterBorder;
  _FlutterBorder._() : super._();

  factory _FlutterBorder.fromJson(Map<String, dynamic> json) =
      _$_FlutterBorder.fromJson;

  FlutterBorderSide? get top;
  FlutterBorderSide? get right;
  FlutterBorderSide? get bottom;
  FlutterBorderSide? get left;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_FlutterBorderAll extends _FlutterBorderAll {
  _$_FlutterBorderAll({this.color, this.width, this.style, final String? $type})
      : $type = $type ?? 'f:1:Border.all',
        super._();

  factory _$_FlutterBorderAll.fromJson(Map<String, dynamic> json) =>
      _$$_FlutterBorderAllFromJson(json);

  @override
  final FlutterColor? color;
  @override
  final ZacValue<double>? width;
  @override
  final FlutterBorderStyle? style;

  @JsonKey(name: 'converter')
  final String $type;

  @override
  String toString() {
    return 'FlutterBorder.all(color: $color, width: $width, style: $style)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FlutterBorderAll &&
            const DeepCollectionEquality().equals(other.color, color) &&
            const DeepCollectionEquality().equals(other.width, width) &&
            const DeepCollectionEquality().equals(other.style, style));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(color),
      const DeepCollectionEquality().hash(width),
      const DeepCollectionEquality().hash(style));

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_FlutterBorder value) $default, {
    required TResult Function(_FlutterBorderAll value) all,
  }) {
    return all(this);
  }
}

abstract class _FlutterBorderAll extends FlutterBorder {
  factory _FlutterBorderAll(
      {final FlutterColor? color,
      final ZacValue<double>? width,
      final FlutterBorderStyle? style}) = _$_FlutterBorderAll;
  _FlutterBorderAll._() : super._();

  factory _FlutterBorderAll.fromJson(Map<String, dynamic> json) =
      _$_FlutterBorderAll.fromJson;

  FlutterColor? get color;
  ZacValue<double>? get width;
  FlutterBorderStyle? get style;
}

FlutterBorderStyle _$FlutterBorderStyleFromJson(Map<String, dynamic> json) {
  switch (json['converter']) {
    case 'f:1:BorderStyle.none':
      return _FlutterBorderStyleNone.fromJson(json);
    case 'f:1:BorderStyle.solid':
      return _FlutterBorderStyleSolid.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'converter', 'FlutterBorderStyle',
          'Invalid union type "${json['converter']}"!');
  }
}

/// @nodoc
mixin _$FlutterBorderStyle {
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FlutterBorderStyleNone value) none,
    required TResult Function(_FlutterBorderStyleSolid value) solid,
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_FlutterBorderStyleNone extends _FlutterBorderStyleNone {
  _$_FlutterBorderStyleNone({final String? $type})
      : $type = $type ?? 'f:1:BorderStyle.none',
        super._();

  factory _$_FlutterBorderStyleNone.fromJson(Map<String, dynamic> json) =>
      _$$_FlutterBorderStyleNoneFromJson(json);

  @JsonKey(name: 'converter')
  final String $type;

  @override
  String toString() {
    return 'FlutterBorderStyle.none()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FlutterBorderStyleNone);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FlutterBorderStyleNone value) none,
    required TResult Function(_FlutterBorderStyleSolid value) solid,
  }) {
    return none(this);
  }
}

abstract class _FlutterBorderStyleNone extends FlutterBorderStyle {
  factory _FlutterBorderStyleNone() = _$_FlutterBorderStyleNone;
  _FlutterBorderStyleNone._() : super._();

  factory _FlutterBorderStyleNone.fromJson(Map<String, dynamic> json) =
      _$_FlutterBorderStyleNone.fromJson;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_FlutterBorderStyleSolid extends _FlutterBorderStyleSolid {
  _$_FlutterBorderStyleSolid({final String? $type})
      : $type = $type ?? 'f:1:BorderStyle.solid',
        super._();

  factory _$_FlutterBorderStyleSolid.fromJson(Map<String, dynamic> json) =>
      _$$_FlutterBorderStyleSolidFromJson(json);

  @JsonKey(name: 'converter')
  final String $type;

  @override
  String toString() {
    return 'FlutterBorderStyle.solid()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FlutterBorderStyleSolid);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FlutterBorderStyleNone value) none,
    required TResult Function(_FlutterBorderStyleSolid value) solid,
  }) {
    return solid(this);
  }
}

abstract class _FlutterBorderStyleSolid extends FlutterBorderStyle {
  factory _FlutterBorderStyleSolid() = _$_FlutterBorderStyleSolid;
  _FlutterBorderStyleSolid._() : super._();

  factory _FlutterBorderStyleSolid.fromJson(Map<String, dynamic> json) =
      _$_FlutterBorderStyleSolid.fromJson;
}

FlutterBorderRadius _$FlutterBorderRadiusFromJson(Map<String, dynamic> json) {
  switch (json['converter']) {
    case 'f:1:BorderRadius.all':
      return _FlutterBorderRadiusAll.fromJson(json);
    case 'f:1:BorderRadius.circular':
      return _FlutterBorderRadiusCircular.fromJson(json);
    case 'f:1:BorderRadius.horizontal':
      return _FlutterBorderRadiusHorizontal.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'converter', 'FlutterBorderRadius',
          'Invalid union type "${json['converter']}"!');
  }
}

/// @nodoc
mixin _$FlutterBorderRadius {
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FlutterBorderRadiusAll value) all,
    required TResult Function(_FlutterBorderRadiusCircular value) circular,
    required TResult Function(_FlutterBorderRadiusHorizontal value) horizontal,
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_FlutterBorderRadiusAll extends _FlutterBorderRadiusAll {
  _$_FlutterBorderRadiusAll(this.radius, {final String? $type})
      : $type = $type ?? 'f:1:BorderRadius.all',
        super._();

  factory _$_FlutterBorderRadiusAll.fromJson(Map<String, dynamic> json) =>
      _$$_FlutterBorderRadiusAllFromJson(json);

  @override
  final FlutterRadius radius;

  @JsonKey(name: 'converter')
  final String $type;

  @override
  String toString() {
    return 'FlutterBorderRadius.all(radius: $radius)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FlutterBorderRadiusAll &&
            const DeepCollectionEquality().equals(other.radius, radius));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(radius));

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FlutterBorderRadiusAll value) all,
    required TResult Function(_FlutterBorderRadiusCircular value) circular,
    required TResult Function(_FlutterBorderRadiusHorizontal value) horizontal,
  }) {
    return all(this);
  }
}

abstract class _FlutterBorderRadiusAll extends FlutterBorderRadius {
  factory _FlutterBorderRadiusAll(final FlutterRadius radius) =
      _$_FlutterBorderRadiusAll;
  _FlutterBorderRadiusAll._() : super._();

  factory _FlutterBorderRadiusAll.fromJson(Map<String, dynamic> json) =
      _$_FlutterBorderRadiusAll.fromJson;

  FlutterRadius get radius;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_FlutterBorderRadiusCircular extends _FlutterBorderRadiusCircular {
  _$_FlutterBorderRadiusCircular(this.radius, {final String? $type})
      : $type = $type ?? 'f:1:BorderRadius.circular',
        super._();

  factory _$_FlutterBorderRadiusCircular.fromJson(Map<String, dynamic> json) =>
      _$$_FlutterBorderRadiusCircularFromJson(json);

  @override
  final ZacValue<double> radius;

  @JsonKey(name: 'converter')
  final String $type;

  @override
  String toString() {
    return 'FlutterBorderRadius.circular(radius: $radius)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FlutterBorderRadiusCircular &&
            const DeepCollectionEquality().equals(other.radius, radius));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(radius));

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FlutterBorderRadiusAll value) all,
    required TResult Function(_FlutterBorderRadiusCircular value) circular,
    required TResult Function(_FlutterBorderRadiusHorizontal value) horizontal,
  }) {
    return circular(this);
  }
}

abstract class _FlutterBorderRadiusCircular extends FlutterBorderRadius {
  factory _FlutterBorderRadiusCircular(final ZacValue<double> radius) =
      _$_FlutterBorderRadiusCircular;
  _FlutterBorderRadiusCircular._() : super._();

  factory _FlutterBorderRadiusCircular.fromJson(Map<String, dynamic> json) =
      _$_FlutterBorderRadiusCircular.fromJson;

  ZacValue<double> get radius;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_FlutterBorderRadiusHorizontal extends _FlutterBorderRadiusHorizontal {
  _$_FlutterBorderRadiusHorizontal({this.left, this.right, final String? $type})
      : $type = $type ?? 'f:1:BorderRadius.horizontal',
        super._();

  factory _$_FlutterBorderRadiusHorizontal.fromJson(
          Map<String, dynamic> json) =>
      _$$_FlutterBorderRadiusHorizontalFromJson(json);

  @override
  final FlutterRadius? left;
  @override
  final FlutterRadius? right;

  @JsonKey(name: 'converter')
  final String $type;

  @override
  String toString() {
    return 'FlutterBorderRadius.horizontal(left: $left, right: $right)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FlutterBorderRadiusHorizontal &&
            const DeepCollectionEquality().equals(other.left, left) &&
            const DeepCollectionEquality().equals(other.right, right));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(left),
      const DeepCollectionEquality().hash(right));

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FlutterBorderRadiusAll value) all,
    required TResult Function(_FlutterBorderRadiusCircular value) circular,
    required TResult Function(_FlutterBorderRadiusHorizontal value) horizontal,
  }) {
    return horizontal(this);
  }
}

abstract class _FlutterBorderRadiusHorizontal extends FlutterBorderRadius {
  factory _FlutterBorderRadiusHorizontal(
      {final FlutterRadius? left,
      final FlutterRadius? right}) = _$_FlutterBorderRadiusHorizontal;
  _FlutterBorderRadiusHorizontal._() : super._();

  factory _FlutterBorderRadiusHorizontal.fromJson(Map<String, dynamic> json) =
      _$_FlutterBorderRadiusHorizontal.fromJson;

  FlutterRadius? get left;
  FlutterRadius? get right;
}

FlutterBorderSide _$FlutterBorderSideFromJson(Map<String, dynamic> json) {
  return _FlutterBorderSide.fromJson(json);
}

/// @nodoc
mixin _$FlutterBorderSide {
  FlutterColor? get color => throw _privateConstructorUsedError;
  ZacValue<double>? get width => throw _privateConstructorUsedError;
  FlutterBorderStyle? get style => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_FlutterBorderSide value) $default,
  ) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_FlutterBorderSide extends _FlutterBorderSide {
  _$_FlutterBorderSide({this.color, this.width, this.style}) : super._();

  factory _$_FlutterBorderSide.fromJson(Map<String, dynamic> json) =>
      _$$_FlutterBorderSideFromJson(json);

  @override
  final FlutterColor? color;
  @override
  final ZacValue<double>? width;
  @override
  final FlutterBorderStyle? style;

  @override
  String toString() {
    return 'FlutterBorderSide(color: $color, width: $width, style: $style)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FlutterBorderSide &&
            const DeepCollectionEquality().equals(other.color, color) &&
            const DeepCollectionEquality().equals(other.width, width) &&
            const DeepCollectionEquality().equals(other.style, style));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(color),
      const DeepCollectionEquality().hash(width),
      const DeepCollectionEquality().hash(style));

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_FlutterBorderSide value) $default,
  ) {
    return $default(this);
  }
}

abstract class _FlutterBorderSide extends FlutterBorderSide {
  factory _FlutterBorderSide(
      {final FlutterColor? color,
      final ZacValue<double>? width,
      final FlutterBorderStyle? style}) = _$_FlutterBorderSide;
  _FlutterBorderSide._() : super._();

  factory _FlutterBorderSide.fromJson(Map<String, dynamic> json) =
      _$_FlutterBorderSide.fromJson;

  @override
  FlutterColor? get color;
  @override
  ZacValue<double>? get width;
  @override
  FlutterBorderStyle? get style;
}

FlutterCircleBorder _$FlutterCircleBorderFromJson(Map<String, dynamic> json) {
  return _FlutterCircleBorder.fromJson(json);
}

/// @nodoc
mixin _$FlutterCircleBorder {
  FlutterBorderSide? get side => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_FlutterCircleBorder value) $default,
  ) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_FlutterCircleBorder extends _FlutterCircleBorder {
  _$_FlutterCircleBorder({this.side}) : super._();

  factory _$_FlutterCircleBorder.fromJson(Map<String, dynamic> json) =>
      _$$_FlutterCircleBorderFromJson(json);

  @override
  final FlutterBorderSide? side;

  @override
  String toString() {
    return 'FlutterCircleBorder(side: $side)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FlutterCircleBorder &&
            const DeepCollectionEquality().equals(other.side, side));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(side));

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_FlutterCircleBorder value) $default,
  ) {
    return $default(this);
  }
}

abstract class _FlutterCircleBorder extends FlutterCircleBorder {
  factory _FlutterCircleBorder({final FlutterBorderSide? side}) =
      _$_FlutterCircleBorder;
  _FlutterCircleBorder._() : super._();

  factory _FlutterCircleBorder.fromJson(Map<String, dynamic> json) =
      _$_FlutterCircleBorder.fromJson;

  @override
  FlutterBorderSide? get side;
}

FlutterRoundedRectangleBorder _$FlutterRoundedRectangleBorderFromJson(
    Map<String, dynamic> json) {
  return _FlutterRoundedRectangleBorder.fromJson(json);
}

/// @nodoc
mixin _$FlutterRoundedRectangleBorder {
  FlutterBorderSide? get side => throw _privateConstructorUsedError;
  FlutterBorderRadiusGeometry? get borderRadius =>
      throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_FlutterRoundedRectangleBorder value) $default,
  ) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_FlutterRoundedRectangleBorder extends _FlutterRoundedRectangleBorder {
  _$_FlutterRoundedRectangleBorder({this.side, this.borderRadius}) : super._();

  factory _$_FlutterRoundedRectangleBorder.fromJson(
          Map<String, dynamic> json) =>
      _$$_FlutterRoundedRectangleBorderFromJson(json);

  @override
  final FlutterBorderSide? side;
  @override
  final FlutterBorderRadiusGeometry? borderRadius;

  @override
  String toString() {
    return 'FlutterRoundedRectangleBorder(side: $side, borderRadius: $borderRadius)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FlutterRoundedRectangleBorder &&
            const DeepCollectionEquality().equals(other.side, side) &&
            const DeepCollectionEquality()
                .equals(other.borderRadius, borderRadius));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(side),
      const DeepCollectionEquality().hash(borderRadius));

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_FlutterRoundedRectangleBorder value) $default,
  ) {
    return $default(this);
  }
}

abstract class _FlutterRoundedRectangleBorder
    extends FlutterRoundedRectangleBorder {
  factory _FlutterRoundedRectangleBorder(
          {final FlutterBorderSide? side,
          final FlutterBorderRadiusGeometry? borderRadius}) =
      _$_FlutterRoundedRectangleBorder;
  _FlutterRoundedRectangleBorder._() : super._();

  factory _FlutterRoundedRectangleBorder.fromJson(Map<String, dynamic> json) =
      _$_FlutterRoundedRectangleBorder.fromJson;

  @override
  FlutterBorderSide? get side;
  @override
  FlutterBorderRadiusGeometry? get borderRadius;
}

FlutterBoxDecoration _$FlutterBoxDecorationFromJson(Map<String, dynamic> json) {
  return _FlutterBoxDecoration.fromJson(json);
}

/// @nodoc
mixin _$FlutterBoxDecoration {
  FlutterColor? get color => throw _privateConstructorUsedError;
  FlutterBoxBorder? get border => throw _privateConstructorUsedError;
  FlutterBorderRadiusGeometry? get borderRadius =>
      throw _privateConstructorUsedError;
  List<FlutterBoxShadow>? get boxShadow => throw _privateConstructorUsedError;
  FlutterBoxShape? get shape => throw _privateConstructorUsedError;
  FlutterBlendMode? get backgroundBlendMode =>
      throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_FlutterBoxDecoration value) $default,
  ) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_FlutterBoxDecoration extends _FlutterBoxDecoration {
  _$_FlutterBoxDecoration(
      {this.color,
      this.border,
      this.borderRadius,
      final List<FlutterBoxShadow>? boxShadow,
      this.shape,
      this.backgroundBlendMode})
      : _boxShadow = boxShadow,
        super._();

  factory _$_FlutterBoxDecoration.fromJson(Map<String, dynamic> json) =>
      _$$_FlutterBoxDecorationFromJson(json);

  @override
  final FlutterColor? color;
  @override
  final FlutterBoxBorder? border;
  @override
  final FlutterBorderRadiusGeometry? borderRadius;
  final List<FlutterBoxShadow>? _boxShadow;
  @override
  List<FlutterBoxShadow>? get boxShadow {
    final value = _boxShadow;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final FlutterBoxShape? shape;
  @override
  final FlutterBlendMode? backgroundBlendMode;

  @override
  String toString() {
    return 'FlutterBoxDecoration(color: $color, border: $border, borderRadius: $borderRadius, boxShadow: $boxShadow, shape: $shape, backgroundBlendMode: $backgroundBlendMode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FlutterBoxDecoration &&
            const DeepCollectionEquality().equals(other.color, color) &&
            const DeepCollectionEquality().equals(other.border, border) &&
            const DeepCollectionEquality()
                .equals(other.borderRadius, borderRadius) &&
            const DeepCollectionEquality()
                .equals(other._boxShadow, _boxShadow) &&
            const DeepCollectionEquality().equals(other.shape, shape) &&
            const DeepCollectionEquality()
                .equals(other.backgroundBlendMode, backgroundBlendMode));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(color),
      const DeepCollectionEquality().hash(border),
      const DeepCollectionEquality().hash(borderRadius),
      const DeepCollectionEquality().hash(_boxShadow),
      const DeepCollectionEquality().hash(shape),
      const DeepCollectionEquality().hash(backgroundBlendMode));

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_FlutterBoxDecoration value) $default,
  ) {
    return $default(this);
  }
}

abstract class _FlutterBoxDecoration extends FlutterBoxDecoration {
  factory _FlutterBoxDecoration(
      {final FlutterColor? color,
      final FlutterBoxBorder? border,
      final FlutterBorderRadiusGeometry? borderRadius,
      final List<FlutterBoxShadow>? boxShadow,
      final FlutterBoxShape? shape,
      final FlutterBlendMode? backgroundBlendMode}) = _$_FlutterBoxDecoration;
  _FlutterBoxDecoration._() : super._();

  factory _FlutterBoxDecoration.fromJson(Map<String, dynamic> json) =
      _$_FlutterBoxDecoration.fromJson;

  @override
  FlutterColor? get color;
  @override
  FlutterBoxBorder? get border;
  @override
  FlutterBorderRadiusGeometry? get borderRadius;
  @override
  List<FlutterBoxShadow>? get boxShadow;
  @override
  FlutterBoxShape? get shape;
  @override
  FlutterBlendMode? get backgroundBlendMode;
}

FlutterShapeDecoration _$FlutterShapeDecorationFromJson(
    Map<String, dynamic> json) {
  return _FlutterShapeDecoration.fromJson(json);
}

/// @nodoc
mixin _$FlutterShapeDecoration {
  FlutterColor? get color =>
      throw _privateConstructorUsedError; // FlutterDecorationImage? image,
// FlutterGradient? gradient,
  List<FlutterBoxShadow>? get shadows => throw _privateConstructorUsedError;
  FlutterShapeBorder get shape => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_FlutterShapeDecoration value) $default,
  ) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_FlutterShapeDecoration extends _FlutterShapeDecoration {
  _$_FlutterShapeDecoration(
      {this.color, final List<FlutterBoxShadow>? shadows, required this.shape})
      : _shadows = shadows,
        super._();

  factory _$_FlutterShapeDecoration.fromJson(Map<String, dynamic> json) =>
      _$$_FlutterShapeDecorationFromJson(json);

  @override
  final FlutterColor? color;
// FlutterDecorationImage? image,
// FlutterGradient? gradient,
  final List<FlutterBoxShadow>? _shadows;
// FlutterDecorationImage? image,
// FlutterGradient? gradient,
  @override
  List<FlutterBoxShadow>? get shadows {
    final value = _shadows;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final FlutterShapeBorder shape;

  @override
  String toString() {
    return 'FlutterShapeDecoration(color: $color, shadows: $shadows, shape: $shape)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FlutterShapeDecoration &&
            const DeepCollectionEquality().equals(other.color, color) &&
            const DeepCollectionEquality().equals(other._shadows, _shadows) &&
            const DeepCollectionEquality().equals(other.shape, shape));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(color),
      const DeepCollectionEquality().hash(_shadows),
      const DeepCollectionEquality().hash(shape));

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_FlutterShapeDecoration value) $default,
  ) {
    return $default(this);
  }
}

abstract class _FlutterShapeDecoration extends FlutterShapeDecoration {
  factory _FlutterShapeDecoration(
      {final FlutterColor? color,
      final List<FlutterBoxShadow>? shadows,
      required final FlutterShapeBorder shape}) = _$_FlutterShapeDecoration;
  _FlutterShapeDecoration._() : super._();

  factory _FlutterShapeDecoration.fromJson(Map<String, dynamic> json) =
      _$_FlutterShapeDecoration.fromJson;

  @override
  FlutterColor? get color;
  @override // FlutterDecorationImage? image,
// FlutterGradient? gradient,
  List<FlutterBoxShadow>? get shadows;
  @override
  FlutterShapeBorder get shape;
}

FlutterEdgeInsets _$FlutterEdgeInsetsFromJson(Map<String, dynamic> json) {
  switch (json['converter']) {
    case 'f:1:EdgeInsets.all':
      return _FlutterEdgeInsetsAll.fromJson(json);
    case 'f:1:EdgeInsets.symmetric':
      return _FlutterEdgeInsetsSymmetric.fromJson(json);
    case 'f:1:EdgeInsets.only':
      return _FlutterEdgeInsetsOnly.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'converter', 'FlutterEdgeInsets',
          'Invalid union type "${json['converter']}"!');
  }
}

/// @nodoc
mixin _$FlutterEdgeInsets {
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FlutterEdgeInsetsAll value) all,
    required TResult Function(_FlutterEdgeInsetsSymmetric value) symmetric,
    required TResult Function(_FlutterEdgeInsetsOnly value) only,
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_FlutterEdgeInsetsAll extends _FlutterEdgeInsetsAll {
  _$_FlutterEdgeInsetsAll(this.value, {final String? $type})
      : $type = $type ?? 'f:1:EdgeInsets.all',
        super._();

  factory _$_FlutterEdgeInsetsAll.fromJson(Map<String, dynamic> json) =>
      _$$_FlutterEdgeInsetsAllFromJson(json);

  @override
  final ZacValue<double> value;

  @JsonKey(name: 'converter')
  final String $type;

  @override
  String toString() {
    return 'FlutterEdgeInsets.all(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FlutterEdgeInsetsAll &&
            const DeepCollectionEquality().equals(other.value, value));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(value));

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FlutterEdgeInsetsAll value) all,
    required TResult Function(_FlutterEdgeInsetsSymmetric value) symmetric,
    required TResult Function(_FlutterEdgeInsetsOnly value) only,
  }) {
    return all(this);
  }
}

abstract class _FlutterEdgeInsetsAll extends FlutterEdgeInsets {
  factory _FlutterEdgeInsetsAll(final ZacValue<double> value) =
      _$_FlutterEdgeInsetsAll;
  _FlutterEdgeInsetsAll._() : super._();

  factory _FlutterEdgeInsetsAll.fromJson(Map<String, dynamic> json) =
      _$_FlutterEdgeInsetsAll.fromJson;

  ZacValue<double> get value;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_FlutterEdgeInsetsSymmetric extends _FlutterEdgeInsetsSymmetric {
  _$_FlutterEdgeInsetsSymmetric(
      {this.vertical, this.horizontal, final String? $type})
      : $type = $type ?? 'f:1:EdgeInsets.symmetric',
        super._();

  factory _$_FlutterEdgeInsetsSymmetric.fromJson(Map<String, dynamic> json) =>
      _$$_FlutterEdgeInsetsSymmetricFromJson(json);

  @override
  final ZacValue<double>? vertical;
  @override
  final ZacValue<double>? horizontal;

  @JsonKey(name: 'converter')
  final String $type;

  @override
  String toString() {
    return 'FlutterEdgeInsets.symmetric(vertical: $vertical, horizontal: $horizontal)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FlutterEdgeInsetsSymmetric &&
            const DeepCollectionEquality().equals(other.vertical, vertical) &&
            const DeepCollectionEquality()
                .equals(other.horizontal, horizontal));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(vertical),
      const DeepCollectionEquality().hash(horizontal));

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FlutterEdgeInsetsAll value) all,
    required TResult Function(_FlutterEdgeInsetsSymmetric value) symmetric,
    required TResult Function(_FlutterEdgeInsetsOnly value) only,
  }) {
    return symmetric(this);
  }
}

abstract class _FlutterEdgeInsetsSymmetric extends FlutterEdgeInsets {
  factory _FlutterEdgeInsetsSymmetric(
      {final ZacValue<double>? vertical,
      final ZacValue<double>? horizontal}) = _$_FlutterEdgeInsetsSymmetric;
  _FlutterEdgeInsetsSymmetric._() : super._();

  factory _FlutterEdgeInsetsSymmetric.fromJson(Map<String, dynamic> json) =
      _$_FlutterEdgeInsetsSymmetric.fromJson;

  ZacValue<double>? get vertical;
  ZacValue<double>? get horizontal;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_FlutterEdgeInsetsOnly extends _FlutterEdgeInsetsOnly {
  _$_FlutterEdgeInsetsOnly(
      {this.left, this.top, this.right, this.bottom, final String? $type})
      : $type = $type ?? 'f:1:EdgeInsets.only',
        super._();

  factory _$_FlutterEdgeInsetsOnly.fromJson(Map<String, dynamic> json) =>
      _$$_FlutterEdgeInsetsOnlyFromJson(json);

  @override
  final ZacValue<double>? left;
  @override
  final ZacValue<double>? top;
  @override
  final ZacValue<double>? right;
  @override
  final ZacValue<double>? bottom;

  @JsonKey(name: 'converter')
  final String $type;

  @override
  String toString() {
    return 'FlutterEdgeInsets.only(left: $left, top: $top, right: $right, bottom: $bottom)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FlutterEdgeInsetsOnly &&
            const DeepCollectionEquality().equals(other.left, left) &&
            const DeepCollectionEquality().equals(other.top, top) &&
            const DeepCollectionEquality().equals(other.right, right) &&
            const DeepCollectionEquality().equals(other.bottom, bottom));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(left),
      const DeepCollectionEquality().hash(top),
      const DeepCollectionEquality().hash(right),
      const DeepCollectionEquality().hash(bottom));

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FlutterEdgeInsetsAll value) all,
    required TResult Function(_FlutterEdgeInsetsSymmetric value) symmetric,
    required TResult Function(_FlutterEdgeInsetsOnly value) only,
  }) {
    return only(this);
  }
}

abstract class _FlutterEdgeInsetsOnly extends FlutterEdgeInsets {
  factory _FlutterEdgeInsetsOnly(
      {final ZacValue<double>? left,
      final ZacValue<double>? top,
      final ZacValue<double>? right,
      final ZacValue<double>? bottom}) = _$_FlutterEdgeInsetsOnly;
  _FlutterEdgeInsetsOnly._() : super._();

  factory _FlutterEdgeInsetsOnly.fromJson(Map<String, dynamic> json) =
      _$_FlutterEdgeInsetsOnly.fromJson;

  ZacValue<double>? get left;
  ZacValue<double>? get top;
  ZacValue<double>? get right;
  ZacValue<double>? get bottom;
}

FlutterEdgeInsetsDirectional _$FlutterEdgeInsetsDirectionalFromJson(
    Map<String, dynamic> json) {
  switch (json['converter']) {
    case 'f:1:EdgeInsetsDirectional.all':
      return _FlutterEdgeInsetsDirectionalAll.fromJson(json);
    case 'f:1:EdgeInsetsDirectional.only':
      return _FlutterEdgeInsetsDirectionalOnly.fromJson(json);

    default:
      throw CheckedFromJsonException(
          json,
          'converter',
          'FlutterEdgeInsetsDirectional',
          'Invalid union type "${json['converter']}"!');
  }
}

/// @nodoc
mixin _$FlutterEdgeInsetsDirectional {
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FlutterEdgeInsetsDirectionalAll value) all,
    required TResult Function(_FlutterEdgeInsetsDirectionalOnly value) only,
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_FlutterEdgeInsetsDirectionalAll
    extends _FlutterEdgeInsetsDirectionalAll {
  _$_FlutterEdgeInsetsDirectionalAll(this.value, {final String? $type})
      : $type = $type ?? 'f:1:EdgeInsetsDirectional.all',
        super._();

  factory _$_FlutterEdgeInsetsDirectionalAll.fromJson(
          Map<String, dynamic> json) =>
      _$$_FlutterEdgeInsetsDirectionalAllFromJson(json);

  @override
  final ZacValue<double> value;

  @JsonKey(name: 'converter')
  final String $type;

  @override
  String toString() {
    return 'FlutterEdgeInsetsDirectional.all(value: $value)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FlutterEdgeInsetsDirectionalAll &&
            const DeepCollectionEquality().equals(other.value, value));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(value));

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FlutterEdgeInsetsDirectionalAll value) all,
    required TResult Function(_FlutterEdgeInsetsDirectionalOnly value) only,
  }) {
    return all(this);
  }
}

abstract class _FlutterEdgeInsetsDirectionalAll
    extends FlutterEdgeInsetsDirectional {
  factory _FlutterEdgeInsetsDirectionalAll(final ZacValue<double> value) =
      _$_FlutterEdgeInsetsDirectionalAll;
  _FlutterEdgeInsetsDirectionalAll._() : super._();

  factory _FlutterEdgeInsetsDirectionalAll.fromJson(Map<String, dynamic> json) =
      _$_FlutterEdgeInsetsDirectionalAll.fromJson;

  ZacValue<double> get value;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_FlutterEdgeInsetsDirectionalOnly
    extends _FlutterEdgeInsetsDirectionalOnly {
  _$_FlutterEdgeInsetsDirectionalOnly(
      {this.start, this.top, this.end, this.bottom, final String? $type})
      : $type = $type ?? 'f:1:EdgeInsetsDirectional.only',
        super._();

  factory _$_FlutterEdgeInsetsDirectionalOnly.fromJson(
          Map<String, dynamic> json) =>
      _$$_FlutterEdgeInsetsDirectionalOnlyFromJson(json);

  @override
  final ZacValue<double>? start;
  @override
  final ZacValue<double>? top;
  @override
  final ZacValue<double>? end;
  @override
  final ZacValue<double>? bottom;

  @JsonKey(name: 'converter')
  final String $type;

  @override
  String toString() {
    return 'FlutterEdgeInsetsDirectional.only(start: $start, top: $top, end: $end, bottom: $bottom)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FlutterEdgeInsetsDirectionalOnly &&
            const DeepCollectionEquality().equals(other.start, start) &&
            const DeepCollectionEquality().equals(other.top, top) &&
            const DeepCollectionEquality().equals(other.end, end) &&
            const DeepCollectionEquality().equals(other.bottom, bottom));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(start),
      const DeepCollectionEquality().hash(top),
      const DeepCollectionEquality().hash(end),
      const DeepCollectionEquality().hash(bottom));

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FlutterEdgeInsetsDirectionalAll value) all,
    required TResult Function(_FlutterEdgeInsetsDirectionalOnly value) only,
  }) {
    return only(this);
  }
}

abstract class _FlutterEdgeInsetsDirectionalOnly
    extends FlutterEdgeInsetsDirectional {
  factory _FlutterEdgeInsetsDirectionalOnly(
      {final ZacValue<double>? start,
      final ZacValue<double>? top,
      final ZacValue<double>? end,
      final ZacValue<double>? bottom}) = _$_FlutterEdgeInsetsDirectionalOnly;
  _FlutterEdgeInsetsDirectionalOnly._() : super._();

  factory _FlutterEdgeInsetsDirectionalOnly.fromJson(
      Map<String, dynamic> json) = _$_FlutterEdgeInsetsDirectionalOnly.fromJson;

  ZacValue<double>? get start;
  ZacValue<double>? get top;
  ZacValue<double>? get end;
  ZacValue<double>? get bottom;
}
