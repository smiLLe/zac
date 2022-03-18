// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'widgets.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ZacWidget _$ZacWidgetFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'zac:widget:container':
      return _ZacWidgetContainer.fromJson(json);
    case 'zac:widget:elevatedButton':
      return _ZacWidgetElevatedButton.fromJson(json);
    case 'zac:widget:elevatedButton.icon':
      return _ZacWidgetElevatedButtonIcon.fromJson(json);
    case 'zac:widget:icon':
      return _ZacWidgetIcon.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'ZacWidget',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
class _$ZacWidgetTearOff {
  const _$ZacWidgetTearOff();

  _ZacWidgetContainer container(
      {ZacWidget? child,
      ZacColor? color,
      ZacEdgeInsetsGeometry? margin,
      ZacEdgeInsetsGeometry? padding,
      ZacAlignment? alignment,
      ZacDecoration? decoration}) {
    return _ZacWidgetContainer(
      child: child,
      color: color,
      margin: margin,
      padding: padding,
      alignment: alignment,
      decoration: decoration,
    );
  }

  _ZacWidgetElevatedButton elevatedButton({required ZacWidget? child}) {
    return _ZacWidgetElevatedButton(
      child: child,
    );
  }

  _ZacWidgetElevatedButtonIcon elevatedButtonIcon(
      {required ZacWidget icon, required ZacWidget label}) {
    return _ZacWidgetElevatedButtonIcon(
      icon: icon,
      label: label,
    );
  }

  _ZacWidgetIcon icon(
      {ZacIconData? icon,
      ZacColor? color,
      String? semanticLabel,
      double? size}) {
    return _ZacWidgetIcon(
      icon: icon,
      color: color,
      semanticLabel: semanticLabel,
      size: size,
    );
  }

  ZacWidget fromJson(Map<String, Object?> json) {
    return ZacWidget.fromJson(json);
  }
}

/// @nodoc
const $ZacWidget = _$ZacWidgetTearOff();

/// @nodoc
mixin _$ZacWidget {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            ZacWidget? child,
            ZacColor? color,
            ZacEdgeInsetsGeometry? margin,
            ZacEdgeInsetsGeometry? padding,
            ZacAlignment? alignment,
            ZacDecoration? decoration)
        container,
    required TResult Function(ZacWidget? child) elevatedButton,
    required TResult Function(ZacWidget icon, ZacWidget label)
        elevatedButtonIcon,
    required TResult Function(ZacIconData? icon, ZacColor? color,
            String? semanticLabel, double? size)
        icon,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(
            ZacWidget? child,
            ZacColor? color,
            ZacEdgeInsetsGeometry? margin,
            ZacEdgeInsetsGeometry? padding,
            ZacAlignment? alignment,
            ZacDecoration? decoration)?
        container,
    TResult Function(ZacWidget? child)? elevatedButton,
    TResult Function(ZacWidget icon, ZacWidget label)? elevatedButtonIcon,
    TResult Function(ZacIconData? icon, ZacColor? color, String? semanticLabel,
            double? size)?
        icon,
  }) =>
      throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ZacWidgetContainer value) container,
    required TResult Function(_ZacWidgetElevatedButton value) elevatedButton,
    required TResult Function(_ZacWidgetElevatedButtonIcon value)
        elevatedButtonIcon,
    required TResult Function(_ZacWidgetIcon value) icon,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ZacWidgetContainer value)? container,
    TResult Function(_ZacWidgetElevatedButton value)? elevatedButton,
    TResult Function(_ZacWidgetElevatedButtonIcon value)? elevatedButtonIcon,
    TResult Function(_ZacWidgetIcon value)? icon,
  }) =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ZacWidgetCopyWith<$Res> {
  factory $ZacWidgetCopyWith(ZacWidget value, $Res Function(ZacWidget) then) =
      _$ZacWidgetCopyWithImpl<$Res>;
}

/// @nodoc
class _$ZacWidgetCopyWithImpl<$Res> implements $ZacWidgetCopyWith<$Res> {
  _$ZacWidgetCopyWithImpl(this._value, this._then);

  final ZacWidget _value;
  // ignore: unused_field
  final $Res Function(ZacWidget) _then;
}

/// @nodoc
abstract class _$ZacWidgetContainerCopyWith<$Res> {
  factory _$ZacWidgetContainerCopyWith(
          _ZacWidgetContainer value, $Res Function(_ZacWidgetContainer) then) =
      __$ZacWidgetContainerCopyWithImpl<$Res>;
  $Res call(
      {ZacWidget? child,
      ZacColor? color,
      ZacEdgeInsetsGeometry? margin,
      ZacEdgeInsetsGeometry? padding,
      ZacAlignment? alignment,
      ZacDecoration? decoration});

