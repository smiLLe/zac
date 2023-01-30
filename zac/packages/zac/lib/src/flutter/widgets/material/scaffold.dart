import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zac/src/zac/action.dart';
import 'package:zac/src/zac/context.dart';
import 'package:zac/src/zac/zac_builder.dart';

import 'package:zac/src/base.dart';
import 'package:zac/src/flutter/rendering.dart';
import 'package:zac/src/flutter/widgets/builder.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'scaffold.freezed.dart';
part 'scaffold.g.dart';

@freezedZacBuilder
class FlutterScaffold with _$FlutterScaffold implements ZacBuilder<Scaffold> {
  const FlutterScaffold._();

  static const String unionValue = 'f:1:Scaffold';

  factory FlutterScaffold.fromJson(Map<String, dynamic> json) =>
      _$FlutterScaffoldFromJson(json);

  @FreezedUnionValue(FlutterScaffold.unionValue)
  factory FlutterScaffold({
    ZacBuilder<Key?>? key,
    // PreferredSizeWidget?
    ZacBuilder<Widget?>? appBar,
    ZacBuilder<Widget?>? body,
    ZacBuilder<Widget?>? floatingActionButton,
    // FloatingActionButtonLocation? floatingActionButtonLocation,
    // FloatingActionButtonAnimator? floatingActionButtonAnimator,
    ZacBuilder<List<Widget>?>? persistentFooterButtons,
    ZacBuilder<Widget?>? drawer,
    // DrawerCallback? onDrawerChanged,
    ZacBuilder<Widget?>? endDrawer,
    // DrawerCallback? onEndDrawerChanged,
    ZacBuilder<Widget?>? bottomNavigationBar,
    ZacBuilder<Widget?>? bottomSheet,
    ZacBuilder<Color?>? backgroundColor,
    ZacBuilder<bool?>? resizeToAvoidBottomInset,
    ZacBuilder<bool?>? primary,
    // DragStartBehavior drawerDragStartBehavior = DragStartBehavior.start,
    ZacBuilder<bool?>? extendBody,
    ZacBuilder<bool?>? extendBodyBehindAppBar,
    ZacBuilder<Color?>? drawerScrimColor,
    ZacBuilder<double?>? drawerEdgeDragWidth,
    ZacBuilder<bool?>? drawerEnableOpenDragGesture,
    ZacBuilder<bool?>? endDrawerEnableOpenDragGesture,
    ZacBuilder<String?>? restorationId,
  }) = _FlutterScaffold;

  Scaffold _buildWidget(BuildContext context, ZacContext zacContext) {
    return map(
      (value) => Scaffold(
        key: value.key?.build(context, zacContext),
        body: value.body?.build(context, zacContext),
        floatingActionButton:
            value.floatingActionButton?.build(context, zacContext),
        persistentFooterButtons:
            value.persistentFooterButtons?.build(context, zacContext),
        appBar:
            value.appBar?.build(context, zacContext) as PreferredSizeWidget?,
        drawer: value.drawer?.build(context, zacContext),
        endDrawer: value.endDrawer?.build(context, zacContext),
        bottomNavigationBar:
            value.bottomNavigationBar?.build(context, zacContext),
        bottomSheet: value.bottomSheet?.build(context, zacContext),
        backgroundColor: value.backgroundColor?.build(context, zacContext),
        resizeToAvoidBottomInset:
            value.resizeToAvoidBottomInset?.build(context, zacContext),
        primary: value.primary?.build(context, zacContext) ?? true,
        extendBody: value.extendBody?.build(context, zacContext) ?? false,
        extendBodyBehindAppBar:
            value.extendBodyBehindAppBar?.build(context, zacContext) ?? false,
        drawerScrimColor: value.drawerScrimColor?.build(context, zacContext),
        drawerEdgeDragWidth:
            value.drawerEdgeDragWidth?.build(context, zacContext),
        drawerEnableOpenDragGesture:
            value.drawerEnableOpenDragGesture?.build(context, zacContext) ??
                true,
        endDrawerEnableOpenDragGesture:
            value.endDrawerEnableOpenDragGesture?.build(context, zacContext) ??
                true,
        restorationId: value.restorationId?.build(context, zacContext),
      ),
    );
  }

  @override
  Scaffold build(BuildContext context, ZacContext zacContext) {
    return _buildWidget(context, zacContext);
  }
}

