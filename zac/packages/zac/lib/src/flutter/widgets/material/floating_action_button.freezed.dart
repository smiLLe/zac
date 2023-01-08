// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'floating_action_button.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FlutterFloatingActionButton _$FlutterFloatingActionButtonFromJson(
    Map<String, dynamic> json) {
  switch (json['builder']) {
    case 'f:1:FloatingActionButton':
      return _FlutterFloatingActionButton.fromJson(json);
    case 'f:1:FloatingActionButton.extended':
      return _Extended.fromJson(json);
    case 'f:1:FloatingActionButton.large':
      return _Large.fromJson(json);
    case 'f:1:FloatingActionButton.small':
      return _Small.fromJson(json);

    default:
      throw CheckedFromJsonException(
          json,
          'builder',
          'FlutterFloatingActionButton',
          'Invalid union type "${json['builder']}"!');
  }
}

/// @nodoc
mixin _$FlutterFloatingActionButton {
  ZacBuilder<Key?>? get key => throw _privateConstructorUsedError;
  ZacBuilder<String?>? get tooltip => throw _privateConstructorUsedError;
  ZacBuilder<Color?>? get foregroundColor => throw _privateConstructorUsedError;
  ZacBuilder<Color?>? get backgroundColor => throw _privateConstructorUsedError;
  ZacBuilder<Color?>? get focusColor => throw _privateConstructorUsedError;
  ZacBuilder<Color?>? get hoverColor => throw _privateConstructorUsedError;
  ZacBuilder<Color?>? get splashColor => throw _privateConstructorUsedError;
  ZacBuilder<Object?>? get heroTag => throw _privateConstructorUsedError;
  ZacBuilder<double?>? get elevation => throw _privateConstructorUsedError;
  ZacBuilder<double?>? get focusElevation => throw _privateConstructorUsedError;
  ZacBuilder<double?>? get hoverElevation => throw _privateConstructorUsedError;
  ZacBuilder<double?>? get highlightElevation =>
      throw _privateConstructorUsedError;
  ZacBuilder<double?>? get disabledElevation =>
      throw _privateConstructorUsedError;
  ZacListBuilder<ZacAction, List<ZacAction>?>? get onPressed =>
      throw _privateConstructorUsedError;
  ZacBuilder<MouseCursor?>? get mouseCursor =>
      throw _privateConstructorUsedError;
  ZacBuilder<ShapeBorder?>? get shape => throw _privateConstructorUsedError;
  ZacBuilder<Clip?>? get clipBehavior => throw _privateConstructorUsedError;
  ZacBuilder<FocusNode?>? get focusNode => throw _privateConstructorUsedError;
  ZacBuilder<bool?>? get autofocus => throw _privateConstructorUsedError;
  ZacBuilder<MaterialTapTargetSize?>? get materialTapTargetSize =>
      throw _privateConstructorUsedError;
  ZacBuilder<bool?>? get enableFeedback => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_FlutterFloatingActionButton value) $default, {
    required TResult Function(_Extended value) extended,
    required TResult Function(_Large value) large,
    required TResult Function(_Small value) small,
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_FlutterFloatingActionButton extends _FlutterFloatingActionButton {
  _$_FlutterFloatingActionButton(
      {this.key,
      this.child,
      this.tooltip,
      this.foregroundColor,
      this.backgroundColor,
      this.focusColor,
      this.hoverColor,
      this.splashColor,
      this.heroTag,
      this.elevation,
      this.focusElevation,
      this.hoverElevation,
      this.highlightElevation,
      this.disabledElevation,
      this.onPressed,
      this.mouseCursor,
      this.mini,
      this.shape,
      this.clipBehavior,
      this.focusNode,
      this.autofocus,
      this.materialTapTargetSize,
      this.isExtended,
      this.enableFeedback,
      final String? $type})
      : $type = $type ?? 'f:1:FloatingActionButton',
        super._();

  factory _$_FlutterFloatingActionButton.fromJson(Map<String, dynamic> json) =>
      _$$_FlutterFloatingActionButtonFromJson(json);

  @override
  final ZacBuilder<Key?>? key;
  @override
  final ZacBuilder<Widget?>? child;
  @override
  final ZacBuilder<String?>? tooltip;
  @override
  final ZacBuilder<Color?>? foregroundColor;
  @override
  final ZacBuilder<Color?>? backgroundColor;
  @override
  final ZacBuilder<Color?>? focusColor;
  @override
  final ZacBuilder<Color?>? hoverColor;
  @override
  final ZacBuilder<Color?>? splashColor;
  @override
  final ZacBuilder<Object?>? heroTag;
  @override
  final ZacBuilder<double?>? elevation;
  @override
  final ZacBuilder<double?>? focusElevation;
  @override
  final ZacBuilder<double?>? hoverElevation;
  @override
  final ZacBuilder<double?>? highlightElevation;
  @override
  final ZacBuilder<double?>? disabledElevation;
  @override
  final ZacListBuilder<ZacAction, List<ZacAction>?>? onPressed;
  @override
  final ZacBuilder<MouseCursor?>? mouseCursor;
  @override
  final ZacBuilder<bool?>? mini;
  @override
  final ZacBuilder<ShapeBorder?>? shape;
  @override
  final ZacBuilder<Clip?>? clipBehavior;
  @override
  final ZacBuilder<FocusNode?>? focusNode;
  @override
  final ZacBuilder<bool?>? autofocus;
  @override
  final ZacBuilder<MaterialTapTargetSize?>? materialTapTargetSize;
  @override
  final ZacBuilder<bool?>? isExtended;
  @override
  final ZacBuilder<bool?>? enableFeedback;

  @JsonKey(name: 'builder')
  final String $type;

  @override
  String toString() {
    return 'FlutterFloatingActionButton(key: $key, child: $child, tooltip: $tooltip, foregroundColor: $foregroundColor, backgroundColor: $backgroundColor, focusColor: $focusColor, hoverColor: $hoverColor, splashColor: $splashColor, heroTag: $heroTag, elevation: $elevation, focusElevation: $focusElevation, hoverElevation: $hoverElevation, highlightElevation: $highlightElevation, disabledElevation: $disabledElevation, onPressed: $onPressed, mouseCursor: $mouseCursor, mini: $mini, shape: $shape, clipBehavior: $clipBehavior, focusNode: $focusNode, autofocus: $autofocus, materialTapTargetSize: $materialTapTargetSize, isExtended: $isExtended, enableFeedback: $enableFeedback)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FlutterFloatingActionButton &&
            (identical(other.key, key) || other.key == key) &&
            (identical(other.child, child) || other.child == child) &&
            (identical(other.tooltip, tooltip) || other.tooltip == tooltip) &&
            (identical(other.foregroundColor, foregroundColor) ||
                other.foregroundColor == foregroundColor) &&
            (identical(other.backgroundColor, backgroundColor) ||
                other.backgroundColor == backgroundColor) &&
            (identical(other.focusColor, focusColor) ||
                other.focusColor == focusColor) &&
            (identical(other.hoverColor, hoverColor) ||
                other.hoverColor == hoverColor) &&
            (identical(other.splashColor, splashColor) ||
                other.splashColor == splashColor) &&
            (identical(other.heroTag, heroTag) || other.heroTag == heroTag) &&
            (identical(other.elevation, elevation) ||
                other.elevation == elevation) &&
            (identical(other.focusElevation, focusElevation) ||
                other.focusElevation == focusElevation) &&
            (identical(other.hoverElevation, hoverElevation) ||
                other.hoverElevation == hoverElevation) &&
            (identical(other.highlightElevation, highlightElevation) ||
                other.highlightElevation == highlightElevation) &&
            (identical(other.disabledElevation, disabledElevation) ||
                other.disabledElevation == disabledElevation) &&
            (identical(other.onPressed, onPressed) ||
                other.onPressed == onPressed) &&
            (identical(other.mouseCursor, mouseCursor) ||
                other.mouseCursor == mouseCursor) &&
            (identical(other.mini, mini) || other.mini == mini) &&
            (identical(other.shape, shape) || other.shape == shape) &&
            (identical(other.clipBehavior, clipBehavior) ||
                other.clipBehavior == clipBehavior) &&
            (identical(other.focusNode, focusNode) ||
                other.focusNode == focusNode) &&
            (identical(other.autofocus, autofocus) ||
                other.autofocus == autofocus) &&
            (identical(other.materialTapTargetSize, materialTapTargetSize) ||
                other.materialTapTargetSize == materialTapTargetSize) &&
            (identical(other.isExtended, isExtended) ||
                other.isExtended == isExtended) &&
            (identical(other.enableFeedback, enableFeedback) ||
                other.enableFeedback == enableFeedback));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        key,
        child,
        tooltip,
        foregroundColor,
        backgroundColor,
        focusColor,
        hoverColor,
        splashColor,
        heroTag,
        elevation,
        focusElevation,
        hoverElevation,
        highlightElevation,
        disabledElevation,
        onPressed,
        mouseCursor,
        mini,
        shape,
        clipBehavior,
        focusNode,
        autofocus,
        materialTapTargetSize,
        isExtended,
        enableFeedback
      ]);

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_FlutterFloatingActionButton value) $default, {
    required TResult Function(_Extended value) extended,
    required TResult Function(_Large value) large,
    required TResult Function(_Small value) small,
  }) {
    return $default(this);
  }
}

