// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'scaffold.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FlutterScaffold _$FlutterScaffoldFromJson(Map<String, dynamic> json) {
  switch (json['converter']) {
    case 'f:1:Scaffold':
      return _FlutterScaffold.fromJson(json);
    case 'f:1:Scaffold.openDrawer':
      return _FlutterScaffoldOpenDrawer.fromJson(json);
    case 'f:1:Scaffold.openEndDrawer':
      return _FlutterScaffoldOpenEndDrawer.fromJson(json);
    case 'f:1:Scaffold.showBodyScrim':
      return _FlutterScaffoldShowBodyScrim.fromJson(json);
    case 'f:1:Scaffold.showBottomSheet':
      return _FlutterScaffoldShowBottomSheet.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'converter', 'FlutterScaffold',
          'Invalid union type "${json['converter']}"!');
  }
}

/// @nodoc
mixin _$FlutterScaffold {
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_FlutterScaffold value) $default, {
    required TResult Function(_FlutterScaffoldOpenDrawer value) openDrawer,
    required TResult Function(_FlutterScaffoldOpenEndDrawer value)
        openEndDrawer,
    required TResult Function(_FlutterScaffoldShowBodyScrim value)
        showBodyScrim,
    required TResult Function(_FlutterScaffoldShowBottomSheet value)
        showBottomSheet,
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_FlutterScaffold extends _FlutterScaffold {
  _$_FlutterScaffold(
      {this.key,
      this.appBar,
      this.body,
      this.floatingActionButton,
      this.persistentFooterButtons,
      this.drawer,
      this.endDrawer,
      this.bottomNavigationBar,
      this.bottomSheet,
      this.backgroundColor,
      this.resizeToAvoidBottomInset,
      this.primary,
      this.extendBody,
      this.extendBodyBehindAppBar,
      this.drawerScrimColor,
      this.drawerEdgeDragWidth,
      this.drawerEnableOpenDragGesture,
      this.endDrawerEnableOpenDragGesture,
      this.restorationId,
      final String? $type})
      : $type = $type ?? 'f:1:Scaffold',
        super._();

  factory _$_FlutterScaffold.fromJson(Map<String, dynamic> json) =>
      _$$_FlutterScaffoldFromJson(json);

  @override
  final FlutterKey? key;
// PreferredSizeWidget?
  @override
  final FlutterWidget? appBar;
  @override
  final FlutterWidget? body;
  @override
  final FlutterWidget? floatingActionButton;
// FloatingActionButtonLocation? floatingActionButtonLocation,
// FloatingActionButtonAnimator? floatingActionButtonAnimator,
  @override
  final ListOfZacWidget? persistentFooterButtons;
  @override
  final FlutterWidget? drawer;
// DrawerCallback? onDrawerChanged,
  @override
  final FlutterWidget? endDrawer;
// DrawerCallback? onEndDrawerChanged,
  @override
  final FlutterWidget? bottomNavigationBar;
  @override
  final FlutterWidget? bottomSheet;
  @override
  final FlutterColor? backgroundColor;
  @override
  final ZacValue<bool>? resizeToAvoidBottomInset;
  @override
  final ZacValue<bool>? primary;
// DragStartBehavior drawerDragStartBehavior = DragStartBehavior.start,
  @override
  final ZacValue<bool>? extendBody;
  @override
  final ZacValue<bool>? extendBodyBehindAppBar;
  @override
  final FlutterColor? drawerScrimColor;
  @override
  final ZacValue<double>? drawerEdgeDragWidth;
  @override
  final ZacValue<bool>? drawerEnableOpenDragGesture;
  @override
  final ZacValue<bool>? endDrawerEnableOpenDragGesture;
  @override
  final ZacValue<String>? restorationId;

  @JsonKey(name: 'converter')
  final String $type;

  @override
  String toString() {
    return 'FlutterScaffold(key: $key, appBar: $appBar, body: $body, floatingActionButton: $floatingActionButton, persistentFooterButtons: $persistentFooterButtons, drawer: $drawer, endDrawer: $endDrawer, bottomNavigationBar: $bottomNavigationBar, bottomSheet: $bottomSheet, backgroundColor: $backgroundColor, resizeToAvoidBottomInset: $resizeToAvoidBottomInset, primary: $primary, extendBody: $extendBody, extendBodyBehindAppBar: $extendBodyBehindAppBar, drawerScrimColor: $drawerScrimColor, drawerEdgeDragWidth: $drawerEdgeDragWidth, drawerEnableOpenDragGesture: $drawerEnableOpenDragGesture, endDrawerEnableOpenDragGesture: $endDrawerEnableOpenDragGesture, restorationId: $restorationId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FlutterScaffold &&
            const DeepCollectionEquality().equals(other.key, key) &&
            const DeepCollectionEquality().equals(other.appBar, appBar) &&
            const DeepCollectionEquality().equals(other.body, body) &&
            const DeepCollectionEquality()
                .equals(other.floatingActionButton, floatingActionButton) &&
            const DeepCollectionEquality().equals(
                other.persistentFooterButtons, persistentFooterButtons) &&
            const DeepCollectionEquality().equals(other.drawer, drawer) &&
            const DeepCollectionEquality().equals(other.endDrawer, endDrawer) &&
            const DeepCollectionEquality()
                .equals(other.bottomNavigationBar, bottomNavigationBar) &&
            const DeepCollectionEquality()
                .equals(other.bottomSheet, bottomSheet) &&
            const DeepCollectionEquality()
                .equals(other.backgroundColor, backgroundColor) &&
            const DeepCollectionEquality().equals(
                other.resizeToAvoidBottomInset, resizeToAvoidBottomInset) &&
            const DeepCollectionEquality().equals(other.primary, primary) &&
            const DeepCollectionEquality()
                .equals(other.extendBody, extendBody) &&
            const DeepCollectionEquality()
                .equals(other.extendBodyBehindAppBar, extendBodyBehindAppBar) &&
            const DeepCollectionEquality()
                .equals(other.drawerScrimColor, drawerScrimColor) &&
            const DeepCollectionEquality()
                .equals(other.drawerEdgeDragWidth, drawerEdgeDragWidth) &&
            const DeepCollectionEquality().equals(
                other.drawerEnableOpenDragGesture,
                drawerEnableOpenDragGesture) &&
            const DeepCollectionEquality().equals(
                other.endDrawerEnableOpenDragGesture,
                endDrawerEnableOpenDragGesture) &&
            const DeepCollectionEquality()
                .equals(other.restorationId, restorationId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        const DeepCollectionEquality().hash(key),
        const DeepCollectionEquality().hash(appBar),
        const DeepCollectionEquality().hash(body),
        const DeepCollectionEquality().hash(floatingActionButton),
        const DeepCollectionEquality().hash(persistentFooterButtons),
        const DeepCollectionEquality().hash(drawer),
        const DeepCollectionEquality().hash(endDrawer),
        const DeepCollectionEquality().hash(bottomNavigationBar),
        const DeepCollectionEquality().hash(bottomSheet),
        const DeepCollectionEquality().hash(backgroundColor),
        const DeepCollectionEquality().hash(resizeToAvoidBottomInset),
        const DeepCollectionEquality().hash(primary),
        const DeepCollectionEquality().hash(extendBody),
        const DeepCollectionEquality().hash(extendBodyBehindAppBar),
        const DeepCollectionEquality().hash(drawerScrimColor),
        const DeepCollectionEquality().hash(drawerEdgeDragWidth),
        const DeepCollectionEquality().hash(drawerEnableOpenDragGesture),
        const DeepCollectionEquality().hash(endDrawerEnableOpenDragGesture),
        const DeepCollectionEquality().hash(restorationId)
      ]);

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_FlutterScaffold value) $default, {
    required TResult Function(_FlutterScaffoldOpenDrawer value) openDrawer,
    required TResult Function(_FlutterScaffoldOpenEndDrawer value)
        openEndDrawer,
    required TResult Function(_FlutterScaffoldShowBodyScrim value)
        showBodyScrim,
    required TResult Function(_FlutterScaffoldShowBottomSheet value)
        showBottomSheet,
  }) {
    return $default(this);
  }
}

