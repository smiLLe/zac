import 'package:zac/src/zac/actions/action.dart';
import 'package:zac/src/zac/any_value/any_value.dart';

import 'package:zac/src/zac/widget_builder/widget_builder.dart';
import 'package:zac/src/zac/context/widget_context.dart';

import 'package:zac/src/zac/shared_value/shared_value.dart';
import 'package:zac/src/flutter/mixed/alignment/alignment.dart';
import 'package:zac/src/flutter/mixed/border/border.dart';
import 'package:zac/src/flutter/mixed/decoration/decoration.dart';
import 'package:zac/src/flutter/mixed/insets/edge_insets.dart';
import 'package:zac/src/flutter/mixed/keys/keys.dart';
import 'package:zac/src/flutter/mixed/route/route.dart';
import 'package:zac/src/flutter/mixed/shadow/shadow.dart';
import 'package:zac/src/flutter/widgets/assets/icon/icon.dart';
import 'package:zac/src/flutter/widgets/assets/image/image.dart';
import 'package:zac/src/flutter/widgets/interaction/gesture_detector/gesture_detector.dart';
import 'package:zac/src/flutter/widgets/interaction/ignore_pointer/ignore_pointer.dart';
import 'package:zac/src/flutter/widgets/interaction/interactive_viewer/interactive_viewer.dart';
import 'package:zac/src/flutter/widgets/interaction/refresh_indicator/refresh_indicator.dart';
import 'package:zac/src/flutter/widgets/interaction/text_field/text_field.dart';
import 'package:zac/src/flutter/widgets/layout/align/align.dart';
import 'package:zac/src/flutter/widgets/layout/aspect_ratio/aspect_ratio.dart';
import 'package:zac/src/flutter/widgets/layout/builder/builder.dart';
import 'package:zac/src/flutter/widgets/layout/center/center.dart';
import 'package:zac/src/flutter/widgets/layout/constrained_box/constrained_box.dart';
import 'package:zac/src/flutter/widgets/layout/container/container.dart';
import 'package:zac/src/flutter/widgets/layout/expanded/expanded.dart';
import 'package:zac/src/flutter/widgets/layout/fitted_box/fitted_box.dart';
import 'package:zac/src/flutter/widgets/layout/flexible/flexible.dart';
import 'package:zac/src/flutter/widgets/layout/fractionally_sized_box/fractionally_sized_box.dart';
import 'package:zac/src/flutter/widgets/layout/intrinsic_height/intrinsic_height.dart';
import 'package:zac/src/flutter/widgets/layout/intrinsic_width/intrinsic_width.dart';
import 'package:zac/src/flutter/widgets/layout/limited_box/limited_box.dart';
import 'package:zac/src/flutter/widgets/layout/offstage/offstage.dart';
import 'package:zac/src/flutter/widgets/layout/overflow_box/overflow_box.dart';
import 'package:zac/src/flutter/widgets/layout/padding/padding.dart';
import 'package:zac/src/flutter/widgets/layout/positioned/positioned.dart';
import 'package:zac/src/flutter/widgets/layout/safe_area/safe_area.dart';
import 'package:zac/src/flutter/widgets/layout/single_child_scroll_view/single_child_scroll_view.dart';
import 'package:zac/src/flutter/widgets/layout/sized_box/sized_box.dart';
import 'package:zac/src/flutter/widgets/layout/sized_overflow_box/sized_overflow_box.dart';
import 'package:zac/src/flutter/widgets/layout/spacer/spacer.dart';
import 'package:zac/src/flutter/widgets/layout/unconstrained_box/unconstrained_box.dart';
import 'package:zac/src/flutter/widgets/layout_multi_child/column/column.dart';
import 'package:zac/src/flutter/widgets/layout_multi_child/grid_view/grid_view.dart';
import 'package:zac/src/flutter/widgets/layout_multi_child/indexed_stack/indexed_stack.dart';
import 'package:zac/src/flutter/widgets/layout_multi_child/list_view/list_view.dart';
import 'package:zac/src/flutter/widgets/layout_multi_child/row/row.dart';
import 'package:zac/src/flutter/widgets/layout_multi_child/stack/stack.dart';
import 'package:zac/src/flutter/widgets/layout_multi_child/wrap/wrap.dart';
import 'package:zac/src/flutter/widgets/material/app_bar/app_bar.dart';
import 'package:zac/src/flutter/widgets/material/button_bar/button_bar.dart';
import 'package:zac/src/flutter/widgets/material/buttons/buttons.dart';
import 'package:zac/src/flutter/widgets/material/card/card.dart';
import 'package:zac/src/flutter/widgets/material/dialog/dialog.dart';
import 'package:zac/src/flutter/widgets/material/divider/divider.dart';
import 'package:zac/src/flutter/widgets/material/drawer/drawer.dart';
import 'package:zac/src/flutter/widgets/material/list_tile/list_tile.dart';
import 'package:zac/src/flutter/widgets/material/material/material.dart';
import 'package:zac/src/flutter/widgets/material/progress_indicator/progress_indicator.dart';
import 'package:zac/src/flutter/widgets/material/scaffold/scaffold.dart';
import 'package:zac/src/flutter/widgets/material/selectable_text/selectable_text.dart';
import 'package:zac/src/flutter/widgets/navigator/navigator.dart';
import 'package:zac/src/flutter/widgets/painting/clip_oval/clip_oval.dart';
import 'package:zac/src/flutter/widgets/painting/clip_rect/clip_rect.dart';
import 'package:zac/src/flutter/widgets/painting/decorated_box/decorated_box.dart';
import 'package:zac/src/flutter/widgets/painting/fractional_translation/fractional_translation.dart';
import 'package:zac/src/flutter/widgets/painting/opcaity/opacity.dart';
import 'package:zac/src/flutter/widgets/painting/rotated_box/rotated_box.dart';
import 'package:zac/src/flutter/widgets/sliver/custom_scroll_view/custom_scroll_view.dart';
import 'package:zac/src/flutter/widgets/sliver/sliver_grid/sliver_grid.dart';
import 'package:zac/src/flutter/widgets/sliver/sliver_list/sliver_list.dart';
import 'package:zac/src/flutter/widgets/sliver/sliver_padding/sliver_padding.dart';
import 'package:zac/src/flutter/widgets/sliver/sliver_to_box_adapter/sliver_to_box_adapter.dart';
import 'package:zac/src/flutter/widgets/text/text.dart';
import 'package:collection/src/iterable_extensions.dart';