  $ZacWidgetCopyWith<$Res>? get child;
  $ZacColorCopyWith<$Res>? get color;
  $ZacEdgeInsetsGeometryCopyWith<$Res>? get margin;
  $ZacEdgeInsetsGeometryCopyWith<$Res>? get padding;
  $ZacAlignmentCopyWith<$Res>? get alignment;
  $ZacDecorationCopyWith<$Res>? get decoration;
}

/// @nodoc
class __$ZacWidgetContainerCopyWithImpl<$Res>
    extends _$ZacWidgetCopyWithImpl<$Res>
    implements _$ZacWidgetContainerCopyWith<$Res> {
  __$ZacWidgetContainerCopyWithImpl(
      _ZacWidgetContainer _value, $Res Function(_ZacWidgetContainer) _then)
      : super(_value, (v) => _then(v as _ZacWidgetContainer));

  @override
  _ZacWidgetContainer get _value => super._value as _ZacWidgetContainer;

  @override
  $Res call({
    Object? child = freezed,
    Object? color = freezed,
    Object? margin = freezed,
    Object? padding = freezed,
    Object? alignment = freezed,
    Object? decoration = freezed,
  }) {
    return _then(_ZacWidgetContainer(
      child: child == freezed
          ? _value.child
          : child // ignore: cast_nullable_to_non_nullable
              as ZacWidget?,
      color: color == freezed
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as ZacColor?,
      margin: margin == freezed
          ? _value.margin
          : margin // ignore: cast_nullable_to_non_nullable
              as ZacEdgeInsetsGeometry?,
      padding: padding == freezed
          ? _value.padding
          : padding // ignore: cast_nullable_to_non_nullable
              as ZacEdgeInsetsGeometry?,
      alignment: alignment == freezed
          ? _value.alignment
          : alignment // ignore: cast_nullable_to_non_nullable
              as ZacAlignment?,
      decoration: decoration == freezed
          ? _value.decoration
          : decoration // ignore: cast_nullable_to_non_nullable
              as ZacDecoration?,
    ));
  }

  @override
  $ZacWidgetCopyWith<$Res>? get child {
    if (_value.child == null) {
      return null;
    }

    return $ZacWidgetCopyWith<$Res>(_value.child!, (value) {
      return _then(_value.copyWith(child: value));
    });
  }

  @override
  $ZacColorCopyWith<$Res>? get color {
    if (_value.color == null) {
      return null;
    }

    return $ZacColorCopyWith<$Res>(_value.color!, (value) {
      return _then(_value.copyWith(color: value));
    });
  }

  @override
  $ZacEdgeInsetsGeometryCopyWith<$Res>? get margin {
    if (_value.margin == null) {
      return null;
    }

    return $ZacEdgeInsetsGeometryCopyWith<$Res>(_value.margin!, (value) {
      return _then(_value.copyWith(margin: value));
    });
  }

  @override
  $ZacEdgeInsetsGeometryCopyWith<$Res>? get padding {
    if (_value.padding == null) {
      return null;
    }

    return $ZacEdgeInsetsGeometryCopyWith<$Res>(_value.padding!, (value) {
      return _then(_value.copyWith(padding: value));
    });
  }

  @override
  $ZacAlignmentCopyWith<$Res>? get alignment {
    if (_value.alignment == null) {
      return null;
    }

    return $ZacAlignmentCopyWith<$Res>(_value.alignment!, (value) {
      return _then(_value.copyWith(alignment: value));
    });
  }

  @override
  $ZacDecorationCopyWith<$Res>? get decoration {
    if (_value.decoration == null) {
      return null;
    }

    return $ZacDecorationCopyWith<$Res>(_value.decoration!, (value) {
      return _then(_value.copyWith(decoration: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
@FreezedUnionValue('zac:widget:container')
class _$_ZacWidgetContainer extends _ZacWidgetContainer {
  _$_ZacWidgetContainer(
      {this.child,
      this.color,
      this.margin,
      this.padding,
      this.alignment,
      this.decoration,
      String? $type})
      : $type = $type ?? 'zac:widget:container',
        super._();

  factory _$_ZacWidgetContainer.fromJson(Map<String, dynamic> json) =>
      _$$_ZacWidgetContainerFromJson(json);

  @override
  final ZacWidget? child;
  @override
  final ZacColor? color;
  @override
  final ZacEdgeInsetsGeometry? margin;
  @override
  final ZacEdgeInsetsGeometry? padding;
  @override
  final ZacAlignment? alignment;
  @override
  final ZacDecoration? decoration;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'ZacWidget.container(child: $child, color: $color, margin: $margin, padding: $padding, alignment: $alignment, decoration: $decoration)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ZacWidgetContainer &&
            const DeepCollectionEquality().equals(other.child, child) &&
            const DeepCollectionEquality().equals(other.color, color) &&
            const DeepCollectionEquality().equals(other.margin, margin) &&
            const DeepCollectionEquality().equals(other.padding, padding) &&
            const DeepCollectionEquality().equals(other.alignment, alignment) &&
            const DeepCollectionEquality()
                .equals(other.decoration, decoration));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(child),
      const DeepCollectionEquality().hash(color),
      const DeepCollectionEquality().hash(margin),
      const DeepCollectionEquality().hash(padding),
      const DeepCollectionEquality().hash(alignment),
      const DeepCollectionEquality().hash(decoration));

  @JsonKey(ignore: true)
  @override
  _$ZacWidgetContainerCopyWith<_ZacWidgetContainer> get copyWith =>
      __$ZacWidgetContainerCopyWithImpl<_ZacWidgetContainer>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            ZacWidget? child,
            ZacColor? color,
            ZacEdgeInsetsGeometry? margin,
            ZacEdgeInsetsGeometry? padding,
            ZacAlignment? alignment,
            ZacDecoration? decoration)
        container,
    required TResult Function(ZacWidget? child) elevatedButton,
    required TResult Function(ZacWidget icon, ZacWidget label)
        elevatedButtonIcon,
    required TResult Function(ZacIconData? icon, ZacColor? color,
            String? semanticLabel, double? size)
        icon,
  }) {
    return container(child, color, margin, padding, alignment, decoration);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(
            ZacWidget? child,
            ZacColor? color,
            ZacEdgeInsetsGeometry? margin,
            ZacEdgeInsetsGeometry? padding,
            ZacAlignment? alignment,
            ZacDecoration? decoration)?
        container,
    TResult Function(ZacWidget? child)? elevatedButton,
    TResult Function(ZacWidget icon, ZacWidget label)? elevatedButtonIcon,
    TResult Function(ZacIconData? icon, ZacColor? color, String? semanticLabel,
            double? size)?
        icon,
  }) {
    return container?.call(
        child, color, margin, padding, alignment, decoration);
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ZacWidgetContainer value) container,
    required TResult Function(_ZacWidgetElevatedButton value) elevatedButton,
    required TResult Function(_ZacWidgetElevatedButtonIcon value)
        elevatedButtonIcon,
    required TResult Function(_ZacWidgetIcon value) icon,
  }) {
    return container(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ZacWidgetContainer value)? container,
    TResult Function(_ZacWidgetElevatedButton value)? elevatedButton,
    TResult Function(_ZacWidgetElevatedButtonIcon value)? elevatedButtonIcon,
    TResult Function(_ZacWidgetIcon value)? icon,
  }) {
    return container?.call(this);
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$_ZacWidgetContainerToJson(this);
  }
}

