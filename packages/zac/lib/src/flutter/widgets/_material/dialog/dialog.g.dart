// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dialog.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_FlutterDialogsShowDialog _$$_FlutterDialogsShowDialogFromJson(
        Map<String, dynamic> json) =>
    _$_FlutterDialogsShowDialog(
      child: ZacWidget.fromJson(json['child'] as Object),
      barrierDismissible: json['barrierDismissible'] == null
          ? null
          : ZacBool.fromJson(json['barrierDismissible'] as Object),
      barrierColor: json['barrierColor'] == null
          ? null
          : FlutterColor.fromJson(json['barrierColor'] as Map<String, dynamic>),
      barrierLabel: json['barrierLabel'] == null
          ? null
          : ZacString.fromJson(json['barrierLabel'] as Object),
      useSafeArea: json['useSafeArea'] == null
          ? null
          : ZacBool.fromJson(json['useSafeArea'] as Object),
      useRootNavigator: json['useRootNavigator'] == null
          ? null
          : ZacBool.fromJson(json['useRootNavigator'] as Object),
      routeSettings: json['routeSettings'] == null
          ? null
          : FlutterRouteSettings.fromJson(
              json['routeSettings'] as Map<String, dynamic>),
      $type: json['_converter'] as String?,
    );

_$_FlutterDialogsDialog _$$_FlutterDialogsDialogFromJson(
        Map<String, dynamic> json) =>
    _$_FlutterDialogsDialog(
      key: json['key'] == null
          ? null
          : FlutterKey.fromJson(json['key'] as Object),
      backgroundColor: json['backgroundColor'] == null
          ? null
          : FlutterColor.fromJson(
              json['backgroundColor'] as Map<String, dynamic>),
      elevation: json['elevation'] == null
          ? null
          : ZacDouble.fromJson(json['elevation'] as Object),
      insetPadding: json['insetPadding'] == null
          ? null
          : FlutterEdgeInsets.fromJson(
              json['insetPadding'] as Map<String, dynamic>),
      clipBehavior: json['clipBehavior'] == null
          ? null
          : FlutterClip.fromJson(json['clipBehavior'] as Map<String, dynamic>),
      shape: json['shape'] == null
          ? null
          : FlutterShapeBorder.fromJson(json['shape'] as Object),
      alignment: json['alignment'] == null
          ? null
          : FlutterAlignmentGeometry.fromJson(json['alignment'] as Object),
      child: json['child'] == null
          ? null
          : ZacWidget.fromJson(json['child'] as Object),
      $type: json['_converter'] as String?,
    );

_$_FlutterDialogsAlertDialog _$$_FlutterDialogsAlertDialogFromJson(
        Map<String, dynamic> json) =>
    _$_FlutterDialogsAlertDialog(
      key: json['key'] == null
          ? null
          : FlutterKey.fromJson(json['key'] as Object),
      title: json['title'] == null
          ? null
          : ZacWidget.fromJson(json['title'] as Object),
      content: json['content'] == null
          ? null
          : ZacWidget.fromJson(json['content'] as Object),
      actions: json['actions'] == null
          ? null
          : ListOfZacWidget.fromJson(json['actions'] as Object),
      titlePadding: json['titlePadding'] == null
          ? null
          : FlutterEdgeInsetsGeometry.fromJson(json['titlePadding'] as Object),
      titleTextStyle: json['titleTextStyle'] == null
          ? null
          : FlutterTextStyle.fromJson(
              json['titleTextStyle'] as Map<String, dynamic>),
      contentPadding: json['contentPadding'] == null
          ? null
          : FlutterEdgeInsetsGeometry.fromJson(
              json['contentPadding'] as Object),
      contentTextStyle: json['contentTextStyle'] == null
          ? null
          : FlutterTextStyle.fromJson(
              json['contentTextStyle'] as Map<String, dynamic>),
      actionsPadding: json['actionsPadding'] == null
          ? null
          : FlutterEdgeInsetsGeometry.fromJson(
              json['actionsPadding'] as Object),
      actionsAlignment: json['actionsAlignment'] == null
          ? null
          : FlutterMainAxisAlignment.fromJson(
              json['actionsAlignment'] as Map<String, dynamic>),
      actionsOverflowDirection: json['actionsOverflowDirection'] == null
          ? null
          : FlutterVerticalDirection.fromJson(
              json['actionsOverflowDirection'] as Map<String, dynamic>),
      actionsOverflowButtonSpacing: json['actionsOverflowButtonSpacing'] == null
          ? null
          : ZacDouble.fromJson(json['actionsOverflowButtonSpacing'] as Object),
      buttonPadding: json['buttonPadding'] == null
          ? null
          : FlutterEdgeInsetsGeometry.fromJson(json['buttonPadding'] as Object),
      backgroundColor: json['backgroundColor'] == null
          ? null
          : FlutterColor.fromJson(
              json['backgroundColor'] as Map<String, dynamic>),
      elevation: json['elevation'] == null
          ? null
          : ZacDouble.fromJson(json['elevation'] as Object),
      semanticLabel: json['semanticLabel'] == null
          ? null
          : ZacString.fromJson(json['semanticLabel'] as Object),
      insetPadding: json['insetPadding'] == null
          ? null
          : FlutterEdgeInsets.fromJson(
              json['insetPadding'] as Map<String, dynamic>),
      clipBehavior: json['clipBehavior'] == null
          ? null
          : FlutterClip.fromJson(json['clipBehavior'] as Map<String, dynamic>),
      shape: json['shape'] == null
          ? null
          : FlutterShapeBorder.fromJson(json['shape'] as Object),
      alignment: json['alignment'] == null
          ? null
          : FlutterAlignmentGeometry.fromJson(json['alignment'] as Object),
      scrollable: json['scrollable'] == null
          ? null
          : ZacBool.fromJson(json['scrollable'] as Object),
      $type: json['_converter'] as String?,
    );

