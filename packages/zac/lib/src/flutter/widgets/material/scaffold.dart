import 'package:zac/src/zac/action.dart';
import 'package:zac/src/zac/origin.dart';
import 'package:zac/src/zac/zac_values.dart';
import 'package:zac/src/zac/misc.dart';
import 'package:zac/src/base.dart';
import 'package:zac/src/flutter/dart_ui.dart';
import 'package:zac/src/flutter/foundation.dart';
import 'package:zac/src/flutter/painting.dart';
import 'package:zac/src/flutter/rendering.dart';
import 'package:zac/src/flutter/widgets/builder.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'scaffold.freezed.dart';
part 'scaffold.g.dart';

@defaultConverterFreezed
class FlutterScaffold
    with _$FlutterScaffold
    implements ZacAction, FlutterWidget {
  const FlutterScaffold._();

  static const String unionValue = 'f:1:Scaffold';
  static const String unionValueOpenDrawer = 'f:1:Scaffold.openDrawer';
  static const String unionValueOpenEndDrawer = 'f:1:Scaffold.openEndDrawer';
  static const String unionValueShowBodyScrim = 'f:1:Scaffold.showBodyScrim';
  static const String unionValueShowBottomSheet =
      'f:1:Scaffold.showBottomSheet';

  factory FlutterScaffold.fromJson(Map<String, dynamic> json) =>
      _$FlutterScaffoldFromJson(json);

  @FreezedUnionValue(FlutterScaffold.unionValue)
  factory FlutterScaffold({
    FlutterKey? key,
    // PreferredSizeWidget?
    FlutterWidget? appBar,
    FlutterWidget? body,
    FlutterWidget? floatingActionButton,
    // FloatingActionButtonLocation? floatingActionButtonLocation,
    // FloatingActionButtonAnimator? floatingActionButtonAnimator,
    ListOfZacWidget? persistentFooterButtons,
    FlutterWidget? drawer,
    // DrawerCallback? onDrawerChanged,
    FlutterWidget? endDrawer,
    // DrawerCallback? onEndDrawerChanged,
    FlutterWidget? bottomNavigationBar,
    FlutterWidget? bottomSheet,
    FlutterColor? backgroundColor,
    ZacBool? resizeToAvoidBottomInset,
    ZacBool? primary,
    // DragStartBehavior drawerDragStartBehavior = DragStartBehavior.start,
    ZacBool? extendBody,
    ZacBool? extendBodyBehindAppBar,
    FlutterColor? drawerScrimColor,
    ZacDouble? drawerEdgeDragWidth,
    ZacBool? drawerEnableOpenDragGesture,
    ZacBool? endDrawerEnableOpenDragGesture,
    ZacString? restorationId,
  }) = _FlutterScaffold;

  @FreezedUnionValue(FlutterScaffold.unionValueOpenDrawer)
  factory FlutterScaffold.openDrawer() = _FlutterScaffoldOpenDrawer;

  @FreezedUnionValue(FlutterScaffold.unionValueOpenEndDrawer)
  factory FlutterScaffold.openEndDrawer() = _FlutterScaffoldOpenEndDrawer;

  @FreezedUnionValue(FlutterScaffold.unionValueShowBodyScrim)
  factory FlutterScaffold.showBodyScrim(bool value, ZacDouble opacity) =
      _FlutterScaffoldShowBodyScrim;

  @FreezedUnionValue(FlutterScaffold.unionValueShowBottomSheet)
  factory FlutterScaffold.showBottomSheet(
    FlutterWidget child, {
    FlutterColor? backgroundColor,
    ZacDouble? elevation,
    FlutterShapeBorder? shape,
    FlutterClip? clipBehavior,
    FlutterBoxConstraints? constraints,
    ZacBool? enableDrag,
// AnimationController? transitionAnimationController,
  }) = _FlutterScaffoldShowBottomSheet;

  @override
  void execute(ZacOrigin origin, ContextBag bag) {
    assert(null != origin.mapOrNull(widgetTree: (obj) => obj));
    origin as ZacOriginWidgetTree;

    map(
      (_) => throw StateError('Should never happen'),
      showBottomSheet: (value) {
        final state = Scaffold.maybeOf(origin.context);
        if (null == state) return;
        state.showBottomSheet<void>(
          (_) => FlutterBuilder(child: value.child).buildWidget(origin),
          backgroundColor: value.backgroundColor?.build(origin),
          clipBehavior: value.clipBehavior?.build(origin),
          constraints: value.constraints?.build(origin),
          elevation: value.elevation?.getValue(origin),
          shape: value.shape?.build(origin),
          // transitionAnimationController:
        );
      },
      openEndDrawer: (value) {
        final state = Scaffold.maybeOf(origin.context);
        if (null == state ||
            false == state.hasEndDrawer ||
            true == state.isEndDrawerOpen) return null;
        state.openEndDrawer();
      },
      openDrawer: (value) {
        final state = Scaffold.maybeOf(origin.context);
        if (null == state ||
            false == state.hasDrawer ||
            true == state.isDrawerOpen) return null;
        state.openDrawer();
      },
      showBodyScrim: (value) {
        final state = Scaffold.maybeOf(origin.context);
        if (null == state) return null;
        state.showBodyScrim(value.value, value.opacity.getValue(origin));
      },
    );
  }

  @override
  Widget buildWidget(ZacOriginWidgetTree origin) {
    return map(
      (value) => Scaffold(
        key: value.key?.buildKey(origin),
        body: value.body?.buildWidget(origin),
        floatingActionButton: value.floatingActionButton?.buildWidget(origin),
        persistentFooterButtons:
            value.persistentFooterButtons?.getValue(origin),
        appBar: value.appBar?.buildWidget(origin) as PreferredSizeWidget?,
        drawer: value.drawer?.buildWidget(origin),
        endDrawer: value.endDrawer?.buildWidget(origin),
        bottomNavigationBar: value.bottomNavigationBar?.buildWidget(origin),
        bottomSheet: value.bottomSheet?.buildWidget(origin),
        backgroundColor: value.backgroundColor?.build(origin),
        resizeToAvoidBottomInset:
            value.resizeToAvoidBottomInset?.getValue(origin),
        primary: value.primary?.getValue(origin) ?? true,
        extendBody: value.extendBody?.getValue(origin) ?? false,
        extendBodyBehindAppBar:
            value.extendBodyBehindAppBar?.getValue(origin) ?? false,
        drawerScrimColor: value.drawerScrimColor?.build(origin),
        drawerEdgeDragWidth: value.drawerEdgeDragWidth?.getValue(origin),
        drawerEnableOpenDragGesture:
            value.drawerEnableOpenDragGesture?.getValue(origin) ?? true,
        endDrawerEnableOpenDragGesture:
            value.endDrawerEnableOpenDragGesture?.getValue(origin) ?? true,
        restorationId: value.restorationId?.getValue(origin),
      ),
      openDrawer: (_) => throw StateError('Should never happen'),
      openEndDrawer: (_) => throw StateError('Should never happen'),
      showBodyScrim: (_) => throw StateError('Should never happen'),
      showBottomSheet: (_) => throw StateError('Should never happen'),
    );
  }
}

