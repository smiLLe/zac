// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'painting.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FlutterBoxShape _$FlutterBoxShapeFromJson(Map<String, dynamic> json) {
  switch (json['builder']) {
    case 'f:1:BoxShape.circle':
      return _FlutterBoxShapeCircle.fromJson(json);
    case 'f:1:BoxShape.rectangle':
      return _FlutterBoxShapeRectangle.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'builder', 'FlutterBoxShape',
          'Invalid union type "${json['builder']}"!');
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

  @JsonKey(name: 'builder')
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

  @JsonKey(name: 'builder')
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
  switch (json['builder']) {
    case 'f:1:Axis.horizontal':
      return _FlutterAxisHori.fromJson(json);
    case 'f:1:Axis.vertical':
      return _FlutterAxisVertical.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'builder', 'FlutterAxis',
          'Invalid union type "${json['builder']}"!');
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

  @JsonKey(name: 'builder')
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

  @JsonKey(name: 'builder')
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
  switch (json['builder']) {
    case 'f:1:VerticalDirection.up':
      return _FlutterVerticalDirectionUp.fromJson(json);
    case 'f:1:VerticalDirection.down':
      return _FlutterVerticalDirectionDown.fromJson(json);

    default:
      throw CheckedFromJsonException(
          json,
          'builder',
          'FlutterVerticalDirection',
          'Invalid union type "${json['builder']}"!');
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

  @JsonKey(name: 'builder')
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

  @JsonKey(name: 'builder')
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
  switch (json['builder']) {
    case 'f:1:TextOverflow.clip':
      return _FlutterTextOverflowClip.fromJson(json);
    case 'f:1:TextOverflow.ellipsis':
      return _FlutterTextOverflowEllipsis.fromJson(json);
    case 'f:1:TextOverflow.fade':
      return _FlutterTextOverflowFade.fromJson(json);
    case 'f:1:TextOverflow.visible':
      return _FlutterTextOverflowVisible.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'builder', 'FlutterTextOverflow',
          'Invalid union type "${json['builder']}"!');
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

  @JsonKey(name: 'builder')
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

  @JsonKey(name: 'builder')
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

  @JsonKey(name: 'builder')
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

  @JsonKey(name: 'builder')
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
  switch (json['builder']) {
    case 'f:1:StrutStyle':
      return _FlutterStrutStyle.fromJson(json);
    case 'f:1:StrutStyle.fromTextStyle':
      return _FlutterStrutStyleFromTextStyle.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'builder', 'FlutterStrutStyle',
          'Invalid union type "${json['builder']}"!');
  }
}