abstract class _FlutterScaffold extends FlutterScaffold {
  factory _FlutterScaffold(
      {final FlutterKey? key,
      final FlutterWidget? appBar,
      final FlutterWidget? body,
      final FlutterWidget? floatingActionButton,
      final ListOfZacWidget? persistentFooterButtons,
      final FlutterWidget? drawer,
      final FlutterWidget? endDrawer,
      final FlutterWidget? bottomNavigationBar,
      final FlutterWidget? bottomSheet,
      final FlutterColor? backgroundColor,
      final ZacValue<bool>? resizeToAvoidBottomInset,
      final ZacValue<bool>? primary,
      final ZacValue<bool>? extendBody,
      final ZacValue<bool>? extendBodyBehindAppBar,
      final FlutterColor? drawerScrimColor,
      final ZacValue<double>? drawerEdgeDragWidth,
      final ZacValue<bool>? drawerEnableOpenDragGesture,
      final ZacValue<bool>? endDrawerEnableOpenDragGesture,
      final ZacValue<String>? restorationId}) = _$_FlutterScaffold;
  _FlutterScaffold._() : super._();

  factory _FlutterScaffold.fromJson(Map<String, dynamic> json) =
      _$_FlutterScaffold.fromJson;

  FlutterKey? get key; // PreferredSizeWidget?
  FlutterWidget? get appBar;
  FlutterWidget? get body;
  FlutterWidget?
      get floatingActionButton; // FloatingActionButtonLocation? floatingActionButtonLocation,
// FloatingActionButtonAnimator? floatingActionButtonAnimator,
  ListOfZacWidget? get persistentFooterButtons;
  FlutterWidget? get drawer; // DrawerCallback? onDrawerChanged,
  FlutterWidget? get endDrawer; // DrawerCallback? onEndDrawerChanged,
  FlutterWidget? get bottomNavigationBar;
  FlutterWidget? get bottomSheet;
  FlutterColor? get backgroundColor;
  ZacValue<bool>? get resizeToAvoidBottomInset;
  ZacValue<bool>?
      get primary; // DragStartBehavior drawerDragStartBehavior = DragStartBehavior.start,
  ZacValue<bool>? get extendBody;
  ZacValue<bool>? get extendBodyBehindAppBar;
  FlutterColor? get drawerScrimColor;
  ZacValue<double>? get drawerEdgeDragWidth;
  ZacValue<bool>? get drawerEnableOpenDragGesture;
  ZacValue<bool>? get endDrawerEnableOpenDragGesture;
  ZacValue<String>? get restorationId;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_FlutterScaffoldOpenDrawer extends _FlutterScaffoldOpenDrawer {
  _$_FlutterScaffoldOpenDrawer({final String? $type})
      : $type = $type ?? 'f:1:Scaffold.openDrawer',
        super._();

  factory _$_FlutterScaffoldOpenDrawer.fromJson(Map<String, dynamic> json) =>
      _$$_FlutterScaffoldOpenDrawerFromJson(json);

  @JsonKey(name: 'converter')
  final String $type;

  @override
  String toString() {
    return 'FlutterScaffold.openDrawer()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FlutterScaffoldOpenDrawer);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_FlutterScaffold value) $default, {
    required TResult Function(_FlutterScaffoldOpenDrawer value) openDrawer,
    required TResult Function(_FlutterScaffoldOpenEndDrawer value)
        openEndDrawer,
    required TResult Function(_FlutterScaffoldShowBodyScrim value)
        showBodyScrim,
    required TResult Function(_FlutterScaffoldShowBottomSheet value)
        showBottomSheet,
  }) {
    return openDrawer(this);
  }
}

abstract class _FlutterScaffoldOpenDrawer extends FlutterScaffold {
  factory _FlutterScaffoldOpenDrawer() = _$_FlutterScaffoldOpenDrawer;
  _FlutterScaffoldOpenDrawer._() : super._();

  factory _FlutterScaffoldOpenDrawer.fromJson(Map<String, dynamic> json) =
      _$_FlutterScaffoldOpenDrawer.fromJson;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_FlutterScaffoldOpenEndDrawer extends _FlutterScaffoldOpenEndDrawer {
  _$_FlutterScaffoldOpenEndDrawer({final String? $type})
      : $type = $type ?? 'f:1:Scaffold.openEndDrawer',
        super._();

  factory _$_FlutterScaffoldOpenEndDrawer.fromJson(Map<String, dynamic> json) =>
      _$$_FlutterScaffoldOpenEndDrawerFromJson(json);

  @JsonKey(name: 'converter')
  final String $type;

  @override
  String toString() {
    return 'FlutterScaffold.openEndDrawer()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FlutterScaffoldOpenEndDrawer);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_FlutterScaffold value) $default, {
    required TResult Function(_FlutterScaffoldOpenDrawer value) openDrawer,
    required TResult Function(_FlutterScaffoldOpenEndDrawer value)
        openEndDrawer,
    required TResult Function(_FlutterScaffoldShowBodyScrim value)
        showBodyScrim,
    required TResult Function(_FlutterScaffoldShowBottomSheet value)
        showBottomSheet,
  }) {
    return openEndDrawer(this);
  }
}

