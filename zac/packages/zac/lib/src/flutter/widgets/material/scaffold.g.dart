// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'scaffold.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_FlutterScaffold _$$_FlutterScaffoldFromJson(Map<String, dynamic> json) =>
    _$_FlutterScaffold(
      key: json['key'] == null
          ? null
          : FlutterKey.fromJson(json['key'] as Object),
      appBar: json['appBar'] == null
          ? null
          : FlutterWidget.fromJson(json['appBar'] as Object),
      body: json['body'] == null
          ? null
          : FlutterWidget.fromJson(json['body'] as Object),
      floatingActionButton: json['floatingActionButton'] == null
          ? null
          : FlutterWidget.fromJson(json['floatingActionButton'] as Object),
      persistentFooterButtons: json['persistentFooterButtons'] == null
          ? null
          : ZacListOfFlutterWidget.fromJson(
              json['persistentFooterButtons'] as Object),
      drawer: json['drawer'] == null
          ? null
          : FlutterWidget.fromJson(json['drawer'] as Object),
      endDrawer: json['endDrawer'] == null
          ? null
          : FlutterWidget.fromJson(json['endDrawer'] as Object),
      bottomNavigationBar: json['bottomNavigationBar'] == null
          ? null
          : FlutterWidget.fromJson(json['bottomNavigationBar'] as Object),
      bottomSheet: json['bottomSheet'] == null
          ? null
          : FlutterWidget.fromJson(json['bottomSheet'] as Object),
      backgroundColor: json['backgroundColor'] == null
          ? null
          : FlutterColor.fromJson(
              json['backgroundColor'] as Map<String, dynamic>),
      resizeToAvoidBottomInset: json['resizeToAvoidBottomInset'] == null
          ? null
          : ZacValue<bool>.fromJson(json['resizeToAvoidBottomInset'] as Object,
              (value) => value as bool),
      primary: json['primary'] == null
          ? null
          : ZacValue<bool>.fromJson(
              json['primary'] as Object, (value) => value as bool),
      extendBody: json['extendBody'] == null
          ? null
          : ZacValue<bool>.fromJson(
              json['extendBody'] as Object, (value) => value as bool),
      extendBodyBehindAppBar: json['extendBodyBehindAppBar'] == null
          ? null
          : ZacValue<bool>.fromJson(json['extendBodyBehindAppBar'] as Object,
              (value) => value as bool),
      drawerScrimColor: json['drawerScrimColor'] == null
          ? null
          : FlutterColor.fromJson(
              json['drawerScrimColor'] as Map<String, dynamic>),
      drawerEdgeDragWidth: json['drawerEdgeDragWidth'] == null
          ? null
          : ZacValue<double>.fromJson(json['drawerEdgeDragWidth'] as Object,
              (value) => (value as num).toDouble()),
      drawerEnableOpenDragGesture: json['drawerEnableOpenDragGesture'] == null
          ? null
          : ZacValue<bool>.fromJson(
              json['drawerEnableOpenDragGesture'] as Object,
              (value) => value as bool),
      endDrawerEnableOpenDragGesture:
          json['endDrawerEnableOpenDragGesture'] == null
              ? null
              : ZacValue<bool>.fromJson(
                  json['endDrawerEnableOpenDragGesture'] as Object,
                  (value) => value as bool),
      restorationId: json['restorationId'] == null
          ? null
          : ZacValue<String>.fromJson(
              json['restorationId'] as Object, (value) => value as String),
    );

_$_FlutterScaffoldActionsOpenDrawer
    _$$_FlutterScaffoldActionsOpenDrawerFromJson(Map<String, dynamic> json) =>
        _$_FlutterScaffoldActionsOpenDrawer(
          $type: json['converter'] as String?,
        );

_$_FlutterScaffoldActionsOpenEndDrawer
    _$$_FlutterScaffoldActionsOpenEndDrawerFromJson(
            Map<String, dynamic> json) =>
        _$_FlutterScaffoldActionsOpenEndDrawer(
          $type: json['converter'] as String?,
        );