abstract class _ZacWidgetContainer extends ZacWidget {
  factory _ZacWidgetContainer(
      {ZacWidget? child,
      ZacColor? color,
      ZacEdgeInsetsGeometry? margin,
      ZacEdgeInsetsGeometry? padding,
      ZacAlignment? alignment,
      ZacDecoration? decoration}) = _$_ZacWidgetContainer;
  _ZacWidgetContainer._() : super._();

  factory _ZacWidgetContainer.fromJson(Map<String, dynamic> json) =
      _$_ZacWidgetContainer.fromJson;

  ZacWidget? get child;
  ZacColor? get color;
  ZacEdgeInsetsGeometry? get margin;
  ZacEdgeInsetsGeometry? get padding;
  ZacAlignment? get alignment;
  ZacDecoration? get decoration;
  @JsonKey(ignore: true)
  _$ZacWidgetContainerCopyWith<_ZacWidgetContainer> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ZacWidgetElevatedButtonCopyWith<$Res> {
  factory _$ZacWidgetElevatedButtonCopyWith(_ZacWidgetElevatedButton value,
          $Res Function(_ZacWidgetElevatedButton) then) =
      __$ZacWidgetElevatedButtonCopyWithImpl<$Res>;
  $Res call({ZacWidget? child});

  $ZacWidgetCopyWith<$Res>? get child;
}

/// @nodoc
class __$ZacWidgetElevatedButtonCopyWithImpl<$Res>
    extends _$ZacWidgetCopyWithImpl<$Res>
    implements _$ZacWidgetElevatedButtonCopyWith<$Res> {
  __$ZacWidgetElevatedButtonCopyWithImpl(_ZacWidgetElevatedButton _value,
      $Res Function(_ZacWidgetElevatedButton) _then)
      : super(_value, (v) => _then(v as _ZacWidgetElevatedButton));

  @override
  _ZacWidgetElevatedButton get _value =>
      super._value as _ZacWidgetElevatedButton;

  @override
  $Res call({
    Object? child = freezed,
  }) {
    return _then(_ZacWidgetElevatedButton(
      child: child == freezed
          ? _value.child
          : child // ignore: cast_nullable_to_non_nullable
              as ZacWidget?,
    ));
  }

  @override
  $ZacWidgetCopyWith<$Res>? get child {
    if (_value.child == null) {
      return null;
    }

    return $ZacWidgetCopyWith<$Res>(_value.child!, (value) {
      return _then(_value.copyWith(child: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
@FreezedUnionValue('zac:widget:elevatedButton')
class _$_ZacWidgetElevatedButton extends _ZacWidgetElevatedButton {
  _$_ZacWidgetElevatedButton({required this.child, String? $type})
      : $type = $type ?? 'zac:widget:elevatedButton',
        super._();

  factory _$_ZacWidgetElevatedButton.fromJson(Map<String, dynamic> json) =>
      _$$_ZacWidgetElevatedButtonFromJson(json);

  @override
  final ZacWidget? child;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'ZacWidget.elevatedButton(child: $child)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ZacWidgetElevatedButton &&
            const DeepCollectionEquality().equals(other.child, child));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(child));

  @JsonKey(ignore: true)
  @override
  _$ZacWidgetElevatedButtonCopyWith<_ZacWidgetElevatedButton> get copyWith =>
      __$ZacWidgetElevatedButtonCopyWithImpl<_ZacWidgetElevatedButton>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            ZacWidget? child,
            ZacColor? color,
            ZacEdgeInsetsGeometry? margin,
            ZacEdgeInsetsGeometry? padding,
            ZacAlignment? alignment,
            ZacDecoration? decoration)
        container,
    required TResult Function(ZacWidget? child) elevatedButton,
    required TResult Function(ZacWidget icon, ZacWidget label)
        elevatedButtonIcon,
    required TResult Function(ZacIconData? icon, ZacColor? color,
            String? semanticLabel, double? size)
        icon,
  }) {
    return elevatedButton(child);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(
            ZacWidget? child,
            ZacColor? color,
            ZacEdgeInsetsGeometry? margin,
            ZacEdgeInsetsGeometry? padding,
            ZacAlignment? alignment,
            ZacDecoration? decoration)?
        container,
    TResult Function(ZacWidget? child)? elevatedButton,
    TResult Function(ZacWidget icon, ZacWidget label)? elevatedButtonIcon,
    TResult Function(ZacIconData? icon, ZacColor? color, String? semanticLabel,
            double? size)?
        icon,
  }) {
    return elevatedButton?.call(child);
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ZacWidgetContainer value) container,
    required TResult Function(_ZacWidgetElevatedButton value) elevatedButton,
    required TResult Function(_ZacWidgetElevatedButtonIcon value)
        elevatedButtonIcon,
    required TResult Function(_ZacWidgetIcon value) icon,
  }) {
    return elevatedButton(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ZacWidgetContainer value)? container,
    TResult Function(_ZacWidgetElevatedButton value)? elevatedButton,
    TResult Function(_ZacWidgetElevatedButtonIcon value)? elevatedButtonIcon,
    TResult Function(_ZacWidgetIcon value)? icon,
  }) {
    return elevatedButton?.call(this);
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$_ZacWidgetElevatedButtonToJson(this);
  }
}