abstract class _FlutterScaffoldOpenEndDrawer extends FlutterScaffold {
  factory _FlutterScaffoldOpenEndDrawer() = _$_FlutterScaffoldOpenEndDrawer;
  _FlutterScaffoldOpenEndDrawer._() : super._();

  factory _FlutterScaffoldOpenEndDrawer.fromJson(Map<String, dynamic> json) =
      _$_FlutterScaffoldOpenEndDrawer.fromJson;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_FlutterScaffoldShowBodyScrim extends _FlutterScaffoldShowBodyScrim {
  _$_FlutterScaffoldShowBodyScrim(this.value, this.opacity,
      {final String? $type})
      : $type = $type ?? 'f:1:Scaffold.showBodyScrim',
        super._();

  factory _$_FlutterScaffoldShowBodyScrim.fromJson(Map<String, dynamic> json) =>
      _$$_FlutterScaffoldShowBodyScrimFromJson(json);

  @override
  final bool value;
  @override
  final ZacValue<double> opacity;

  @JsonKey(name: 'converter')
  final String $type;

  @override
  String toString() {
    return 'FlutterScaffold.showBodyScrim(value: $value, opacity: $opacity)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FlutterScaffoldShowBodyScrim &&
            const DeepCollectionEquality().equals(other.value, value) &&
            const DeepCollectionEquality().equals(other.opacity, opacity));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(value),
      const DeepCollectionEquality().hash(opacity));

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_FlutterScaffold value) $default, {
    required TResult Function(_FlutterScaffoldOpenDrawer value) openDrawer,
    required TResult Function(_FlutterScaffoldOpenEndDrawer value)
        openEndDrawer,
    required TResult Function(_FlutterScaffoldShowBodyScrim value)
        showBodyScrim,
    required TResult Function(_FlutterScaffoldShowBottomSheet value)
        showBottomSheet,
  }) {
    return showBodyScrim(this);
  }
}

abstract class _FlutterScaffoldShowBodyScrim extends FlutterScaffold {
  factory _FlutterScaffoldShowBodyScrim(
          final bool value, final ZacValue<double> opacity) =
      _$_FlutterScaffoldShowBodyScrim;
  _FlutterScaffoldShowBodyScrim._() : super._();

  factory _FlutterScaffoldShowBodyScrim.fromJson(Map<String, dynamic> json) =
      _$_FlutterScaffoldShowBodyScrim.fromJson;

  bool get value;
  ZacValue<double> get opacity;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_FlutterScaffoldShowBottomSheet
    extends _FlutterScaffoldShowBottomSheet {
  _$_FlutterScaffoldShowBottomSheet(this.child,
      {this.backgroundColor,
      this.elevation,
      this.shape,
      this.clipBehavior,
      this.constraints,
      this.enableDrag,
      final String? $type})
      : $type = $type ?? 'f:1:Scaffold.showBottomSheet',
        super._();

  factory _$_FlutterScaffoldShowBottomSheet.fromJson(
          Map<String, dynamic> json) =>
      _$$_FlutterScaffoldShowBottomSheetFromJson(json);

  @override
  final FlutterWidget child;
  @override
  final FlutterColor? backgroundColor;
  @override
  final ZacValue<double>? elevation;
  @override
  final FlutterShapeBorder? shape;
  @override
  final FlutterClip? clipBehavior;
  @override
  final FlutterBoxConstraints? constraints;
  @override
  final ZacValue<bool>? enableDrag;

  @JsonKey(name: 'converter')
  final String $type;

  @override
  String toString() {
    return 'FlutterScaffold.showBottomSheet(child: $child, backgroundColor: $backgroundColor, elevation: $elevation, shape: $shape, clipBehavior: $clipBehavior, constraints: $constraints, enableDrag: $enableDrag)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FlutterScaffoldShowBottomSheet &&
            const DeepCollectionEquality().equals(other.child, child) &&
            const DeepCollectionEquality()
                .equals(other.backgroundColor, backgroundColor) &&
            const DeepCollectionEquality().equals(other.elevation, elevation) &&
            const DeepCollectionEquality().equals(other.shape, shape) &&
            const DeepCollectionEquality()
                .equals(other.clipBehavior, clipBehavior) &&
            const DeepCollectionEquality()
                .equals(other.constraints, constraints) &&
            const DeepCollectionEquality()
                .equals(other.enableDrag, enableDrag));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(child),
      const DeepCollectionEquality().hash(backgroundColor),
      const DeepCollectionEquality().hash(elevation),
      const DeepCollectionEquality().hash(shape),
      const DeepCollectionEquality().hash(clipBehavior),
      const DeepCollectionEquality().hash(constraints),
      const DeepCollectionEquality().hash(enableDrag));

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_FlutterScaffold value) $default, {
    required TResult Function(_FlutterScaffoldOpenDrawer value) openDrawer,
    required TResult Function(_FlutterScaffoldOpenEndDrawer value)
        openEndDrawer,
    required TResult Function(_FlutterScaffoldShowBodyScrim value)
        showBodyScrim,
    required TResult Function(_FlutterScaffoldShowBottomSheet value)
        showBottomSheet,
  }) {
    return showBottomSheet(this);
  }
}

abstract class _FlutterScaffoldShowBottomSheet extends FlutterScaffold {
  factory _FlutterScaffoldShowBottomSheet(final FlutterWidget child,
      {final FlutterColor? backgroundColor,
      final ZacValue<double>? elevation,
      final FlutterShapeBorder? shape,
      final FlutterClip? clipBehavior,
      final FlutterBoxConstraints? constraints,
      final ZacValue<bool>? enableDrag}) = _$_FlutterScaffoldShowBottomSheet;
  _FlutterScaffoldShowBottomSheet._() : super._();

  factory _FlutterScaffoldShowBottomSheet.fromJson(Map<String, dynamic> json) =
      _$_FlutterScaffoldShowBottomSheet.fromJson;

  FlutterWidget get child;
  FlutterColor? get backgroundColor;
  ZacValue<double>? get elevation;
  FlutterShapeBorder? get shape;
  FlutterClip? get clipBehavior;
  FlutterBoxConstraints? get constraints;
  ZacValue<bool>? get enableDrag;
}