/// @nodoc
mixin _$FlutterStrutStyle {
  ZacBuilder<String?>? get fontFamily => throw _privateConstructorUsedError;
  List<String>? get fontFamilyFallback => throw _privateConstructorUsedError;
  ZacBuilder<double?>? get fontSize => throw _privateConstructorUsedError;
  ZacBuilder<double?>? get height => throw _privateConstructorUsedError;
  FlutterTextLeadingDistribution? get leadingDistribution =>
      throw _privateConstructorUsedError;
  ZacBuilder<double?>? get leading => throw _privateConstructorUsedError;
  FlutterFontWeight? get fontWeight => throw _privateConstructorUsedError;
  FlutterFontStyle? get fontStyle => throw _privateConstructorUsedError;
  ZacBuilder<bool?>? get forceStrutHeight => throw _privateConstructorUsedError;
  ZacBuilder<String?>? get debugLabel => throw _privateConstructorUsedError;
  ZacBuilder<String?>? get package => throw _privateConstructorUsedError;

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
  final ZacBuilder<String?>? fontFamily;
  final List<String>? _fontFamilyFallback;
  @override
  List<String>? get fontFamilyFallback {
    final value = _fontFamilyFallback;
    if (value == null) return null;
    if (_fontFamilyFallback is EqualUnmodifiableListView)
      return _fontFamilyFallback;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final ZacBuilder<double?>? fontSize;
  @override
  final ZacBuilder<double?>? height;
  @override
  final FlutterTextLeadingDistribution? leadingDistribution;
  @override
  final ZacBuilder<double?>? leading;
  @override
  final FlutterFontWeight? fontWeight;
  @override
  final FlutterFontStyle? fontStyle;
  @override
  final ZacBuilder<bool?>? forceStrutHeight;
  @override
  final ZacBuilder<String?>? debugLabel;
  @override
  final ZacBuilder<String?>? package;

  @JsonKey(name: 'builder')
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
            (identical(other.fontFamily, fontFamily) ||
                other.fontFamily == fontFamily) &&
            const DeepCollectionEquality()
                .equals(other._fontFamilyFallback, _fontFamilyFallback) &&
            (identical(other.fontSize, fontSize) ||
                other.fontSize == fontSize) &&
            (identical(other.height, height) || other.height == height) &&
            (identical(other.leadingDistribution, leadingDistribution) ||
                other.leadingDistribution == leadingDistribution) &&
            (identical(other.leading, leading) || other.leading == leading) &&
            (identical(other.fontWeight, fontWeight) ||
                other.fontWeight == fontWeight) &&
            (identical(other.fontStyle, fontStyle) ||
                other.fontStyle == fontStyle) &&
            (identical(other.forceStrutHeight, forceStrutHeight) ||
                other.forceStrutHeight == forceStrutHeight) &&
            (identical(other.debugLabel, debugLabel) ||
                other.debugLabel == debugLabel) &&
            (identical(other.package, package) || other.package == package));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      fontFamily,
      const DeepCollectionEquality().hash(_fontFamilyFallback),
      fontSize,
      height,
      leadingDistribution,
      leading,
      fontWeight,
      fontStyle,
      forceStrutHeight,
      debugLabel,
      package);

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
      {final ZacBuilder<String?>? fontFamily,
      final List<String>? fontFamilyFallback,
      final ZacBuilder<double?>? fontSize,
      final ZacBuilder<double?>? height,
      final FlutterTextLeadingDistribution? leadingDistribution,
      final ZacBuilder<double?>? leading,
      final FlutterFontWeight? fontWeight,
      final FlutterFontStyle? fontStyle,
      final ZacBuilder<bool?>? forceStrutHeight,
      final ZacBuilder<String?>? debugLabel,
      final ZacBuilder<String?>? package}) = _$_FlutterStrutStyle;
  _FlutterStrutStyle._() : super._();

  factory _FlutterStrutStyle.fromJson(Map<String, dynamic> json) =
      _$_FlutterStrutStyle.fromJson;

  @override
  ZacBuilder<String?>? get fontFamily;
  @override
  List<String>? get fontFamilyFallback;
  @override
  ZacBuilder<double?>? get fontSize;
  @override
  ZacBuilder<double?>? get height;
  @override
  FlutterTextLeadingDistribution? get leadingDistribution;
  @override
  ZacBuilder<double?>? get leading;
  @override
  FlutterFontWeight? get fontWeight;
  @override
  FlutterFontStyle? get fontStyle;
  @override
  ZacBuilder<bool?>? get forceStrutHeight;
  @override
  ZacBuilder<String?>? get debugLabel;
  @override
  ZacBuilder<String?>? get package;
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
  final ZacBuilder<String?>? fontFamily;
  final List<String>? _fontFamilyFallback;
  @override
  List<String>? get fontFamilyFallback {
    final value = _fontFamilyFallback;
    if (value == null) return null;
    if (_fontFamilyFallback is EqualUnmodifiableListView)
      return _fontFamilyFallback;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final ZacBuilder<double?>? fontSize;
  @override
  final ZacBuilder<double?>? height;
  @override
  final FlutterTextLeadingDistribution? leadingDistribution;
  @override
  final ZacBuilder<double?>? leading;
  @override
  final FlutterFontWeight? fontWeight;
  @override
  final FlutterFontStyle? fontStyle;
  @override
  final ZacBuilder<bool?>? forceStrutHeight;
  @override
  final ZacBuilder<String?>? debugLabel;
  @override
  final ZacBuilder<String?>? package;

  @JsonKey(name: 'builder')
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
            (identical(other.textStyle, textStyle) ||
                other.textStyle == textStyle) &&
            (identical(other.fontFamily, fontFamily) ||
                other.fontFamily == fontFamily) &&
            const DeepCollectionEquality()
                .equals(other._fontFamilyFallback, _fontFamilyFallback) &&
            (identical(other.fontSize, fontSize) ||
                other.fontSize == fontSize) &&
            (identical(other.height, height) || other.height == height) &&
            (identical(other.leadingDistribution, leadingDistribution) ||
                other.leadingDistribution == leadingDistribution) &&
            (identical(other.leading, leading) || other.leading == leading) &&
            (identical(other.fontWeight, fontWeight) ||
                other.fontWeight == fontWeight) &&
            (identical(other.fontStyle, fontStyle) ||
                other.fontStyle == fontStyle) &&
            (identical(other.forceStrutHeight, forceStrutHeight) ||
                other.forceStrutHeight == forceStrutHeight) &&
            (identical(other.debugLabel, debugLabel) ||
                other.debugLabel == debugLabel) &&
            (identical(other.package, package) || other.package == package));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      textStyle,
      fontFamily,
      const DeepCollectionEquality().hash(_fontFamilyFallback),
      fontSize,
      height,
      leadingDistribution,
      leading,
      fontWeight,
      fontStyle,
      forceStrutHeight,
      debugLabel,
      package);

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
      {final ZacBuilder<String?>? fontFamily,
      final List<String>? fontFamilyFallback,
      final ZacBuilder<double?>? fontSize,
      final ZacBuilder<double?>? height,
      final FlutterTextLeadingDistribution? leadingDistribution,
      final ZacBuilder<double?>? leading,
      final FlutterFontWeight? fontWeight,
      final FlutterFontStyle? fontStyle,
      final ZacBuilder<bool?>? forceStrutHeight,
      final ZacBuilder<String?>? debugLabel,
      final ZacBuilder<String?>? package}) = _$_FlutterStrutStyleFromTextStyle;
  _FlutterStrutStyleFromTextStyle._() : super._();

  factory _FlutterStrutStyleFromTextStyle.fromJson(Map<String, dynamic> json) =
      _$_FlutterStrutStyleFromTextStyle.fromJson;

  FlutterTextStyle get textStyle;
  @override
  ZacBuilder<String?>? get fontFamily;
  @override
  List<String>? get fontFamilyFallback;
  @override
  ZacBuilder<double?>? get fontSize;
  @override
  ZacBuilder<double?>? get height;
  @override
  FlutterTextLeadingDistribution? get leadingDistribution;
  @override
  ZacBuilder<double?>? get leading;
  @override
  FlutterFontWeight? get fontWeight;
  @override
  FlutterFontStyle? get fontStyle;
  @override
  ZacBuilder<bool?>? get forceStrutHeight;
  @override
  ZacBuilder<String?>? get debugLabel;
  @override
  ZacBuilder<String?>? get package;
}

