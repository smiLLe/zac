import 'package:zac/src/zac/action.dart';
import 'package:zac/src/zac/context.dart';
import 'package:zac/src/zac/shared_value.dart';
import 'package:zac/src/zac/zac_build.dart';
import 'package:zac/src/zac/zac_value.dart';

import 'package:zac/src/base.dart';
import 'package:zac/src/flutter/rendering.dart';
import 'package:zac/src/flutter/widgets/builder.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'scaffold.freezed.dart';
part 'scaffold.g.dart';

@freezedZacBuilder
class FlutterScaffold with _$FlutterScaffold implements ZacBuild<Scaffold> {
  const FlutterScaffold._();

  static const String unionValue = 'f:1:Scaffold';

  factory FlutterScaffold.fromJson(Map<String, dynamic> json) =>
      _$FlutterScaffoldFromJson(json);

  @FreezedUnionValue(FlutterScaffold.unionValue)
  factory FlutterScaffold({
    ZacValue<Key?>? key,
    // PreferredSizeWidget?
    ZacValue<Widget?>? appBar,
    ZacValue<Widget?>? body,
    ZacValue<Widget?>? floatingActionButton,
    // FloatingActionButtonLocation? floatingActionButtonLocation,
    // FloatingActionButtonAnimator? floatingActionButtonAnimator,
    ZacValueList<Widget, List<Widget>?>? persistentFooterButtons,
    ZacValue<Widget?>? drawer,
    // DrawerCallback? onDrawerChanged,
    ZacValue<Widget?>? endDrawer,
    // DrawerCallback? onEndDrawerChanged,
    ZacValue<Widget?>? bottomNavigationBar,
    ZacValue<Widget?>? bottomSheet,
    ZacValue<Color?>? backgroundColor,
    ZacValue<bool?>? resizeToAvoidBottomInset,
    ZacValue<bool?>? primary,
    // DragStartBehavior drawerDragStartBehavior = DragStartBehavior.start,
    ZacValue<bool?>? extendBody,
    ZacValue<bool?>? extendBodyBehindAppBar,
    ZacValue<Color?>? drawerScrimColor,
    ZacValue<double?>? drawerEdgeDragWidth,
    ZacValue<bool?>? drawerEnableOpenDragGesture,
    ZacValue<bool?>? endDrawerEnableOpenDragGesture,
    ZacValue<String?>? restorationId,
  }) = _FlutterScaffold;

  Scaffold _buildWidget(ZacContext zacContext) {
    return map(
      (value) => Scaffold(
        key: value.key?.getValue(zacContext),
        body: value.body?.getValue(zacContext),
        floatingActionButton: value.floatingActionButton?.getValue(zacContext),
        persistentFooterButtons:
            value.persistentFooterButtons?.build(zacContext),
        appBar: value.appBar?.getValue(zacContext) as PreferredSizeWidget?,
        drawer: value.drawer?.getValue(zacContext),
        endDrawer: value.endDrawer?.getValue(zacContext),
        bottomNavigationBar: value.bottomNavigationBar?.getValue(zacContext),
        bottomSheet: value.bottomSheet?.getValue(zacContext),
        backgroundColor: value.backgroundColor?.getValue(zacContext),
        resizeToAvoidBottomInset:
            value.resizeToAvoidBottomInset?.getValue(zacContext),
        primary: value.primary?.getValue(zacContext) ?? true,
        extendBody: value.extendBody?.getValue(zacContext) ?? false,
        extendBodyBehindAppBar:
            value.extendBodyBehindAppBar?.getValue(zacContext) ?? false,
        drawerScrimColor: value.drawerScrimColor?.getValue(zacContext),
        drawerEdgeDragWidth: value.drawerEdgeDragWidth?.getValue(zacContext),
        drawerEnableOpenDragGesture:
            value.drawerEnableOpenDragGesture?.getValue(zacContext) ?? true,
        endDrawerEnableOpenDragGesture:
            value.endDrawerEnableOpenDragGesture?.getValue(zacContext) ?? true,
        restorationId: value.restorationId?.getValue(zacContext),
      ),
    );
  }

  @override
  Scaffold build(ZacContext zacContext) {
    return _buildWidget(zacContext);
  }
}