FlutterScaffoldMessenger _$FlutterScaffoldMessengerFromJson(
    Map<String, dynamic> json) {
  switch (json['converter']) {
    case 'f:1:ScaffoldMessenger.showSnackBar':
      return _FlutterScaffoldMessengerShowSnackBar.fromJson(json);
    case 'f:1:ScaffoldMessenger.hideCurrentSnackBar':
      return _FlutterScaffoldMessengerhideCurrentSnackBar.fromJson(json);
    case 'f:1:ScaffoldMessenger.removeCurrentSnackBar':
      return _FlutterScaffoldMessengerremoveCurrentSnackBar.fromJson(json);
    case 'f:1:ScaffoldMessenger.showMaterialBanner':
      return _FlutterScaffoldMessengerShowMaterialBanner.fromJson(json);
    case 'f:1:ScaffoldMessenger.hideCurrentMaterialBanner':
      return _FlutterScaffoldMessengerHideCurrentMaterialBanner.fromJson(json);
    case 'f:1:ScaffoldMessenger.removeCurrentMaterialBanner':
      return _FlutterScaffoldMessengerRemoveCurrentMaterialBanner.fromJson(
          json);

    default:
      throw CheckedFromJsonException(
          json,
          'converter',
          'FlutterScaffoldMessenger',
          'Invalid union type "${json['converter']}"!');
  }
}

/// @nodoc
mixin _$FlutterScaffoldMessenger {
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FlutterScaffoldMessengerShowSnackBar value)
        showSnackBar,
    required TResult Function(
            _FlutterScaffoldMessengerhideCurrentSnackBar value)
        hideCurrentSnackBar,
    required TResult Function(
            _FlutterScaffoldMessengerremoveCurrentSnackBar value)
        removeCurrentSnackBar,
    required TResult Function(_FlutterScaffoldMessengerShowMaterialBanner value)
        showMaterialBanner,
    required TResult Function(
            _FlutterScaffoldMessengerHideCurrentMaterialBanner value)
        hideCurrentMaterialBanner,
    required TResult Function(
            _FlutterScaffoldMessengerRemoveCurrentMaterialBanner value)
        removeCurrentMaterialBanner,
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_FlutterScaffoldMessengerShowSnackBar
    extends _FlutterScaffoldMessengerShowSnackBar {
  _$_FlutterScaffoldMessengerShowSnackBar(this.snackBar, {final String? $type})
      : $type = $type ?? 'f:1:ScaffoldMessenger.showSnackBar',
        super._();

  factory _$_FlutterScaffoldMessengerShowSnackBar.fromJson(
          Map<String, dynamic> json) =>
      _$$_FlutterScaffoldMessengerShowSnackBarFromJson(json);

  @override
  final FlutterSnackBar snackBar;

  @JsonKey(name: 'converter')
  final String $type;

  @override
  String toString() {
    return 'FlutterScaffoldMessenger.showSnackBar(snackBar: $snackBar)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FlutterScaffoldMessengerShowSnackBar &&
            const DeepCollectionEquality().equals(other.snackBar, snackBar));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(snackBar));

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FlutterScaffoldMessengerShowSnackBar value)
        showSnackBar,
    required TResult Function(
            _FlutterScaffoldMessengerhideCurrentSnackBar value)
        hideCurrentSnackBar,
    required TResult Function(
            _FlutterScaffoldMessengerremoveCurrentSnackBar value)
        removeCurrentSnackBar,
    required TResult Function(_FlutterScaffoldMessengerShowMaterialBanner value)
        showMaterialBanner,
    required TResult Function(
            _FlutterScaffoldMessengerHideCurrentMaterialBanner value)
        hideCurrentMaterialBanner,
    required TResult Function(
            _FlutterScaffoldMessengerRemoveCurrentMaterialBanner value)
        removeCurrentMaterialBanner,
  }) {
    return showSnackBar(this);
  }
}

abstract class _FlutterScaffoldMessengerShowSnackBar
    extends FlutterScaffoldMessenger {
  factory _FlutterScaffoldMessengerShowSnackBar(
      final FlutterSnackBar snackBar) = _$_FlutterScaffoldMessengerShowSnackBar;
  _FlutterScaffoldMessengerShowSnackBar._() : super._();

  factory _FlutterScaffoldMessengerShowSnackBar.fromJson(
          Map<String, dynamic> json) =
      _$_FlutterScaffoldMessengerShowSnackBar.fromJson;

  FlutterSnackBar get snackBar;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_FlutterScaffoldMessengerhideCurrentSnackBar
    extends _FlutterScaffoldMessengerhideCurrentSnackBar {
  _$_FlutterScaffoldMessengerhideCurrentSnackBar({final String? $type})
      : $type = $type ?? 'f:1:ScaffoldMessenger.hideCurrentSnackBar',
        super._();

  factory _$_FlutterScaffoldMessengerhideCurrentSnackBar.fromJson(
          Map<String, dynamic> json) =>
      _$$_FlutterScaffoldMessengerhideCurrentSnackBarFromJson(json);

  @JsonKey(name: 'converter')
  final String $type;

  @override
  String toString() {
    return 'FlutterScaffoldMessenger.hideCurrentSnackBar()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FlutterScaffoldMessengerhideCurrentSnackBar);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FlutterScaffoldMessengerShowSnackBar value)
        showSnackBar,
    required TResult Function(
            _FlutterScaffoldMessengerhideCurrentSnackBar value)
        hideCurrentSnackBar,
    required TResult Function(
            _FlutterScaffoldMessengerremoveCurrentSnackBar value)
        removeCurrentSnackBar,
    required TResult Function(_FlutterScaffoldMessengerShowMaterialBanner value)
        showMaterialBanner,
    required TResult Function(
            _FlutterScaffoldMessengerHideCurrentMaterialBanner value)
        hideCurrentMaterialBanner,
    required TResult Function(
            _FlutterScaffoldMessengerRemoveCurrentMaterialBanner value)
        removeCurrentMaterialBanner,
  }) {
    return hideCurrentSnackBar(this);
  }
}

