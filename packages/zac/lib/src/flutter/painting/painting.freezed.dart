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
  switch (json['_converter']) {
    case 'f:1:BoxShape.circle':
      return _FlutterBoxShapeCircle.fromJson(json);
    case 'f:1:BoxShape.rectangle':
      return _FlutterBoxShapeRectangle.fromJson(json);

    default:
      throw CheckedFromJsonException(json, '_converter', 'FlutterBoxShape',
          'Invalid union type "${json['_converter']}"!');
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

  @JsonKey(name: '_converter')
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

  @JsonKey(name: '_converter')
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
  switch (json['_converter']) {
    case 'f:1:Axis.horizontal':
      return _FlutterAxisHori.fromJson(json);
    case 'f:1:Axis.vertical':
      return _FlutterAxisVertical.fromJson(json);

    default:
      throw CheckedFromJsonException(json, '_converter', 'FlutterAxis',
          'Invalid union type "${json['_converter']}"!');
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

  @JsonKey(name: '_converter')
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

  @JsonKey(name: '_converter')
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
  switch (json['_converter']) {
    case 'f:1:VerticalDirection.up':
      return _FlutterVerticalDirectionUp.fromJson(json);
    case 'f:1:VerticalDirection.down':
      return _FlutterVerticalDirectionDown.fromJson(json);

    default:
      throw CheckedFromJsonException(
          json,
          '_converter',
          'FlutterVerticalDirection',
          'Invalid union type "${json['_converter']}"!');
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

  @JsonKey(name: '_converter')
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

  @JsonKey(name: '_converter')
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
  switch (json['_converter']) {
    case 'f:1:TextOverflow.clip':
      return _FlutterTextOverflowClip.fromJson(json);
    case 'f:1:TextOverflow.ellipsis':
      return _FlutterTextOverflowEllipsis.fromJson(json);
    case 'f:1:TextOverflow.fade':
      return _FlutterTextOverflowFade.fromJson(json);
    case 'f:1:TextOverflow.visible':
      return _FlutterTextOverflowVisible.fromJson(json);

    default:
      throw CheckedFromJsonException(json, '_converter', 'FlutterTextOverflow',
          'Invalid union type "${json['_converter']}"!');
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

  @JsonKey(name: '_converter')
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

  @JsonKey(name: '_converter')
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

  @JsonKey(name: '_converter')
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

  @JsonKey(name: '_converter')
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
  switch (json['_converter']) {
    case 'f:1:StrutStyle':
      return _FlutterStrutStyle.fromJson(json);
    case 'f:1:StrutStyle.fromTextStyle':
      return _FlutterStrutStyleFromTextStyle.fromJson(json);

    default:
      throw CheckedFromJsonException(json, '_converter', 'FlutterStrutStyle',
          'Invalid union type "${json['_converter']}"!');
  }
}

/// @nodoc
mixin _$FlutterStrutStyle {
  ZacString? get fontFamily => throw _privateConstructorUsedError;
  List<String>? get fontFamilyFallback => throw _privateConstructorUsedError;
  ZacDouble? get fontSize => throw _privateConstructorUsedError;
  ZacDouble? get height => throw _privateConstructorUsedError;
  FlutterTextLeadingDistribution? get leadingDistribution =>
      throw _privateConstructorUsedError;
  ZacDouble? get leading => throw _privateConstructorUsedError;
  FlutterFontWeight? get fontWeight => throw _privateConstructorUsedError;
  FlutterFontStyle? get fontStyle => throw _privateConstructorUsedError;
  ZacBool? get forceStrutHeight => throw _privateConstructorUsedError;
  ZacString? get debugLabel => throw _privateConstructorUsedError;
  ZacString? get package => throw _privateConstructorUsedError;

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
  final ZacString? fontFamily;
  final List<String>? _fontFamilyFallback;
  @override
  List<String>? get fontFamilyFallback {
    final value = _fontFamilyFallback;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final ZacDouble? fontSize;
  @override
  final ZacDouble? height;
  @override
  final FlutterTextLeadingDistribution? leadingDistribution;
  @override
  final ZacDouble? leading;
  @override
  final FlutterFontWeight? fontWeight;
  @override
  final FlutterFontStyle? fontStyle;
  @override
  final ZacBool? forceStrutHeight;
  @override
  final ZacString? debugLabel;
  @override
  final ZacString? package;

  @JsonKey(name: '_converter')
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
      {final ZacString? fontFamily,
      final List<String>? fontFamilyFallback,
      final ZacDouble? fontSize,
      final ZacDouble? height,
      final FlutterTextLeadingDistribution? leadingDistribution,
      final ZacDouble? leading,
      final FlutterFontWeight? fontWeight,
      final FlutterFontStyle? fontStyle,
      final ZacBool? forceStrutHeight,
      final ZacString? debugLabel,
      final ZacString? package}) = _$_FlutterStrutStyle;
  _FlutterStrutStyle._() : super._();

  factory _FlutterStrutStyle.fromJson(Map<String, dynamic> json) =
      _$_FlutterStrutStyle.fromJson;

  @override
  ZacString? get fontFamily;
  @override
  List<String>? get fontFamilyFallback;
  @override
  ZacDouble? get fontSize;
  @override
  ZacDouble? get height;
  @override
  FlutterTextLeadingDistribution? get leadingDistribution;
  @override
  ZacDouble? get leading;
  @override
  FlutterFontWeight? get fontWeight;
  @override
  FlutterFontStyle? get fontStyle;
  @override
  ZacBool? get forceStrutHeight;
  @override
  ZacString? get debugLabel;
  @override
  ZacString? get package;
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
  final ZacString? fontFamily;
  final List<String>? _fontFamilyFallback;
  @override
  List<String>? get fontFamilyFallback {
    final value = _fontFamilyFallback;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final ZacDouble? fontSize;
  @override
  final ZacDouble? height;
  @override
  final FlutterTextLeadingDistribution? leadingDistribution;
  @override
  final ZacDouble? leading;
  @override
  final FlutterFontWeight? fontWeight;
  @override
  final FlutterFontStyle? fontStyle;
  @override
  final ZacBool? forceStrutHeight;
  @override
  final ZacString? debugLabel;
  @override
  final ZacString? package;

  @JsonKey(name: '_converter')
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
      {final ZacString? fontFamily,
      final List<String>? fontFamilyFallback,
      final ZacDouble? fontSize,
      final ZacDouble? height,
      final FlutterTextLeadingDistribution? leadingDistribution,
      final ZacDouble? leading,
      final FlutterFontWeight? fontWeight,
      final FlutterFontStyle? fontStyle,
      final ZacBool? forceStrutHeight,
      final ZacString? debugLabel,
      final ZacString? package}) = _$_FlutterStrutStyleFromTextStyle;
  _FlutterStrutStyleFromTextStyle._() : super._();

  factory _FlutterStrutStyleFromTextStyle.fromJson(Map<String, dynamic> json) =
      _$_FlutterStrutStyleFromTextStyle.fromJson;

  FlutterTextStyle get textStyle;
  @override
  ZacString? get fontFamily;
  @override
  List<String>? get fontFamilyFallback;
  @override
  ZacDouble? get fontSize;
  @override
  ZacDouble? get height;
  @override
  FlutterTextLeadingDistribution? get leadingDistribution;
  @override
  ZacDouble? get leading;
  @override
  FlutterFontWeight? get fontWeight;
  @override
  FlutterFontStyle? get fontStyle;
  @override
  ZacBool? get forceStrutHeight;
  @override
  ZacString? get debugLabel;
  @override
  ZacString? get package;
}

FlutterTextWidthBasis _$FlutterTextWidthBasisFromJson(
    Map<String, dynamic> json) {
  switch (json['_converter']) {
    case 'f:1:TextWidthBasis.longestLine':
      return _FlutterTextWidthBasisLongestLine.fromJson(json);
    case 'f:1:TextWidthBasis.parent':
      return _FlutterTextWidthBasisParent.fromJson(json);

    default:
      throw CheckedFromJsonException(
          json,
          '_converter',
          'FlutterTextWidthBasis',
          'Invalid union type "${json['_converter']}"!');
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

  @JsonKey(name: '_converter')
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

  @JsonKey(name: '_converter')
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
  switch (json['_converter']) {
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
      throw CheckedFromJsonException(json, '_converter', 'FlutterBoxFit',
          'Invalid union type "${json['_converter']}"!');
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

  @JsonKey(name: '_converter')
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

  @JsonKey(name: '_converter')
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

  @JsonKey(name: '_converter')
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

  @JsonKey(name: '_converter')
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

  @JsonKey(name: '_converter')
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

  @JsonKey(name: '_converter')
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

  @JsonKey(name: '_converter')
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
  switch (json['_converter']) {
    case 'f:1:ImageRepeat.noRepeat':
      return _FlutterImageRepeatNoRepeat.fromJson(json);
    case 'f:1:ImageRepeat.repeat':
      return _FlutterImageRepeatRepeat.fromJson(json);
    case 'f:1:ImageRepeat.repeatX':
      return _FlutterImageRepeatRepeatX.fromJson(json);
    case 'f:1:ImageRepeat.repeatY':
      return _FlutterImageRepeatRepeatY.fromJson(json);

    default:
      throw CheckedFromJsonException(json, '_converter', 'FlutterImageRepeat',
          'Invalid union type "${json['_converter']}"!');
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

  @JsonKey(name: '_converter')
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

  @JsonKey(name: '_converter')
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

  @JsonKey(name: '_converter')
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

  @JsonKey(name: '_converter')
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
  ZacDouble? get fontSize => throw _privateConstructorUsedError;
  FlutterFontWeight? get fontWeight => throw _privateConstructorUsedError;
  FlutterFontStyle? get fontStyle => throw _privateConstructorUsedError;
  ZacDouble? get letterSpacing => throw _privateConstructorUsedError;
  ZacDouble? get wordSpacing => throw _privateConstructorUsedError;
  FlutterTextBaseline? get textBaseline => throw _privateConstructorUsedError;
  ZacDouble? get height => throw _privateConstructorUsedError;
  FlutterTextLeadingDistribution? get leadingDistribution =>
      throw _privateConstructorUsedError;
  FlutterLocale? get locale =>
      throw _privateConstructorUsedError; // Paint? foreground,
// Paint? background,
  List<FlutterShadow>? get shadows => throw _privateConstructorUsedError;
  List<FlutterFontFeature>? get fontFeatures =>
      throw _privateConstructorUsedError;
  FlutterTextDecoration? get decoration => throw _privateConstructorUsedError;
  FlutterColor? get decorationColor => throw _privateConstructorUsedError;
  FlutterTextDecorationStyle? get decorationStyle =>
      throw _privateConstructorUsedError;
  ZacDouble? get decorationThickness => throw _privateConstructorUsedError;
  ZacString? get debugLabel => throw _privateConstructorUsedError;
  ZacString? get fontFamily => throw _privateConstructorUsedError;
  List<String>? get fontFamilyFallback => throw _privateConstructorUsedError;
  ZacString? get package => throw _privateConstructorUsedError;
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
      final List<FlutterShadow>? shadows,
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
  final ZacDouble? fontSize;
  @override
  final FlutterFontWeight? fontWeight;
  @override
  final FlutterFontStyle? fontStyle;
  @override
  final ZacDouble? letterSpacing;
  @override
  final ZacDouble? wordSpacing;
  @override
  final FlutterTextBaseline? textBaseline;
  @override
  final ZacDouble? height;
  @override
  final FlutterTextLeadingDistribution? leadingDistribution;
  @override
  final FlutterLocale? locale;
// Paint? foreground,
// Paint? background,
  final List<FlutterShadow>? _shadows;
// Paint? foreground,
// Paint? background,
  @override
  List<FlutterShadow>? get shadows {
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
  final ZacDouble? decorationThickness;
  @override
  final ZacString? debugLabel;
  @override
  final ZacString? fontFamily;
  final List<String>? _fontFamilyFallback;
  @override
  List<String>? get fontFamilyFallback {
    final value = _fontFamilyFallback;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final ZacString? package;
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
      final ZacDouble? fontSize,
      final FlutterFontWeight? fontWeight,
      final FlutterFontStyle? fontStyle,
      final ZacDouble? letterSpacing,
      final ZacDouble? wordSpacing,
      final FlutterTextBaseline? textBaseline,
      final ZacDouble? height,
      final FlutterTextLeadingDistribution? leadingDistribution,
      final FlutterLocale? locale,
      final List<FlutterShadow>? shadows,
      final List<FlutterFontFeature>? fontFeatures,
      final FlutterTextDecoration? decoration,
      final FlutterColor? decorationColor,
      final FlutterTextDecorationStyle? decorationStyle,
      final ZacDouble? decorationThickness,
      final ZacString? debugLabel,
      final ZacString? fontFamily,
      final List<String>? fontFamilyFallback,
      final ZacString? package,
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
  ZacDouble? get fontSize;
  @override
  FlutterFontWeight? get fontWeight;
  @override
  FlutterFontStyle? get fontStyle;
  @override
  ZacDouble? get letterSpacing;
  @override
  ZacDouble? get wordSpacing;
  @override
  FlutterTextBaseline? get textBaseline;
  @override
  ZacDouble? get height;
  @override
  FlutterTextLeadingDistribution? get leadingDistribution;
  @override
  FlutterLocale? get locale;
  @override // Paint? foreground,
// Paint? background,
  List<FlutterShadow>? get shadows;
  @override
  List<FlutterFontFeature>? get fontFeatures;
  @override
  FlutterTextDecoration? get decoration;
  @override
  FlutterColor? get decorationColor;
  @override
  FlutterTextDecorationStyle? get decorationStyle;
  @override
  ZacDouble? get decorationThickness;
  @override
  ZacString? get debugLabel;
  @override
  ZacString? get fontFamily;
  @override
  List<String>? get fontFamilyFallback;
  @override
  ZacString? get package;
  @override
  FlutterTextOverflow? get overflow;
}

FlutterTextAlignVertical _$FlutterTextAlignVerticalFromJson(
    Map<String, dynamic> json) {
  switch (json['_converter']) {
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
          '_converter',
          'FlutterTextAlignVertical',
          'Invalid union type "${json['_converter']}"!');
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
  final ZacDouble y;

  @JsonKey(name: '_converter')
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
  factory _FlutterTextAlignVertical({required final ZacDouble y}) =
      _$_FlutterTextAlignVertical;
  _FlutterTextAlignVertical._() : super._();

  factory _FlutterTextAlignVertical.fromJson(Map<String, dynamic> json) =
      _$_FlutterTextAlignVertical.fromJson;

  ZacDouble get y;
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

  @JsonKey(name: '_converter')
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

  @JsonKey(name: '_converter')
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

  @JsonKey(name: '_converter')
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