abstract class _FlutterFloatingActionButton
    extends FlutterFloatingActionButton {
  factory _FlutterFloatingActionButton(
          {final ZacBuilder<Key?>? key,
          final ZacBuilder<Widget?>? child,
          final ZacBuilder<String?>? tooltip,
          final ZacBuilder<Color?>? foregroundColor,
          final ZacBuilder<Color?>? backgroundColor,
          final ZacBuilder<Color?>? focusColor,
          final ZacBuilder<Color?>? hoverColor,
          final ZacBuilder<Color?>? splashColor,
          final ZacBuilder<Object?>? heroTag,
          final ZacBuilder<double?>? elevation,
          final ZacBuilder<double?>? focusElevation,
          final ZacBuilder<double?>? hoverElevation,
          final ZacBuilder<double?>? highlightElevation,
          final ZacBuilder<double?>? disabledElevation,
          final ZacListBuilder<ZacAction, List<ZacAction>?>? onPressed,
          final ZacBuilder<MouseCursor?>? mouseCursor,
          final ZacBuilder<bool?>? mini,
          final ZacBuilder<ShapeBorder?>? shape,
          final ZacBuilder<Clip?>? clipBehavior,
          final ZacBuilder<FocusNode?>? focusNode,
          final ZacBuilder<bool?>? autofocus,
          final ZacBuilder<MaterialTapTargetSize?>? materialTapTargetSize,
          final ZacBuilder<bool?>? isExtended,
          final ZacBuilder<bool?>? enableFeedback}) =
      _$_FlutterFloatingActionButton;
  _FlutterFloatingActionButton._() : super._();

  factory _FlutterFloatingActionButton.fromJson(Map<String, dynamic> json) =
      _$_FlutterFloatingActionButton.fromJson;

  @override
  ZacBuilder<Key?>? get key;
  ZacBuilder<Widget?>? get child;
  @override
  ZacBuilder<String?>? get tooltip;
  @override
  ZacBuilder<Color?>? get foregroundColor;
  @override
  ZacBuilder<Color?>? get backgroundColor;
  @override
  ZacBuilder<Color?>? get focusColor;
  @override
  ZacBuilder<Color?>? get hoverColor;
  @override
  ZacBuilder<Color?>? get splashColor;
  @override
  ZacBuilder<Object?>? get heroTag;
  @override
  ZacBuilder<double?>? get elevation;
  @override
  ZacBuilder<double?>? get focusElevation;
  @override
  ZacBuilder<double?>? get hoverElevation;
  @override
  ZacBuilder<double?>? get highlightElevation;
  @override
  ZacBuilder<double?>? get disabledElevation;
  @override
  ZacListBuilder<ZacAction, List<ZacAction>?>? get onPressed;
  @override
  ZacBuilder<MouseCursor?>? get mouseCursor;
  ZacBuilder<bool?>? get mini;
  @override
  ZacBuilder<ShapeBorder?>? get shape;
  @override
  ZacBuilder<Clip?>? get clipBehavior;
  @override
  ZacBuilder<FocusNode?>? get focusNode;
  @override
  ZacBuilder<bool?>? get autofocus;
  @override
  ZacBuilder<MaterialTapTargetSize?>? get materialTapTargetSize;
  ZacBuilder<bool?>? get isExtended;
  @override
  ZacBuilder<bool?>? get enableFeedback;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_Extended extends _Extended {
  _$_Extended(
      {this.key,
      this.tooltip,
      this.foregroundColor,
      this.backgroundColor,
      this.focusColor,
      this.hoverColor,
      this.splashColor,
      this.heroTag,
      this.elevation,
      this.focusElevation,
      this.hoverElevation,
      this.highlightElevation,
      this.disabledElevation,
      this.onPressed,
      this.mouseCursor,
      this.shape,
      this.clipBehavior,
      this.focusNode,
      this.autofocus,
      this.materialTapTargetSize,
      this.isExtended,
      this.enableFeedback,
      this.extendedIconLabelSpacing,
      this.extendedPadding,
      this.extendedTextStyle,
      this.icon,
      required this.label,
      final String? $type})
      : $type = $type ?? 'f:1:FloatingActionButton.extended',
        super._();

  factory _$_Extended.fromJson(Map<String, dynamic> json) =>
      _$$_ExtendedFromJson(json);

  @override
  final ZacBuilder<Key?>? key;
  @override
  final ZacBuilder<String?>? tooltip;
  @override
  final ZacBuilder<Color?>? foregroundColor;
  @override
  final ZacBuilder<Color?>? backgroundColor;
  @override
  final ZacBuilder<Color?>? focusColor;
  @override
  final ZacBuilder<Color?>? hoverColor;
  @override
  final ZacBuilder<Color?>? splashColor;
  @override
  final ZacBuilder<Object?>? heroTag;
  @override
  final ZacBuilder<double?>? elevation;
  @override
  final ZacBuilder<double?>? focusElevation;
  @override
  final ZacBuilder<double?>? hoverElevation;
  @override
  final ZacBuilder<double?>? highlightElevation;
  @override
  final ZacBuilder<double?>? disabledElevation;
  @override
  final ZacListBuilder<ZacAction, List<ZacAction>?>? onPressed;
  @override
  final ZacBuilder<MouseCursor?>? mouseCursor;
  @override
  final ZacBuilder<ShapeBorder?>? shape;
  @override
  final ZacBuilder<Clip?>? clipBehavior;
  @override
  final ZacBuilder<FocusNode?>? focusNode;
  @override
  final ZacBuilder<bool?>? autofocus;
  @override
  final ZacBuilder<MaterialTapTargetSize?>? materialTapTargetSize;
  @override
  final ZacBuilder<bool?>? isExtended;
  @override
  final ZacBuilder<bool?>? enableFeedback;
  @override
  final ZacBuilder<double?>? extendedIconLabelSpacing;
  @override
  final ZacBuilder<EdgeInsetsGeometry?>? extendedPadding;
  @override
  final ZacBuilder<TextStyle?>? extendedTextStyle;
  @override
  final ZacBuilder<Widget?>? icon;
  @override
  final ZacBuilder<Widget> label;

  @JsonKey(name: 'builder')
  final String $type;

  @override
  String toString() {
    return 'FlutterFloatingActionButton.extended(key: $key, tooltip: $tooltip, foregroundColor: $foregroundColor, backgroundColor: $backgroundColor, focusColor: $focusColor, hoverColor: $hoverColor, splashColor: $splashColor, heroTag: $heroTag, elevation: $elevation, focusElevation: $focusElevation, hoverElevation: $hoverElevation, highlightElevation: $highlightElevation, disabledElevation: $disabledElevation, onPressed: $onPressed, mouseCursor: $mouseCursor, shape: $shape, clipBehavior: $clipBehavior, focusNode: $focusNode, autofocus: $autofocus, materialTapTargetSize: $materialTapTargetSize, isExtended: $isExtended, enableFeedback: $enableFeedback, extendedIconLabelSpacing: $extendedIconLabelSpacing, extendedPadding: $extendedPadding, extendedTextStyle: $extendedTextStyle, icon: $icon, label: $label)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Extended &&
            (identical(other.key, key) || other.key == key) &&
            (identical(other.tooltip, tooltip) || other.tooltip == tooltip) &&
            (identical(other.foregroundColor, foregroundColor) ||
                other.foregroundColor == foregroundColor) &&
            (identical(other.backgroundColor, backgroundColor) ||
                other.backgroundColor == backgroundColor) &&
            (identical(other.focusColor, focusColor) ||
                other.focusColor == focusColor) &&
            (identical(other.hoverColor, hoverColor) ||
                other.hoverColor == hoverColor) &&
            (identical(other.splashColor, splashColor) ||
                other.splashColor == splashColor) &&
            (identical(other.heroTag, heroTag) || other.heroTag == heroTag) &&
            (identical(other.elevation, elevation) ||
                other.elevation == elevation) &&
            (identical(other.focusElevation, focusElevation) ||
                other.focusElevation == focusElevation) &&
            (identical(other.hoverElevation, hoverElevation) ||
                other.hoverElevation == hoverElevation) &&
            (identical(other.highlightElevation, highlightElevation) ||
                other.highlightElevation == highlightElevation) &&
            (identical(other.disabledElevation, disabledElevation) ||
                other.disabledElevation == disabledElevation) &&
            (identical(other.onPressed, onPressed) ||
                other.onPressed == onPressed) &&
            (identical(other.mouseCursor, mouseCursor) ||
                other.mouseCursor == mouseCursor) &&
            (identical(other.shape, shape) || other.shape == shape) &&
            (identical(other.clipBehavior, clipBehavior) ||
                other.clipBehavior == clipBehavior) &&
            (identical(other.focusNode, focusNode) ||
                other.focusNode == focusNode) &&
            (identical(other.autofocus, autofocus) ||
                other.autofocus == autofocus) &&
            (identical(other.materialTapTargetSize, materialTapTargetSize) ||
                other.materialTapTargetSize == materialTapTargetSize) &&
            (identical(other.isExtended, isExtended) ||
                other.isExtended == isExtended) &&
            (identical(other.enableFeedback, enableFeedback) ||
                other.enableFeedback == enableFeedback) &&
            (identical(
                    other.extendedIconLabelSpacing, extendedIconLabelSpacing) ||
                other.extendedIconLabelSpacing == extendedIconLabelSpacing) &&
            (identical(other.extendedPadding, extendedPadding) ||
                other.extendedPadding == extendedPadding) &&
            (identical(other.extendedTextStyle, extendedTextStyle) ||
                other.extendedTextStyle == extendedTextStyle) &&
            (identical(other.icon, icon) || other.icon == icon) &&
            (identical(other.label, label) || other.label == label));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        key,
        tooltip,
        foregroundColor,
        backgroundColor,
        focusColor,
        hoverColor,
        splashColor,
        heroTag,
        elevation,
        focusElevation,
        hoverElevation,
        highlightElevation,
        disabledElevation,
        onPressed,
        mouseCursor,
        shape,
        clipBehavior,
        focusNode,
        autofocus,
        materialTapTargetSize,
        isExtended,
        enableFeedback,
        extendedIconLabelSpacing,
        extendedPadding,
        extendedTextStyle,
        icon,
        label
      ]);

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_FlutterFloatingActionButton value) $default, {
    required TResult Function(_Extended value) extended,
    required TResult Function(_Large value) large,
    required TResult Function(_Small value) small,
  }) {
    return extended(this);
  }
}