@defaultConverterFreezed
class FlutterScaffoldMessenger
    with _$FlutterScaffoldMessenger
    implements ZacAction {
  const FlutterScaffoldMessenger._();

  static const String unionValue = 'f:1:ScaffoldMessenger';

  static const String unionValueShowSnackBar =
      'f:1:ScaffoldMessenger.showSnackBar';

  static const String unionValueHideCurrentSnackBar =
      'f:1:ScaffoldMessenger.hideCurrentSnackBar';

  static const String unionValueRemoveCurrentSnackBar =
      'f:1:ScaffoldMessenger.removeCurrentSnackBar';

  static const String unionValueShowMaterialBanner =
      'f:1:ScaffoldMessenger.showMaterialBanner';
  static const String unionValueHideCurrentMaterialBanner =
      'f:1:ScaffoldMessenger.hideCurrentMaterialBanner';
  static const String unionValueRemoveCurrentMaterialBanner =
      'f:1:ScaffoldMessenger.removeCurrentMaterialBanner';

  factory FlutterScaffoldMessenger.fromJson(Map<String, dynamic> json) =>
      _$FlutterScaffoldMessengerFromJson(json);

  @FreezedUnionValue(FlutterScaffoldMessenger.unionValueShowSnackBar)
  factory FlutterScaffoldMessenger.showSnackBar(FlutterSnackBar snackBar) =
      _FlutterScaffoldMessengerShowSnackBar;

  @FreezedUnionValue(FlutterScaffoldMessenger.unionValueHideCurrentSnackBar)
  factory FlutterScaffoldMessenger.hideCurrentSnackBar() =
      _FlutterScaffoldMessengerhideCurrentSnackBar;

  @FreezedUnionValue(FlutterScaffoldMessenger.unionValueRemoveCurrentSnackBar)
  factory FlutterScaffoldMessenger.removeCurrentSnackBar() =
      _FlutterScaffoldMessengerremoveCurrentSnackBar;

  @FreezedUnionValue(FlutterScaffoldMessenger.unionValueShowMaterialBanner)
  factory FlutterScaffoldMessenger.showMaterialBanner(
          FlutterMaterialBanner materialBanner) =
      _FlutterScaffoldMessengerShowMaterialBanner;

  @FreezedUnionValue(
      FlutterScaffoldMessenger.unionValueHideCurrentMaterialBanner)
  factory FlutterScaffoldMessenger.hideCurrentMaterialBanner() =
      _FlutterScaffoldMessengerHideCurrentMaterialBanner;

  @FreezedUnionValue(
      FlutterScaffoldMessenger.unionValueRemoveCurrentMaterialBanner)
  factory FlutterScaffoldMessenger.removeCurrentMaterialBanner() =
      _FlutterScaffoldMessengerRemoveCurrentMaterialBanner;

  @override
  void execute(ZacOrigin origin, ContextBag bag) {
    assert(null != origin.mapOrNull(widgetTree: (obj) => obj));
    origin as ZacOriginWidgetTree;

    map(
      showSnackBar: (value) {
        final state = ScaffoldMessenger.maybeOf(origin.context);
        if (null == state) return null;

        // TODO: Add reasons via AWActions in constructor
        state.showSnackBar(value.snackBar.buildWidget(origin));
      },
      hideCurrentSnackBar: (value) {
        final state = ScaffoldMessenger.maybeOf(origin.context);
        if (null == state) return null;

        state.hideCurrentSnackBar();
      },
      removeCurrentSnackBar: (value) {
        final state = ScaffoldMessenger.maybeOf(origin.context);
        if (null == state) return null;

        state.removeCurrentSnackBar();
      },
      showMaterialBanner: (value) {
        final state = ScaffoldMessenger.maybeOf(origin.context);
        if (null == state) return null;

        // TODO: Add reasons via AWActions in constructor
        state.showMaterialBanner(value.materialBanner.buildWidget(origin));
      },
      hideCurrentMaterialBanner: (value) {
        final state = ScaffoldMessenger.maybeOf(origin.context);
        if (null == state) return null;

        state.hideCurrentMaterialBanner();
      },
      removeCurrentMaterialBanner: (value) {
        final state = ScaffoldMessenger.maybeOf(origin.context);
        if (null == state) return null;

        state.removeCurrentMaterialBanner();
      },
    );
  }
}