_$_FlutterScaffoldActionsShowBodyScrim
    _$$_FlutterScaffoldActionsShowBodyScrimFromJson(
            Map<String, dynamic> json) =>
        _$_FlutterScaffoldActionsShowBodyScrim(
          json['value'] as bool,
          ZacValue<double>.fromJson(
              json['opacity'] as Object, (value) => (value as num).toDouble()),
          $type: json['converter'] as String?,
        );

_$_FlutterScaffoldActionsShowBottomSheet
    _$$_FlutterScaffoldActionsShowBottomSheetFromJson(
            Map<String, dynamic> json) =>
        _$_FlutterScaffoldActionsShowBottomSheet(
          FlutterWidget.fromJson(json['child'] as Object),
          backgroundColor: json['backgroundColor'] == null
              ? null
              : FlutterColor.fromJson(
                  json['backgroundColor'] as Map<String, dynamic>),
          elevation: json['elevation'] == null
              ? null
              : ZacValue<double>.fromJson(json['elevation'] as Object,
                  (value) => (value as num).toDouble()),
          shape: json['shape'] == null
              ? null
              : FlutterShapeBorder.fromJson(json['shape'] as Object),
          clipBehavior: json['clipBehavior'] == null
              ? null
              : FlutterClip.fromJson(
                  json['clipBehavior'] as Map<String, dynamic>),
          constraints: json['constraints'] == null
              ? null
              : FlutterBoxConstraints.fromJson(
                  json['constraints'] as Map<String, dynamic>),
          enableDrag: json['enableDrag'] == null
              ? null
              : ZacValue<bool>.fromJson(
                  json['enableDrag'] as Object, (value) => value as bool),
          $type: json['converter'] as String?,
        );

_$_FlutterScaffoldMessengerShowSnackBar
    _$$_FlutterScaffoldMessengerShowSnackBarFromJson(
            Map<String, dynamic> json) =>
        _$_FlutterScaffoldMessengerShowSnackBar(
          FlutterSnackBar.fromJson(json['snackBar'] as Map<String, dynamic>),
          $type: json['converter'] as String?,
        );

_$_FlutterScaffoldMessengerhideCurrentSnackBar
    _$$_FlutterScaffoldMessengerhideCurrentSnackBarFromJson(
            Map<String, dynamic> json) =>
        _$_FlutterScaffoldMessengerhideCurrentSnackBar(
          $type: json['converter'] as String?,
        );

_$_FlutterScaffoldMessengerremoveCurrentSnackBar
    _$$_FlutterScaffoldMessengerremoveCurrentSnackBarFromJson(
            Map<String, dynamic> json) =>
        _$_FlutterScaffoldMessengerremoveCurrentSnackBar(
          $type: json['converter'] as String?,
        );

_$_FlutterScaffoldMessengerShowMaterialBanner
    _$$_FlutterScaffoldMessengerShowMaterialBannerFromJson(
            Map<String, dynamic> json) =>
        _$_FlutterScaffoldMessengerShowMaterialBanner(
          FlutterMaterialBanner.fromJson(
              json['materialBanner'] as Map<String, dynamic>),
          $type: json['converter'] as String?,
        );

_$_FlutterScaffoldMessengerHideCurrentMaterialBanner
    _$$_FlutterScaffoldMessengerHideCurrentMaterialBannerFromJson(
            Map<String, dynamic> json) =>
        _$_FlutterScaffoldMessengerHideCurrentMaterialBanner(
          $type: json['converter'] as String?,
        );

_$_FlutterScaffoldMessengerRemoveCurrentMaterialBanner
    _$$_FlutterScaffoldMessengerRemoveCurrentMaterialBannerFromJson(
            Map<String, dynamic> json) =>
        _$_FlutterScaffoldMessengerRemoveCurrentMaterialBanner(
          $type: json['converter'] as String?,
        );