abstract class _ZacWidgetElevatedButton extends ZacWidget {
  factory _ZacWidgetElevatedButton({required ZacWidget? child}) =
      _$_ZacWidgetElevatedButton;
  _ZacWidgetElevatedButton._() : super._();

  factory _ZacWidgetElevatedButton.fromJson(Map<String, dynamic> json) =
      _$_ZacWidgetElevatedButton.fromJson;

  ZacWidget? get child;
  @JsonKey(ignore: true)
  _$ZacWidgetElevatedButtonCopyWith<_ZacWidgetElevatedButton> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ZacWidgetElevatedButtonIconCopyWith<$Res> {
  factory _$ZacWidgetElevatedButtonIconCopyWith(
          _ZacWidgetElevatedButtonIcon value,
          $Res Function(_ZacWidgetElevatedButtonIcon) then) =
      __$ZacWidgetElevatedButtonIconCopyWithImpl<$Res>;
  $Res call({ZacWidget icon, ZacWidget label});

  $ZacWidgetCopyWith<$Res> get icon;
  $ZacWidgetCopyWith<$Res> get label;
}

/// @nodoc
class __$ZacWidgetElevatedButtonIconCopyWithImpl<$Res>
    extends _$ZacWidgetCopyWithImpl<$Res>
    implements _$ZacWidgetElevatedButtonIconCopyWith<$Res> {
  __$ZacWidgetElevatedButtonIconCopyWithImpl(
      _ZacWidgetElevatedButtonIcon _value,
      $Res Function(_ZacWidgetElevatedButtonIcon) _then)
      : super(_value, (v) => _then(v as _ZacWidgetElevatedButtonIcon));

  @override
  _ZacWidgetElevatedButtonIcon get _value =>
      super._value as _ZacWidgetElevatedButtonIcon;

  @override
  $Res call({
    Object? icon = freezed,
    Object? label = freezed,
  }) {
    return _then(_ZacWidgetElevatedButtonIcon(
      icon: icon == freezed
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as ZacWidget,
      label: label == freezed
          ? _value.label
          : label // ignore: cast_nullable_to_non_nullable
              as ZacWidget,
    ));
  }

  @override
  $ZacWidgetCopyWith<$Res> get icon {
    return $ZacWidgetCopyWith<$Res>(_value.icon, (value) {
      return _then(_value.copyWith(icon: value));
    });
  }

  @override
  $ZacWidgetCopyWith<$Res> get label {
    return $ZacWidgetCopyWith<$Res>(_value.label, (value) {
      return _then(_value.copyWith(label: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
@FreezedUnionValue('zac:widget:elevatedButton.icon')
class _$_ZacWidgetElevatedButtonIcon extends _ZacWidgetElevatedButtonIcon {
  _$_ZacWidgetElevatedButtonIcon(
      {required this.icon, required this.label, String? $type})
      : $type = $type ?? 'zac:widget:elevatedButton.icon',
        super._();

  factory _$_ZacWidgetElevatedButtonIcon.fromJson(Map<String, dynamic> json) =>
      _$$_ZacWidgetElevatedButtonIconFromJson(json);

  @override
  final ZacWidget icon;
  @override
  final ZacWidget label;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'ZacWidget.elevatedButtonIcon(icon: $icon, label: $label)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ZacWidgetElevatedButtonIcon &&
            const DeepCollectionEquality().equals(other.icon, icon) &&
            const DeepCollectionEquality().equals(other.label, label));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(icon),
      const DeepCollectionEquality().hash(label));

  @JsonKey(ignore: true)
  @override
  _$ZacWidgetElevatedButtonIconCopyWith<_ZacWidgetElevatedButtonIcon>
      get copyWith => __$ZacWidgetElevatedButtonIconCopyWithImpl<
          _ZacWidgetElevatedButtonIcon>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            ZacWidget? child,
            ZacColor? color,
            ZacEdgeInsetsGeometry? margin,
            ZacEdgeInsetsGeometry? padding,
            ZacAlignment? alignment,
            ZacDecoration? decoration)
        container,
    required TResult Function(ZacWidget? child) elevatedButton,
    required TResult Function(ZacWidget icon, ZacWidget label)
        elevatedButtonIcon,
    required TResult Function(ZacIconData? icon, ZacColor? color,
            String? semanticLabel, double? size)
        icon,
  }) {
    return elevatedButtonIcon(this.icon, label);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(
            ZacWidget? child,
            ZacColor? color,
            ZacEdgeInsetsGeometry? margin,
            ZacEdgeInsetsGeometry? padding,
            ZacAlignment? alignment,
            ZacDecoration? decoration)?
        container,
    TResult Function(ZacWidget? child)? elevatedButton,
    TResult Function(ZacWidget icon, ZacWidget label)? elevatedButtonIcon,
    TResult Function(ZacIconData? icon, ZacColor? color, String? semanticLabel,
            double? size)?
        icon,
  }) {
    return elevatedButtonIcon?.call(this.icon, label);
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ZacWidgetContainer value) container,
    required TResult Function(_ZacWidgetElevatedButton value) elevatedButton,
    required TResult Function(_ZacWidgetElevatedButtonIcon value)
        elevatedButtonIcon,
    required TResult Function(_ZacWidgetIcon value) icon,
  }) {
    return elevatedButtonIcon(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ZacWidgetContainer value)? container,
    TResult Function(_ZacWidgetElevatedButton value)? elevatedButton,
    TResult Function(_ZacWidgetElevatedButtonIcon value)? elevatedButtonIcon,
    TResult Function(_ZacWidgetIcon value)? icon,
  }) {
    return elevatedButtonIcon?.call(this);
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$_ZacWidgetElevatedButtonIconToJson(this);
  }
}