abstract class _Extended extends FlutterFloatingActionButton {
  factory _Extended(
      {final ZacBuilder<Key?>? key,
      final ZacBuilder<String?>? tooltip,
      final ZacBuilder<Color?>? foregroundColor,
      final ZacBuilder<Color?>? backgroundColor,
      final ZacBuilder<Color?>? focusColor,
      final ZacBuilder<Color?>? hoverColor,
      final ZacBuilder<Color?>? splashColor,
      final ZacBuilder<Object?>? heroTag,
      final ZacBuilder<double?>? elevation,
      final ZacBuilder<double?>? focusElevation,
      final ZacBuilder<double?>? hoverElevation,
      final ZacBuilder<double?>? highlightElevation,
      final ZacBuilder<double?>? disabledElevation,
      final ZacListBuilder<ZacAction, List<ZacAction>?>? onPressed,
      final ZacBuilder<MouseCursor?>? mouseCursor,
      final ZacBuilder<ShapeBorder?>? shape,
      final ZacBuilder<Clip?>? clipBehavior,
      final ZacBuilder<FocusNode?>? focusNode,
      final ZacBuilder<bool?>? autofocus,
      final ZacBuilder<MaterialTapTargetSize?>? materialTapTargetSize,
      final ZacBuilder<bool?>? isExtended,
      final ZacBuilder<bool?>? enableFeedback,
      final ZacBuilder<double?>? extendedIconLabelSpacing,
      final ZacBuilder<EdgeInsetsGeometry?>? extendedPadding,
      final ZacBuilder<TextStyle?>? extendedTextStyle,
      final ZacBuilder<Widget?>? icon,
      required final ZacBuilder<Widget> label}) = _$_Extended;
  _Extended._() : super._();