FlutterTextWidthBasis _$FlutterTextWidthBasisFromJson(
    Map<String, dynamic> json) {
  switch (json['builder']) {
    case 'f:1:TextWidthBasis.longestLine':
      return _FlutterTextWidthBasisLongestLine.fromJson(json);
    case 'f:1:TextWidthBasis.parent':
      return _FlutterTextWidthBasisParent.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'builder', 'FlutterTextWidthBasis',
          'Invalid union type "${json['builder']}"!');
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

  @JsonKey(name: 'builder')
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

  @JsonKey(name: 'builder')
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
  switch (json['builder']) {
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
      throw CheckedFromJsonException(json, 'builder', 'FlutterBoxFit',
          'Invalid union type "${json['builder']}"!');
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

  @JsonKey(name: 'builder')
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

  @JsonKey(name: 'builder')
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

  @JsonKey(name: 'builder')
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

  @JsonKey(name: 'builder')
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

  @JsonKey(name: 'builder')
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

  @JsonKey(name: 'builder')
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

  @JsonKey(name: 'builder')
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
  switch (json['builder']) {
    case 'f:1:ImageRepeat.noRepeat':
      return _FlutterImageRepeatNoRepeat.fromJson(json);
    case 'f:1:ImageRepeat.repeat':
      return _FlutterImageRepeatRepeat.fromJson(json);
    case 'f:1:ImageRepeat.repeatX':
      return _FlutterImageRepeatRepeatX.fromJson(json);
    case 'f:1:ImageRepeat.repeatY':
      return _FlutterImageRepeatRepeatY.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'builder', 'FlutterImageRepeat',
          'Invalid union type "${json['builder']}"!');
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

  @JsonKey(name: 'builder')
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

  @JsonKey(name: 'builder')
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

  @JsonKey(name: 'builder')
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

  @JsonKey(name: 'builder')
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
  ZacBuilder<bool?>? get inherit => throw _privateConstructorUsedError;
  ZacBuilder<Color?>? get color => throw _privateConstructorUsedError;
  ZacBuilder<Color?>? get backgroundColor => throw _privateConstructorUsedError;
  ZacBuilder<double?>? get fontSize => throw _privateConstructorUsedError;
  FlutterFontWeight? get fontWeight => throw _privateConstructorUsedError;
  FlutterFontStyle? get fontStyle => throw _privateConstructorUsedError;
  ZacBuilder<double?>? get letterSpacing => throw _privateConstructorUsedError;
  ZacBuilder<double?>? get wordSpacing => throw _privateConstructorUsedError;
  ZacBuilder<TextBaseline?>? get textBaseline =>
      throw _privateConstructorUsedError;
  ZacBuilder<double?>? get height => throw _privateConstructorUsedError;
  FlutterTextLeadingDistribution? get leadingDistribution =>
      throw _privateConstructorUsedError;
  ZacBuilder<Locale?>? get locale =>
      throw _privateConstructorUsedError; // Paint? foreground,
// Paint? background,
  ZacListBuilder<Shadow, List<Shadow>?>? get shadows =>
      throw _privateConstructorUsedError;
  List<FlutterFontFeature>? get fontFeatures =>
      throw _privateConstructorUsedError;
  FlutterTextDecoration? get decoration => throw _privateConstructorUsedError;
  ZacBuilder<Color?>? get decorationColor => throw _privateConstructorUsedError;
  FlutterTextDecorationStyle? get decorationStyle =>
      throw _privateConstructorUsedError;
  ZacBuilder<double?>? get decorationThickness =>
      throw _privateConstructorUsedError;
  ZacBuilder<String?>? get debugLabel => throw _privateConstructorUsedError;
  ZacBuilder<String?>? get fontFamily => throw _privateConstructorUsedError;
  List<String>? get fontFamilyFallback => throw _privateConstructorUsedError;
  ZacBuilder<String?>? get package => throw _privateConstructorUsedError;
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
      this.shadows,
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
      : _fontFeatures = fontFeatures,
        _fontFamilyFallback = fontFamilyFallback,
        super._();

  factory _$_FlutterTextStyle.fromJson(Map<String, dynamic> json) =>
      _$$_FlutterTextStyleFromJson(json);

  @override
  final ZacBuilder<bool?>? inherit;
  @override
  final ZacBuilder<Color?>? color;
  @override
  final ZacBuilder<Color?>? backgroundColor;
  @override
  final ZacBuilder<double?>? fontSize;
  @override
  final FlutterFontWeight? fontWeight;
  @override
  final FlutterFontStyle? fontStyle;
  @override
  final ZacBuilder<double?>? letterSpacing;
  @override
  final ZacBuilder<double?>? wordSpacing;
  @override
  final ZacBuilder<TextBaseline?>? textBaseline;
  @override
  final ZacBuilder<double?>? height;
  @override
  final FlutterTextLeadingDistribution? leadingDistribution;
  @override
  final ZacBuilder<Locale?>? locale;
// Paint? foreground,
// Paint? background,
  @override
  final ZacListBuilder<Shadow, List<Shadow>?>? shadows;
  final List<FlutterFontFeature>? _fontFeatures;
  @override
  List<FlutterFontFeature>? get fontFeatures {
    final value = _fontFeatures;
    if (value == null) return null;
    if (_fontFeatures is EqualUnmodifiableListView) return _fontFeatures;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final FlutterTextDecoration? decoration;
  @override
  final ZacBuilder<Color?>? decorationColor;
  @override
  final FlutterTextDecorationStyle? decorationStyle;
  @override
  final ZacBuilder<double?>? decorationThickness;
  @override
  final ZacBuilder<String?>? debugLabel;
  @override
  final ZacBuilder<String?>? fontFamily;
  final List<String>? _fontFamilyFallback;
  @override
  List<String>? get fontFamilyFallback {
    final value = _fontFamilyFallback;
    if (value == null) return null;
    if (_fontFamilyFallback is EqualUnmodifiableListView)
      return _fontFamilyFallback;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final ZacBuilder<String?>? package;
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
            (identical(other.inherit, inherit) || other.inherit == inherit) &&
            (identical(other.color, color) || other.color == color) &&
            (identical(other.backgroundColor, backgroundColor) ||
                other.backgroundColor == backgroundColor) &&
            (identical(other.fontSize, fontSize) ||
                other.fontSize == fontSize) &&
            (identical(other.fontWeight, fontWeight) ||
                other.fontWeight == fontWeight) &&
            (identical(other.fontStyle, fontStyle) ||
                other.fontStyle == fontStyle) &&
            (identical(other.letterSpacing, letterSpacing) ||
                other.letterSpacing == letterSpacing) &&
            (identical(other.wordSpacing, wordSpacing) ||
                other.wordSpacing == wordSpacing) &&
            (identical(other.textBaseline, textBaseline) ||
                other.textBaseline == textBaseline) &&
            (identical(other.height, height) || other.height == height) &&
            (identical(other.leadingDistribution, leadingDistribution) ||
                other.leadingDistribution == leadingDistribution) &&
            (identical(other.locale, locale) || other.locale == locale) &&
            (identical(other.shadows, shadows) || other.shadows == shadows) &&
            const DeepCollectionEquality()
                .equals(other._fontFeatures, _fontFeatures) &&
            (identical(other.decoration, decoration) ||
                other.decoration == decoration) &&
            (identical(other.decorationColor, decorationColor) ||
                other.decorationColor == decorationColor) &&
            (identical(other.decorationStyle, decorationStyle) ||
                other.decorationStyle == decorationStyle) &&
            (identical(other.decorationThickness, decorationThickness) ||
                other.decorationThickness == decorationThickness) &&
            (identical(other.debugLabel, debugLabel) ||
                other.debugLabel == debugLabel) &&
            (identical(other.fontFamily, fontFamily) ||
                other.fontFamily == fontFamily) &&
            const DeepCollectionEquality()
                .equals(other._fontFamilyFallback, _fontFamilyFallback) &&
            (identical(other.package, package) || other.package == package) &&
            (identical(other.overflow, overflow) ||
                other.overflow == overflow));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        inherit,
        color,
        backgroundColor,
        fontSize,
        fontWeight,
        fontStyle,
        letterSpacing,
        wordSpacing,
        textBaseline,
        height,
        leadingDistribution,
        locale,
        shadows,
        const DeepCollectionEquality().hash(_fontFeatures),
        decoration,
        decorationColor,
        decorationStyle,
        decorationThickness,
        debugLabel,
        fontFamily,
        const DeepCollectionEquality().hash(_fontFamilyFallback),
        package,
        overflow
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
      {final ZacBuilder<bool?>? inherit,
      final ZacBuilder<Color?>? color,
      final ZacBuilder<Color?>? backgroundColor,
      final ZacBuilder<double?>? fontSize,
      final FlutterFontWeight? fontWeight,
      final FlutterFontStyle? fontStyle,
      final ZacBuilder<double?>? letterSpacing,
      final ZacBuilder<double?>? wordSpacing,
      final ZacBuilder<TextBaseline?>? textBaseline,
      final ZacBuilder<double?>? height,
      final FlutterTextLeadingDistribution? leadingDistribution,
      final ZacBuilder<Locale?>? locale,
      final ZacListBuilder<Shadow, List<Shadow>?>? shadows,
      final List<FlutterFontFeature>? fontFeatures,
      final FlutterTextDecoration? decoration,
      final ZacBuilder<Color?>? decorationColor,
      final FlutterTextDecorationStyle? decorationStyle,
      final ZacBuilder<double?>? decorationThickness,
      final ZacBuilder<String?>? debugLabel,
      final ZacBuilder<String?>? fontFamily,
      final List<String>? fontFamilyFallback,
      final ZacBuilder<String?>? package,
      final FlutterTextOverflow? overflow}) = _$_FlutterTextStyle;
  _FlutterTextStyle._() : super._();

  factory _FlutterTextStyle.fromJson(Map<String, dynamic> json) =
      _$_FlutterTextStyle.fromJson;

  @override
  ZacBuilder<bool?>? get inherit;
  @override
  ZacBuilder<Color?>? get color;
  @override
  ZacBuilder<Color?>? get backgroundColor;
  @override
  ZacBuilder<double?>? get fontSize;
  @override
  FlutterFontWeight? get fontWeight;
  @override
  FlutterFontStyle? get fontStyle;
  @override
  ZacBuilder<double?>? get letterSpacing;
  @override
  ZacBuilder<double?>? get wordSpacing;
  @override
  ZacBuilder<TextBaseline?>? get textBaseline;
  @override
  ZacBuilder<double?>? get height;
  @override
  FlutterTextLeadingDistribution? get leadingDistribution;
  @override
  ZacBuilder<Locale?>? get locale;
  @override // Paint? foreground,
// Paint? background,
  ZacListBuilder<Shadow, List<Shadow>?>? get shadows;
  @override
  List<FlutterFontFeature>? get fontFeatures;
  @override
  FlutterTextDecoration? get decoration;
  @override
  ZacBuilder<Color?>? get decorationColor;
  @override
  FlutterTextDecorationStyle? get decorationStyle;
  @override
  ZacBuilder<double?>? get decorationThickness;
  @override
  ZacBuilder<String?>? get debugLabel;
  @override
  ZacBuilder<String?>? get fontFamily;
  @override
  List<String>? get fontFamilyFallback;
  @override
  ZacBuilder<String?>? get package;
  @override
  FlutterTextOverflow? get overflow;
}

FlutterTextAlignVertical _$FlutterTextAlignVerticalFromJson(
    Map<String, dynamic> json) {
  switch (json['builder']) {
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
          'builder',
          'FlutterTextAlignVertical',
          'Invalid union type "${json['builder']}"!');
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
  final ZacBuilder<double> y;

  @JsonKey(name: 'builder')
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
            (identical(other.y, y) || other.y == y));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, y);

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
  factory _FlutterTextAlignVertical({required final ZacBuilder<double> y}) =
      _$_FlutterTextAlignVertical;
  _FlutterTextAlignVertical._() : super._();

  factory _FlutterTextAlignVertical.fromJson(Map<String, dynamic> json) =
      _$_FlutterTextAlignVertical.fromJson;

  ZacBuilder<double> get y;
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

  @JsonKey(name: 'builder')
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

  @JsonKey(name: 'builder')
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

  @JsonKey(name: 'builder')
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
  ZacBuilder<Color?>? get color => throw _privateConstructorUsedError;
  FlutterOffset? get offset => throw _privateConstructorUsedError;
  ZacBuilder<double?>? get blurRadius => throw _privateConstructorUsedError;
  ZacBuilder<double?>? get spreadRadius => throw _privateConstructorUsedError;
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
  final ZacBuilder<Color?>? color;
  @override
  final FlutterOffset? offset;
  @override
  final ZacBuilder<double?>? blurRadius;
  @override
  final ZacBuilder<double?>? spreadRadius;
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
            (identical(other.color, color) || other.color == color) &&
            (identical(other.offset, offset) || other.offset == offset) &&
            (identical(other.blurRadius, blurRadius) ||
                other.blurRadius == blurRadius) &&
            (identical(other.spreadRadius, spreadRadius) ||
                other.spreadRadius == spreadRadius) &&
            (identical(other.blurStyle, blurStyle) ||
                other.blurStyle == blurStyle));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, color, offset, blurRadius, spreadRadius, blurStyle);

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
      {final ZacBuilder<Color?>? color,
      final FlutterOffset? offset,
      final ZacBuilder<double?>? blurRadius,
      final ZacBuilder<double?>? spreadRadius,
      final FlutterBlurStyle? blurStyle}) = _$_FlutterBoxShadow;
  _FlutterBoxShadow._() : super._();

  factory _FlutterBoxShadow.fromJson(Map<String, dynamic> json) =
      _$_FlutterBoxShadow.fromJson;

  @override
  ZacBuilder<Color?>? get color;
  @override
  FlutterOffset? get offset;
  @override
  ZacBuilder<double?>? get blurRadius;
  @override
  ZacBuilder<double?>? get spreadRadius;
  @override
  FlutterBlurStyle? get blurStyle;
}

