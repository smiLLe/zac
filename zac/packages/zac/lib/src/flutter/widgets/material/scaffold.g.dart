// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'scaffold.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_FlutterScaffold _$$_FlutterScaffoldFromJson(Map<String, dynamic> json) =>
    _$_FlutterScaffold(
      key: json['key'] == null
          ? null
          : ZacBuilder<Key?>.fromJson(json['key'] as Object),
      appBar: json['appBar'] == null
          ? null
          : ZacBuilder<Widget?>.fromJson(json['appBar'] as Object),
      body: json['body'] == null
          ? null
          : ZacBuilder<Widget?>.fromJson(json['body'] as Object),
      floatingActionButton: json['floatingActionButton'] == null
          ? null
          : ZacBuilder<Widget?>.fromJson(
              json['floatingActionButton'] as Object),
      persistentFooterButtons: json['persistentFooterButtons'] == null
          ? null
          : ZacListBuilder<Widget, List<Widget>?>.fromJson(
              json['persistentFooterButtons'] as Object),
      drawer: json['drawer'] == null
          ? null
          : ZacBuilder<Widget?>.fromJson(json['drawer'] as Object),
      endDrawer: json['endDrawer'] == null
          ? null
          : ZacBuilder<Widget?>.fromJson(json['endDrawer'] as Object),
      bottomNavigationBar: json['bottomNavigationBar'] == null
          ? null
          : ZacBuilder<Widget?>.fromJson(json['bottomNavigationBar'] as Object),
      bottomSheet: json['bottomSheet'] == null
          ? null
          : ZacBuilder<Widget?>.fromJson(json['bottomSheet'] as Object),
      backgroundColor: json['backgroundColor'] == null
          ? null
          : ZacBuilder<Color?>.fromJson(json['backgroundColor'] as Object),
      resizeToAvoidBottomInset: json['resizeToAvoidBottomInset'] == null
          ? null
          : ZacBuilder<bool?>.fromJson(
              json['resizeToAvoidBottomInset'] as Object),
      primary: json['primary'] == null
          ? null
          : ZacBuilder<bool?>.fromJson(json['primary'] as Object),
      extendBody: json['extendBody'] == null
          ? null
          : ZacBuilder<bool?>.fromJson(json['extendBody'] as Object),
      extendBodyBehindAppBar: json['extendBodyBehindAppBar'] == null
          ? null
          : ZacBuilder<bool?>.fromJson(
              json['extendBodyBehindAppBar'] as Object),
      drawerScrimColor: json['drawerScrimColor'] == null
          ? null
          : ZacBuilder<Color?>.fromJson(json['drawerScrimColor'] as Object),
      drawerEdgeDragWidth: json['drawerEdgeDragWidth'] == null
          ? null
          : ZacBuilder<double?>.fromJson(json['drawerEdgeDragWidth'] as Object),
      drawerEnableOpenDragGesture: json['drawerEnableOpenDragGesture'] == null
          ? null
          : ZacBuilder<bool?>.fromJson(
              json['drawerEnableOpenDragGesture'] as Object),
      endDrawerEnableOpenDragGesture:
          json['endDrawerEnableOpenDragGesture'] == null
              ? null
              : ZacBuilder<bool?>.fromJson(
                  json['endDrawerEnableOpenDragGesture'] as Object),
      restorationId: json['restorationId'] == null
          ? null
          : ZacBuilder<String?>.fromJson(json['restorationId'] as Object),
    );

_$_FlutterScaffoldActionsOpenDrawer
    _$$_FlutterScaffoldActionsOpenDrawerFromJson(Map<String, dynamic> json) =>
        _$_FlutterScaffoldActionsOpenDrawer(
          $type: json['builder'] as String?,
        );

_$_FlutterScaffoldActionsOpenEndDrawer
    _$$_FlutterScaffoldActionsOpenEndDrawerFromJson(
            Map<String, dynamic> json) =>
        _$_FlutterScaffoldActionsOpenEndDrawer(
          $type: json['builder'] as String?,
        );