abstract class _ZacWidgetElevatedButtonIcon extends ZacWidget {
  factory _ZacWidgetElevatedButtonIcon(
      {required ZacWidget icon,
      required ZacWidget label}) = _$_ZacWidgetElevatedButtonIcon;
  _ZacWidgetElevatedButtonIcon._() : super._();

  factory _ZacWidgetElevatedButtonIcon.fromJson(Map<String, dynamic> json) =
      _$_ZacWidgetElevatedButtonIcon.fromJson;

  ZacWidget get icon;
  ZacWidget get label;
  @JsonKey(ignore: true)
  _$ZacWidgetElevatedButtonIconCopyWith<_ZacWidgetElevatedButtonIcon>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ZacWidgetIconCopyWith<$Res> {
  factory _$ZacWidgetIconCopyWith(
          _ZacWidgetIcon value, $Res Function(_ZacWidgetIcon) then) =
      __$ZacWidgetIconCopyWithImpl<$Res>;
  $Res call(
      {ZacIconData? icon,
      ZacColor? color,
      String? semanticLabel,
      double? size});

  $ZacIconDataCopyWith<$Res>? get icon;
  $ZacColorCopyWith<$Res>? get color;
}

/// @nodoc
class __$ZacWidgetIconCopyWithImpl<$Res> extends _$ZacWidgetCopyWithImpl<$Res>
    implements _$ZacWidgetIconCopyWith<$Res> {
  __$ZacWidgetIconCopyWithImpl(
      _ZacWidgetIcon _value, $Res Function(_ZacWidgetIcon) _then)
      : super(_value, (v) => _then(v as _ZacWidgetIcon));

  @override
  _ZacWidgetIcon get _value => super._value as _ZacWidgetIcon;

  @override
  $Res call({
    Object? icon = freezed,
    Object? color = freezed,
    Object? semanticLabel = freezed,
    Object? size = freezed,
  }) {
    return _then(_ZacWidgetIcon(
      icon: icon == freezed
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as ZacIconData?,
      color: color == freezed
          ? _value.color
          : color // ignore: cast_nullable_to_non_nullable
              as ZacColor?,
      semanticLabel: semanticLabel == freezed
          ? _value.semanticLabel
          : semanticLabel // ignore: cast_nullable_to_non_nullable
              as String?,
      size: size == freezed
          ? _value.size
          : size // ignore: cast_nullable_to_non_nullable
              as double?,
    ));
  }

  @override
  $ZacIconDataCopyWith<$Res>? get icon {
    if (_value.icon == null) {
      return null;
    }

    return $ZacIconDataCopyWith<$Res>(_value.icon!, (value) {
      return _then(_value.copyWith(icon: value));
    });
  }

  @override
  $ZacColorCopyWith<$Res>? get color {
    if (_value.color == null) {
      return null;
    }

    return $ZacColorCopyWith<$Res>(_value.color!, (value) {
      return _then(_value.copyWith(color: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
@FreezedUnionValue('zac:widget:icon')
class _$_ZacWidgetIcon extends _ZacWidgetIcon {
  _$_ZacWidgetIcon(
      {this.icon, this.color, this.semanticLabel, this.size, String? $type})
      : $type = $type ?? 'zac:widget:icon',
        super._();

  factory _$_ZacWidgetIcon.fromJson(Map<String, dynamic> json) =>
      _$$_ZacWidgetIconFromJson(json);

  @override
  final ZacIconData? icon;
  @override
  final ZacColor? color;
  @override
  final String? semanticLabel;
  @override
  final double? size;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'ZacWidget.icon(icon: $icon, color: $color, semanticLabel: $semanticLabel, size: $size)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ZacWidgetIcon &&
            const DeepCollectionEquality().equals(other.icon, icon) &&
            const DeepCollectionEquality().equals(other.color, color) &&
            const DeepCollectionEquality()
                .equals(other.semanticLabel, semanticLabel) &&
            const DeepCollectionEquality().equals(other.size, size));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(icon),
      const DeepCollectionEquality().hash(color),
      const DeepCollectionEquality().hash(semanticLabel),
      const DeepCollectionEquality().hash(size));

  @JsonKey(ignore: true)
  @override
  _$ZacWidgetIconCopyWith<_ZacWidgetIcon> get copyWith =>
      __$ZacWidgetIconCopyWithImpl<_ZacWidgetIcon>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            ZacWidget? child,
            ZacColor? color,
            ZacEdgeInsetsGeometry? margin,
            ZacEdgeInsetsGeometry? padding,
            ZacAlignment? alignment,
            ZacDecoration? decoration)
        container,
    required TResult Function(ZacWidget? child) elevatedButton,
    required TResult Function(ZacWidget icon, ZacWidget label)
        elevatedButtonIcon,
    required TResult Function(ZacIconData? icon, ZacColor? color,
            String? semanticLabel, double? size)
        icon,
  }) {
    return icon(this.icon, color, semanticLabel, size);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(
            ZacWidget? child,
            ZacColor? color,
            ZacEdgeInsetsGeometry? margin,
            ZacEdgeInsetsGeometry? padding,
            ZacAlignment? alignment,
            ZacDecoration? decoration)?
        container,
    TResult Function(ZacWidget? child)? elevatedButton,
    TResult Function(ZacWidget icon, ZacWidget label)? elevatedButtonIcon,
    TResult Function(ZacIconData? icon, ZacColor? color, String? semanticLabel,
            double? size)?
        icon,
  }) {
    return icon?.call(this.icon, color, semanticLabel, size);
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ZacWidgetContainer value) container,
    required TResult Function(_ZacWidgetElevatedButton value) elevatedButton,
    required TResult Function(_ZacWidgetElevatedButtonIcon value)
        elevatedButtonIcon,
    required TResult Function(_ZacWidgetIcon value) icon,
  }) {
    return icon(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ZacWidgetContainer value)? container,
    TResult Function(_ZacWidgetElevatedButton value)? elevatedButton,
    TResult Function(_ZacWidgetElevatedButtonIcon value)? elevatedButtonIcon,
    TResult Function(_ZacWidgetIcon value)? icon,
  }) {
    return icon?.call(this);
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$_ZacWidgetIconToJson(this);
  }
}