FlutterAlignment _$FlutterAlignmentFromJson(Map<String, dynamic> json) {
  switch (json['builder']) {
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
      throw CheckedFromJsonException(json, 'builder', 'FlutterAlignment',
          'Invalid union type "${json['builder']}"!');
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
  final ZacBuilder<double> x;
  @override
  final ZacBuilder<double> y;

  @JsonKey(name: 'builder')
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
            (identical(other.x, x) || other.x == x) &&
            (identical(other.y, y) || other.y == y));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, x, y);

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
          final ZacBuilder<double> x, final ZacBuilder<double> y) =
      _$_FlutterAlignment;
  _FlutterAlignment._() : super._();

  factory _FlutterAlignment.fromJson(Map<String, dynamic> json) =
      _$_FlutterAlignment.fromJson;

  ZacBuilder<double> get x;
  ZacBuilder<double> get y;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_FlutterAlignmentbottomCenter extends _FlutterAlignmentbottomCenter {
  _$_FlutterAlignmentbottomCenter({final String? $type})
      : $type = $type ?? 'f:1:Alignment.bottomCenter',
        super._();

  factory _$_FlutterAlignmentbottomCenter.fromJson(Map<String, dynamic> json) =>
      _$$_FlutterAlignmentbottomCenterFromJson(json);

  @JsonKey(name: 'builder')
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

  @JsonKey(name: 'builder')
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

  @JsonKey(name: 'builder')
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

  @JsonKey(name: 'builder')
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

  @JsonKey(name: 'builder')
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

  @JsonKey(name: 'builder')
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

  @JsonKey(name: 'builder')
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

  @JsonKey(name: 'builder')
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

  @JsonKey(name: 'builder')
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
  switch (json['builder']) {
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
          'builder',
          'FlutterAlignmentDirectional',
          'Invalid union type "${json['builder']}"!');
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
  final ZacBuilder<double> start;
  @override
  final ZacBuilder<double> y;

  @JsonKey(name: 'builder')
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
            (identical(other.start, start) || other.start == start) &&
            (identical(other.y, y) || other.y == y));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, start, y);

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
          final ZacBuilder<double> start, final ZacBuilder<double> y) =
      _$_FlutterAlignmentDirectional;
  _FlutterAlignmentDirectional._() : super._();

  factory _FlutterAlignmentDirectional.fromJson(Map<String, dynamic> json) =
      _$_FlutterAlignmentDirectional.fromJson;

  ZacBuilder<double> get start;
  ZacBuilder<double> get y;
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

  @JsonKey(name: 'builder')
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

  @JsonKey(name: 'builder')
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

  @JsonKey(name: 'builder')
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

  @JsonKey(name: 'builder')
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

  @JsonKey(name: 'builder')
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

  @JsonKey(name: 'builder')
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

  @JsonKey(name: 'builder')
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

  @JsonKey(name: 'builder')
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

  @JsonKey(name: 'builder')
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
  ZacBuilder<double> get dx => throw _privateConstructorUsedError;
  ZacBuilder<double> get dy => throw _privateConstructorUsedError;

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
  final ZacBuilder<double> dx;
  @override
  final ZacBuilder<double> dy;

  @override
  String toString() {
    return 'FlutterFractionalOffset(dx: $dx, dy: $dy)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FlutterFractionalOffset &&
            (identical(other.dx, dx) || other.dx == dx) &&
            (identical(other.dy, dy) || other.dy == dy));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, dx, dy);

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
          final ZacBuilder<double> dx, final ZacBuilder<double> dy) =
      _$_FlutterFractionalOffset;
  _FlutterFractionalOffset._() : super._();

  factory _FlutterFractionalOffset.fromJson(Map<String, dynamic> json) =
      _$_FlutterFractionalOffset.fromJson;

  @override
  ZacBuilder<double> get dx;
  @override
  ZacBuilder<double> get dy;
}

