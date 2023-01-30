// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dialog.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FlutterDialogs _$FlutterDialogsFromJson(Map<String, dynamic> json) {
  switch (json['builder']) {
    case 'f:1:Dialog':
      return _FlutterDialogsDialog.fromJson(json);
    case 'f:1:AlertDialog':
      return _FlutterDialogsAlertDialog.fromJson(json);
    case 'f:1:SimpleDialog':
      return _FlutterDialogsSimpleDialog.fromJson(json);
    case 'f:1:SimpleDialogOption':
      return _FlutterDialogsSimpleDialogOption.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'builder', 'FlutterDialogs',
          'Invalid union type "${json['builder']}"!');
  }
}

/// @nodoc
mixin _$FlutterDialogs {
  ZacBuilder<Key?>? get key => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FlutterDialogsDialog value) dialog,
    required TResult Function(_FlutterDialogsAlertDialog value) alertDialog,
    required TResult Function(_FlutterDialogsSimpleDialog value) simpleDialog,
    required TResult Function(_FlutterDialogsSimpleDialogOption value)
        simpleDialogOption,
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_FlutterDialogsDialog extends _FlutterDialogsDialog {
  _$_FlutterDialogsDialog(
      {this.key,
      this.backgroundColor,
      this.elevation,
      this.insetPadding,
      this.clipBehavior,
      this.shape,
      this.alignment,
      this.child,
      final String? $type})
      : $type = $type ?? 'f:1:Dialog',
        super._();

  factory _$_FlutterDialogsDialog.fromJson(Map<String, dynamic> json) =>
      _$$_FlutterDialogsDialogFromJson(json);

  @override
  final ZacBuilder<Key?>? key;
  @override
  final ZacBuilder<Color?>? backgroundColor;
  @override
  final ZacBuilder<double?>? elevation;
// Duration insetAnimationDuration = const Duration(milliseconds: 100),
// FlutterCurve insetAnimationCurve = Curves.decelerate,
  @override
  final ZacBuilder<EdgeInsets?>? insetPadding;
  @override
  final ZacBuilder<Clip?>? clipBehavior;
  @override
  final ZacBuilder<ShapeBorder?>? shape;
  @override
  final ZacBuilder<AlignmentGeometry?>? alignment;
  @override
  final ZacBuilder<Widget?>? child;

  @JsonKey(name: 'builder')
  final String $type;

  @override
  String toString() {
    return 'FlutterDialogs.dialog(key: $key, backgroundColor: $backgroundColor, elevation: $elevation, insetPadding: $insetPadding, clipBehavior: $clipBehavior, shape: $shape, alignment: $alignment, child: $child)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FlutterDialogsDialog &&
            (identical(other.key, key) || other.key == key) &&
            (identical(other.backgroundColor, backgroundColor) ||
                other.backgroundColor == backgroundColor) &&
            (identical(other.elevation, elevation) ||
                other.elevation == elevation) &&
            (identical(other.insetPadding, insetPadding) ||
                other.insetPadding == insetPadding) &&
            (identical(other.clipBehavior, clipBehavior) ||
                other.clipBehavior == clipBehavior) &&
            (identical(other.shape, shape) || other.shape == shape) &&
            (identical(other.alignment, alignment) ||
                other.alignment == alignment) &&
            (identical(other.child, child) || other.child == child));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, key, backgroundColor, elevation,
      insetPadding, clipBehavior, shape, alignment, child);

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FlutterDialogsDialog value) dialog,
    required TResult Function(_FlutterDialogsAlertDialog value) alertDialog,
    required TResult Function(_FlutterDialogsSimpleDialog value) simpleDialog,
    required TResult Function(_FlutterDialogsSimpleDialogOption value)
        simpleDialogOption,
  }) {
    return dialog(this);
  }
}