abstract class _ZacWidgetIcon extends ZacWidget {
  factory _ZacWidgetIcon(
      {ZacIconData? icon,
      ZacColor? color,
      String? semanticLabel,
      double? size}) = _$_ZacWidgetIcon;
  _ZacWidgetIcon._() : super._();

  factory _ZacWidgetIcon.fromJson(Map<String, dynamic> json) =
      _$_ZacWidgetIcon.fromJson;

  ZacIconData? get icon;
  ZacColor? get color;
  String? get semanticLabel;
  double? get size;
  @JsonKey(ignore: true)
  _$ZacWidgetIconCopyWith<_ZacWidgetIcon> get copyWith =>
      throw _privateConstructorUsedError;
}

ZacIconData _$ZacIconDataFromJson(Map<String, dynamic> json) {
  return _ZacIconDataBase.fromJson(json);
}

/// @nodoc
class _$ZacIconDataTearOff {
  const _$ZacIconDataTearOff();

  _ZacIconDataBase base(int codePoint,
      {String? fontFamily, String? fontPackage, bool? matchTextDirection}) {
    return _ZacIconDataBase(
      codePoint,
      fontFamily: fontFamily,
      fontPackage: fontPackage,
      matchTextDirection: matchTextDirection,
    );
  }

  ZacIconData fromJson(Map<String, Object?> json) {
    return ZacIconData.fromJson(json);
  }
}