FlutterBorderDirectional _$FlutterBorderDirectionalFromJson(
    Map<String, dynamic> json) {
  return _FlutterBorderDirectional.fromJson(json);
}

/// @nodoc
mixin _$FlutterBorderDirectional {
  ZacBuilder<BorderSide?>? get top => throw _privateConstructorUsedError;
  ZacBuilder<BorderSide?>? get start => throw _privateConstructorUsedError;
  ZacBuilder<BorderSide?>? get bottom => throw _privateConstructorUsedError;
  ZacBuilder<BorderSide?>? get end => throw _privateConstructorUsedError;

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
  final ZacBuilder<BorderSide?>? top;
  @override
  final ZacBuilder<BorderSide?>? start;
  @override
  final ZacBuilder<BorderSide?>? bottom;
  @override
  final ZacBuilder<BorderSide?>? end;

  @override
  String toString() {
    return 'FlutterBorderDirectional(top: $top, start: $start, bottom: $bottom, end: $end)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FlutterBorderDirectional &&
            (identical(other.top, top) || other.top == top) &&
            (identical(other.start, start) || other.start == start) &&
            (identical(other.bottom, bottom) || other.bottom == bottom) &&
            (identical(other.end, end) || other.end == end));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, top, start, bottom, end);

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
      {final ZacBuilder<BorderSide?>? top,
      final ZacBuilder<BorderSide?>? start,
      final ZacBuilder<BorderSide?>? bottom,
      final ZacBuilder<BorderSide?>? end}) = _$_FlutterBorderDirectional;
  _FlutterBorderDirectional._() : super._();

  factory _FlutterBorderDirectional.fromJson(Map<String, dynamic> json) =
      _$_FlutterBorderDirectional.fromJson;

  @override
  ZacBuilder<BorderSide?>? get top;
  @override
  ZacBuilder<BorderSide?>? get start;
  @override
  ZacBuilder<BorderSide?>? get bottom;
  @override
  ZacBuilder<BorderSide?>? get end;
}

