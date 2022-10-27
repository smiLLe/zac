import 'package:zac/src/zac/action.dart';
import 'package:zac/src/zac/context.dart';
import 'package:zac/src/zac/zac_values.dart';

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
    ZacValueList<FlutterWidget>? persistentFooterButtons,
    FlutterWidget? drawer,
    // DrawerCallback? onDrawerChanged,
    FlutterWidget? endDrawer,
    // DrawerCallback? onEndDrawerChanged,
    FlutterWidget? bottomNavigationBar,
    FlutterWidget? bottomSheet,
    FlutterColor? backgroundColor,
    ZacValue<bool>? resizeToAvoidBottomInset,
    ZacValue<bool>? primary,
    // DragStartBehavior drawerDragStartBehavior = DragStartBehavior.start,
    ZacValue<bool>? extendBody,
    ZacValue<bool>? extendBodyBehindAppBar,
    FlutterColor? drawerScrimColor,
    ZacValue<double>? drawerEdgeDragWidth,
    ZacValue<bool>? drawerEnableOpenDragGesture,
    ZacValue<bool>? endDrawerEnableOpenDragGesture,
    ZacValue<String>? restorationId,
  }) = _FlutterScaffold;

  @FreezedUnionValue(FlutterScaffold.unionValueOpenDrawer)
  factory FlutterScaffold.openDrawer() = _FlutterScaffoldOpenDrawer;

  @FreezedUnionValue(FlutterScaffold.unionValueOpenEndDrawer)
  factory FlutterScaffold.openEndDrawer() = _FlutterScaffoldOpenEndDrawer;

  @FreezedUnionValue(FlutterScaffold.unionValueShowBodyScrim)
  factory FlutterScaffold.showBodyScrim(bool value, ZacValue<double> opacity) =
      _FlutterScaffoldShowBodyScrim;

  @FreezedUnionValue(FlutterScaffold.unionValueShowBottomSheet)
  factory FlutterScaffold.showBottomSheet(
    FlutterWidget child, {
    FlutterColor? backgroundColor,
    ZacValue<double>? elevation,
    FlutterShapeBorder? shape,
    FlutterClip? clipBehavior,
    FlutterBoxConstraints? constraints,
    ZacValue<bool>? enableDrag,
// AnimationController? transitionAnimationController,
  }) = _FlutterScaffoldShowBottomSheet;

  @override
  void execute(ZacActionPayload payload, ZacContext zacContext) {
    map(
      (_) => throw StateError('Should never happen'),
      showBottomSheet: (value) {
        final state = Scaffold.maybeOf(zacContext.context);
        if (null == state) return;
        state.showBottomSheet<void>(
          (_) => FlutterBuilder(child: value.child).buildWidget(zacContext),
          backgroundColor: value.backgroundColor?.build(zacContext),
          clipBehavior: value.clipBehavior?.build(zacContext),
          constraints: value.constraints?.build(zacContext),
          elevation: value.elevation?.getValue(zacContext),
          shape: value.shape?.build(zacContext),
          // transitionAnimationController:
        );
      },
      openEndDrawer: (value) {
        final state = Scaffold.maybeOf(zacContext.context);
        if (null == state ||
            false == state.hasEndDrawer ||
            true == state.isEndDrawerOpen) return null;
        state.openEndDrawer();
      },
      openDrawer: (value) {
        final state = Scaffold.maybeOf(zacContext.context);
        if (null == state ||
            false == state.hasDrawer ||
            true == state.isDrawerOpen) return null;
        state.openDrawer();
      },
      showBodyScrim: (value) {
        final state = Scaffold.maybeOf(zacContext.context);
        if (null == state) return null;
        state.showBodyScrim(value.value, value.opacity.getValue(zacContext));
      },
    );
  }

  @override
  Widget buildWidget(ZacContext zacContext) {
    return map(
      (value) => Scaffold(
        key: value.key?.buildKey(zacContext),
        body: value.body?.buildWidget(zacContext),
        floatingActionButton:
            value.floatingActionButton?.buildWidget(zacContext),
        persistentFooterButtons:
            value.persistentFooterButtons?.getWidgets(zacContext),
        appBar: value.appBar?.buildWidget(zacContext) as PreferredSizeWidget?,
        drawer: value.drawer?.buildWidget(zacContext),
        endDrawer: value.endDrawer?.buildWidget(zacContext),
        bottomNavigationBar: value.bottomNavigationBar?.buildWidget(zacContext),
        bottomSheet: value.bottomSheet?.buildWidget(zacContext),
        backgroundColor: value.backgroundColor?.build(zacContext),
        resizeToAvoidBottomInset:
            value.resizeToAvoidBottomInset?.getValue(zacContext),
        primary: value.primary?.getValue(zacContext) ?? true,
        extendBody: value.extendBody?.getValue(zacContext) ?? false,
        extendBodyBehindAppBar:
            value.extendBodyBehindAppBar?.getValue(zacContext) ?? false,
        drawerScrimColor: value.drawerScrimColor?.build(zacContext),
        drawerEdgeDragWidth: value.drawerEdgeDragWidth?.getValue(zacContext),
        drawerEnableOpenDragGesture:
            value.drawerEnableOpenDragGesture?.getValue(zacContext) ?? true,
        endDrawerEnableOpenDragGesture:
            value.endDrawerEnableOpenDragGesture?.getValue(zacContext) ?? true,
        restorationId: value.restorationId?.getValue(zacContext),
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
  void execute(ZacActionPayload payload, ZacContext zacContext) {
    map(
      showSnackBar: (value) {
        final state = ScaffoldMessenger.maybeOf(zacContext.context);
        if (null == state) return null;

        // TODO: Add reasons via AWActions in constructor
        state.showSnackBar(value.snackBar.buildWidget(zacContext));
      },
      hideCurrentSnackBar: (value) {
        final state = ScaffoldMessenger.maybeOf(zacContext.context);
        if (null == state) return null;

        state.hideCurrentSnackBar();
      },
      removeCurrentSnackBar: (value) {
        final state = ScaffoldMessenger.maybeOf(zacContext.context);
        if (null == state) return null;

        state.removeCurrentSnackBar();
      },
      showMaterialBanner: (value) {
        final state = ScaffoldMessenger.maybeOf(zacContext.context);
        if (null == state) return null;

        // TODO: Add reasons via AWActions in constructor
        state.showMaterialBanner(value.materialBanner.buildWidget(zacContext));
      },
      hideCurrentMaterialBanner: (value) {
        final state = ScaffoldMessenger.maybeOf(zacContext.context);
        if (null == state) return null;

        state.hideCurrentMaterialBanner();
      },
      removeCurrentMaterialBanner: (value) {
        final state = ScaffoldMessenger.maybeOf(zacContext.context);
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
    ZacValue<double>? elevation,
    FlutterEdgeInsetsGeometry? margin,
    FlutterEdgeInsetsGeometry? padding,
    ZacValue<double>? width,
    FlutterShapeBorder? shape,
    FlutterSnackBarBehavior? behavior,
    FlutterSnackBarAction? action,
    // Duration duration = _snackBarDisplayDuration,
    // Animation<double>? animation,
    ZacActions? onVisible,
    // DismissDirection dismissDirection = DismissDirection.down,
  }) = _FlutterSnackBar;

  @override
  SnackBar buildWidget(ZacContext zacContext) {
    return SnackBar(
      content: content.buildWidget(zacContext),
      key: key?.buildKey(zacContext),
      action: action?.buildWidget(zacContext),
      // animation: key?.toFlutter(context),
      backgroundColor: backgroundColor?.build(zacContext),
      behavior: behavior?.build(zacContext),
      // dismissDirection: dismissDirection?.toFlutter(context),
      // duration: duration?.toFlutter(context),
      elevation: elevation?.getValue(zacContext),
      margin: margin?.build(zacContext),
      onVisible: onVisible?.createCb(zacContext),
      padding: padding?.build(zacContext),
      shape: shape?.build(zacContext),
      width: width?.getValue(zacContext),
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

  SnackBarBehavior build(ZacContext zacContext) {
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
  SnackBarAction buildWidget(ZacContext zacContext) {
    return SnackBarAction(
      key: key?.buildKey(zacContext),
      label: label,
      onPressed: onPressed?.createCb(zacContext) ?? () {},
      disabledTextColor: disabledTextColor?.build(zacContext),
      textColor: textColor?.build(zacContext),
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
    required ZacValueList<FlutterWidget> actions,
    ZacValue<double>? elevation,
    required FlutterWidget? leading,
    FlutterColor? backgroundColor,
    FlutterEdgeInsetsGeometry? padding,
    FlutterEdgeInsetsGeometry? leadingPadding,
    ZacValue<bool>? forceActionsBelow,
// OverflowBarAlignment overflowAlignment = OverflowBarAlignment.end,
// Animation<double>? animation,
    ZacActions? onVisible,
  }) = _FlutterMaterialBanner;

  @override
  MaterialBanner buildWidget(ZacContext zacContext) {
    return MaterialBanner(
      content: content.buildWidget(zacContext),
      actions: actions.getWidgets(zacContext),
      key: key?.buildKey(zacContext),
      // animation: ,
      backgroundColor: backgroundColor?.build(zacContext),
      contentTextStyle: contentTextStyle?.build(zacContext),
      elevation: elevation?.getValue(zacContext),
      forceActionsBelow: forceActionsBelow?.getValue(zacContext) ?? false,
      leading: leading?.buildWidget(zacContext),
      leadingPadding: leadingPadding?.build(zacContext),
      onVisible: onVisible?.createCb(zacContext),
      // overflowAlignment: backgroundColor?.toFlutter(context),
      padding: padding?.build(zacContext),
    );
  }
}