/// @nodoc
const $ZacIconData = _$ZacIconDataTearOff();

/// @nodoc
mixin _$ZacIconData {
  int get codePoint => throw _privateConstructorUsedError;
  String? get fontFamily => throw _privateConstructorUsedError;
  String? get fontPackage => throw _privateConstructorUsedError;
  bool? get matchTextDirection => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int codePoint, String? fontFamily,
            String? fontPackage, bool? matchTextDirection)
        base,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int codePoint, String? fontFamily, String? fontPackage,
            bool? matchTextDirection)?
        base,
  }) =>
      throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ZacIconDataBase value) base,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ZacIconDataBase value)? base,
  }) =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ZacIconDataCopyWith<ZacIconData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ZacIconDataCopyWith<$Res> {
  factory $ZacIconDataCopyWith(
          ZacIconData value, $Res Function(ZacIconData) then) =
      _$ZacIconDataCopyWithImpl<$Res>;
  $Res call(
      {int codePoint,
      String? fontFamily,
      String? fontPackage,
      bool? matchTextDirection});
}

/// @nodoc
class _$ZacIconDataCopyWithImpl<$Res> implements $ZacIconDataCopyWith<$Res> {
  _$ZacIconDataCopyWithImpl(this._value, this._then);

  final ZacIconData _value;
  // ignore: unused_field
  final $Res Function(ZacIconData) _then;