@freezedZacBuilder
class FlutterScaffoldActions
    with _$FlutterScaffoldActions
    implements ZacBuilder<ZacAction> {
  FlutterScaffoldActions._();

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
    bool value,
    ZacBuilder<double> opacity,
  ) = _FlutterScaffoldActionsShowBodyScrim;

  @FreezedUnionValue(FlutterScaffoldActions.unionValueShowBottomSheet)
  factory FlutterScaffoldActions.showBottomSheet(
    ZacBuilder<Widget> child, {
    ZacBuilder<Color?>? backgroundColor,
    ZacBuilder<double?>? elevation,
    ZacBuilder<ShapeBorder?>? shape,
    ZacBuilder<Clip?>? clipBehavior,
    FlutterBoxConstraints? constraints,
    ZacBuilder<bool?>? enableDrag,
// AnimationController? transitionAnimationController,
  }) = _FlutterScaffoldActionsShowBottomSheet;

  late final ZacAction _action = ZacAction(
      (ZacActionPayload payload, BuildContext context, ZacContext zacContext) {
    map(
      showBottomSheet: (value) {
        final state = Scaffold.maybeOf(context);
        if (null == state) return;
        state.showBottomSheet<void>(
          (_) => ProviderScope(
            parent: ProviderScope.containerOf(context),
            child: ZacFlutterBuilder(builder: value.child.build),
          ),
          backgroundColor: value.backgroundColor?.build(context, zacContext),
          clipBehavior: value.clipBehavior?.build(context, zacContext),
          constraints: value.constraints?.build(context, zacContext),
          elevation: value.elevation?.build(context, zacContext),
          shape: value.shape?.build(context, zacContext),
          enableDrag: value.enableDrag?.build(context, zacContext),
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
        state.showBodyScrim(
          value.value,
          value.opacity.build(context, zacContext),
        );
      },
    );
  });

  @override
  ZacAction build(BuildContext context, ZacContext zacContext) => _action;
}