abstract class _FlutterDialogsDialog extends FlutterDialogs {
  factory _FlutterDialogsDialog(
      {final ZacBuilder<Key?>? key,
      final ZacBuilder<Color?>? backgroundColor,
      final ZacBuilder<double?>? elevation,
      final ZacBuilder<EdgeInsets?>? insetPadding,
      final ZacBuilder<Clip?>? clipBehavior,
      final ZacBuilder<ShapeBorder?>? shape,
      final ZacBuilder<AlignmentGeometry?>? alignment,
      final ZacBuilder<Widget?>? child}) = _$_FlutterDialogsDialog;
  _FlutterDialogsDialog._() : super._();

  factory _FlutterDialogsDialog.fromJson(Map<String, dynamic> json) =
      _$_FlutterDialogsDialog.fromJson;

  @override
  ZacBuilder<Key?>? get key;
  ZacBuilder<Color?>? get backgroundColor;
  ZacBuilder<double?>?
      get elevation; // Duration insetAnimationDuration = const Duration(milliseconds: 100),
// FlutterCurve insetAnimationCurve = Curves.decelerate,
  ZacBuilder<EdgeInsets?>? get insetPadding;
  ZacBuilder<Clip?>? get clipBehavior;
  ZacBuilder<ShapeBorder?>? get shape;
  ZacBuilder<AlignmentGeometry?>? get alignment;
  ZacBuilder<Widget?>? get child;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_FlutterDialogsAlertDialog extends _FlutterDialogsAlertDialog {
  _$_FlutterDialogsAlertDialog(
      {this.key,
      this.title,
      this.content,
      this.actions,
      this.titlePadding,
      this.titleTextStyle,
      this.contentPadding,
      this.contentTextStyle,
      this.actionsPadding,
      this.actionsAlignment,
      this.actionsOverflowDirection,
      this.actionsOverflowButtonSpacing,
      this.buttonPadding,
      this.backgroundColor,
      this.elevation,
      this.semanticLabel,
      this.insetPadding,
      this.clipBehavior,
      this.shape,
      this.alignment,
      this.scrollable,
      final String? $type})
      : $type = $type ?? 'f:1:AlertDialog',
        super._();

  factory _$_FlutterDialogsAlertDialog.fromJson(Map<String, dynamic> json) =>
      _$$_FlutterDialogsAlertDialogFromJson(json);

  @override
  final ZacBuilder<Key?>? key;
  @override
  final ZacBuilder<Widget?>? title;
  @override
  final ZacBuilder<Widget?>? content;
  @override
  final ZacBuilder<List<Widget>?>? actions;
  @override
  final ZacBuilder<EdgeInsetsGeometry?>? titlePadding;
  @override
  final ZacBuilder<TextStyle?>? titleTextStyle;
  @override
  final ZacBuilder<EdgeInsetsGeometry?>? contentPadding;
  @override
  final ZacBuilder<TextStyle?>? contentTextStyle;
  @override
  final ZacBuilder<EdgeInsetsGeometry?>? actionsPadding;
  @override
  final ZacBuilder<MainAxisAlignment?>? actionsAlignment;
  @override
  final ZacBuilder<VerticalDirection?>? actionsOverflowDirection;
  @override
  final ZacBuilder<double?>? actionsOverflowButtonSpacing;
  @override
  final ZacBuilder<EdgeInsetsGeometry?>? buttonPadding;
  @override
  final ZacBuilder<Color?>? backgroundColor;
  @override
  final ZacBuilder<double?>? elevation;
  @override
  final ZacBuilder<String?>? semanticLabel;
  @override
  final ZacBuilder<EdgeInsets?>? insetPadding;
  @override
  final ZacBuilder<Clip?>? clipBehavior;
  @override
  final ZacBuilder<ShapeBorder?>? shape;
  @override
  final ZacBuilder<AlignmentGeometry?>? alignment;
  @override
  final ZacBuilder<bool?>? scrollable;

  @JsonKey(name: 'builder')
  final String $type;

  @override
  String toString() {
    return 'FlutterDialogs.alertDialog(key: $key, title: $title, content: $content, actions: $actions, titlePadding: $titlePadding, titleTextStyle: $titleTextStyle, contentPadding: $contentPadding, contentTextStyle: $contentTextStyle, actionsPadding: $actionsPadding, actionsAlignment: $actionsAlignment, actionsOverflowDirection: $actionsOverflowDirection, actionsOverflowButtonSpacing: $actionsOverflowButtonSpacing, buttonPadding: $buttonPadding, backgroundColor: $backgroundColor, elevation: $elevation, semanticLabel: $semanticLabel, insetPadding: $insetPadding, clipBehavior: $clipBehavior, shape: $shape, alignment: $alignment, scrollable: $scrollable)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FlutterDialogsAlertDialog &&
            (identical(other.key, key) || other.key == key) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.actions, actions) || other.actions == actions) &&
            (identical(other.titlePadding, titlePadding) ||
                other.titlePadding == titlePadding) &&
            (identical(other.titleTextStyle, titleTextStyle) ||
                other.titleTextStyle == titleTextStyle) &&
            (identical(other.contentPadding, contentPadding) ||
                other.contentPadding == contentPadding) &&
            (identical(other.contentTextStyle, contentTextStyle) ||
                other.contentTextStyle == contentTextStyle) &&
            (identical(other.actionsPadding, actionsPadding) ||
                other.actionsPadding == actionsPadding) &&
            (identical(other.actionsAlignment, actionsAlignment) ||
                other.actionsAlignment == actionsAlignment) &&
            (identical(
                    other.actionsOverflowDirection, actionsOverflowDirection) ||
                other.actionsOverflowDirection == actionsOverflowDirection) &&
            (identical(other.actionsOverflowButtonSpacing,
                    actionsOverflowButtonSpacing) ||
                other.actionsOverflowButtonSpacing ==
                    actionsOverflowButtonSpacing) &&
            (identical(other.buttonPadding, buttonPadding) ||
                other.buttonPadding == buttonPadding) &&
            (identical(other.backgroundColor, backgroundColor) ||
                other.backgroundColor == backgroundColor) &&
            (identical(other.elevation, elevation) ||
                other.elevation == elevation) &&
            (identical(other.semanticLabel, semanticLabel) ||
                other.semanticLabel == semanticLabel) &&
            (identical(other.insetPadding, insetPadding) ||
                other.insetPadding == insetPadding) &&
            (identical(other.clipBehavior, clipBehavior) ||
                other.clipBehavior == clipBehavior) &&
            (identical(other.shape, shape) || other.shape == shape) &&
            (identical(other.alignment, alignment) ||
                other.alignment == alignment) &&
            (identical(other.scrollable, scrollable) ||
                other.scrollable == scrollable));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        key,
        title,
        content,
        actions,
        titlePadding,
        titleTextStyle,
        contentPadding,
        contentTextStyle,
        actionsPadding,
        actionsAlignment,
        actionsOverflowDirection,
        actionsOverflowButtonSpacing,
        buttonPadding,
        backgroundColor,
        elevation,
        semanticLabel,
        insetPadding,
        clipBehavior,
        shape,
        alignment,
        scrollable
      ]);

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FlutterDialogsDialog value) dialog,
    required TResult Function(_FlutterDialogsAlertDialog value) alertDialog,
    required TResult Function(_FlutterDialogsSimpleDialog value) simpleDialog,
    required TResult Function(_FlutterDialogsSimpleDialogOption value)
        simpleDialogOption,
  }) {
    return alertDialog(this);
  }
}