FlutterBorder _$FlutterBorderFromJson(Map<String, dynamic> json) {
  switch (json['builder']) {
    case 'f:1:Border':
      return _FlutterBorder.fromJson(json);
    case 'f:1:Border.all':
      return _FlutterBorderAll.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'builder', 'FlutterBorder',
          'Invalid union type "${json['builder']}"!');
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
  final ZacBuilder<BorderSide?>? top;
  @override
  final ZacBuilder<BorderSide?>? right;
  @override
  final ZacBuilder<BorderSide?>? bottom;
  @override
  final ZacBuilder<BorderSide?>? left;

  @JsonKey(name: 'builder')
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
            (identical(other.top, top) || other.top == top) &&
            (identical(other.right, right) || other.right == right) &&
            (identical(other.bottom, bottom) || other.bottom == bottom) &&
            (identical(other.left, left) || other.left == left));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, top, right, bottom, left);

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
      {final ZacBuilder<BorderSide?>? top,
      final ZacBuilder<BorderSide?>? right,
      final ZacBuilder<BorderSide?>? bottom,
      final ZacBuilder<BorderSide?>? left}) = _$_FlutterBorder;
  _FlutterBorder._() : super._();

  factory _FlutterBorder.fromJson(Map<String, dynamic> json) =
      _$_FlutterBorder.fromJson;

  ZacBuilder<BorderSide?>? get top;
  ZacBuilder<BorderSide?>? get right;
  ZacBuilder<BorderSide?>? get bottom;
  ZacBuilder<BorderSide?>? get left;
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
  final ZacBuilder<Color?>? color;
  @override
  final ZacBuilder<double?>? width;
  @override
  final FlutterBorderStyle? style;

  @JsonKey(name: 'builder')
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
            (identical(other.color, color) || other.color == color) &&
            (identical(other.width, width) || other.width == width) &&
            (identical(other.style, style) || other.style == style));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, color, width, style);

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
      {final ZacBuilder<Color?>? color,
      final ZacBuilder<double?>? width,
      final FlutterBorderStyle? style}) = _$_FlutterBorderAll;
  _FlutterBorderAll._() : super._();

  factory _FlutterBorderAll.fromJson(Map<String, dynamic> json) =
      _$_FlutterBorderAll.fromJson;

  ZacBuilder<Color?>? get color;
  ZacBuilder<double?>? get width;
  FlutterBorderStyle? get style;
}

FlutterBorderStyle _$FlutterBorderStyleFromJson(Map<String, dynamic> json) {
  switch (json['builder']) {
    case 'f:1:BorderStyle.none':
      return _FlutterBorderStyleNone.fromJson(json);
    case 'f:1:BorderStyle.solid':
      return _FlutterBorderStyleSolid.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'builder', 'FlutterBorderStyle',
          'Invalid union type "${json['builder']}"!');
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

  @JsonKey(name: 'builder')
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

  @JsonKey(name: 'builder')
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
  switch (json['builder']) {
    case 'f:1:BorderRadius.all':
      return _FlutterBorderRadiusAll.fromJson(json);
    case 'f:1:BorderRadius.circular':
      return _FlutterBorderRadiusCircular.fromJson(json);
    case 'f:1:BorderRadius.horizontal':
      return _FlutterBorderRadiusHorizontal.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'builder', 'FlutterBorderRadius',
          'Invalid union type "${json['builder']}"!');
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

  @JsonKey(name: 'builder')
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
            (identical(other.radius, radius) || other.radius == radius));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, radius);

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
  final ZacBuilder<double> radius;

  @JsonKey(name: 'builder')
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
            (identical(other.radius, radius) || other.radius == radius));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, radius);

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
  factory _FlutterBorderRadiusCircular(final ZacBuilder<double> radius) =
      _$_FlutterBorderRadiusCircular;
  _FlutterBorderRadiusCircular._() : super._();

  factory _FlutterBorderRadiusCircular.fromJson(Map<String, dynamic> json) =
      _$_FlutterBorderRadiusCircular.fromJson;

  ZacBuilder<double> get radius;
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
  final ZacBuilder<Radius?>? left;
  @override
  final ZacBuilder<Radius?>? right;

  @JsonKey(name: 'builder')
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
            (identical(other.left, left) || other.left == left) &&
            (identical(other.right, right) || other.right == right));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, left, right);

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
      {final ZacBuilder<Radius?>? left,
      final ZacBuilder<Radius?>? right}) = _$_FlutterBorderRadiusHorizontal;
  _FlutterBorderRadiusHorizontal._() : super._();

  factory _FlutterBorderRadiusHorizontal.fromJson(Map<String, dynamic> json) =
      _$_FlutterBorderRadiusHorizontal.fromJson;

  ZacBuilder<Radius?>? get left;
  ZacBuilder<Radius?>? get right;
}

FlutterBorderSide _$FlutterBorderSideFromJson(Map<String, dynamic> json) {
  return _FlutterBorderSide.fromJson(json);
}

/// @nodoc
mixin _$FlutterBorderSide {
  ZacBuilder<Color?>? get color => throw _privateConstructorUsedError;
  ZacBuilder<double?>? get width => throw _privateConstructorUsedError;
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
  final ZacBuilder<Color?>? color;
  @override
  final ZacBuilder<double?>? width;
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
            (identical(other.color, color) || other.color == color) &&
            (identical(other.width, width) || other.width == width) &&
            (identical(other.style, style) || other.style == style));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, color, width, style);

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
      {final ZacBuilder<Color?>? color,
      final ZacBuilder<double?>? width,
      final FlutterBorderStyle? style}) = _$_FlutterBorderSide;
  _FlutterBorderSide._() : super._();

  factory _FlutterBorderSide.fromJson(Map<String, dynamic> json) =
      _$_FlutterBorderSide.fromJson;

  @override
  ZacBuilder<Color?>? get color;
  @override
  ZacBuilder<double?>? get width;
  @override
  FlutterBorderStyle? get style;
}