  factory _Extended.fromJson(Map<String, dynamic> json) = _$_Extended.fromJson;

  @override
  ZacBuilder<Key?>? get key;
  @override
  ZacBuilder<String?>? get tooltip;
  @override
  ZacBuilder<Color?>? get foregroundColor;
  @override
  ZacBuilder<Color?>? get backgroundColor;
  @override
  ZacBuilder<Color?>? get focusColor;
  @override
  ZacBuilder<Color?>? get hoverColor;
  @override
  ZacBuilder<Color?>? get splashColor;
  @override
  ZacBuilder<Object?>? get heroTag;
  @override
  ZacBuilder<double?>? get elevation;
  @override
  ZacBuilder<double?>? get focusElevation;
  @override
  ZacBuilder<double?>? get hoverElevation;
  @override
  ZacBuilder<double?>? get highlightElevation;
  @override
  ZacBuilder<double?>? get disabledElevation;
  @override
  ZacListBuilder<ZacAction, List<ZacAction>?>? get onPressed;
  @override
  ZacBuilder<MouseCursor?>? get mouseCursor;
  @override
  ZacBuilder<ShapeBorder?>? get shape;
  @override
  ZacBuilder<Clip?>? get clipBehavior;
  @override
  ZacBuilder<FocusNode?>? get focusNode;
  @override
  ZacBuilder<bool?>? get autofocus;
  @override
  ZacBuilder<MaterialTapTargetSize?>? get materialTapTargetSize;
  ZacBuilder<bool?>? get isExtended;
  @override
  ZacBuilder<bool?>? get enableFeedback;
  ZacBuilder<double?>? get extendedIconLabelSpacing;
  ZacBuilder<EdgeInsetsGeometry?>? get extendedPadding;
  ZacBuilder<TextStyle?>? get extendedTextStyle;
  ZacBuilder<Widget?>? get icon;
  ZacBuilder<Widget> get label;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_Large extends _Large {
  _$_Large(
      {this.key,
      this.child,
      this.tooltip,
      this.foregroundColor,
      this.backgroundColor,
      this.focusColor,
      this.hoverColor,
      this.splashColor,
      this.heroTag,
      this.elevation,
      this.focusElevation,
      this.hoverElevation,
      this.highlightElevation,
      this.disabledElevation,
      this.onPressed,
      this.mouseCursor,
      this.shape,
      this.clipBehavior,
      this.focusNode,
      this.autofocus,
      this.materialTapTargetSize,
      this.enableFeedback,
      final String? $type})
      : $type = $type ?? 'f:1:FloatingActionButton.large',
        super._();

  factory _$_Large.fromJson(Map<String, dynamic> json) =>
      _$$_LargeFromJson(json);

  @override
  final ZacBuilder<Key?>? key;
  @override
  final ZacBuilder<Widget?>? child;
  @override
  final ZacBuilder<String?>? tooltip;
  @override
  final ZacBuilder<Color?>? foregroundColor;
  @override
  final ZacBuilder<Color?>? backgroundColor;
  @override
  final ZacBuilder<Color?>? focusColor;
  @override
  final ZacBuilder<Color?>? hoverColor;
  @override
  final ZacBuilder<Color?>? splashColor;
  @override
  final ZacBuilder<Object?>? heroTag;
  @override
  final ZacBuilder<double?>? elevation;
  @override
  final ZacBuilder<double?>? focusElevation;
  @override
  final ZacBuilder<double?>? hoverElevation;
  @override
  final ZacBuilder<double?>? highlightElevation;
  @override
  final ZacBuilder<double?>? disabledElevation;
  @override
  final ZacListBuilder<ZacAction, List<ZacAction>?>? onPressed;
  @override
  final ZacBuilder<MouseCursor?>? mouseCursor;
  @override
  final ZacBuilder<ShapeBorder?>? shape;
  @override
  final ZacBuilder<Clip?>? clipBehavior;
  @override
  final ZacBuilder<FocusNode?>? focusNode;
  @override
  final ZacBuilder<bool?>? autofocus;
  @override
  final ZacBuilder<MaterialTapTargetSize?>? materialTapTargetSize;
  @override
  final ZacBuilder<bool?>? enableFeedback;

  @JsonKey(name: 'builder')
  final String $type;

  @override
  String toString() {
    return 'FlutterFloatingActionButton.large(key: $key, child: $child, tooltip: $tooltip, foregroundColor: $foregroundColor, backgroundColor: $backgroundColor, focusColor: $focusColor, hoverColor: $hoverColor, splashColor: $splashColor, heroTag: $heroTag, elevation: $elevation, focusElevation: $focusElevation, hoverElevation: $hoverElevation, highlightElevation: $highlightElevation, disabledElevation: $disabledElevation, onPressed: $onPressed, mouseCursor: $mouseCursor, shape: $shape, clipBehavior: $clipBehavior, focusNode: $focusNode, autofocus: $autofocus, materialTapTargetSize: $materialTapTargetSize, enableFeedback: $enableFeedback)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Large &&
            (identical(other.key, key) || other.key == key) &&
            (identical(other.child, child) || other.child == child) &&
            (identical(other.tooltip, tooltip) || other.tooltip == tooltip) &&
            (identical(other.foregroundColor, foregroundColor) ||
                other.foregroundColor == foregroundColor) &&
            (identical(other.backgroundColor, backgroundColor) ||
                other.backgroundColor == backgroundColor) &&
            (identical(other.focusColor, focusColor) ||
                other.focusColor == focusColor) &&
            (identical(other.hoverColor, hoverColor) ||
                other.hoverColor == hoverColor) &&
            (identical(other.splashColor, splashColor) ||
                other.splashColor == splashColor) &&
            (identical(other.heroTag, heroTag) || other.heroTag == heroTag) &&
            (identical(other.elevation, elevation) ||
                other.elevation == elevation) &&
            (identical(other.focusElevation, focusElevation) ||
                other.focusElevation == focusElevation) &&
            (identical(other.hoverElevation, hoverElevation) ||
                other.hoverElevation == hoverElevation) &&
            (identical(other.highlightElevation, highlightElevation) ||
                other.highlightElevation == highlightElevation) &&
            (identical(other.disabledElevation, disabledElevation) ||
                other.disabledElevation == disabledElevation) &&
            (identical(other.onPressed, onPressed) ||
                other.onPressed == onPressed) &&
            (identical(other.mouseCursor, mouseCursor) ||
                other.mouseCursor == mouseCursor) &&
            (identical(other.shape, shape) || other.shape == shape) &&
            (identical(other.clipBehavior, clipBehavior) ||
                other.clipBehavior == clipBehavior) &&
            (identical(other.focusNode, focusNode) ||
                other.focusNode == focusNode) &&
            (identical(other.autofocus, autofocus) ||
                other.autofocus == autofocus) &&
            (identical(other.materialTapTargetSize, materialTapTargetSize) ||
                other.materialTapTargetSize == materialTapTargetSize) &&
            (identical(other.enableFeedback, enableFeedback) ||
                other.enableFeedback == enableFeedback));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        key,
        child,
        tooltip,
        foregroundColor,
        backgroundColor,
        focusColor,
        hoverColor,
        splashColor,
        heroTag,
        elevation,
        focusElevation,
        hoverElevation,
        highlightElevation,
        disabledElevation,
        onPressed,
        mouseCursor,
        shape,
        clipBehavior,
        focusNode,
        autofocus,
        materialTapTargetSize,
        enableFeedback
      ]);

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_FlutterFloatingActionButton value) $default, {
    required TResult Function(_Extended value) extended,
    required TResult Function(_Large value) large,
    required TResult Function(_Small value) small,
  }) {
    return large(this);
  }
}