_$_FlutterScaffoldActionsShowBodyScrim
    _$$_FlutterScaffoldActionsShowBodyScrimFromJson(
            Map<String, dynamic> json) =>
        _$_FlutterScaffoldActionsShowBodyScrim(
          json['value'] as bool,
          ZacBuilder<double>.fromJson(json['opacity'] as Object),
          $type: json['builder'] as String?,
        );

_$_FlutterScaffoldActionsShowBottomSheet
    _$$_FlutterScaffoldActionsShowBottomSheetFromJson(
            Map<String, dynamic> json) =>
        _$_FlutterScaffoldActionsShowBottomSheet(
          ZacBuilder<Widget>.fromJson(json['child'] as Object),
          backgroundColor: json['backgroundColor'] == null
              ? null
              : ZacBuilder<Color?>.fromJson(json['backgroundColor'] as Object),
          elevation: json['elevation'] == null
              ? null
              : ZacBuilder<double?>.fromJson(json['elevation'] as Object),
          shape: json['shape'] == null
              ? null
              : ZacBuilder<ShapeBorder?>.fromJson(json['shape'] as Object),
          clipBehavior: json['clipBehavior'] == null
              ? null
              : ZacBuilder<Clip?>.fromJson(json['clipBehavior'] as Object),
          constraints: json['constraints'] == null
              ? null
              : FlutterBoxConstraints.fromJson(
                  json['constraints'] as Map<String, dynamic>),
          enableDrag: json['enableDrag'] == null
              ? null
              : ZacBuilder<bool?>.fromJson(json['enableDrag'] as Object),
          $type: json['builder'] as String?,
        );

_$_FlutterScaffoldMessengerShowSnackBar
    _$$_FlutterScaffoldMessengerShowSnackBarFromJson(
            Map<String, dynamic> json) =>
        _$_FlutterScaffoldMessengerShowSnackBar(
          FlutterSnackBar.fromJson(json['snackBar'] as Map<String, dynamic>),
          $type: json['builder'] as String?,
        );

_$_FlutterScaffoldMessengerhideCurrentSnackBar
    _$$_FlutterScaffoldMessengerhideCurrentSnackBarFromJson(
            Map<String, dynamic> json) =>
        _$_FlutterScaffoldMessengerhideCurrentSnackBar(
          $type: json['builder'] as String?,
        );

_$_FlutterScaffoldMessengerremoveCurrentSnackBar
    _$$_FlutterScaffoldMessengerremoveCurrentSnackBarFromJson(
            Map<String, dynamic> json) =>
        _$_FlutterScaffoldMessengerremoveCurrentSnackBar(
          $type: json['builder'] as String?,
        );

_$_FlutterScaffoldMessengerShowMaterialBanner
    _$$_FlutterScaffoldMessengerShowMaterialBannerFromJson(
            Map<String, dynamic> json) =>
        _$_FlutterScaffoldMessengerShowMaterialBanner(
          FlutterMaterialBanner.fromJson(
              json['materialBanner'] as Map<String, dynamic>),
          $type: json['builder'] as String?,
        );

_$_FlutterScaffoldMessengerHideCurrentMaterialBanner
    _$$_FlutterScaffoldMessengerHideCurrentMaterialBannerFromJson(
            Map<String, dynamic> json) =>
        _$_FlutterScaffoldMessengerHideCurrentMaterialBanner(
          $type: json['builder'] as String?,
        );

_$_FlutterScaffoldMessengerRemoveCurrentMaterialBanner
    _$$_FlutterScaffoldMessengerRemoveCurrentMaterialBannerFromJson(
            Map<String, dynamic> json) =>
        _$_FlutterScaffoldMessengerRemoveCurrentMaterialBanner(
          $type: json['builder'] as String?,
        );

