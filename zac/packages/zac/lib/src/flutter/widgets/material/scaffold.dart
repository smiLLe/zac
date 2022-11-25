import 'package:zac/src/zac/action.dart';
import 'package:zac/src/zac/context.dart';
import 'package:zac/src/zac/shared_value.dart';
import 'package:zac/src/zac/zac_builder.dart';
import 'package:zac/src/zac/zac_value.dart';

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

@freezedZacBuilder
@ZacGenerate(order: zacGenerateOrderFlutterWidget)
class FlutterScaffold with _$FlutterScaffold implements FlutterWidget {
  const FlutterScaffold._();

  static const String unionValue = 'f:1:Scaffold';

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
    ZacListOfFlutterWidget? persistentFooterButtons,
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

  Scaffold _buildWidget(ZacContext zacContext) {
    return map(
      (value) => Scaffold(
        key: value.key?.buildOrNull(zacContext),
        body: value.body?.buildOrNull(zacContext),
        floatingActionButton:
            value.floatingActionButton?.buildOrNull(zacContext),
        persistentFooterButtons:
            value.persistentFooterButtons?.buildOrNull(zacContext),
        appBar: value.appBar?.buildOrNull(zacContext) as PreferredSizeWidget?,
        drawer: value.drawer?.buildOrNull(zacContext),
        endDrawer: value.endDrawer?.buildOrNull(zacContext),
        bottomNavigationBar: value.bottomNavigationBar?.buildOrNull(zacContext),
        bottomSheet: value.bottomSheet?.buildOrNull(zacContext),
        backgroundColor: value.backgroundColor?.buildOrNull(zacContext),
        resizeToAvoidBottomInset:
            value.resizeToAvoidBottomInset?.buildOrNull(zacContext),
        primary: value.primary?.buildOrNull(zacContext) ?? true,
        extendBody: value.extendBody?.buildOrNull(zacContext) ?? false,
        extendBodyBehindAppBar:
            value.extendBodyBehindAppBar?.buildOrNull(zacContext) ?? false,
        drawerScrimColor: value.drawerScrimColor?.buildOrNull(zacContext),
        drawerEdgeDragWidth: value.drawerEdgeDragWidth?.buildOrNull(zacContext),
        drawerEnableOpenDragGesture:
            value.drawerEnableOpenDragGesture?.buildOrNull(zacContext) ?? true,
        endDrawerEnableOpenDragGesture:
            value.endDrawerEnableOpenDragGesture?.buildOrNull(zacContext) ??
                true,
        restorationId: value.restorationId?.buildOrNull(zacContext),
      ),
    );
  }

  @override
  Scaffold build(ZacContext zacContext,
      {ZacBuilderConsume onConsume = const ZacBuilderConsume()}) {
    return _buildWidget(zacContext);
  }

  @override
  Scaffold? buildOrNull(ZacContext zacContext,
      {ZacBuilderConsume onConsume = const ZacBuilderConsume()}) {
    return _buildWidget(zacContext);
  }
}

@freezedZacBuilder
@ZacGenerate(order: zacGenerateOrderFlutterWidget)
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
  factory FlutterScaffoldActions.showBodyScrim(bool value, ZacDouble opacity) =
      _FlutterScaffoldActionsShowBodyScrim;

  @FreezedUnionValue(FlutterScaffoldActions.unionValueShowBottomSheet)
  factory FlutterScaffoldActions.showBottomSheet(
    FlutterWidget child, {
    FlutterColor? backgroundColor,
    ZacDouble? elevation,
    FlutterShapeBorder? shape,
    FlutterClip? clipBehavior,
    FlutterBoxConstraints? constraints,
    ZacBool? enableDrag,
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
          backgroundColor: value.backgroundColor?.buildOrNull(zacContext),
          clipBehavior: value.clipBehavior?.buildOrNull(zacContext),
          constraints: value.constraints?.buildOrNull(zacContext),
          elevation: value.elevation?.buildOrNull(zacContext,
              onConsume:
                  const ZacBuilderConsume(type: SharedValueConsumeType.read())),
          shape: value.shape?.buildOrNull(zacContext),
          enableDrag: value.enableDrag?.buildOrNull(zacContext),
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
            value.opacity.build(zacContext,
                onConsume: const ZacBuilderConsume(
                    type: SharedValueConsumeType.read())));
      },
    );
  }
}