Type _typeOf<T>() => T;

typedef Convert = Object Function(Map<String, dynamic> data);

Map<String, Convert> allConverters = {
  ZacInt.unionValue: ZacIntValue.fromJson,
  ZacInt.unionValueConsume: ZacIntConsume.fromJson,
  ZacDouble.unionValue: ZacDoubleValue.fromJson,
  ZacDouble.unionValueConsume: ZacDoubleConsume.fromJson,
  ZacString.unionValue: ZacStringValue.fromJson,
  ZacString.unionValueConsume: ZacStringConsume.fromJson,
  ZacBool.unionValue: ZacBoolValue.fromJson,
  ZacBool.unionValueConsume: ZacBoolConsume.fromJson,
  ZacObject.unionValue: ZacObjectValue.fromJson,
  ZacObject.unionValueConsume: ZacObjectConsume.fromJson,
  ZacMap.unionValue: ZacMapValue.fromJson,
  ZacMap.unionValueConsume: ZacMapConsume.fromJson,
  ZacWidgetConsumerBuilder.unionValue: ZacWidgetConsumerBuilder.fromJson,
  ListOfZacWidget.unionValue: ListOfZacWidgetValue.fromJson,
  ListOfZacWidget.unionValueConsume: ListOfZacWidgetConsume.fromJson,

  /**
         * SharedValue
         */
  SharedValueConsumeType.unionValue: SharedValueConsumeType.fromJson,
  SharedValueConsumeType.unionValueRead: SharedValueConsumeType.fromJson,
  UpdateSharedValue.unionValue: UpdateSharedValue.fromJson,
  BuiltInTransformer.unionValue: BuiltInTransformer.fromJson,
  BuiltInTransformer.unionValueIntAdd: BuiltInTransformer.fromJson,

  /**
         * Navigator && NavigatorState
         */
  FlutterNavigator.unionValue: FlutterNavigator.fromJson,
  FlutterNavigator.unionValuePush: FlutterNavigator.fromJson,
  FlutterNavigator.unionValuePushNamed: FlutterNavigator.fromJson,
  FlutterNavigator.unionValuePop: FlutterNavigator.fromJson,
  FlutterNavigator.unionValueMaybePop: FlutterNavigator.fromJson,
  FlutterNavigator.unionValuePushReplacement: FlutterNavigator.fromJson,
  FlutterNavigator.unionValuePushReplacementNamed: FlutterNavigator.fromJson,
  FlutterNavigator.unionValuePopUntilRouteName: FlutterNavigator.fromJson,
  FlutterNavigatorState.unionValueClosest: FlutterNavigatorState.fromJson,
  FlutterNavigatorState.unionValueRoot: FlutterNavigatorState.fromJson,
  FlutterNavigatorState.unionValueConsume: FlutterNavigatorState.fromJson,
  FlutterNavigatorState.unionValueBuilder: FlutterNavigatorState.fromJson,
  FlutterNavigatorState.unionValueBuilderTransform:
      FlutterNavigatorState.fromJson,
  RouteFactoryFromRoutes.unionValue: RouteFactoryFromRoutes.fromJson,
  RouteFactorySingleRoute.unionValue: RouteFactorySingleRoute.fromJson,
  RouteFactoryRouteConfig.unionValue: RouteFactoryRouteConfig.fromJson,

  /**
         * ACTIONS
         */
  FlutterDialogs.unionValueShowDialog: FlutterDialogs.fromJson,
  FlutterScaffold.unionValueOpenDrawer: FlutterScaffold.fromJson,
  FlutterScaffold.unionValueOpenEndDrawer: FlutterScaffold.fromJson,
  FlutterScaffold.unionValueShowBodyScrim: FlutterScaffold.fromJson,
  FlutterScaffold.unionValueShowBottomSheet: FlutterScaffold.fromJson,
  FlutterScaffoldMessenger.unionValueShowSnackBar:
      FlutterScaffoldMessenger.fromJson,
  FlutterScaffoldMessenger.unionValueHideCurrentSnackBar:
      FlutterScaffoldMessenger.fromJson,
  FlutterScaffoldMessenger.unionValueRemoveCurrentSnackBar:
      FlutterScaffoldMessenger.fromJson,
  FlutterScaffoldMessenger.unionValueShowMaterialBanner:
      FlutterScaffoldMessenger.fromJson,
  FlutterScaffoldMessenger.unionValueHideCurrentMaterialBanner:
      FlutterScaffoldMessenger.fromJson,
  FlutterScaffoldMessenger.unionValueRemoveCurrentMaterialBanner:
      FlutterScaffoldMessenger.fromJson,

  /**
        * WIDGETS
        */
  /// AnyWidget Classes
  ZacWidgetBuilderBuilder.unionValue: ZacWidgetBuilderBuilder.fromJson,
  ZacWidgetBuilderBuilder.unionValueIsolate: ZacWidgetBuilderBuilder.fromJson,
  ZacWidgetBuilderBuilder.unionValueIsolateString:
      ZacWidgetBuilderBuilder.fromJson,
  UpdateContextBuilderBuilder.unionValue: UpdateContextBuilderBuilder.fromJson,
  ExecuteActionsBuilder.unionValue: ExecuteActionsBuilder.fromJson,
  SharedValueProviderBuilder.unionValue: SharedValueProviderBuilder.fromJson,

  /// Flutter
  FlutterFittedBox.unionValue: FlutterFittedBox.fromJson,

  FlutterTextField.unionValue: FlutterTextField.fromJson,
  FlutterClipOval.unionValue: FlutterClipOval.fromJson,
  FlutterFractionalTranslation.unionValue:
      FlutterFractionalTranslation.fromJson,
  FlutterRotatedBox.unionValue: FlutterRotatedBox.fromJson,
  FlutterDecoratedBox.unionValue: FlutterDecoratedBox.fromJson,
  FlutterClipRect.unionValue: FlutterClipRect.fromJson,
  FlutterSliverList.unionValue: FlutterSliverList.fromJson,
  FlutterSliverGrid.unionValue: FlutterSliverGrid.fromJson,
  FlutterSliverPadding.unionValue: FlutterSliverPadding.fromJson,
  FlutterSliverToBoxAdapter.unionValue: FlutterSliverToBoxAdapter.fromJson,
  FlutterCustomScrollView.unionValue: FlutterCustomScrollView.fromJson,
  FlutterRefreshIndicator.unionValue: FlutterRefreshIndicator.fromJson,
  FlutterInteractiveViewer.unionValue: FlutterInteractiveViewer.fromJson,
  FlutterGestureDetector.unionValue: FlutterGestureDetector.fromJson,
  FlutterIgnorePointer.unionValue: FlutterIgnorePointer.fromJson,
  FlutterSpacer.unionValue: FlutterSpacer.fromJson,
  FlutterPositioned.unionValue: FlutterPositioned.fromJson,
  FlutterPositioned.unionValueDirectional: FlutterPositioned.fromJson,
  FlutterPositioned.unionValueFill: FlutterPositioned.fromJson,
  FlutterOpacity.unionValue: FlutterOpacity.fromJson,
  FlutterBuilder.unionValue: FlutterBuilder.fromJson,
  FlutterSafeArea.unionValue: FlutterSafeArea.fromJson,
  FlutterText.unionValue: FlutterText.fromJson,
  FlutterSelectableText.unionValue: FlutterSelectableText.fromJson,
  FlutterListTile.unionValue: FlutterListTile.fromJson,
  FlutterDivider.unionValue: FlutterDivider.fromJson,
  FlutterProgressIndicator.unionValueCircularProgressIndicator:
      FlutterProgressIndicator.fromJson,
  FlutterProgressIndicator.unionValueLinearProgressIndicator:
      FlutterProgressIndicator.fromJson,
  FlutterButtonBar.unionValue: FlutterButtonBar.fromJson,
  FlutterMaterial.unionValue: FlutterMaterial.fromJson,
  FlutterCard.unionValue: FlutterCard.fromJson,
  FlutterDrawer.unionValue: FlutterDrawer.fromJson,
  FlutterAppBar.unionValue: FlutterAppBar.fromJson,
  FlutterElevatedButton.unionValue: FlutterElevatedButton.fromJson,
  FlutterElevatedButton.unionValueIcon: FlutterElevatedButton.fromJson,
  FlutterOutlinedButton.unionValue: FlutterOutlinedButton.fromJson,
  FlutterOutlinedButton.unionValueIcon: FlutterOutlinedButton.fromJson,
  FlutterTextButton.unionValue: FlutterTextButton.fromJson,
  FlutterTextButton.unionValueIcon: FlutterTextButton.fromJson,
  FlutterFlexible.unionValue: FlutterFlexible.fromJson,
  FlutterSingleChildScrollView.unionValue:
      FlutterSingleChildScrollView.fromJson,
  FlutterIcon.unionValue: FlutterIcon.fromJson,
  FlutterImage.unionValueNetwork: FlutterImage.fromJson,
  FlutterImage.unionValueAsset: FlutterImage.fromJson,
  FlutterCenter.unionValue: FlutterCenter.fromJson,
  FlutterWrap.unionValue: FlutterWrap.fromJson,
  FlutterStack.unionValue: FlutterStack.fromJson,
  FlutterRow.unionValue: FlutterRow.fromJson,
  FlutterListView.unionValue: FlutterListView.fromJson,
  FlutterIndexedStack.unionValue: FlutterIndexedStack.fromJson,
  FlutterGridView.unionValue: FlutterGridView.fromJson,
  FlutterColumn.unionValue: FlutterColumn.fromJson,
  FlutterSizedOverflowBox.unionValue: FlutterSizedOverflowBox.fromJson,
  FlutterPadding.unionValue: FlutterPadding.fromJson,
  FlutterOverflowBox.unionValue: FlutterOverflowBox.fromJson,
  FlutterOffstage.unionValue: FlutterOffstage.fromJson,
  FlutterLimitedBox.unionValue: FlutterLimitedBox.fromJson,
  FlutterIntrinsicHeight.unionValue: FlutterIntrinsicHeight.fromJson,
  FlutterIntrinsicWidth.unionValue: FlutterIntrinsicWidth.fromJson,
  FlutterExpanded.unionValue: FlutterExpanded.fromJson,
  FlutterContainer.unionValue: FlutterContainer.fromJson,
  FlutterAlign.unionValue: FlutterAlign.fromJson,
  FlutterUnconstrainedBox.unionValue: FlutterUnconstrainedBox.fromJson,
  FlutterFractionallySizedBox.unionValue: FlutterFractionallySizedBox.fromJson,
  FlutterAspectRatio.unionValue: FlutterAspectRatio.fromJson,
  FlutterConstrainedBox.unionValue: FlutterConstrainedBox.fromJson,
  FlutterSizedBox.unionValue: FlutterSizedBox.fromJson,
  FlutterSizedBox.unionValueExpand: FlutterSizedBox.fromJson,
  FlutterSizedBox.unionValueFromSize: FlutterSizedBox.fromJson,
  FlutterSizedBox.unionValueShrink: FlutterSizedBox.fromJson,
  FlutterSizedBox.unionValueSquare: FlutterSizedBox.fromJson,
  FlutterScaffold.unionValue: FlutterScaffold.fromJson,
  FlutterDialogs.unionValueDialog: FlutterDialogs.fromJson,
  FlutterDialogs.unionValueAlertDialog: FlutterDialogs.fromJson,
  FlutterDialogs.unionValueSimpleDialog: FlutterDialogs.fromJson,
  FlutterDialogs.unionValueSimpleDialogOption: FlutterDialogs.fromJson,
  FlutterSnackBar.unionValue: FlutterSnackBar.fromJson,
  FlutterSnackBarAction.unionValue: FlutterSnackBarAction.fromJson,
  FlutterMaterialBanner.unionValue: FlutterMaterialBanner.fromJson,

  /**
         * OTHERS
         */
  FlutterValueKey.unionValue: FlutterValueKey.fromJson,
  FlutterAlignment.unionValue: FlutterAlignment.fromJson,
  FlutterAlignment.unionValueBottomCenter: FlutterAlignment.fromJson,
  FlutterAlignment.unionValueBottomLeft: FlutterAlignment.fromJson,
  FlutterAlignment.unionValueBottomRight: FlutterAlignment.fromJson,
  FlutterAlignment.unionValueCenter: FlutterAlignment.fromJson,
  FlutterAlignment.unionValueCenterLeft: FlutterAlignment.fromJson,
  FlutterAlignment.unionValueCenterRight: FlutterAlignment.fromJson,
  FlutterAlignment.unionValueTopCenter: FlutterAlignment.fromJson,
  FlutterAlignment.unionValueTopLeft: FlutterAlignment.fromJson,
  FlutterAlignment.unionValueTopRight: FlutterAlignment.fromJson,
  FlutterAlignmentDirectional.unionValue: FlutterAlignmentDirectional.fromJson,
  FlutterAlignmentDirectional.unionValueBottomCenter:
      FlutterAlignmentDirectional.fromJson,
  FlutterAlignmentDirectional.unionValueBottomEnd:
      FlutterAlignmentDirectional.fromJson,
  FlutterAlignmentDirectional.unionValueBottomStart:
      FlutterAlignmentDirectional.fromJson,
  FlutterAlignmentDirectional.unionValueCenter:
      FlutterAlignmentDirectional.fromJson,
  FlutterAlignmentDirectional.unionValueCenterEnd:
      FlutterAlignmentDirectional.fromJson,
  FlutterAlignmentDirectional.unionValueCenterStart:
      FlutterAlignmentDirectional.fromJson,
  FlutterAlignmentDirectional.unionValueTopCenter:
      FlutterAlignmentDirectional.fromJson,
  FlutterAlignmentDirectional.unionValueTopEnd:
      FlutterAlignmentDirectional.fromJson,
  FlutterAlignmentDirectional.unionValueTopStart:
      FlutterAlignmentDirectional.fromJson,
  FlutterOutlineInputBorder.unionValue: FlutterOutlineInputBorder.fromJson,
  FlutterUnderlineInputBorder.unionValue: FlutterUnderlineInputBorder.fromJson,
  FlutterBorder.unionValue: FlutterBorder.fromJson,
  FlutterBorder.unionValueAll: FlutterBorder.fromJson,
  FlutterBorderDirectional.unionValue: FlutterBorderDirectional.fromJson,
  FlutterCircleBorder.unionValue: FlutterCircleBorder.fromJson,
  FlutterRoundedRectangleBorder.unionValue:
      FlutterRoundedRectangleBorder.fromJson,
  FlutterBorderRadius.unionValueAll: FlutterBorderRadius.fromJson,
  FlutterBorderRadius.unionValueCircular: FlutterBorderRadius.fromJson,
  FlutterBorderRadius.unionValueHorizontal: FlutterBorderRadius.fromJson,
  FlutterBoxDecoration.unionValue: FlutterBoxDecoration.fromJson,
  FlutterShapeDecoration.unionValue: FlutterShapeDecoration.fromJson,
  FlutterEdgeInsets.unionValueAll: FlutterEdgeInsets.fromJson,
  FlutterEdgeInsets.unionValueSymmetric: FlutterEdgeInsets.fromJson,
  FlutterEdgeInsets.unionValueOnly: FlutterEdgeInsets.fromJson,
  FlutterEdgeInsetsDirectional.unionValueAll:
      FlutterEdgeInsetsDirectional.fromJson,
  FlutterEdgeInsetsDirectional.unionValueOnly:
      FlutterEdgeInsetsDirectional.fromJson,
  FlutterMaterialPageRoute.unionValue: FlutterMaterialPageRoute.fromJson,
  FlutterPageRouteBuilder.unionValue: FlutterPageRouteBuilder.fromJson,
  FlutterUiShadow.unionValue: FlutterUiShadow.fromJson,
  FlutterBoxShadow.unionValue: FlutterBoxShadow.fromJson,
};