abstract class _Large extends FlutterFloatingActionButton {
  factory _Large(
      {final ZacBuilder<Key?>? key,
      final ZacBuilder<Widget?>? child,
      final ZacBuilder<String?>? tooltip,
      final ZacBuilder<Color?>? foregroundColor,
      final ZacBuilder<Color?>? backgroundColor,
      final ZacBuilder<Color?>? focusColor,
      final ZacBuilder<Color?>? hoverColor,
      final ZacBuilder<Color?>? splashColor,
      final ZacBuilder<Object?>? heroTag,
      final ZacBuilder<double?>? elevation,
      final ZacBuilder<double?>? focusElevation,
      final ZacBuilder<double?>? hoverElevation,
      final ZacBuilder<double?>? highlightElevation,
      final ZacBuilder<double?>? disabledElevation,
      final ZacListBuilder<ZacAction, List<ZacAction>?>? onPressed,
      final ZacBuilder<MouseCursor?>? mouseCursor,
      final ZacBuilder<ShapeBorder?>? shape,
      final ZacBuilder<Clip?>? clipBehavior,
      final ZacBuilder<FocusNode?>? focusNode,
      final ZacBuilder<bool?>? autofocus,
      final ZacBuilder<MaterialTapTargetSize?>? materialTapTargetSize,
      final ZacBuilder<bool?>? enableFeedback}) = _$_Large;
  _Large._() : super._();