abstract class _FlutterDialogsAlertDialog extends FlutterDialogs {
  factory _FlutterDialogsAlertDialog(
      {final ZacBuilder<Key?>? key,
      final ZacBuilder<Widget?>? title,
      final ZacBuilder<Widget?>? content,
      final ZacBuilder<List<Widget>?>? actions,
      final ZacBuilder<EdgeInsetsGeometry?>? titlePadding,
      final ZacBuilder<TextStyle?>? titleTextStyle,
      final ZacBuilder<EdgeInsetsGeometry?>? contentPadding,
      final ZacBuilder<TextStyle?>? contentTextStyle,
      final ZacBuilder<EdgeInsetsGeometry?>? actionsPadding,
      final ZacBuilder<MainAxisAlignment?>? actionsAlignment,
      final ZacBuilder<VerticalDirection?>? actionsOverflowDirection,
      final ZacBuilder<double?>? actionsOverflowButtonSpacing,
      final ZacBuilder<EdgeInsetsGeometry?>? buttonPadding,
      final ZacBuilder<Color?>? backgroundColor,
      final ZacBuilder<double?>? elevation,
      final ZacBuilder<String?>? semanticLabel,
      final ZacBuilder<EdgeInsets?>? insetPadding,
      final ZacBuilder<Clip?>? clipBehavior,
      final ZacBuilder<ShapeBorder?>? shape,
      final ZacBuilder<AlignmentGeometry?>? alignment,
      final ZacBuilder<bool?>? scrollable}) = _$_FlutterDialogsAlertDialog;
  _FlutterDialogsAlertDialog._() : super._();

