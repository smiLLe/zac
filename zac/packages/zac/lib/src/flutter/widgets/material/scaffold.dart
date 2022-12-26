import 'package:zac/src/zac/action.dart';
import 'package:zac/src/zac/context.dart';
import 'package:zac/src/zac/shared_value.dart';
import 'package:zac/src/zac/zac_builder.dart';
import 'package:zac/src/zac/zac_value.dart';

import 'package:zac/src/base.dart';
import 'package:zac/src/flutter/rendering.dart';
import 'package:zac/src/flutter/widgets/builder.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'scaffold.freezed.dart';
part 'scaffold.g.dart';

@freezedZacBuilder
@ZacGenerate(order: zacGenerateOrderFlutterWidget)
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
        key: value.key?.build(zacContext),
        body: value.body?.build(zacContext),
        floatingActionButton: value.floatingActionButton?.build(zacContext),
        persistentFooterButtons:
            value.persistentFooterButtons?.build(zacContext),
        appBar: value.appBar?.build(zacContext) as PreferredSizeWidget?,
        drawer: value.drawer?.build(zacContext),
        endDrawer: value.endDrawer?.build(zacContext),
        bottomNavigationBar: value.bottomNavigationBar?.build(zacContext),
        bottomSheet: value.bottomSheet?.build(zacContext),
        backgroundColor: value.backgroundColor?.build(zacContext),
        resizeToAvoidBottomInset:
            value.resizeToAvoidBottomInset?.build(zacContext),
        primary: value.primary?.build(zacContext) ?? true,
        extendBody: value.extendBody?.build(zacContext) ?? false,
        extendBodyBehindAppBar:
            value.extendBodyBehindAppBar?.build(zacContext) ?? false,
        drawerScrimColor: value.drawerScrimColor?.build(zacContext),
        drawerEdgeDragWidth: value.drawerEdgeDragWidth?.build(zacContext),
        drawerEnableOpenDragGesture:
            value.drawerEnableOpenDragGesture?.build(zacContext) ?? true,
        endDrawerEnableOpenDragGesture:
            value.endDrawerEnableOpenDragGesture?.build(zacContext) ?? true,
        restorationId: value.restorationId?.build(zacContext),
      ),
    );
  }

  @override
  Scaffold build(ZacContext zacContext) {
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
          backgroundColor: value.backgroundColor?.build(zacContext),
          clipBehavior: value.clipBehavior?.build(zacContext),
          constraints: value.constraints?.build(zacContext),
          elevation: value.elevation?.build(zacContext,
              onConsume: const SharedValueConsumeType.read()),
          shape: value.shape?.build(zacContext),
          enableDrag: value.enableDrag?.build(zacContext),
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
                onConsume: const SharedValueConsumeType.read()));
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
@ZacGenerate(order: zacGenerateOrderFlutterWidget)
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
      content: content.build(zacContext),
      key: key?.build(zacContext),
      action: action?.build(zacContext),
      // animation: key?.toFlutter(context),
      backgroundColor: backgroundColor?.build(zacContext),
      behavior: behavior?.build(zacContext),
      // dismissDirection: dismissDirection?.toFlutter(context),
      // duration: duration?.toFlutter(context),
      elevation: elevation?.build(zacContext),
      margin: margin?.build(zacContext),
      onVisible: onVisible?.createCb(zacContext),
      padding: padding?.build(zacContext),
      shape: shape?.build(zacContext),
      width: width?.build(zacContext),
    );
  }

  @override
  SnackBar build(ZacContext zacContext) {
    return _buildWidget(zacContext);
  }
}

@freezedZacBuilder
@ZacGenerate(order: zacGenerateOrderFlutterWidget)
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
@ZacGenerate(order: zacGenerateOrderFlutterWidget)
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
      key: key?.build(zacContext),
      label: label,
      onPressed: onPressed?.createCb(zacContext) ?? () {},
      disabledTextColor: disabledTextColor?.build(zacContext),
      textColor: textColor?.build(zacContext),
    );
  }

  @override
  SnackBarAction build(ZacContext zacContext) {
    return _buildWidget(zacContext);
  }
}

@freezedZacBuilder
@ZacGenerate(order: zacGenerateOrderFlutterWidget)
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
      content: content.build(zacContext),
      actions: actions.build(zacContext),
      key: key?.build(zacContext),
      // animation: ,
      backgroundColor: backgroundColor?.build(zacContext),
      contentTextStyle: contentTextStyle?.build(zacContext),
      elevation: elevation?.build(zacContext),
      forceActionsBelow: forceActionsBelow?.build(zacContext) ?? false,
      leading: leading?.build(zacContext),
      leadingPadding: leadingPadding?.build(zacContext),
      onVisible: onVisible?.createCb(zacContext),
      // overflowAlignment: backgroundColor?.toFlutter(context),
      padding: padding?.build(zacContext),
    );
  }

  @override
  MaterialBanner build(ZacContext zacContext) {
    return _buildWidget(zacContext);
  }
}