@defaultConverterFreezed
class FlutterSnackBar with _$FlutterSnackBar implements FlutterWidget {
  const FlutterSnackBar._();

  static const String unionValue = 'f:1:SnackBar';

  factory FlutterSnackBar.fromJson(Map<String, dynamic> json) =>
      _$FlutterSnackBarFromJson(json);

  @FreezedUnionValue(FlutterSnackBar.unionValue)
  factory FlutterSnackBar({
    FlutterKey? key,
    required FlutterWidget content,
    FlutterColor? backgroundColor,
    ZacDouble? elevation,
    FlutterEdgeInsetsGeometry? margin,
    FlutterEdgeInsetsGeometry? padding,
    ZacDouble? width,
    FlutterShapeBorder? shape,
    FlutterSnackBarBehavior? behavior,
    FlutterSnackBarAction? action,
    // Duration duration = _snackBarDisplayDuration,
    // Animation<double>? animation,
    ZacActions? onVisible,
    // DismissDirection dismissDirection = DismissDirection.down,
  }) = _FlutterSnackBar;

  @override
  SnackBar buildWidget(ZacOriginWidgetTree origin) {
    return SnackBar(
      content: content.buildWidget(origin),
      key: key?.buildKey(origin),
      action: action?.buildWidget(origin),
      // animation: key?.toFlutter(context),
      backgroundColor: backgroundColor?.build(origin),
      behavior: behavior?.build(origin),
      // dismissDirection: dismissDirection?.toFlutter(context),
      // duration: duration?.toFlutter(context),
      elevation: elevation?.getValue(origin),
      margin: margin?.build(origin),
      onVisible: onVisible?.createCb(origin),
      padding: padding?.build(origin),
      shape: shape?.build(origin),
      width: width?.getValue(origin),
    );
  }
}