  factory _FlutterDialogsAlertDialog.fromJson(Map<String, dynamic> json) =
      _$_FlutterDialogsAlertDialog.fromJson;

  @override
  ZacBuilder<Key?>? get key;
  ZacBuilder<Widget?>? get title;
  ZacBuilder<Widget?>? get content;
  ZacBuilder<List<Widget>?>? get actions;
  ZacBuilder<EdgeInsetsGeometry?>? get titlePadding;
  ZacBuilder<TextStyle?>? get titleTextStyle;
  ZacBuilder<EdgeInsetsGeometry?>? get contentPadding;
  ZacBuilder<TextStyle?>? get contentTextStyle;
  ZacBuilder<EdgeInsetsGeometry?>? get actionsPadding;
  ZacBuilder<MainAxisAlignment?>? get actionsAlignment;
  ZacBuilder<VerticalDirection?>? get actionsOverflowDirection;
  ZacBuilder<double?>? get actionsOverflowButtonSpacing;
  ZacBuilder<EdgeInsetsGeometry?>? get buttonPadding;
  ZacBuilder<Color?>? get backgroundColor;
  ZacBuilder<double?>? get elevation;
  ZacBuilder<String?>? get semanticLabel;
  ZacBuilder<EdgeInsets?>? get insetPadding;
  ZacBuilder<Clip?>? get clipBehavior;
  ZacBuilder<ShapeBorder?>? get shape;
  ZacBuilder<AlignmentGeometry?>? get alignment;
  ZacBuilder<bool?>? get scrollable;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_FlutterDialogsSimpleDialog extends _FlutterDialogsSimpleDialog {
  _$_FlutterDialogsSimpleDialog(
      {this.key,
      this.title,
      this.children,
      this.titlePadding,
      this.titleTextStyle,
      this.contentPadding,
      this.backgroundColor,
      this.elevation,
      this.semanticLabel,
      this.insetPadding,
      this.clipBehavior,
      this.shape,
      this.alignment,
      final String? $type})
      : $type = $type ?? 'f:1:SimpleDialog',
        super._();

  factory _$_FlutterDialogsSimpleDialog.fromJson(Map<String, dynamic> json) =>
      _$$_FlutterDialogsSimpleDialogFromJson(json);

  @override
  final ZacBuilder<Key?>? key;
  @override
  final ZacBuilder<Widget?>? title;
  @override
  final ZacBuilder<List<Widget>?>? children;
  @override
  final ZacBuilder<EdgeInsetsGeometry?>? titlePadding;
  @override
  final ZacBuilder<TextStyle?>? titleTextStyle;
  @override
  final ZacBuilder<EdgeInsetsGeometry?>? contentPadding;
  @override
  final ZacBuilder<Color?>? backgroundColor;
  @override
  final ZacBuilder<double?>? elevation;
  @override
  final ZacBuilder<String?>? semanticLabel;
  @override
  final ZacBuilder<EdgeInsets?>? insetPadding;
  @override
  final ZacBuilder<Clip?>? clipBehavior;
  @override
  final ZacBuilder<ShapeBorder?>? shape;
  @override
  final ZacBuilder<AlignmentGeometry?>? alignment;

  @JsonKey(name: 'builder')
  final String $type;

  @override
  String toString() {
    return 'FlutterDialogs.simpleDialog(key: $key, title: $title, children: $children, titlePadding: $titlePadding, titleTextStyle: $titleTextStyle, contentPadding: $contentPadding, backgroundColor: $backgroundColor, elevation: $elevation, semanticLabel: $semanticLabel, insetPadding: $insetPadding, clipBehavior: $clipBehavior, shape: $shape, alignment: $alignment)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FlutterDialogsSimpleDialog &&
            (identical(other.key, key) || other.key == key) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.children, children) ||
                other.children == children) &&
            (identical(other.titlePadding, titlePadding) ||
                other.titlePadding == titlePadding) &&
            (identical(other.titleTextStyle, titleTextStyle) ||
                other.titleTextStyle == titleTextStyle) &&
            (identical(other.contentPadding, contentPadding) ||
                other.contentPadding == contentPadding) &&
            (identical(other.backgroundColor, backgroundColor) ||
                other.backgroundColor == backgroundColor) &&
            (identical(other.elevation, elevation) ||
                other.elevation == elevation) &&
            (identical(other.semanticLabel, semanticLabel) ||
                other.semanticLabel == semanticLabel) &&
            (identical(other.insetPadding, insetPadding) ||
                other.insetPadding == insetPadding) &&
            (identical(other.clipBehavior, clipBehavior) ||
                other.clipBehavior == clipBehavior) &&
            (identical(other.shape, shape) || other.shape == shape) &&
            (identical(other.alignment, alignment) ||
                other.alignment == alignment));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      key,
      title,
      children,
      titlePadding,
      titleTextStyle,
      contentPadding,
      backgroundColor,
      elevation,
      semanticLabel,
      insetPadding,
      clipBehavior,
      shape,
      alignment);

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FlutterDialogsDialog value) dialog,
    required TResult Function(_FlutterDialogsAlertDialog value) alertDialog,
    required TResult Function(_FlutterDialogsSimpleDialog value) simpleDialog,
    required TResult Function(_FlutterDialogsSimpleDialogOption value)
        simpleDialogOption,
  }) {
    return simpleDialog(this);
  }
}