abstract class _FlutterScaffoldMessengerhideCurrentSnackBar
    extends FlutterScaffoldMessenger {
  factory _FlutterScaffoldMessengerhideCurrentSnackBar() =
      _$_FlutterScaffoldMessengerhideCurrentSnackBar;
  _FlutterScaffoldMessengerhideCurrentSnackBar._() : super._();

  factory _FlutterScaffoldMessengerhideCurrentSnackBar.fromJson(
          Map<String, dynamic> json) =
      _$_FlutterScaffoldMessengerhideCurrentSnackBar.fromJson;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_FlutterScaffoldMessengerremoveCurrentSnackBar
    extends _FlutterScaffoldMessengerremoveCurrentSnackBar {
  _$_FlutterScaffoldMessengerremoveCurrentSnackBar({final String? $type})
      : $type = $type ?? 'f:1:ScaffoldMessenger.removeCurrentSnackBar',
        super._();

  factory _$_FlutterScaffoldMessengerremoveCurrentSnackBar.fromJson(
          Map<String, dynamic> json) =>
      _$$_FlutterScaffoldMessengerremoveCurrentSnackBarFromJson(json);

  @JsonKey(name: 'converter')
  final String $type;

  @override
  String toString() {
    return 'FlutterScaffoldMessenger.removeCurrentSnackBar()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FlutterScaffoldMessengerremoveCurrentSnackBar);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FlutterScaffoldMessengerShowSnackBar value)
        showSnackBar,
    required TResult Function(
            _FlutterScaffoldMessengerhideCurrentSnackBar value)
        hideCurrentSnackBar,
    required TResult Function(
            _FlutterScaffoldMessengerremoveCurrentSnackBar value)
        removeCurrentSnackBar,
    required TResult Function(_FlutterScaffoldMessengerShowMaterialBanner value)
        showMaterialBanner,
    required TResult Function(
            _FlutterScaffoldMessengerHideCurrentMaterialBanner value)
        hideCurrentMaterialBanner,
    required TResult Function(
            _FlutterScaffoldMessengerRemoveCurrentMaterialBanner value)
        removeCurrentMaterialBanner,
  }) {
    return removeCurrentSnackBar(this);
  }
}

abstract class _FlutterScaffoldMessengerremoveCurrentSnackBar
    extends FlutterScaffoldMessenger {
  factory _FlutterScaffoldMessengerremoveCurrentSnackBar() =
      _$_FlutterScaffoldMessengerremoveCurrentSnackBar;
  _FlutterScaffoldMessengerremoveCurrentSnackBar._() : super._();

  factory _FlutterScaffoldMessengerremoveCurrentSnackBar.fromJson(
          Map<String, dynamic> json) =
      _$_FlutterScaffoldMessengerremoveCurrentSnackBar.fromJson;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_FlutterScaffoldMessengerShowMaterialBanner
    extends _FlutterScaffoldMessengerShowMaterialBanner {
  _$_FlutterScaffoldMessengerShowMaterialBanner(this.materialBanner,
      {final String? $type})
      : $type = $type ?? 'f:1:ScaffoldMessenger.showMaterialBanner',
        super._();

  factory _$_FlutterScaffoldMessengerShowMaterialBanner.fromJson(
          Map<String, dynamic> json) =>
      _$$_FlutterScaffoldMessengerShowMaterialBannerFromJson(json);

  @override
  final FlutterMaterialBanner materialBanner;

  @JsonKey(name: 'converter')
  final String $type;

  @override
  String toString() {
    return 'FlutterScaffoldMessenger.showMaterialBanner(materialBanner: $materialBanner)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FlutterScaffoldMessengerShowMaterialBanner &&
            const DeepCollectionEquality()
                .equals(other.materialBanner, materialBanner));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(materialBanner));

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FlutterScaffoldMessengerShowSnackBar value)
        showSnackBar,
    required TResult Function(
            _FlutterScaffoldMessengerhideCurrentSnackBar value)
        hideCurrentSnackBar,
    required TResult Function(
            _FlutterScaffoldMessengerremoveCurrentSnackBar value)
        removeCurrentSnackBar,
    required TResult Function(_FlutterScaffoldMessengerShowMaterialBanner value)
        showMaterialBanner,
    required TResult Function(
            _FlutterScaffoldMessengerHideCurrentMaterialBanner value)
        hideCurrentMaterialBanner,
    required TResult Function(
            _FlutterScaffoldMessengerRemoveCurrentMaterialBanner value)
        removeCurrentMaterialBanner,
  }) {
    return showMaterialBanner(this);
  }
}

abstract class _FlutterScaffoldMessengerShowMaterialBanner
    extends FlutterScaffoldMessenger {
  factory _FlutterScaffoldMessengerShowMaterialBanner(
          final FlutterMaterialBanner materialBanner) =
      _$_FlutterScaffoldMessengerShowMaterialBanner;
  _FlutterScaffoldMessengerShowMaterialBanner._() : super._();

  factory _FlutterScaffoldMessengerShowMaterialBanner.fromJson(
          Map<String, dynamic> json) =
      _$_FlutterScaffoldMessengerShowMaterialBanner.fromJson;

  FlutterMaterialBanner get materialBanner;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_FlutterScaffoldMessengerHideCurrentMaterialBanner
    extends _FlutterScaffoldMessengerHideCurrentMaterialBanner {
  _$_FlutterScaffoldMessengerHideCurrentMaterialBanner({final String? $type})
      : $type = $type ?? 'f:1:ScaffoldMessenger.hideCurrentMaterialBanner',
        super._();

  factory _$_FlutterScaffoldMessengerHideCurrentMaterialBanner.fromJson(
          Map<String, dynamic> json) =>
      _$$_FlutterScaffoldMessengerHideCurrentMaterialBannerFromJson(json);

  @JsonKey(name: 'converter')
  final String $type;

  @override
  String toString() {
    return 'FlutterScaffoldMessenger.hideCurrentMaterialBanner()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FlutterScaffoldMessengerHideCurrentMaterialBanner);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FlutterScaffoldMessengerShowSnackBar value)
        showSnackBar,
    required TResult Function(
            _FlutterScaffoldMessengerhideCurrentSnackBar value)
        hideCurrentSnackBar,
    required TResult Function(
            _FlutterScaffoldMessengerremoveCurrentSnackBar value)
        removeCurrentSnackBar,
    required TResult Function(_FlutterScaffoldMessengerShowMaterialBanner value)
        showMaterialBanner,
    required TResult Function(
            _FlutterScaffoldMessengerHideCurrentMaterialBanner value)
        hideCurrentMaterialBanner,
    required TResult Function(
            _FlutterScaffoldMessengerRemoveCurrentMaterialBanner value)
        removeCurrentMaterialBanner,
  }) {
    return hideCurrentMaterialBanner(this);
  }
}