@defaultConverterFreezed
class FlutterSnackBarBehavior with _$FlutterSnackBarBehavior {
  const FlutterSnackBarBehavior._();

  factory FlutterSnackBarBehavior.fromJson(Map<String, dynamic> json) =>
      _$FlutterSnackBarBehaviorFromJson(json);

  @FreezedUnionValue('f:1:SnackBarBehavior.fixed')
  factory FlutterSnackBarBehavior.fixed() = _FlutterSnackBarBehaviorFixed;

  @FreezedUnionValue('f:1:SnackBarBehavior.floating')
  factory FlutterSnackBarBehavior.floating() = _FlutterSnackBarBehaviorFloating;

  SnackBarBehavior build(ZacOriginWidgetTree origin) {
    return map(
      fixed: (_) => SnackBarBehavior.fixed,
      floating: (_) => SnackBarBehavior.floating,
    );
  }
}

@defaultConverterFreezed
class FlutterSnackBarAction
    with _$FlutterSnackBarAction
    implements FlutterWidget {
  const FlutterSnackBarAction._();

  static const String unionValue = 'f:1:SnackBarAction';

  factory FlutterSnackBarAction.fromJson(Map<String, dynamic> json) =>
      _$FlutterSnackBarActionFromJson(json);

  @FreezedUnionValue(FlutterSnackBarAction.unionValue)
  factory FlutterSnackBarAction({
    FlutterKey? key,
    FlutterColor? textColor,
    FlutterColor? disabledTextColor,
    required String label,
    required ZacActions? onPressed,
  }) = _FlutterSnackBarAction;

  @override
  SnackBarAction buildWidget(ZacOriginWidgetTree origin) {
    return SnackBarAction(
      key: key?.buildKey(origin),
      label: label,
      onPressed: onPressed?.createCb(origin) ?? () {},
      disabledTextColor: disabledTextColor?.build(origin),
      textColor: textColor?.build(origin),
    );
  }
}

@defaultConverterFreezed
class FlutterMaterialBanner
    with _$FlutterMaterialBanner
    implements FlutterWidget {
  const FlutterMaterialBanner._();

  static const String unionValue = 'f:1:MaterialBanner';

  factory FlutterMaterialBanner.fromJson(Map<String, dynamic> json) =>
      _$FlutterMaterialBannerFromJson(json);

  @FreezedUnionValue(FlutterMaterialBanner.unionValue)
  factory FlutterMaterialBanner({
    FlutterKey? key,
    required FlutterWidget content,
    FlutterTextStyle? contentTextStyle,
    required ListOfZacWidget actions,
    ZacDouble? elevation,
    required FlutterWidget? leading,
    FlutterColor? backgroundColor,
    FlutterEdgeInsetsGeometry? padding,
    FlutterEdgeInsetsGeometry? leadingPadding,
    ZacBool? forceActionsBelow,
// OverflowBarAlignment overflowAlignment = OverflowBarAlignment.end,
// Animation<double>? animation,
    ZacActions? onVisible,
  }) = _FlutterMaterialBanner;

  @override
  MaterialBanner buildWidget(ZacOriginWidgetTree origin) {
    return MaterialBanner(
      content: content.buildWidget(origin),
      actions: actions.getValue(origin),
      key: key?.buildKey(origin),
      // animation: ,
      backgroundColor: backgroundColor?.build(origin),
      contentTextStyle: contentTextStyle?.build(origin),
      elevation: elevation?.getValue(origin),
      forceActionsBelow: forceActionsBelow?.getValue(origin) ?? false,
      leading: leading?.buildWidget(origin),
      leadingPadding: leadingPadding?.build(origin),
      onVisible: onVisible?.createCb(origin),
      // overflowAlignment: backgroundColor?.toFlutter(context),
      padding: padding?.build(origin),
    );
  }
}