abstract class _FlutterDialogsSimpleDialog extends FlutterDialogs {
  factory _FlutterDialogsSimpleDialog(
          {final ZacBuilder<Key?>? key,
          final ZacBuilder<Widget?>? title,
          final ZacBuilder<List<Widget>?>? children,
          final ZacBuilder<EdgeInsetsGeometry?>? titlePadding,
          final ZacBuilder<TextStyle?>? titleTextStyle,
          final ZacBuilder<EdgeInsetsGeometry?>? contentPadding,
          final ZacBuilder<Color?>? backgroundColor,
          final ZacBuilder<double?>? elevation,
          final ZacBuilder<String?>? semanticLabel,
          final ZacBuilder<EdgeInsets?>? insetPadding,
          final ZacBuilder<Clip?>? clipBehavior,
          final ZacBuilder<ShapeBorder?>? shape,
          final ZacBuilder<AlignmentGeometry?>? alignment}) =
      _$_FlutterDialogsSimpleDialog;
  _FlutterDialogsSimpleDialog._() : super._();

  factory _FlutterDialogsSimpleDialog.fromJson(Map<String, dynamic> json) =
      _$_FlutterDialogsSimpleDialog.fromJson;

  @override
  ZacBuilder<Key?>? get key;
  ZacBuilder<Widget?>? get title;
  ZacBuilder<List<Widget>?>? get children;
  ZacBuilder<EdgeInsetsGeometry?>? get titlePadding;
  ZacBuilder<TextStyle?>? get titleTextStyle;
  ZacBuilder<EdgeInsetsGeometry?>? get contentPadding;
  ZacBuilder<Color?>? get backgroundColor;
  ZacBuilder<double?>? get elevation;
  ZacBuilder<String?>? get semanticLabel;
  ZacBuilder<EdgeInsets?>? get insetPadding;
  ZacBuilder<Clip?>? get clipBehavior;
  ZacBuilder<ShapeBorder?>? get shape;
  ZacBuilder<AlignmentGeometry?>? get alignment;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_FlutterDialogsSimpleDialogOption
    extends _FlutterDialogsSimpleDialogOption {
  _$_FlutterDialogsSimpleDialogOption(
      {this.key, this.child, this.onPressed, this.padding, final String? $type})
      : $type = $type ?? 'f:1:SimpleDialogOption',
        super._();

  factory _$_FlutterDialogsSimpleDialogOption.fromJson(
          Map<String, dynamic> json) =>
      _$$_FlutterDialogsSimpleDialogOptionFromJson(json);

  @override
  final ZacBuilder<Key?>? key;
  @override
  final ZacBuilder<Widget?>? child;
  @override
  final ZacBuilder<List<ZacAction>?>? onPressed;
  @override
  final ZacBuilder<EdgeInsets?>? padding;

  @JsonKey(name: 'builder')
  final String $type;

  @override
  String toString() {
    return 'FlutterDialogs.simpleDialogOption(key: $key, child: $child, onPressed: $onPressed, padding: $padding)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FlutterDialogsSimpleDialogOption &&
            (identical(other.key, key) || other.key == key) &&
            (identical(other.child, child) || other.child == child) &&
            (identical(other.onPressed, onPressed) ||
                other.onPressed == onPressed) &&
            (identical(other.padding, padding) || other.padding == padding));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, key, child, onPressed, padding);

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FlutterDialogsDialog value) dialog,
    required TResult Function(_FlutterDialogsAlertDialog value) alertDialog,
    required TResult Function(_FlutterDialogsSimpleDialog value) simpleDialog,
    required TResult Function(_FlutterDialogsSimpleDialogOption value)
        simpleDialogOption,
  }) {
    return simpleDialogOption(this);
  }
}