  factory _Large.fromJson(Map<String, dynamic> json) = _$_Large.fromJson;

  @override
  ZacBuilder<Key?>? get key;
  ZacBuilder<Widget?>? get child;
  @override
  ZacBuilder<String?>? get tooltip;
  @override
  ZacBuilder<Color?>? get foregroundColor;
  @override
  ZacBuilder<Color?>? get backgroundColor;
  @override
  ZacBuilder<Color?>? get focusColor;
  @override
  ZacBuilder<Color?>? get hoverColor;
  @override
  ZacBuilder<Color?>? get splashColor;
  @override
  ZacBuilder<Object?>? get heroTag;
  @override
  ZacBuilder<double?>? get elevation;
  @override
  ZacBuilder<double?>? get focusElevation;
  @override
  ZacBuilder<double?>? get hoverElevation;
  @override
  ZacBuilder<double?>? get highlightElevation;
  @override
  ZacBuilder<double?>? get disabledElevation;
  @override
  ZacListBuilder<ZacAction, List<ZacAction>?>? get onPressed;
  @override
  ZacBuilder<MouseCursor?>? get mouseCursor;
  @override
  ZacBuilder<ShapeBorder?>? get shape;
  @override
  ZacBuilder<Clip?>? get clipBehavior;
  @override
  ZacBuilder<FocusNode?>? get focusNode;
  @override
  ZacBuilder<bool?>? get autofocus;
  @override
  ZacBuilder<MaterialTapTargetSize?>? get materialTapTargetSize;
  @override
  ZacBuilder<bool?>? get enableFeedback;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_Small extends _Small {
  _$_Small(
      {this.key,
      this.child,
      this.tooltip,
      this.foregroundColor,
      this.backgroundColor,
      this.focusColor,
      this.hoverColor,
      this.splashColor,
      this.heroTag,
      this.elevation,
      this.focusElevation,
      this.hoverElevation,
      this.highlightElevation,
      this.disabledElevation,
      this.onPressed,
      this.mouseCursor,
      this.shape,
      this.clipBehavior,
      this.focusNode,
      this.autofocus,
      this.materialTapTargetSize,
      this.enableFeedback,
      final String? $type})
      : $type = $type ?? 'f:1:FloatingActionButton.small',
        super._();

  factory _$_Small.fromJson(Map<String, dynamic> json) =>
      _$$_SmallFromJson(json);

  @override
  final ZacBuilder<Key?>? key;
  @override
  final ZacBuilder<Widget?>? child;
  @override
  final ZacBuilder<String?>? tooltip;
  @override
  final ZacBuilder<Color?>? foregroundColor;
  @override
  final ZacBuilder<Color?>? backgroundColor;
  @override
  final ZacBuilder<Color?>? focusColor;
  @override
  final ZacBuilder<Color?>? hoverColor;
  @override
  final ZacBuilder<Color?>? splashColor;
  @override
  final ZacBuilder<Object?>? heroTag;
  @override
  final ZacBuilder<double?>? elevation;
  @override
  final ZacBuilder<double?>? focusElevation;
  @override
  final ZacBuilder<double?>? hoverElevation;
  @override
  final ZacBuilder<double?>? highlightElevation;
  @override
  final ZacBuilder<double?>? disabledElevation;
  @override
  final ZacListBuilder<ZacAction, List<ZacAction>?>? onPressed;
  @override
  final ZacBuilder<MouseCursor?>? mouseCursor;
  @override
  final ZacBuilder<ShapeBorder?>? shape;
  @override
  final ZacBuilder<Clip?>? clipBehavior;
  @override
  final ZacBuilder<FocusNode?>? focusNode;
  @override
  final ZacBuilder<bool?>? autofocus;
  @override
  final ZacBuilder<MaterialTapTargetSize?>? materialTapTargetSize;
  @override
  final ZacBuilder<bool?>? enableFeedback;

  @JsonKey(name: 'builder')
  final String $type;

  @override
  String toString() {
    return 'FlutterFloatingActionButton.small(key: $key, child: $child, tooltip: $tooltip, foregroundColor: $foregroundColor, backgroundColor: $backgroundColor, focusColor: $focusColor, hoverColor: $hoverColor, splashColor: $splashColor, heroTag: $heroTag, elevation: $elevation, focusElevation: $focusElevation, hoverElevation: $hoverElevation, highlightElevation: $highlightElevation, disabledElevation: $disabledElevation, onPressed: $onPressed, mouseCursor: $mouseCursor, shape: $shape, clipBehavior: $clipBehavior, focusNode: $focusNode, autofocus: $autofocus, materialTapTargetSize: $materialTapTargetSize, enableFeedback: $enableFeedback)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Small &&
            (identical(other.key, key) || other.key == key) &&
            (identical(other.child, child) || other.child == child) &&
            (identical(other.tooltip, tooltip) || other.tooltip == tooltip) &&
            (identical(other.foregroundColor, foregroundColor) ||
                other.foregroundColor == foregroundColor) &&
            (identical(other.backgroundColor, backgroundColor) ||
                other.backgroundColor == backgroundColor) &&
            (identical(other.focusColor, focusColor) ||
                other.focusColor == focusColor) &&
            (identical(other.hoverColor, hoverColor) ||
                other.hoverColor == hoverColor) &&
            (identical(other.splashColor, splashColor) ||
                other.splashColor == splashColor) &&
            (identical(other.heroTag, heroTag) || other.heroTag == heroTag) &&
            (identical(other.elevation, elevation) ||
                other.elevation == elevation) &&
            (identical(other.focusElevation, focusElevation) ||
                other.focusElevation == focusElevation) &&
            (identical(other.hoverElevation, hoverElevation) ||
                other.hoverElevation == hoverElevation) &&
            (identical(other.highlightElevation, highlightElevation) ||
                other.highlightElevation == highlightElevation) &&
            (identical(other.disabledElevation, disabledElevation) ||
                other.disabledElevation == disabledElevation) &&
            (identical(other.onPressed, onPressed) ||
                other.onPressed == onPressed) &&
            (identical(other.mouseCursor, mouseCursor) ||
                other.mouseCursor == mouseCursor) &&
            (identical(other.shape, shape) || other.shape == shape) &&
            (identical(other.clipBehavior, clipBehavior) ||
                other.clipBehavior == clipBehavior) &&
            (identical(other.focusNode, focusNode) ||
                other.focusNode == focusNode) &&
            (identical(other.autofocus, autofocus) ||
                other.autofocus == autofocus) &&
            (identical(other.materialTapTargetSize, materialTapTargetSize) ||
                other.materialTapTargetSize == materialTapTargetSize) &&
            (identical(other.enableFeedback, enableFeedback) ||
                other.enableFeedback == enableFeedback));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        key,
        child,
        tooltip,
        foregroundColor,
        backgroundColor,
        focusColor,
        hoverColor,
        splashColor,
        heroTag,
        elevation,
        focusElevation,
        hoverElevation,
        highlightElevation,
        disabledElevation,
        onPressed,
        mouseCursor,
        shape,
        clipBehavior,
        focusNode,
        autofocus,
        materialTapTargetSize,
        enableFeedback
      ]);

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_FlutterFloatingActionButton value) $default, {
    required TResult Function(_Extended value) extended,
    required TResult Function(_Large value) large,
    required TResult Function(_Small value) small,
  }) {
    return small(this);
  }
}