FlutterCircleBorder _$FlutterCircleBorderFromJson(Map<String, dynamic> json) {
  return _FlutterCircleBorder.fromJson(json);
}

/// @nodoc
mixin _$FlutterCircleBorder {
  ZacBuilder<BorderSide?>? get side => throw _privateConstructorUsedError;

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
  final ZacBuilder<BorderSide?>? side;

  @override
  String toString() {
    return 'FlutterCircleBorder(side: $side)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FlutterCircleBorder &&
            (identical(other.side, side) || other.side == side));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, side);

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_FlutterCircleBorder value) $default,
  ) {
    return $default(this);
  }
}

abstract class _FlutterCircleBorder extends FlutterCircleBorder {
  factory _FlutterCircleBorder({final ZacBuilder<BorderSide?>? side}) =
      _$_FlutterCircleBorder;
  _FlutterCircleBorder._() : super._();

  factory _FlutterCircleBorder.fromJson(Map<String, dynamic> json) =
      _$_FlutterCircleBorder.fromJson;

  @override
  ZacBuilder<BorderSide?>? get side;
}

FlutterRoundedRectangleBorder _$FlutterRoundedRectangleBorderFromJson(
    Map<String, dynamic> json) {
  return _FlutterRoundedRectangleBorder.fromJson(json);
}

/// @nodoc
mixin _$FlutterRoundedRectangleBorder {
  ZacBuilder<BorderSide?>? get side => throw _privateConstructorUsedError;
  ZacBuilder<BorderRadiusGeometry?>? get borderRadius =>
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
  final ZacBuilder<BorderSide?>? side;
  @override
  final ZacBuilder<BorderRadiusGeometry?>? borderRadius;

  @override
  String toString() {
    return 'FlutterRoundedRectangleBorder(side: $side, borderRadius: $borderRadius)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FlutterRoundedRectangleBorder &&
            (identical(other.side, side) || other.side == side) &&
            (identical(other.borderRadius, borderRadius) ||
                other.borderRadius == borderRadius));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, side, borderRadius);

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
          {final ZacBuilder<BorderSide?>? side,
          final ZacBuilder<BorderRadiusGeometry?>? borderRadius}) =
      _$_FlutterRoundedRectangleBorder;
  _FlutterRoundedRectangleBorder._() : super._();

  factory _FlutterRoundedRectangleBorder.fromJson(Map<String, dynamic> json) =
      _$_FlutterRoundedRectangleBorder.fromJson;

  @override
  ZacBuilder<BorderSide?>? get side;
  @override
  ZacBuilder<BorderRadiusGeometry?>? get borderRadius;
}

FlutterBoxDecoration _$FlutterBoxDecorationFromJson(Map<String, dynamic> json) {
  return _FlutterBoxDecoration.fromJson(json);
}

/// @nodoc
mixin _$FlutterBoxDecoration {
  ZacBuilder<Color?>? get color => throw _privateConstructorUsedError;
  ZacBuilder<BoxBorder?>? get border => throw _privateConstructorUsedError;
  ZacBuilder<BorderRadiusGeometry?>? get borderRadius =>
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
  final ZacBuilder<Color?>? color;
  @override
  final ZacBuilder<BoxBorder?>? border;
  @override
  final ZacBuilder<BorderRadiusGeometry?>? borderRadius;
  final List<FlutterBoxShadow>? _boxShadow;
  @override
  List<FlutterBoxShadow>? get boxShadow {
    final value = _boxShadow;
    if (value == null) return null;
    if (_boxShadow is EqualUnmodifiableListView) return _boxShadow;
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
            (identical(other.color, color) || other.color == color) &&
            (identical(other.border, border) || other.border == border) &&
            (identical(other.borderRadius, borderRadius) ||
                other.borderRadius == borderRadius) &&
            const DeepCollectionEquality()
                .equals(other._boxShadow, _boxShadow) &&
            (identical(other.shape, shape) || other.shape == shape) &&
            (identical(other.backgroundBlendMode, backgroundBlendMode) ||
                other.backgroundBlendMode == backgroundBlendMode));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      color,
      border,
      borderRadius,
      const DeepCollectionEquality().hash(_boxShadow),
      shape,
      backgroundBlendMode);

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
      {final ZacBuilder<Color?>? color,
      final ZacBuilder<BoxBorder?>? border,
      final ZacBuilder<BorderRadiusGeometry?>? borderRadius,
      final List<FlutterBoxShadow>? boxShadow,
      final FlutterBoxShape? shape,
      final FlutterBlendMode? backgroundBlendMode}) = _$_FlutterBoxDecoration;
  _FlutterBoxDecoration._() : super._();

  factory _FlutterBoxDecoration.fromJson(Map<String, dynamic> json) =
      _$_FlutterBoxDecoration.fromJson;

  @override
  ZacBuilder<Color?>? get color;
  @override
  ZacBuilder<BoxBorder?>? get border;
  @override
  ZacBuilder<BorderRadiusGeometry?>? get borderRadius;
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
  ZacBuilder<Color?>? get color =>
      throw _privateConstructorUsedError; // FlutterDecorationImage? image,
// FlutterGradient? gradient,
  List<FlutterBoxShadow>? get shadows => throw _privateConstructorUsedError;
  ZacBuilder<ShapeBorder> get shape => throw _privateConstructorUsedError;

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
  final ZacBuilder<Color?>? color;
// FlutterDecorationImage? image,
// FlutterGradient? gradient,
  final List<FlutterBoxShadow>? _shadows;
// FlutterDecorationImage? image,
// FlutterGradient? gradient,
  @override
  List<FlutterBoxShadow>? get shadows {
    final value = _shadows;
    if (value == null) return null;
    if (_shadows is EqualUnmodifiableListView) return _shadows;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final ZacBuilder<ShapeBorder> shape;

  @override
  String toString() {
    return 'FlutterShapeDecoration(color: $color, shadows: $shadows, shape: $shape)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FlutterShapeDecoration &&
            (identical(other.color, color) || other.color == color) &&
            const DeepCollectionEquality().equals(other._shadows, _shadows) &&
            (identical(other.shape, shape) || other.shape == shape));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, color, const DeepCollectionEquality().hash(_shadows), shape);

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
          {final ZacBuilder<Color?>? color,
          final List<FlutterBoxShadow>? shadows,
          required final ZacBuilder<ShapeBorder> shape}) =
      _$_FlutterShapeDecoration;
  _FlutterShapeDecoration._() : super._();

  factory _FlutterShapeDecoration.fromJson(Map<String, dynamic> json) =
      _$_FlutterShapeDecoration.fromJson;

  @override
  ZacBuilder<Color?>? get color;
  @override // FlutterDecorationImage? image,