const converterKey = '_converter';

abstract class ConverterHelper {
  static bool isConverter(Object? data) {
    if (data is! Map<String, dynamic>) return false;
    return data.containsKey(converterKey) &&
        data[converterKey] is String &&
        (data[converterKey] as String).isNotEmpty;
  }

  static bool hasExistingConverter(String name) {
    return allConverters.containsKey(name);
  }

  static Map<String, dynamic> validateConverter(Object? data,
      {Type? expectedType}) {
    if (!isConverter(data)) {
      throw Exception('''
Given data cannot be used to create a converter${null != expectedType ? ' of type "$expectedType"' : ''}.
It is either no Map<String, dynamic> or it has an invalid/missing "_converter" key/value.
Data: "$data"''');
    }

    final rt = (data as Map<String, dynamic>)[converterKey] as String;

    if (!hasExistingConverter(rt)) {
      throw Exception('''
Error while trying to convert${null != expectedType ? ' data to type "$expectedType"' : ' data'}.
There was no _converter found for name: "$rt".''');
    }

    return data;
  }

  static T? convertToTypeNullable<T>(Object? data) {
    if (null == data) return null;
    return convertToType<T>(data);
  }

  static T convertToType<T>(Object? data) {
    final expectedType = _typeOf<T>();
    final converterMap = validateConverter(data, expectedType: expectedType);
    final rt = converterMap[converterKey] as String;

    final dynamic converted = allConverters[rt]!(converterMap);
    if (converted is! T) {
      throw Exception('''
There was an error while trying to convert a type of "$expectedType".
Got the converted type "${converted.runtimeType}" which
is not assignable to expected type "$expectedType"''');
    }

    return converted;
  }
}