abstract class _FlutterScaffoldMessengerHideCurrentMaterialBanner
    extends FlutterScaffoldMessenger {
  factory _FlutterScaffoldMessengerHideCurrentMaterialBanner() =
      _$_FlutterScaffoldMessengerHideCurrentMaterialBanner;
  _FlutterScaffoldMessengerHideCurrentMaterialBanner._() : super._();

  factory _FlutterScaffoldMessengerHideCurrentMaterialBanner.fromJson(
          Map<String, dynamic> json) =
      _$_FlutterScaffoldMessengerHideCurrentMaterialBanner.fromJson;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_FlutterScaffoldMessengerRemoveCurrentMaterialBanner
    extends _FlutterScaffoldMessengerRemoveCurrentMaterialBanner {
  _$_FlutterScaffoldMessengerRemoveCurrentMaterialBanner({final String? $type})
      : $type = $type ?? 'f:1:ScaffoldMessenger.removeCurrentMaterialBanner',
        super._();

  factory _$_FlutterScaffoldMessengerRemoveCurrentMaterialBanner.fromJson(
          Map<String, dynamic> json) =>
      _$$_FlutterScaffoldMessengerRemoveCurrentMaterialBannerFromJson(json);

  @JsonKey(name: 'converter')
  final String $type;

  @override
  String toString() {
    return 'FlutterScaffoldMessenger.removeCurrentMaterialBanner()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FlutterScaffoldMessengerRemoveCurrentMaterialBanner);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FlutterScaffoldMessengerShowSnackBar value)
        showSnackBar,
    required TResult Function(
            _FlutterScaffoldMessengerhideCurrentSnackBar value)
        hideCurrentSnackBar,
    required TResult Function(
            _FlutterScaffoldMessengerremoveCurrentSnackBar value)
        removeCurrentSnackBar,
    required TResult Function(_FlutterScaffoldMessengerShowMaterialBanner value)
        showMaterialBanner,
    required TResult Function(
            _FlutterScaffoldMessengerHideCurrentMaterialBanner value)
        hideCurrentMaterialBanner,
    required TResult Function(
            _FlutterScaffoldMessengerRemoveCurrentMaterialBanner value)
        removeCurrentMaterialBanner,
  }) {
    return removeCurrentMaterialBanner(this);
  }
}

abstract class _FlutterScaffoldMessengerRemoveCurrentMaterialBanner
    extends FlutterScaffoldMessenger {
  factory _FlutterScaffoldMessengerRemoveCurrentMaterialBanner() =
      _$_FlutterScaffoldMessengerRemoveCurrentMaterialBanner;
  _FlutterScaffoldMessengerRemoveCurrentMaterialBanner._() : super._();

  factory _FlutterScaffoldMessengerRemoveCurrentMaterialBanner.fromJson(
          Map<String, dynamic> json) =
      _$_FlutterScaffoldMessengerRemoveCurrentMaterialBanner.fromJson;
}

FlutterSnackBar _$FlutterSnackBarFromJson(Map<String, dynamic> json) {
  return _FlutterSnackBar.fromJson(json);
}

/// @nodoc
mixin _$FlutterSnackBar {
  FlutterKey? get key => throw _privateConstructorUsedError;
  FlutterWidget get content => throw _privateConstructorUsedError;
  FlutterColor? get backgroundColor => throw _privateConstructorUsedError;
  ZacValue<double>? get elevation => throw _privateConstructorUsedError;
  FlutterEdgeInsetsGeometry? get margin => throw _privateConstructorUsedError;
  FlutterEdgeInsetsGeometry? get padding => throw _privateConstructorUsedError;
  ZacValue<double>? get width => throw _privateConstructorUsedError;
  FlutterShapeBorder? get shape => throw _privateConstructorUsedError;
  FlutterSnackBarBehavior? get behavior => throw _privateConstructorUsedError;
  FlutterSnackBarAction? get action =>
      throw _privateConstructorUsedError; // Duration duration = _snackBarDisplayDuration,
// Animation<double>? animation,
  ZacActions? get onVisible => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_FlutterSnackBar value) $default,
  ) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_FlutterSnackBar extends _FlutterSnackBar {
  _$_FlutterSnackBar(
      {this.key,
      required this.content,
      this.backgroundColor,
      this.elevation,
      this.margin,
      this.padding,
      this.width,
      this.shape,
      this.behavior,
      this.action,
      this.onVisible})
      : super._();

  factory _$_FlutterSnackBar.fromJson(Map<String, dynamic> json) =>
      _$$_FlutterSnackBarFromJson(json);

  @override
  final FlutterKey? key;
  @override
  final FlutterWidget content;
  @override
  final FlutterColor? backgroundColor;
  @override
  final ZacValue<double>? elevation;
  @override
  final FlutterEdgeInsetsGeometry? margin;
  @override
  final FlutterEdgeInsetsGeometry? padding;
  @override
  final ZacValue<double>? width;
  @override
  final FlutterShapeBorder? shape;
  @override
  final FlutterSnackBarBehavior? behavior;
  @override
  final FlutterSnackBarAction? action;
// Duration duration = _snackBarDisplayDuration,
// Animation<double>? animation,
  @override
  final ZacActions? onVisible;

  @override
  String toString() {
    return 'FlutterSnackBar(key: $key, content: $content, backgroundColor: $backgroundColor, elevation: $elevation, margin: $margin, padding: $padding, width: $width, shape: $shape, behavior: $behavior, action: $action, onVisible: $onVisible)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FlutterSnackBar &&
            const DeepCollectionEquality().equals(other.key, key) &&
            const DeepCollectionEquality().equals(other.content, content) &&
            const DeepCollectionEquality()
                .equals(other.backgroundColor, backgroundColor) &&
            const DeepCollectionEquality().equals(other.elevation, elevation) &&
            const DeepCollectionEquality().equals(other.margin, margin) &&
            const DeepCollectionEquality().equals(other.padding, padding) &&
            const DeepCollectionEquality().equals(other.width, width) &&
            const DeepCollectionEquality().equals(other.shape, shape) &&
            const DeepCollectionEquality().equals(other.behavior, behavior) &&
            const DeepCollectionEquality().equals(other.action, action) &&
            const DeepCollectionEquality().equals(other.onVisible, onVisible));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(key),
      const DeepCollectionEquality().hash(content),
      const DeepCollectionEquality().hash(backgroundColor),
      const DeepCollectionEquality().hash(elevation),
      const DeepCollectionEquality().hash(margin),
      const DeepCollectionEquality().hash(padding),
      const DeepCollectionEquality().hash(width),
      const DeepCollectionEquality().hash(shape),
      const DeepCollectionEquality().hash(behavior),
      const DeepCollectionEquality().hash(action),
      const DeepCollectionEquality().hash(onVisible));

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_FlutterSnackBar value) $default,
  ) {
    return $default(this);
  }
}

abstract class _FlutterSnackBar extends FlutterSnackBar {
  factory _FlutterSnackBar(
      {final FlutterKey? key,
      required final FlutterWidget content,
      final FlutterColor? backgroundColor,
      final ZacValue<double>? elevation,
      final FlutterEdgeInsetsGeometry? margin,
      final FlutterEdgeInsetsGeometry? padding,
      final ZacValue<double>? width,
      final FlutterShapeBorder? shape,
      final FlutterSnackBarBehavior? behavior,
      final FlutterSnackBarAction? action,
      final ZacActions? onVisible}) = _$_FlutterSnackBar;
  _FlutterSnackBar._() : super._();

