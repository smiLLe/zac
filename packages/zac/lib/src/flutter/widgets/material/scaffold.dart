import 'package:zac/src/zac/action.dart';
import 'package:zac/src/zac/any_value.dart';
import 'package:zac/src/zac/misc.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zac/src/zac/update_context.dart';

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
class FlutterScaffold with _$FlutterScaffold implements ZacUiAction, ZacWidget {
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
    ZacWidget? appBar,
    ZacWidget? body,
    ZacWidget? floatingActionButton,
    // FloatingActionButtonLocation? floatingActionButtonLocation,
    // FloatingActionButtonAnimator? floatingActionButtonAnimator,
    ListOfZacWidget? persistentFooterButtons,
    ZacWidget? drawer,
    // DrawerCallback? onDrawerChanged,
    ZacWidget? endDrawer,
    // DrawerCallback? onEndDrawerChanged,
    ZacWidget? bottomNavigationBar,
    ZacWidget? bottomSheet,
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
    ZacWidget child, {
    FlutterColor? backgroundColor,
    ZacDouble? elevation,
    FlutterShapeBorder? shape,
    FlutterClip? clipBehavior,
    FlutterBoxConstraints? constraints,
    ZacBool? enableDrag,
// AnimationController? transitionAnimationController,
  }) = _FlutterScaffoldShowBottomSheet;

  @override
  void execute(BuildContext context, WidgetRef ref, ZacActionHelper helper,
      ContextBag bag) {
    final zacRef = ZacRef.widget(ref);
    map(
      (_) => throw StateError('Should never happen'),
      showBottomSheet: (value) {
        final state = Scaffold.maybeOf(context);
        if (null == state) return;
        state.showBottomSheet<void>(
          (_) => FlutterBuilder(child: value.child)
              .buildWidget(context, ref, helper),
          backgroundColor: value.backgroundColor?.build(context, ref, helper),
          clipBehavior: value.clipBehavior?.build(context, ref, helper),
          constraints: value.constraints?.build(context, ref, helper),
          elevation: value.elevation?.getValue(zacRef),
          shape: value.shape?.build(context, ref, helper),
          // transitionAnimationController:
        );
      },
      openEndDrawer: (value) {
        final state = Scaffold.maybeOf(context);
        if (null == state ||
            false == state.hasEndDrawer ||
            true == state.isEndDrawerOpen) return null;
        state.openEndDrawer();
      },
      openDrawer: (value) {
        final state = Scaffold.maybeOf(context);
        if (null == state ||
            false == state.hasDrawer ||
            true == state.isDrawerOpen) return null;
        state.openDrawer();
      },
      showBodyScrim: (value) {
        final state = Scaffold.maybeOf(context);
        if (null == state) return null;
        state.showBodyScrim(value.value, value.opacity.getValue(zacRef));
      },
    );
  }

  @override
  Widget buildWidget(
      BuildContext context, WidgetRef ref, ZacActionHelper helper) {
    final zacRef = ZacRef.widget(ref);
    return map(
      (value) => Scaffold(
        key: value.key?.buildKey(context, ref, helper),
        body: value.body?.buildWidget(context, ref, helper),
        floatingActionButton:
            value.floatingActionButton?.buildWidget(context, ref, helper),
        persistentFooterButtons:
            value.persistentFooterButtons?.getValue(context, ref, helper),
        appBar: value.appBar?.buildWidget(context, ref, helper)
            as PreferredSizeWidget?,
        drawer: value.drawer?.buildWidget(context, ref, helper),
        endDrawer: value.endDrawer?.buildWidget(context, ref, helper),
        bottomNavigationBar:
            value.bottomNavigationBar?.buildWidget(context, ref, helper),
        bottomSheet: value.bottomSheet?.buildWidget(context, ref, helper),
        backgroundColor: value.backgroundColor?.build(context, ref, helper),
        resizeToAvoidBottomInset:
            value.resizeToAvoidBottomInset?.getValue(zacRef),
        primary: value.primary?.getValue(zacRef) ?? true,
        extendBody: value.extendBody?.getValue(zacRef) ?? false,
        extendBodyBehindAppBar:
            value.extendBodyBehindAppBar?.getValue(zacRef) ?? false,
        drawerScrimColor: value.drawerScrimColor?.build(context, ref, helper),
        drawerEdgeDragWidth: value.drawerEdgeDragWidth?.getValue(zacRef),
        drawerEnableOpenDragGesture:
            value.drawerEnableOpenDragGesture?.getValue(zacRef) ?? true,
        endDrawerEnableOpenDragGesture:
            value.endDrawerEnableOpenDragGesture?.getValue(zacRef) ?? true,
        restorationId: value.restorationId?.getValue(zacRef),
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
    implements ZacUiAction {
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
  void execute(BuildContext context, WidgetRef ref, ZacActionHelper helper,
      ContextBag bag) {
    map(
      showSnackBar: (value) {
        final state = ScaffoldMessenger.maybeOf(context);
        if (null == state) return null;

        // TODO: Add reasons via AWActions in constructor
        state.showSnackBar(value.snackBar.buildWidget(context, ref, helper));
      },
      hideCurrentSnackBar: (value) {
        final state = ScaffoldMessenger.maybeOf(context);
        if (null == state) return null;

        state.hideCurrentSnackBar();
      },
      removeCurrentSnackBar: (value) {
        final state = ScaffoldMessenger.maybeOf(context);
        if (null == state) return null;

        state.removeCurrentSnackBar();
      },
      showMaterialBanner: (value) {
        final state = ScaffoldMessenger.maybeOf(context);
        if (null == state) return null;

        // TODO: Add reasons via AWActions in constructor
        state.showMaterialBanner(
            value.materialBanner.buildWidget(context, ref, helper));
      },
      hideCurrentMaterialBanner: (value) {
        final state = ScaffoldMessenger.maybeOf(context);
        if (null == state) return null;

        state.hideCurrentMaterialBanner();
      },
      removeCurrentMaterialBanner: (value) {
        final state = ScaffoldMessenger.maybeOf(context);
        if (null == state) return null;

        state.removeCurrentMaterialBanner();
      },
    );
  }
}

@defaultConverterFreezed
class FlutterSnackBar with _$FlutterSnackBar implements ZacWidget {
  const FlutterSnackBar._();

  static const String unionValue = 'f:1:SnackBar';

  factory FlutterSnackBar.fromJson(Map<String, dynamic> json) =>
      _$FlutterSnackBarFromJson(json);

  @FreezedUnionValue(FlutterSnackBar.unionValue)
  factory FlutterSnackBar({
    FlutterKey? key,
    required ZacWidget content,
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
    ZacUiActions? onVisible,
    // DismissDirection dismissDirection = DismissDirection.down,
  }) = _FlutterSnackBar;

  @override
  SnackBar buildWidget(
      BuildContext context, WidgetRef ref, ZacActionHelper helper) {
    final zacRef = ZacRef.widget(ref);
    return SnackBar(
      content: content.buildWidget(context, ref, helper),
      key: key?.buildKey(context, ref, helper),
      action: action?.buildWidget(context, ref, helper),
      // animation: key?.toFlutter(context),
      backgroundColor: backgroundColor?.build(context, ref, helper),
      behavior: behavior?.build(context, ref, helper),
      // dismissDirection: dismissDirection?.toFlutter(context),
      // duration: duration?.toFlutter(context),
      elevation: elevation?.getValue(zacRef),
      margin: margin?.build(context, ref, helper),
      onVisible: onVisible?.createCb(
        context: context,
        ref: ref,
        helper: helper,
      ),
      padding: padding?.build(context, ref, helper),
      shape: shape?.build(context, ref, helper),
      width: width?.getValue(zacRef),
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

  SnackBarBehavior build(
      BuildContext context, WidgetRef ref, ZacActionHelper helper) {
    return map(
      fixed: (_) => SnackBarBehavior.fixed,
      floating: (_) => SnackBarBehavior.floating,
    );
  }
}

@defaultConverterFreezed
class FlutterSnackBarAction with _$FlutterSnackBarAction implements ZacWidget {
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
    required ZacUiActions? onPressed,
  }) = _FlutterSnackBarAction;

  @override
  SnackBarAction buildWidget(
      BuildContext context, WidgetRef ref, ZacActionHelper helper) {
    return SnackBarAction(
      key: key?.buildKey(context, ref, helper),
      label: label,
      onPressed: onPressed?.createCb(
            context: context,
            ref: ref,
            helper: helper,
          ) ??
          () {},
      disabledTextColor: disabledTextColor?.build(context, ref, helper),
      textColor: textColor?.build(context, ref, helper),
    );
  }
}

@defaultConverterFreezed
class FlutterMaterialBanner with _$FlutterMaterialBanner implements ZacWidget {
  const FlutterMaterialBanner._();

  static const String unionValue = 'f:1:MaterialBanner';

  factory FlutterMaterialBanner.fromJson(Map<String, dynamic> json) =>
      _$FlutterMaterialBannerFromJson(json);

  @FreezedUnionValue(FlutterMaterialBanner.unionValue)
  factory FlutterMaterialBanner({
    FlutterKey? key,
    required ZacWidget content,
    FlutterTextStyle? contentTextStyle,
    required ListOfZacWidget actions,
    ZacDouble? elevation,
    required ZacWidget? leading,
    FlutterColor? backgroundColor,
    FlutterEdgeInsetsGeometry? padding,
    FlutterEdgeInsetsGeometry? leadingPadding,
    ZacBool? forceActionsBelow,
// OverflowBarAlignment overflowAlignment = OverflowBarAlignment.end,
// Animation<double>? animation,
    ZacUiActions? onVisible,
  }) = _FlutterMaterialBanner;

  @override
  MaterialBanner buildWidget(
      BuildContext context, WidgetRef ref, ZacActionHelper helper) {
    final zacRef = ZacRef.widget(ref);
    return MaterialBanner(
      content: content.buildWidget(context, ref, helper),
      actions: actions.getValue(context, ref, helper),
      key: key?.buildKey(context, ref, helper),
      // animation: ,
      backgroundColor: backgroundColor?.build(context, ref, helper),
      contentTextStyle: contentTextStyle?.build(context, ref, helper),
      elevation: elevation?.getValue(zacRef),
      forceActionsBelow: forceActionsBelow?.getValue(zacRef) ?? false,
      leading: leading?.buildWidget(context, ref, helper),
      leadingPadding: leadingPadding?.build(context, ref, helper),
      onVisible: onVisible?.createCb(
        context: context,
        ref: ref,
        helper: helper,
      ),
      // overflowAlignment: backgroundColor?.toFlutter(context),
      padding: padding?.build(context, ref, helper),
    );
  }
}