@freezedZacBuilder
@ZacGenerate(order: zacGenerateOrderFlutterWidget)
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
        state.showSnackBar(value.snackBar.build(zacContext,
            onConsume:
                const ZacBuilderConsume(type: SharedValueConsumeType.read())));
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
        state.showMaterialBanner(value.materialBanner.build(zacContext,
            onConsume:
                const ZacBuilderConsume(type: SharedValueConsumeType.read())));
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
@ZacGenerate(order: zacGenerateOrderFlutterWidget)
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

  SnackBar _buildWidget(ZacContext zacContext) {
    return SnackBar(
      content: content.build(zacContext),
      key: key?.buildOrNull(zacContext),
      action: action?.buildOrNull(zacContext),
      // animation: key?.toFlutter(context),
      backgroundColor: backgroundColor?.buildOrNull(zacContext),
      behavior: behavior?.buildOrNull(zacContext),
      // dismissDirection: dismissDirection?.toFlutter(context),
      // duration: duration?.toFlutter(context),
      elevation: elevation?.buildOrNull(zacContext),
      margin: margin?.buildOrNull(zacContext),
      onVisible: onVisible?.createCb(zacContext),
      padding: padding?.buildOrNull(zacContext),
      shape: shape?.buildOrNull(zacContext),
      width: width?.buildOrNull(zacContext),
    );
  }

  @override
  SnackBar build(ZacContext zacContext,
      {ZacBuilderConsume onConsume = const ZacBuilderConsume()}) {
    return _buildWidget(zacContext);
  }

  @override
  SnackBar? buildOrNull(ZacContext zacContext,
      {ZacBuilderConsume onConsume = const ZacBuilderConsume()}) {
    return _buildWidget(zacContext);
  }
}

@freezedZacBuilder
@ZacGenerate(order: zacGenerateOrderFlutterWidget)
class FlutterSnackBarBehavior
    with _$FlutterSnackBarBehavior, ZacBuilder<SnackBarBehavior> {
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
  SnackBarBehavior build(ZacContext zacContext,
      {ZacBuilderConsume onConsume = const ZacBuilderConsume()}) {
    return _build(zacContext);
  }

  @override
  SnackBarBehavior? buildOrNull(ZacContext zacContext,
      {ZacBuilderConsume onConsume = const ZacBuilderConsume()}) {
    return _build(zacContext);
  }
}

@freezedZacBuilder
@ZacGenerate(order: zacGenerateOrderFlutterWidget)
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

  SnackBarAction _buildWidget(ZacContext zacContext) {
    return SnackBarAction(
      key: key?.buildOrNull(zacContext),
      label: label,
      onPressed: onPressed?.createCb(zacContext) ?? () {},
      disabledTextColor: disabledTextColor?.buildOrNull(zacContext),
      textColor: textColor?.buildOrNull(zacContext),
    );
  }

  @override
  SnackBarAction build(ZacContext zacContext,
      {ZacBuilderConsume onConsume = const ZacBuilderConsume()}) {
    return _buildWidget(zacContext);
  }

  @override
  SnackBarAction? buildOrNull(ZacContext zacContext,
      {ZacBuilderConsume onConsume = const ZacBuilderConsume()}) {
    return _buildWidget(zacContext);
  }
}

@freezedZacBuilder
@ZacGenerate(order: zacGenerateOrderFlutterWidget)
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
    required ZacListOfFlutterWidget actions,
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

  MaterialBanner _buildWidget(ZacContext zacContext) {
    return MaterialBanner(
      content: content.build(zacContext),
      actions: actions.build(zacContext),
      key: key?.buildOrNull(zacContext),
      // animation: ,
      backgroundColor: backgroundColor?.buildOrNull(zacContext),
      contentTextStyle: contentTextStyle?.buildOrNull(zacContext),
      elevation: elevation?.buildOrNull(zacContext),
      forceActionsBelow: forceActionsBelow?.buildOrNull(zacContext) ?? false,
      leading: leading?.buildOrNull(zacContext),
      leadingPadding: leadingPadding?.buildOrNull(zacContext),
      onVisible: onVisible?.createCb(zacContext),
      // overflowAlignment: backgroundColor?.toFlutter(context),
      padding: padding?.buildOrNull(zacContext),
    );
  }

  @override
  MaterialBanner build(ZacContext zacContext,
      {ZacBuilderConsume onConsume = const ZacBuilderConsume()}) {
    return _buildWidget(zacContext);
  }

  @override
  MaterialBanner? buildOrNull(ZacContext zacContext,
      {ZacBuilderConsume onConsume = const ZacBuilderConsume()}) {
    return _buildWidget(zacContext);
  }
}