  factory _FlutterSnackBar.fromJson(Map<String, dynamic> json) =
      _$_FlutterSnackBar.fromJson;

  @override
  FlutterKey? get key;
  @override
  FlutterWidget get content;
  @override
  FlutterColor? get backgroundColor;
  @override
  ZacValue<double>? get elevation;
  @override
  FlutterEdgeInsetsGeometry? get margin;
  @override
  FlutterEdgeInsetsGeometry? get padding;
  @override
  ZacValue<double>? get width;
  @override
  FlutterShapeBorder? get shape;
  @override
  FlutterSnackBarBehavior? get behavior;
  @override
  FlutterSnackBarAction? get action;
  @override // Duration duration = _snackBarDisplayDuration,
// Animation<double>? animation,
  ZacActions? get onVisible;
}

FlutterSnackBarBehavior _$FlutterSnackBarBehaviorFromJson(
    Map<String, dynamic> json) {
  switch (json['converter']) {
    case 'f:1:SnackBarBehavior.fixed':
      return _FlutterSnackBarBehaviorFixed.fromJson(json);
    case 'f:1:SnackBarBehavior.floating':
      return _FlutterSnackBarBehaviorFloating.fromJson(json);

    default:
      throw CheckedFromJsonException(
          json,
          'converter',
          'FlutterSnackBarBehavior',
          'Invalid union type "${json['converter']}"!');
  }
}

/// @nodoc
mixin _$FlutterSnackBarBehavior {
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FlutterSnackBarBehaviorFixed value) fixed,
    required TResult Function(_FlutterSnackBarBehaviorFloating value) floating,
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_FlutterSnackBarBehaviorFixed extends _FlutterSnackBarBehaviorFixed {
  _$_FlutterSnackBarBehaviorFixed({final String? $type})
      : $type = $type ?? 'f:1:SnackBarBehavior.fixed',
        super._();

  factory _$_FlutterSnackBarBehaviorFixed.fromJson(Map<String, dynamic> json) =>
      _$$_FlutterSnackBarBehaviorFixedFromJson(json);

  @JsonKey(name: 'converter')
  final String $type;

  @override
  String toString() {
    return 'FlutterSnackBarBehavior.fixed()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FlutterSnackBarBehaviorFixed);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FlutterSnackBarBehaviorFixed value) fixed,
    required TResult Function(_FlutterSnackBarBehaviorFloating value) floating,
  }) {
    return fixed(this);
  }
}

abstract class _FlutterSnackBarBehaviorFixed extends FlutterSnackBarBehavior {
  factory _FlutterSnackBarBehaviorFixed() = _$_FlutterSnackBarBehaviorFixed;
  _FlutterSnackBarBehaviorFixed._() : super._();

  factory _FlutterSnackBarBehaviorFixed.fromJson(Map<String, dynamic> json) =
      _$_FlutterSnackBarBehaviorFixed.fromJson;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_FlutterSnackBarBehaviorFloating
    extends _FlutterSnackBarBehaviorFloating {
  _$_FlutterSnackBarBehaviorFloating({final String? $type})
      : $type = $type ?? 'f:1:SnackBarBehavior.floating',
        super._();

  factory _$_FlutterSnackBarBehaviorFloating.fromJson(
          Map<String, dynamic> json) =>
      _$$_FlutterSnackBarBehaviorFloatingFromJson(json);

  @JsonKey(name: 'converter')
  final String $type;

  @override
  String toString() {
    return 'FlutterSnackBarBehavior.floating()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FlutterSnackBarBehaviorFloating);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FlutterSnackBarBehaviorFixed value) fixed,
    required TResult Function(_FlutterSnackBarBehaviorFloating value) floating,
  }) {
    return floating(this);
  }
}

abstract class _FlutterSnackBarBehaviorFloating
    extends FlutterSnackBarBehavior {
  factory _FlutterSnackBarBehaviorFloating() =
      _$_FlutterSnackBarBehaviorFloating;
  _FlutterSnackBarBehaviorFloating._() : super._();

  factory _FlutterSnackBarBehaviorFloating.fromJson(Map<String, dynamic> json) =
      _$_FlutterSnackBarBehaviorFloating.fromJson;
}

FlutterSnackBarAction _$FlutterSnackBarActionFromJson(
    Map<String, dynamic> json) {
  return _FlutterSnackBarAction.fromJson(json);
}

/// @nodoc
mixin _$FlutterSnackBarAction {
  FlutterKey? get key => throw _privateConstructorUsedError;
  FlutterColor? get textColor => throw _privateConstructorUsedError;
  FlutterColor? get disabledTextColor => throw _privateConstructorUsedError;
  String get label => throw _privateConstructorUsedError;
  ZacActions? get onPressed => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_FlutterSnackBarAction value) $default,
  ) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_FlutterSnackBarAction extends _FlutterSnackBarAction {
  _$_FlutterSnackBarAction(
      {this.key,
      this.textColor,
      this.disabledTextColor,
      required this.label,
      required this.onPressed})
      : super._();

  factory _$_FlutterSnackBarAction.fromJson(Map<String, dynamic> json) =>
      _$$_FlutterSnackBarActionFromJson(json);

  @override
  final FlutterKey? key;
  @override
  final FlutterColor? textColor;
  @override
  final FlutterColor? disabledTextColor;
  @override
  final String label;
  @override
  final ZacActions? onPressed;

  @override
  String toString() {
    return 'FlutterSnackBarAction(key: $key, textColor: $textColor, disabledTextColor: $disabledTextColor, label: $label, onPressed: $onPressed)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FlutterSnackBarAction &&
            const DeepCollectionEquality().equals(other.key, key) &&
            const DeepCollectionEquality().equals(other.textColor, textColor) &&
            const DeepCollectionEquality()
                .equals(other.disabledTextColor, disabledTextColor) &&
            const DeepCollectionEquality().equals(other.label, label) &&
            const DeepCollectionEquality().equals(other.onPressed, onPressed));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(key),
      const DeepCollectionEquality().hash(textColor),
      const DeepCollectionEquality().hash(disabledTextColor),
      const DeepCollectionEquality().hash(label),
      const DeepCollectionEquality().hash(onPressed));

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_FlutterSnackBarAction value) $default,
  ) {
    return $default(this);
  }
}