  @override
  $Res call({
    Object? codePoint = freezed,
    Object? fontFamily = freezed,
    Object? fontPackage = freezed,
    Object? matchTextDirection = freezed,
  }) {
    return _then(_value.copyWith(
      codePoint: codePoint == freezed
          ? _value.codePoint
          : codePoint // ignore: cast_nullable_to_non_nullable
              as int,
      fontFamily: fontFamily == freezed
          ? _value.fontFamily
          : fontFamily // ignore: cast_nullable_to_non_nullable
              as String?,
      fontPackage: fontPackage == freezed
          ? _value.fontPackage
          : fontPackage // ignore: cast_nullable_to_non_nullable
              as String?,
      matchTextDirection: matchTextDirection == freezed
          ? _value.matchTextDirection
          : matchTextDirection // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
abstract class _$ZacIconDataBaseCopyWith<$Res>
    implements $ZacIconDataCopyWith<$Res> {
  factory _$ZacIconDataBaseCopyWith(
          _ZacIconDataBase value, $Res Function(_ZacIconDataBase) then) =
      __$ZacIconDataBaseCopyWithImpl<$Res>;
  @override
  $Res call(
      {int codePoint,
      String? fontFamily,
      String? fontPackage,
      bool? matchTextDirection});
}

/// @nodoc
class __$ZacIconDataBaseCopyWithImpl<$Res>
    extends _$ZacIconDataCopyWithImpl<$Res>
    implements _$ZacIconDataBaseCopyWith<$Res> {
  __$ZacIconDataBaseCopyWithImpl(
      _ZacIconDataBase _value, $Res Function(_ZacIconDataBase) _then)
      : super(_value, (v) => _then(v as _ZacIconDataBase));

  @override
  _ZacIconDataBase get _value => super._value as _ZacIconDataBase;

  @override
  $Res call({
    Object? codePoint = freezed,
    Object? fontFamily = freezed,
    Object? fontPackage = freezed,
    Object? matchTextDirection = freezed,
  }) {
    return _then(_ZacIconDataBase(
      codePoint == freezed
          ? _value.codePoint
          : codePoint // ignore: cast_nullable_to_non_nullable
              as int,
      fontFamily: fontFamily == freezed
          ? _value.fontFamily
          : fontFamily // ignore: cast_nullable_to_non_nullable
              as String?,
      fontPackage: fontPackage == freezed
          ? _value.fontPackage
          : fontPackage // ignore: cast_nullable_to_non_nullable
              as String?,
      matchTextDirection: matchTextDirection == freezed
          ? _value.matchTextDirection
          : matchTextDirection // ignore: cast_nullable_to_non_nullable
              as bool?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
@FreezedUnionValue('zac:widget:iconData')
class _$_ZacIconDataBase extends _ZacIconDataBase {
  _$_ZacIconDataBase(this.codePoint,
      {this.fontFamily, this.fontPackage, this.matchTextDirection})
      : super._();

  factory _$_ZacIconDataBase.fromJson(Map<String, dynamic> json) =>
      _$$_ZacIconDataBaseFromJson(json);

  @override
  final int codePoint;
  @override
  final String? fontFamily;
  @override
  final String? fontPackage;
  @override
  final bool? matchTextDirection;

  @override
  String toString() {
    return 'ZacIconData.base(codePoint: $codePoint, fontFamily: $fontFamily, fontPackage: $fontPackage, matchTextDirection: $matchTextDirection)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ZacIconDataBase &&
            const DeepCollectionEquality().equals(other.codePoint, codePoint) &&
            const DeepCollectionEquality()
                .equals(other.fontFamily, fontFamily) &&
            const DeepCollectionEquality()
                .equals(other.fontPackage, fontPackage) &&
            const DeepCollectionEquality()
                .equals(other.matchTextDirection, matchTextDirection));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(codePoint),
      const DeepCollectionEquality().hash(fontFamily),
      const DeepCollectionEquality().hash(fontPackage),
      const DeepCollectionEquality().hash(matchTextDirection));

  @JsonKey(ignore: true)
  @override
  _$ZacIconDataBaseCopyWith<_ZacIconDataBase> get copyWith =>
      __$ZacIconDataBaseCopyWithImpl<_ZacIconDataBase>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int codePoint, String? fontFamily,
            String? fontPackage, bool? matchTextDirection)
        base,
  }) {
    return base(codePoint, fontFamily, fontPackage, matchTextDirection);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int codePoint, String? fontFamily, String? fontPackage,
            bool? matchTextDirection)?
        base,
  }) {
    return base?.call(codePoint, fontFamily, fontPackage, matchTextDirection);
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ZacIconDataBase value) base,
  }) {
    return base(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_ZacIconDataBase value)? base,
  }) {
    return base?.call(this);
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$_ZacIconDataBaseToJson(this);
  }
}

abstract class _ZacIconDataBase extends ZacIconData {
  factory _ZacIconDataBase(int codePoint,
      {String? fontFamily,
      String? fontPackage,
      bool? matchTextDirection}) = _$_ZacIconDataBase;
  _ZacIconDataBase._() : super._();

  factory _ZacIconDataBase.fromJson(Map<String, dynamic> json) =
      _$_ZacIconDataBase.fromJson;

  @override
  int get codePoint;
  @override
  String? get fontFamily;
  @override
  String? get fontPackage;
  @override
  bool? get matchTextDirection;
  @override
  @JsonKey(ignore: true)
  _$ZacIconDataBaseCopyWith<_ZacIconDataBase> get copyWith =>
      throw _privateConstructorUsedError;
}