@freezedZacBuilder
class FlutterScaffoldMessenger
    with _$FlutterScaffoldMessenger
    implements ZacBuilder<ZacAction> {
  FlutterScaffoldMessenger._();

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

  late final ZacAction _action = ZacAction(
      (ZacActionPayload payload, BuildContext context, ZacContext zacContext) {
    map(
      showSnackBar: (value) {
        final state = ScaffoldMessenger.maybeOf(context);
        if (null == state) return null;

        // TODO: Add reasons
        state.showSnackBar(value.snackBar.build(context, zacContext));
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
            value.materialBanner.build(context, zacContext));
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
  });

  @override
  ZacAction build(BuildContext context, ZacContext zacContext) => _action;
}

@freezedZacBuilder
class FlutterSnackBar with _$FlutterSnackBar implements ZacBuilder<SnackBar> {
  const FlutterSnackBar._();

  static const String unionValue = 'f:1:SnackBar';

  factory FlutterSnackBar.fromJson(Map<String, dynamic> json) =>
      _$FlutterSnackBarFromJson(json);

  @FreezedUnionValue(FlutterSnackBar.unionValue)
  factory FlutterSnackBar({
    ZacBuilder<Key?>? key,
    required ZacBuilder<Widget> content,
    ZacBuilder<Color?>? backgroundColor,
    ZacBuilder<double?>? elevation,
    ZacBuilder<EdgeInsetsGeometry?>? margin,
    ZacBuilder<EdgeInsetsGeometry?>? padding,
    ZacBuilder<double?>? width,
    ZacBuilder<ShapeBorder?>? shape,
    FlutterSnackBarBehavior? behavior,
    FlutterSnackBarAction? action,
    // Duration duration = _snackBarDisplayDuration,
    // Animation<double>? animation,
    ZacBuilder<List<ZacAction>?>? onVisible,
    // DismissDirection dismissDirection = DismissDirection.down,
  }) = _FlutterSnackBar;

  SnackBar _buildWidget(BuildContext context, ZacContext zacContext) {
    return SnackBar(
      content: content.build(context, zacContext),
      key: key?.build(context, zacContext),
      action: action?.build(context, zacContext),
      // animation: key?.toFlutter(context),
      backgroundColor: backgroundColor?.build(context, zacContext),
      behavior: behavior?.build(context, zacContext),
      // dismissDirection: dismissDirection?.toFlutter(context),
      // duration: duration?.toFlutter(context),
      elevation: elevation?.build(context, zacContext),
      margin: margin?.build(context, zacContext),
      onVisible:
          onVisible?.build(context, zacContext)?.createCb(context, zacContext),
      padding: padding?.build(context, zacContext),
      shape: shape?.build(context, zacContext),
      width: width?.build(context, zacContext),
    );
  }

  @override
  SnackBar build(BuildContext context, ZacContext zacContext) {
    return _buildWidget(context, zacContext);
  }
}

@freezedZacBuilder
class FlutterSnackBarBehavior
    with _$FlutterSnackBarBehavior, ZacBuilder<SnackBarBehavior> {
  const FlutterSnackBarBehavior._();

  factory FlutterSnackBarBehavior.fromJson(Map<String, dynamic> json) =>
      _$FlutterSnackBarBehaviorFromJson(json);

  @FreezedUnionValue('f:1:SnackBarBehavior.fixed')
  factory FlutterSnackBarBehavior.fixed() = _FlutterSnackBarBehaviorFixed;

  @FreezedUnionValue('f:1:SnackBarBehavior.floating')
  factory FlutterSnackBarBehavior.floating() = _FlutterSnackBarBehaviorFloating;

  SnackBarBehavior _build(BuildContext context, ZacContext zacContext) {
    return map(
      fixed: (_) => SnackBarBehavior.fixed,
      floating: (_) => SnackBarBehavior.floating,
    );
  }

  @override
  SnackBarBehavior build(BuildContext context, ZacContext zacContext) {
    return _build(context, zacContext);
  }
}

@freezedZacBuilder
class FlutterSnackBarAction
    with _$FlutterSnackBarAction
    implements ZacBuilder<SnackBarAction> {
  const FlutterSnackBarAction._();

  static const String unionValue = 'f:1:SnackBarAction';

  factory FlutterSnackBarAction.fromJson(Map<String, dynamic> json) =>
      _$FlutterSnackBarActionFromJson(json);

  @FreezedUnionValue(FlutterSnackBarAction.unionValue)
  factory FlutterSnackBarAction({
    ZacBuilder<Key?>? key,
    ZacBuilder<Color?>? textColor,
    ZacBuilder<Color?>? disabledTextColor,
    required ZacBuilder<String> label,
    required ZacBuilder<List<ZacAction>> onPressed,
  }) = _FlutterSnackBarAction;

  SnackBarAction _buildWidget(BuildContext context, ZacContext zacContext) {
    return SnackBarAction(
      key: key?.build(context, zacContext),
      label: label.build(context, zacContext),
      onPressed:
          onPressed.build(context, zacContext).createCb(context, zacContext),
      disabledTextColor: disabledTextColor?.build(context, zacContext),
      textColor: textColor?.build(context, zacContext),
    );
  }

  @override
  SnackBarAction build(BuildContext context, ZacContext zacContext) {
    return _buildWidget(context, zacContext);
  }
}

@freezedZacBuilder
class FlutterMaterialBanner
    with _$FlutterMaterialBanner
    implements ZacBuilder<MaterialBanner> {
  const FlutterMaterialBanner._();

  static const String unionValue = 'f:1:MaterialBanner';

  factory FlutterMaterialBanner.fromJson(Map<String, dynamic> json) =>
      _$FlutterMaterialBannerFromJson(json);

  @FreezedUnionValue(FlutterMaterialBanner.unionValue)
  factory FlutterMaterialBanner({
    ZacBuilder<Key?>? key,
    required ZacBuilder<Widget> content,
    ZacBuilder<TextStyle?>? contentTextStyle,
    required ZacBuilder<List<Widget>> actions,
    ZacBuilder<double?>? elevation,
    ZacBuilder<Widget?>? leading,
    ZacBuilder<Color?>? backgroundColor,
    ZacBuilder<EdgeInsetsGeometry?>? padding,
    ZacBuilder<EdgeInsetsGeometry?>? leadingPadding,
    ZacBuilder<bool?>? forceActionsBelow,
// OverflowBarAlignment overflowAlignment = OverflowBarAlignment.end,
// Animation<double>? animation,
    ZacBuilder<List<ZacAction>?>? onVisible,
  }) = _FlutterMaterialBanner;

  MaterialBanner _buildWidget(BuildContext context, ZacContext zacContext) {
    return MaterialBanner(
      content: content.build(context, zacContext),
      actions: actions.build(context, zacContext),
      key: key?.build(context, zacContext),
      // animation: ,
      backgroundColor: backgroundColor?.build(context, zacContext),
      contentTextStyle: contentTextStyle?.build(context, zacContext),
      elevation: elevation?.build(context, zacContext),
      forceActionsBelow: forceActionsBelow?.build(context, zacContext) ?? false,
      leading: leading?.build(context, zacContext),
      leadingPadding: leadingPadding?.build(context, zacContext),
      onVisible:
          onVisible?.build(context, zacContext)?.createCb(context, zacContext),
      // overflowAlignment: backgroundColor?.toFlutter(context),
      padding: padding?.build(context, zacContext),
    );
  }

  @override
  MaterialBanner build(BuildContext context, ZacContext zacContext) {
    return _buildWidget(context, zacContext);
  }
}