_$_FlutterDialogsSimpleDialog _$$_FlutterDialogsSimpleDialogFromJson(
        Map<String, dynamic> json) =>
    _$_FlutterDialogsSimpleDialog(
      key: json['key'] == null
          ? null
          : FlutterKey.fromJson(json['key'] as Object),
      title: json['title'] == null
          ? null
          : ZacWidget.fromJson(json['title'] as Object),
      children: json['children'] == null
          ? null
          : ListOfZacWidget.fromJson(json['children'] as Object),
      titlePadding: json['titlePadding'] == null
          ? null
          : FlutterEdgeInsetsGeometry.fromJson(json['titlePadding'] as Object),
      titleTextStyle: json['titleTextStyle'] == null
          ? null
          : FlutterTextStyle.fromJson(
              json['titleTextStyle'] as Map<String, dynamic>),
      contentPadding: json['contentPadding'] == null
          ? null
          : FlutterEdgeInsetsGeometry.fromJson(
              json['contentPadding'] as Object),
      backgroundColor: json['backgroundColor'] == null
          ? null
          : FlutterColor.fromJson(
              json['backgroundColor'] as Map<String, dynamic>),
      elevation: json['elevation'] == null
          ? null
          : ZacDouble.fromJson(json['elevation'] as Object),
      semanticLabel: json['semanticLabel'] == null
          ? null
          : ZacString.fromJson(json['semanticLabel'] as Object),
      insetPadding: json['insetPadding'] == null
          ? null
          : FlutterEdgeInsets.fromJson(
              json['insetPadding'] as Map<String, dynamic>),
      clipBehavior: json['clipBehavior'] == null
          ? null
          : FlutterClip.fromJson(json['clipBehavior'] as Map<String, dynamic>),
      shape: json['shape'] == null
          ? null
          : FlutterShapeBorder.fromJson(json['shape'] as Object),
      alignment: json['alignment'] == null
          ? null
          : FlutterAlignmentGeometry.fromJson(json['alignment'] as Object),
      $type: json['_converter'] as String?,
    );

_$_FlutterDialogsSimpleDialogOption
    _$$_FlutterDialogsSimpleDialogOptionFromJson(Map<String, dynamic> json) =>
        _$_FlutterDialogsSimpleDialogOption(
          key: json['key'] == null
              ? null
              : FlutterKey.fromJson(json['key'] as Object),
          child: json['child'] == null
              ? null
              : ZacWidget.fromJson(json['child'] as Object),
          onPressed: json['onPressed'] == null
              ? null
              : ZacActions.fromJson(json['onPressed'] as Object),
          padding: json['padding'] == null
              ? null
              : FlutterEdgeInsets.fromJson(
                  json['padding'] as Map<String, dynamic>),
          $type: json['_converter'] as String?,
        );