abstract class _FlutterDialogsSimpleDialogOption extends FlutterDialogs {
  factory _FlutterDialogsSimpleDialogOption(
          {final ZacBuilder<Key?>? key,
          final ZacBuilder<Widget?>? child,
          final ZacBuilder<List<ZacAction>?>? onPressed,
          final ZacBuilder<EdgeInsets?>? padding}) =
      _$_FlutterDialogsSimpleDialogOption;
  _FlutterDialogsSimpleDialogOption._() : super._();

  factory _FlutterDialogsSimpleDialogOption.fromJson(
      Map<String, dynamic> json) = _$_FlutterDialogsSimpleDialogOption.fromJson;

  @override
  ZacBuilder<Key?>? get key;
  ZacBuilder<Widget?>? get child;
  ZacBuilder<List<ZacAction>?>? get onPressed;
  ZacBuilder<EdgeInsets?>? get padding;
}

FlutterDialogActions _$FlutterDialogActionsFromJson(Map<String, dynamic> json) {
  return _FlutterDialogActionsShowDialog.fromJson(json);
}

/// @nodoc
mixin _$FlutterDialogActions {
  ZacBuilder<Widget> get child => throw _privateConstructorUsedError;
  ZacBuilder<bool?>? get barrierDismissible =>
      throw _privateConstructorUsedError;
  ZacBuilder<Color?>? get barrierColor => throw _privateConstructorUsedError;
  ZacBuilder<String?>? get barrierLabel => throw _privateConstructorUsedError;
  ZacBuilder<bool?>? get useSafeArea => throw _privateConstructorUsedError;
  ZacBuilder<bool?>? get useRootNavigator => throw _privateConstructorUsedError;
  ZacBuilder<RouteSettings?>? get routeSettings =>
      throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FlutterDialogActionsShowDialog value) showDialog,
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_FlutterDialogActionsShowDialog
    extends _FlutterDialogActionsShowDialog {
  _$_FlutterDialogActionsShowDialog(
      {required this.child,
      this.barrierDismissible,
      this.barrierColor,
      this.barrierLabel,
      this.useSafeArea,
      this.useRootNavigator,
      this.routeSettings})
      : super._();

  factory _$_FlutterDialogActionsShowDialog.fromJson(
          Map<String, dynamic> json) =>
      _$$_FlutterDialogActionsShowDialogFromJson(json);

  @override
  final ZacBuilder<Widget> child;
  @override
  final ZacBuilder<bool?>? barrierDismissible;
  @override
  final ZacBuilder<Color?>? barrierColor;
  @override
  final ZacBuilder<String?>? barrierLabel;
  @override
  final ZacBuilder<bool?>? useSafeArea;
  @override
  final ZacBuilder<bool?>? useRootNavigator;
  @override
  final ZacBuilder<RouteSettings?>? routeSettings;

  @override
  String toString() {
    return 'FlutterDialogActions.showDialog(child: $child, barrierDismissible: $barrierDismissible, barrierColor: $barrierColor, barrierLabel: $barrierLabel, useSafeArea: $useSafeArea, useRootNavigator: $useRootNavigator, routeSettings: $routeSettings)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FlutterDialogActionsShowDialog &&
            (identical(other.child, child) || other.child == child) &&
            (identical(other.barrierDismissible, barrierDismissible) ||
                other.barrierDismissible == barrierDismissible) &&
            (identical(other.barrierColor, barrierColor) ||
                other.barrierColor == barrierColor) &&
            (identical(other.barrierLabel, barrierLabel) ||
                other.barrierLabel == barrierLabel) &&
            (identical(other.useSafeArea, useSafeArea) ||
                other.useSafeArea == useSafeArea) &&
            (identical(other.useRootNavigator, useRootNavigator) ||
                other.useRootNavigator == useRootNavigator) &&
            (identical(other.routeSettings, routeSettings) ||
                other.routeSettings == routeSettings));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, child, barrierDismissible,
      barrierColor, barrierLabel, useSafeArea, useRootNavigator, routeSettings);

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FlutterDialogActionsShowDialog value) showDialog,
  }) {
    return showDialog(this);
  }
}