abstract class _Small extends FlutterFloatingActionButton {
  factory _Small(
      {final ZacBuilder<Key?>? key,
      final ZacBuilder<Widget?>? child,
      final ZacBuilder<String?>? tooltip,
      final ZacBuilder<Color?>? foregroundColor,
      final ZacBuilder<Color?>? backgroundColor,
      final ZacBuilder<Color?>? focusColor,
      final ZacBuilder<Color?>? hoverColor,
      final ZacBuilder<Color?>? splashColor,
      final ZacBuilder<Object?>? heroTag,
      final ZacBuilder<double?>? elevation,
      final ZacBuilder<double?>? focusElevation,
      final ZacBuilder<double?>? hoverElevation,
      final ZacBuilder<double?>? highlightElevation,
      final ZacBuilder<double?>? disabledElevation,
      final ZacListBuilder<ZacAction, List<ZacAction>?>? onPressed,
      final ZacBuilder<MouseCursor?>? mouseCursor,
      final ZacBuilder<ShapeBorder?>? shape,
      final ZacBuilder<Clip?>? clipBehavior,
      final ZacBuilder<FocusNode?>? focusNode,
      final ZacBuilder<bool?>? autofocus,
      final ZacBuilder<MaterialTapTargetSize?>? materialTapTargetSize,
      final ZacBuilder<bool?>? enableFeedback}) = _$_Small;
  _Small._() : super._();