_$_FlutterSnackBar _$$_FlutterSnackBarFromJson(Map<String, dynamic> json) =>
    _$_FlutterSnackBar(
      key: json['key'] == null
          ? null
          : FlutterKey.fromJson(json['key'] as Object),
      content: FlutterWidget.fromJson(json['content'] as Object),
      backgroundColor: json['backgroundColor'] == null
          ? null
          : FlutterColor.fromJson(
              json['backgroundColor'] as Map<String, dynamic>),
      elevation: json['elevation'] == null
          ? null
          : ZacValue<double>.fromJson(json['elevation'] as Object,
              (value) => (value as num).toDouble()),
      margin: json['margin'] == null
          ? null
          : FlutterEdgeInsetsGeometry.fromJson(json['margin'] as Object),
      padding: json['padding'] == null
          ? null
          : FlutterEdgeInsetsGeometry.fromJson(json['padding'] as Object),
      width: json['width'] == null
          ? null
          : ZacValue<double>.fromJson(
              json['width'] as Object, (value) => (value as num).toDouble()),
      shape: json['shape'] == null
          ? null
          : FlutterShapeBorder.fromJson(json['shape'] as Object),
      behavior: json['behavior'] == null
          ? null
          : FlutterSnackBarBehavior.fromJson(
              json['behavior'] as Map<String, dynamic>),
      action: json['action'] == null
          ? null
          : FlutterSnackBarAction.fromJson(
              json['action'] as Map<String, dynamic>),
      onVisible: json['onVisible'] == null
          ? null
          : ZacActions.fromJson(json['onVisible'] as Object),
    );

_$_FlutterSnackBarBehaviorFixed _$$_FlutterSnackBarBehaviorFixedFromJson(
        Map<String, dynamic> json) =>
    _$_FlutterSnackBarBehaviorFixed(
      $type: json['converter'] as String?,
    );

_$_FlutterSnackBarBehaviorFloating _$$_FlutterSnackBarBehaviorFloatingFromJson(
        Map<String, dynamic> json) =>
    _$_FlutterSnackBarBehaviorFloating(
      $type: json['converter'] as String?,
    );

_$_FlutterSnackBarAction _$$_FlutterSnackBarActionFromJson(
        Map<String, dynamic> json) =>
    _$_FlutterSnackBarAction(
      key: json['key'] == null
          ? null
          : FlutterKey.fromJson(json['key'] as Object),
      textColor: json['textColor'] == null
          ? null
          : FlutterColor.fromJson(json['textColor'] as Map<String, dynamic>),
      disabledTextColor: json['disabledTextColor'] == null
          ? null
          : FlutterColor.fromJson(
              json['disabledTextColor'] as Map<String, dynamic>),
      label: json['label'] as String,
      onPressed: json['onPressed'] == null
          ? null
          : ZacActions.fromJson(json['onPressed'] as Object),
    );

_$_FlutterMaterialBanner _$$_FlutterMaterialBannerFromJson(
        Map<String, dynamic> json) =>
    _$_FlutterMaterialBanner(
      key: json['key'] == null
          ? null
          : FlutterKey.fromJson(json['key'] as Object),
      content: FlutterWidget.fromJson(json['content'] as Object),
      contentTextStyle: json['contentTextStyle'] == null
          ? null
          : FlutterTextStyle.fromJson(
              json['contentTextStyle'] as Map<String, dynamic>),
      actions: ZacListOfFlutterWidget.fromJson(json['actions'] as Object),
      elevation: json['elevation'] == null
          ? null
          : ZacValue<double>.fromJson(json['elevation'] as Object,
              (value) => (value as num).toDouble()),
      leading: json['leading'] == null
          ? null
          : FlutterWidget.fromJson(json['leading'] as Object),
      backgroundColor: json['backgroundColor'] == null
          ? null
          : FlutterColor.fromJson(
              json['backgroundColor'] as Map<String, dynamic>),
      padding: json['padding'] == null
          ? null
          : FlutterEdgeInsetsGeometry.fromJson(json['padding'] as Object),
      leadingPadding: json['leadingPadding'] == null
          ? null
          : FlutterEdgeInsetsGeometry.fromJson(
              json['leadingPadding'] as Object),
      forceActionsBelow: json['forceActionsBelow'] == null
          ? null
          : ZacValue<bool>.fromJson(
              json['forceActionsBelow'] as Object, (value) => value as bool),
      onVisible: json['onVisible'] == null
          ? null
          : ZacActions.fromJson(json['onVisible'] as Object),
    );