// FlutterGradient? gradient,
  List<FlutterBoxShadow>? get shadows;
  @override
  ZacBuilder<ShapeBorder> get shape;
}

FlutterEdgeInsets _$FlutterEdgeInsetsFromJson(Map<String, dynamic> json) {
  switch (json['builder']) {
    case 'f:1:EdgeInsets.all':
      return _FlutterEdgeInsetsAll.fromJson(json);
    case 'f:1:EdgeInsets.symmetric':
      return _FlutterEdgeInsetsSymmetric.fromJson(json);
    case 'f:1:EdgeInsets.only':
      return _FlutterEdgeInsetsOnly.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'builder', 'FlutterEdgeInsets',
          'Invalid union type "${json['builder']}"!');
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
  final ZacBuilder<double> value;

  @JsonKey(name: 'builder')
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
            (identical(other.value, value) || other.value == value));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, value);

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
  factory _FlutterEdgeInsetsAll(final ZacBuilder<double> value) =
      _$_FlutterEdgeInsetsAll;
  _FlutterEdgeInsetsAll._() : super._();

  factory _FlutterEdgeInsetsAll.fromJson(Map<String, dynamic> json) =
      _$_FlutterEdgeInsetsAll.fromJson;

  ZacBuilder<double> get value;
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
  final ZacBuilder<double?>? vertical;
  @override
  final ZacBuilder<double?>? horizontal;

  @JsonKey(name: 'builder')
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
            (identical(other.vertical, vertical) ||
                other.vertical == vertical) &&
            (identical(other.horizontal, horizontal) ||
                other.horizontal == horizontal));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, vertical, horizontal);

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
      {final ZacBuilder<double?>? vertical,
      final ZacBuilder<double?>? horizontal}) = _$_FlutterEdgeInsetsSymmetric;
  _FlutterEdgeInsetsSymmetric._() : super._();

  factory _FlutterEdgeInsetsSymmetric.fromJson(Map<String, dynamic> json) =
      _$_FlutterEdgeInsetsSymmetric.fromJson;

  ZacBuilder<double?>? get vertical;
  ZacBuilder<double?>? get horizontal;
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
  final ZacBuilder<double?>? left;
  @override
  final ZacBuilder<double?>? top;
  @override
  final ZacBuilder<double?>? right;
  @override
  final ZacBuilder<double?>? bottom;

  @JsonKey(name: 'builder')
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
            (identical(other.left, left) || other.left == left) &&
            (identical(other.top, top) || other.top == top) &&
            (identical(other.right, right) || other.right == right) &&
            (identical(other.bottom, bottom) || other.bottom == bottom));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, left, top, right, bottom);

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
      {final ZacBuilder<double?>? left,
      final ZacBuilder<double?>? top,
      final ZacBuilder<double?>? right,
      final ZacBuilder<double?>? bottom}) = _$_FlutterEdgeInsetsOnly;
  _FlutterEdgeInsetsOnly._() : super._();

  factory _FlutterEdgeInsetsOnly.fromJson(Map<String, dynamic> json) =
      _$_FlutterEdgeInsetsOnly.fromJson;

  ZacBuilder<double?>? get left;
  ZacBuilder<double?>? get top;
  ZacBuilder<double?>? get right;
  ZacBuilder<double?>? get bottom;
}

FlutterEdgeInsetsDirectional _$FlutterEdgeInsetsDirectionalFromJson(
    Map<String, dynamic> json) {
  switch (json['builder']) {
    case 'f:1:EdgeInsetsDirectional.all':
      return _FlutterEdgeInsetsDirectionalAll.fromJson(json);
    case 'f:1:EdgeInsetsDirectional.only':
      return _FlutterEdgeInsetsDirectionalOnly.fromJson(json);

    default:
      throw CheckedFromJsonException(
          json,
          'builder',
          'FlutterEdgeInsetsDirectional',
          'Invalid union type "${json['builder']}"!');
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
  final ZacBuilder<double> value;

  @JsonKey(name: 'builder')
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
            (identical(other.value, value) || other.value == value));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, value);

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
  factory _FlutterEdgeInsetsDirectionalAll(final ZacBuilder<double> value) =
      _$_FlutterEdgeInsetsDirectionalAll;
  _FlutterEdgeInsetsDirectionalAll._() : super._();

  factory _FlutterEdgeInsetsDirectionalAll.fromJson(Map<String, dynamic> json) =
      _$_FlutterEdgeInsetsDirectionalAll.fromJson;

  ZacBuilder<double> get value;
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
  final ZacBuilder<double?>? start;
  @override
  final ZacBuilder<double?>? top;
  @override
  final ZacBuilder<double?>? end;
  @override
  final ZacBuilder<double?>? bottom;

  @JsonKey(name: 'builder')
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
            (identical(other.start, start) || other.start == start) &&
            (identical(other.top, top) || other.top == top) &&
            (identical(other.end, end) || other.end == end) &&
            (identical(other.bottom, bottom) || other.bottom == bottom));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, start, top, end, bottom);

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
      {final ZacBuilder<double?>? start,
      final ZacBuilder<double?>? top,
      final ZacBuilder<double?>? end,
      final ZacBuilder<double?>? bottom}) = _$_FlutterEdgeInsetsDirectionalOnly;
  _FlutterEdgeInsetsDirectionalOnly._() : super._();

  factory _FlutterEdgeInsetsDirectionalOnly.fromJson(
      Map<String, dynamic> json) = _$_FlutterEdgeInsetsDirectionalOnly.fromJson;

  ZacBuilder<double?>? get start;
  ZacBuilder<double?>? get top;
  ZacBuilder<double?>? get end;
  ZacBuilder<double?>? get bottom;
}