  factory _Small.fromJson(Map<String, dynamic> json) = _$_Small.fromJson;

  @override
  ZacBuilder<Key?>? get key;
  ZacBuilder<Widget?>? get child;
  @override
  ZacBuilder<String?>? get tooltip;
  @override
  ZacBuilder<Color?>? get foregroundColor;
  @override
  ZacBuilder<Color?>? get backgroundColor;
  @override
  ZacBuilder<Color?>? get focusColor;
  @override
  ZacBuilder<Color?>? get hoverColor;
  @override
  ZacBuilder<Color?>? get splashColor;
  @override
  ZacBuilder<Object?>? get heroTag;
  @override
  ZacBuilder<double?>? get elevation;
  @override
  ZacBuilder<double?>? get focusElevation;
  @override
  ZacBuilder<double?>? get hoverElevation;
  @override
  ZacBuilder<double?>? get highlightElevation;
  @override
  ZacBuilder<double?>? get disabledElevation;
  @override
  ZacListBuilder<ZacAction, List<ZacAction>?>? get onPressed;
  @override
  ZacBuilder<MouseCursor?>? get mouseCursor;
  @override
  ZacBuilder<ShapeBorder?>? get shape;
  @override
  ZacBuilder<Clip?>? get clipBehavior;
  @override
  ZacBuilder<FocusNode?>? get focusNode;
  @override
  ZacBuilder<bool?>? get autofocus;
  @override
  ZacBuilder<MaterialTapTargetSize?>? get materialTapTargetSize;
  @override
  ZacBuilder<bool?>? get enableFeedback;
}