abstract class _FlutterSnackBarAction extends FlutterSnackBarAction {
  factory _FlutterSnackBarAction(
      {final FlutterKey? key,
      final FlutterColor? textColor,
      final FlutterColor? disabledTextColor,
      required final String label,
      required final ZacActions? onPressed}) = _$_FlutterSnackBarAction;
  _FlutterSnackBarAction._() : super._();

  factory _FlutterSnackBarAction.fromJson(Map<String, dynamic> json) =
      _$_FlutterSnackBarAction.fromJson;

  @override
  FlutterKey? get key;
  @override
  FlutterColor? get textColor;
  @override
  FlutterColor? get disabledTextColor;
  @override
  String get label;
  @override
  ZacActions? get onPressed;
}

FlutterMaterialBanner _$FlutterMaterialBannerFromJson(
    Map<String, dynamic> json) {
  return _FlutterMaterialBanner.fromJson(json);
}

/// @nodoc
mixin _$FlutterMaterialBanner {
  FlutterKey? get key => throw _privateConstructorUsedError;
  FlutterWidget get content => throw _privateConstructorUsedError;
  FlutterTextStyle? get contentTextStyle => throw _privateConstructorUsedError;
  ListOfZacWidget get actions => throw _privateConstructorUsedError;
  ZacValue<double>? get elevation => throw _privateConstructorUsedError;
  FlutterWidget? get leading => throw _privateConstructorUsedError;
  FlutterColor? get backgroundColor => throw _privateConstructorUsedError;
  FlutterEdgeInsetsGeometry? get padding => throw _privateConstructorUsedError;
  FlutterEdgeInsetsGeometry? get leadingPadding =>
      throw _privateConstructorUsedError;
  ZacValue<bool>? get forceActionsBelow =>
      throw _privateConstructorUsedError; // OverflowBarAlignment overflowAlignment = OverflowBarAlignment.end,
// Animation<double>? animation,
  ZacActions? get onVisible => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_FlutterMaterialBanner value) $default,
  ) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_FlutterMaterialBanner extends _FlutterMaterialBanner {
  _$_FlutterMaterialBanner(
      {this.key,
      required this.content,
      this.contentTextStyle,
      required this.actions,
      this.elevation,
      required this.leading,
      this.backgroundColor,
      this.padding,
      this.leadingPadding,
      this.forceActionsBelow,
      this.onVisible})
      : super._();

  factory _$_FlutterMaterialBanner.fromJson(Map<String, dynamic> json) =>
      _$$_FlutterMaterialBannerFromJson(json);

  @override
  final FlutterKey? key;
  @override
  final FlutterWidget content;
  @override
  final FlutterTextStyle? contentTextStyle;
  @override
  final ListOfZacWidget actions;
  @override
  final ZacValue<double>? elevation;
  @override
  final FlutterWidget? leading;
  @override
  final FlutterColor? backgroundColor;
  @override
  final FlutterEdgeInsetsGeometry? padding;
  @override
  final FlutterEdgeInsetsGeometry? leadingPadding;
  @override
  final ZacValue<bool>? forceActionsBelow;
// OverflowBarAlignment overflowAlignment = OverflowBarAlignment.end,
// Animation<double>? animation,
  @override
  final ZacActions? onVisible;

  @override
  String toString() {
    return 'FlutterMaterialBanner(key: $key, content: $content, contentTextStyle: $contentTextStyle, actions: $actions, elevation: $elevation, leading: $leading, backgroundColor: $backgroundColor, padding: $padding, leadingPadding: $leadingPadding, forceActionsBelow: $forceActionsBelow, onVisible: $onVisible)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FlutterMaterialBanner &&
            const DeepCollectionEquality().equals(other.key, key) &&
            const DeepCollectionEquality().equals(other.content, content) &&
            const DeepCollectionEquality()
                .equals(other.contentTextStyle, contentTextStyle) &&
            const DeepCollectionEquality().equals(other.actions, actions) &&
            const DeepCollectionEquality().equals(other.elevation, elevation) &&
            const DeepCollectionEquality().equals(other.leading, leading) &&
            const DeepCollectionEquality()
                .equals(other.backgroundColor, backgroundColor) &&
            const DeepCollectionEquality().equals(other.padding, padding) &&
            const DeepCollectionEquality()
                .equals(other.leadingPadding, leadingPadding) &&
            const DeepCollectionEquality()
                .equals(other.forceActionsBelow, forceActionsBelow) &&
            const DeepCollectionEquality().equals(other.onVisible, onVisible));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(key),
      const DeepCollectionEquality().hash(content),
      const DeepCollectionEquality().hash(contentTextStyle),
      const DeepCollectionEquality().hash(actions),
      const DeepCollectionEquality().hash(elevation),
      const DeepCollectionEquality().hash(leading),
      const DeepCollectionEquality().hash(backgroundColor),
      const DeepCollectionEquality().hash(padding),
      const DeepCollectionEquality().hash(leadingPadding),
      const DeepCollectionEquality().hash(forceActionsBelow),
      const DeepCollectionEquality().hash(onVisible));

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_FlutterMaterialBanner value) $default,
  ) {
    return $default(this);
  }
}

abstract class _FlutterMaterialBanner extends FlutterMaterialBanner {
  factory _FlutterMaterialBanner(
      {final FlutterKey? key,
      required final FlutterWidget content,
      final FlutterTextStyle? contentTextStyle,
      required final ListOfZacWidget actions,
      final ZacValue<double>? elevation,
      required final FlutterWidget? leading,
      final FlutterColor? backgroundColor,
      final FlutterEdgeInsetsGeometry? padding,
      final FlutterEdgeInsetsGeometry? leadingPadding,
      final ZacValue<bool>? forceActionsBelow,
      final ZacActions? onVisible}) = _$_FlutterMaterialBanner;
  _FlutterMaterialBanner._() : super._();

  factory _FlutterMaterialBanner.fromJson(Map<String, dynamic> json) =
      _$_FlutterMaterialBanner.fromJson;

  @override
  FlutterKey? get key;
  @override
  FlutterWidget get content;
  @override
  FlutterTextStyle? get contentTextStyle;
  @override
  ListOfZacWidget get actions;
  @override
  ZacValue<double>? get elevation;
  @override
  FlutterWidget? get leading;
  @override
  FlutterColor? get backgroundColor;
  @override
  FlutterEdgeInsetsGeometry? get padding;
  @override
  FlutterEdgeInsetsGeometry? get leadingPadding;
  @override
  ZacValue<bool>? get forceActionsBelow;
  @override // OverflowBarAlignment overflowAlignment = OverflowBarAlignment.end,
// Animation<double>? animation,
  ZacActions? get onVisible;
}