_$_FlutterSnackBar _$$_FlutterSnackBarFromJson(Map<String, dynamic> json) =>
    _$_FlutterSnackBar(
      key: json['key'] == null
          ? null
          : ZacBuilder<Key?>.fromJson(json['key'] as Object),
      content: ZacBuilder<Widget>.fromJson(json['content'] as Object),
      backgroundColor: json['backgroundColor'] == null
          ? null
          : ZacBuilder<Color?>.fromJson(json['backgroundColor'] as Object),
      elevation: json['elevation'] == null
          ? null
          : ZacBuilder<double?>.fromJson(json['elevation'] as Object),
      margin: json['margin'] == null
          ? null
          : ZacBuilder<EdgeInsetsGeometry?>.fromJson(json['margin'] as Object),
      padding: json['padding'] == null
          ? null
          : ZacBuilder<EdgeInsetsGeometry?>.fromJson(json['padding'] as Object),
      width: json['width'] == null
          ? null
          : ZacBuilder<double?>.fromJson(json['width'] as Object),
      shape: json['shape'] == null
          ? null
          : ZacBuilder<ShapeBorder?>.fromJson(json['shape'] as Object),
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
          : ZacActions.fromJson(json['onVisible'] as Map<String, dynamic>),
    );

_$_FlutterSnackBarBehaviorFixed _$$_FlutterSnackBarBehaviorFixedFromJson(
        Map<String, dynamic> json) =>
    _$_FlutterSnackBarBehaviorFixed(
      $type: json['builder'] as String?,
    );

_$_FlutterSnackBarBehaviorFloating _$$_FlutterSnackBarBehaviorFloatingFromJson(
        Map<String, dynamic> json) =>
    _$_FlutterSnackBarBehaviorFloating(
      $type: json['builder'] as String?,
    );

_$_FlutterSnackBarAction _$$_FlutterSnackBarActionFromJson(
        Map<String, dynamic> json) =>
    _$_FlutterSnackBarAction(
      key: json['key'] == null
          ? null
          : ZacBuilder<Key?>.fromJson(json['key'] as Object),
      textColor: json['textColor'] == null
          ? null
          : ZacBuilder<Color?>.fromJson(json['textColor'] as Object),
      disabledTextColor: json['disabledTextColor'] == null
          ? null
          : ZacBuilder<Color?>.fromJson(json['disabledTextColor'] as Object),
      label: json['label'] as String,
      onPressed: json['onPressed'] == null
          ? null
          : ZacActions.fromJson(json['onPressed'] as Map<String, dynamic>),
    );

_$_FlutterMaterialBanner _$$_FlutterMaterialBannerFromJson(
        Map<String, dynamic> json) =>
    _$_FlutterMaterialBanner(
      key: json['key'] == null
          ? null
          : ZacBuilder<Key?>.fromJson(json['key'] as Object),
      content: ZacBuilder<Widget>.fromJson(json['content'] as Object),
      contentTextStyle: json['contentTextStyle'] == null
          ? null
          : ZacBuilder<TextStyle?>.fromJson(json['contentTextStyle'] as Object),
      actions: ZacListBuilder<Widget, List<Widget>>.fromJson(
          json['actions'] as Object),
      elevation: json['elevation'] == null
          ? null
          : ZacBuilder<double?>.fromJson(json['elevation'] as Object),
      leading: json['leading'] == null
          ? null
          : ZacBuilder<Widget?>.fromJson(json['leading'] as Object),
      backgroundColor: json['backgroundColor'] == null
          ? null
          : ZacBuilder<Color?>.fromJson(json['backgroundColor'] as Object),
      padding: json['padding'] == null
          ? null
          : ZacBuilder<EdgeInsetsGeometry?>.fromJson(json['padding'] as Object),
      leadingPadding: json['leadingPadding'] == null
          ? null
          : ZacBuilder<EdgeInsetsGeometry?>.fromJson(
              json['leadingPadding'] as Object),
      forceActionsBelow: json['forceActionsBelow'] == null
          ? null
          : ZacBuilder<bool?>.fromJson(json['forceActionsBelow'] as Object),
      onVisible: json['onVisible'] == null
          ? null
          : ZacActions.fromJson(json['onVisible'] as Map<String, dynamic>),
    );