@freezedZacBuilder
class FlutterScaffoldActions
    with _$FlutterScaffoldActions
    implements ZacAction {
  const FlutterScaffoldActions._();

  static const String unionValueOpenDrawer = 'f:1:Scaffold.openDrawer';
  static const String unionValueOpenEndDrawer = 'f:1:Scaffold.openEndDrawer';
  static const String unionValueShowBodyScrim = 'f:1:Scaffold.showBodyScrim';
  static const String unionValueShowBottomSheet =
      'f:1:Scaffold.showBottomSheet';

  factory FlutterScaffoldActions.fromJson(Map<String, dynamic> json) =>
      _$FlutterScaffoldActionsFromJson(json);

  @FreezedUnionValue(FlutterScaffoldActions.unionValueOpenDrawer)
  factory FlutterScaffoldActions.openDrawer() =
      _FlutterScaffoldActionsOpenDrawer;

  @FreezedUnionValue(FlutterScaffoldActions.unionValueOpenEndDrawer)
  factory FlutterScaffoldActions.openEndDrawer() =
      _FlutterScaffoldActionsOpenEndDrawer;

  @FreezedUnionValue(FlutterScaffoldActions.unionValueShowBodyScrim)
  factory FlutterScaffoldActions.showBodyScrim(
          bool value, ZacValue<double> opacity) =
      _FlutterScaffoldActionsShowBodyScrim;

  @FreezedUnionValue(FlutterScaffoldActions.unionValueShowBottomSheet)
  factory FlutterScaffoldActions.showBottomSheet(
    ZacValue<Widget> child, {
    ZacValue<Color?>? backgroundColor,
    ZacValue<double?>? elevation,
    ZacValue<ShapeBorder?>? shape,
    ZacValue<Clip?>? clipBehavior,
    FlutterBoxConstraints? constraints,
    ZacValue<bool?>? enableDrag,
// AnimationController? transitionAnimationController,
  }) = _FlutterScaffoldActionsShowBottomSheet;

  @override
  void execute(ZacActionPayload payload, ZacContext zacContext) {
    map(
      showBottomSheet: (value) {
        final state = Scaffold.maybeOf(zacContext.context);
        if (null == state) return;
        state.showBottomSheet<void>(
          (_) => FlutterBuilder(child: value.child).build(zacContext),
          backgroundColor: value.backgroundColor?.getValue(zacContext),
          clipBehavior: value.clipBehavior?.getValue(zacContext),
          constraints: value.constraints?.build(zacContext),
          elevation: value.elevation?.getValue(zacContext,
              onConsume: const SharedValueConsumeType.read()),
          shape: value.shape?.getValue(zacContext),
          enableDrag: value.enableDrag?.getValue(zacContext),
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
        state.showBodyScrim(
            value.value,
            value.opacity.getValue(zacContext,
                onConsume: const SharedValueConsumeType.read()));
      },
    );
  }
}

@freezedZacBuilder
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
        state.showSnackBar(value.snackBar.build(zacContext));
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
        state.showMaterialBanner(value.materialBanner.build(zacContext));
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

@freezedZacBuilder
class FlutterSnackBar with _$FlutterSnackBar implements ZacBuild<SnackBar> {
  const FlutterSnackBar._();

  static const String unionValue = 'f:1:SnackBar';

  factory FlutterSnackBar.fromJson(Map<String, dynamic> json) =>
      _$FlutterSnackBarFromJson(json);

  @FreezedUnionValue(FlutterSnackBar.unionValue)
  factory FlutterSnackBar({
    ZacValue<Key?>? key,
    required ZacValue<Widget> content,
    ZacValue<Color?>? backgroundColor,
    ZacValue<double?>? elevation,
    ZacValue<EdgeInsetsGeometry?>? margin,
    ZacValue<EdgeInsetsGeometry?>? padding,
    ZacValue<double?>? width,
    ZacValue<ShapeBorder?>? shape,
    FlutterSnackBarBehavior? behavior,
    FlutterSnackBarAction? action,
    // Duration duration = _snackBarDisplayDuration,
    // Animation<double>? animation,
    ZacActions? onVisible,
    // DismissDirection dismissDirection = DismissDirection.down,
  }) = _FlutterSnackBar;

  SnackBar _buildWidget(ZacContext zacContext) {
    return SnackBar(
      content: content.getValue(zacContext),
      key: key?.getValue(zacContext),
      action: action?.build(zacContext),
      // animation: key?.toFlutter(context),
      backgroundColor: backgroundColor?.getValue(zacContext),
      behavior: behavior?.build(zacContext),
      // dismissDirection: dismissDirection?.toFlutter(context),
      // duration: duration?.toFlutter(context),
      elevation: elevation?.getValue(zacContext),
      margin: margin?.getValue(zacContext),
      onVisible: onVisible?.createCb(zacContext),
      padding: padding?.getValue(zacContext),
      shape: shape?.getValue(zacContext),
      width: width?.getValue(zacContext),
    );
  }

  @override
  SnackBar build(ZacContext zacContext) {
    return _buildWidget(zacContext);
  }
}

@freezedZacBuilder
class FlutterSnackBarBehavior
    with _$FlutterSnackBarBehavior, ZacBuild<SnackBarBehavior> {
  const FlutterSnackBarBehavior._();

  factory FlutterSnackBarBehavior.fromJson(Map<String, dynamic> json) =>
      _$FlutterSnackBarBehaviorFromJson(json);

  @FreezedUnionValue('f:1:SnackBarBehavior.fixed')
  factory FlutterSnackBarBehavior.fixed() = _FlutterSnackBarBehaviorFixed;

  @FreezedUnionValue('f:1:SnackBarBehavior.floating')
  factory FlutterSnackBarBehavior.floating() = _FlutterSnackBarBehaviorFloating;

  SnackBarBehavior _build(ZacContext zacContext) {
    return map(
      fixed: (_) => SnackBarBehavior.fixed,
      floating: (_) => SnackBarBehavior.floating,
    );
  }

  @override
  SnackBarBehavior build(ZacContext zacContext) {
    return _build(zacContext);
  }
}

@freezedZacBuilder
class FlutterSnackBarAction
    with _$FlutterSnackBarAction
    implements ZacBuild<SnackBarAction> {
  const FlutterSnackBarAction._();

  static const String unionValue = 'f:1:SnackBarAction';

  factory FlutterSnackBarAction.fromJson(Map<String, dynamic> json) =>
      _$FlutterSnackBarActionFromJson(json);

  @FreezedUnionValue(FlutterSnackBarAction.unionValue)
  factory FlutterSnackBarAction({
    ZacValue<Key?>? key,
    ZacValue<Color?>? textColor,
    ZacValue<Color?>? disabledTextColor,
    required String label,
    required ZacActions? onPressed,
  }) = _FlutterSnackBarAction;

  SnackBarAction _buildWidget(ZacContext zacContext) {
    return SnackBarAction(
      key: key?.getValue(zacContext),
      label: label,
      onPressed: onPressed?.createCb(zacContext) ?? () {},
      disabledTextColor: disabledTextColor?.getValue(zacContext),
      textColor: textColor?.getValue(zacContext),
    );
  }

  @override
  SnackBarAction build(ZacContext zacContext) {
    return _buildWidget(zacContext);
  }
}

@freezedZacBuilder
class FlutterMaterialBanner
    with _$FlutterMaterialBanner
    implements ZacBuild<MaterialBanner> {
  const FlutterMaterialBanner._();

  static const String unionValue = 'f:1:MaterialBanner';

  factory FlutterMaterialBanner.fromJson(Map<String, dynamic> json) =>
      _$FlutterMaterialBannerFromJson(json);

  @FreezedUnionValue(FlutterMaterialBanner.unionValue)
  factory FlutterMaterialBanner({
    ZacValue<Key?>? key,
    required ZacValue<Widget> content,
    ZacValue<TextStyle?>? contentTextStyle,
    required ZacValueList<Widget, List<Widget>> actions,
    ZacValue<double?>? elevation,
    required ZacValue<Widget?>? leading,
    ZacValue<Color?>? backgroundColor,
    ZacValue<EdgeInsetsGeometry?>? padding,
    ZacValue<EdgeInsetsGeometry?>? leadingPadding,
    ZacValue<bool?>? forceActionsBelow,
// OverflowBarAlignment overflowAlignment = OverflowBarAlignment.end,
// Animation<double>? animation,
    ZacActions? onVisible,
  }) = _FlutterMaterialBanner;

  MaterialBanner _buildWidget(ZacContext zacContext) {
    return MaterialBanner(
      content: content.getValue(zacContext),
      actions: actions.build(zacContext),
      key: key?.getValue(zacContext),
      // animation: ,
      backgroundColor: backgroundColor?.getValue(zacContext),
      contentTextStyle: contentTextStyle?.getValue(zacContext),
      elevation: elevation?.getValue(zacContext),
      forceActionsBelow: forceActionsBelow?.getValue(zacContext) ?? false,
      leading: leading?.getValue(zacContext),
      leadingPadding: leadingPadding?.getValue(zacContext),
      onVisible: onVisible?.createCb(zacContext),
      // overflowAlignment: backgroundColor?.toFlutter(context),
      padding: padding?.getValue(zacContext),
    );
  }

  @override
  MaterialBanner build(ZacContext zacContext) {
    return _buildWidget(zacContext);
  }
}