abstract class _FlutterDialogActionsShowDialog extends FlutterDialogActions {
  factory _FlutterDialogActionsShowDialog(
          {required final ZacBuilder<Widget> child,
          final ZacBuilder<bool?>? barrierDismissible,
          final ZacBuilder<Color?>? barrierColor,
          final ZacBuilder<String?>? barrierLabel,
          final ZacBuilder<bool?>? useSafeArea,
          final ZacBuilder<bool?>? useRootNavigator,
          final ZacBuilder<RouteSettings?>? routeSettings}) =
      _$_FlutterDialogActionsShowDialog;
  _FlutterDialogActionsShowDialog._() : super._();

  factory _FlutterDialogActionsShowDialog.fromJson(Map<String, dynamic> json) =
      _$_FlutterDialogActionsShowDialog.fromJson;

  @override
  ZacBuilder<Widget> get child;
  @override
  ZacBuilder<bool?>? get barrierDismissible;
  @override
  ZacBuilder<Color?>? get barrierColor;
  @override
  ZacBuilder<String?>? get barrierLabel;
  @override
  ZacBuilder<bool?>? get useSafeArea;
  @override
  ZacBuilder<bool?>? get useRootNavigator;
  @override
  ZacBuilder<RouteSettings?>? get routeSettings;
}
