import 'package:zac/src/flutter/dart_ui.dart';
import 'package:zac/src/flutter/material/material.dart';
import 'package:zac/src/flutter/painting.dart';
import 'package:zac/src/flutter/widgets/material/material_app.dart';
import 'package:zac/src/zac/action.dart';
import 'package:zac/src/zac/state_machine.dart';
import 'package:zac/src/zac/zac_values.dart';
import 'package:zac/src/zac/flutter/navigator.dart';
import 'package:zac/src/zac/flutter/refresh_indicator.dart';
import 'package:zac/src/zac/transformers.dart';

import 'package:zac/src/zac/widget.dart';
import 'package:zac/src/zac/update_widget.dart';

import 'package:zac/src/zac/shared_value.dart';
import 'package:zac/src/flutter/foundation.dart';
import 'package:zac/src/flutter/widgets/icon.dart';
import 'package:zac/src/flutter/widgets/image.dart';
import 'package:zac/src/flutter/widgets/gesture_detector.dart';
import 'package:zac/src/flutter/widgets/ignore_pointer.dart';
import 'package:zac/src/flutter/widgets/interactive_viewer.dart';
import 'package:zac/src/flutter/widgets/material/refresh_indicator.dart';
import 'package:zac/src/flutter/widgets/material/text_field.dart';
import 'package:zac/src/flutter/widgets/layout/align.dart';
import 'package:zac/src/flutter/widgets/layout/aspect_ratio.dart';
import 'package:zac/src/flutter/widgets/builder.dart';
import 'package:zac/src/flutter/widgets/layout/center.dart';
import 'package:zac/src/flutter/widgets/layout/constrained_box.dart';
import 'package:zac/src/flutter/widgets/layout/container.dart';
import 'package:zac/src/flutter/widgets/layout/expanded.dart';
import 'package:zac/src/flutter/widgets/layout/fitted_box.dart';
import 'package:zac/src/flutter/widgets/layout/flexible.dart';
import 'package:zac/src/flutter/widgets/layout/fractionally_sized_box.dart';
import 'package:zac/src/flutter/widgets/layout/intrinsic_height.dart';
import 'package:zac/src/flutter/widgets/layout/intrinsic_width.dart';
import 'package:zac/src/flutter/widgets/layout/limited_box.dart';
import 'package:zac/src/flutter/widgets/layout/offstage.dart';
import 'package:zac/src/flutter/widgets/layout/overflow_box.dart';
import 'package:zac/src/flutter/widgets/layout/padding.dart';
import 'package:zac/src/flutter/widgets/layout/positioned.dart';
import 'package:zac/src/flutter/widgets/layout/safe_area.dart';
import 'package:zac/src/flutter/widgets/layout/single_child_scroll_view.dart';
import 'package:zac/src/flutter/widgets/layout/sized_box.dart';
import 'package:zac/src/flutter/widgets/layout/sized_overflow_box.dart';
import 'package:zac/src/flutter/widgets/layout/spacer.dart';
import 'package:zac/src/flutter/widgets/layout/unconstrained_box.dart';
import 'package:zac/src/flutter/widgets/layout_multi_child/column.dart';
import 'package:zac/src/flutter/widgets/layout_multi_child/grid_view.dart';
import 'package:zac/src/flutter/widgets/layout_multi_child/indexed_stack.dart';
import 'package:zac/src/flutter/widgets/layout_multi_child/list_view.dart';
import 'package:zac/src/flutter/widgets/layout_multi_child/row.dart';
import 'package:zac/src/flutter/widgets/layout_multi_child/stack.dart';
import 'package:zac/src/flutter/widgets/layout_multi_child/wrap.dart';
import 'package:zac/src/flutter/widgets/material/app_bar.dart';
import 'package:zac/src/flutter/widgets/material/button_bar.dart';
import 'package:zac/src/flutter/widgets/material/buttons.dart';
import 'package:zac/src/flutter/widgets/material/card.dart';
import 'package:zac/src/flutter/widgets/material/dialog.dart';
import 'package:zac/src/flutter/widgets/material/divider.dart';
import 'package:zac/src/flutter/widgets/material/drawer.dart';
import 'package:zac/src/flutter/widgets/material/list_tile.dart';
import 'package:zac/src/flutter/widgets/material/material.dart';
import 'package:zac/src/flutter/widgets/material/progress_indicator.dart';
import 'package:zac/src/flutter/widgets/material/scaffold.dart';
import 'package:zac/src/flutter/widgets/material/selectable_text.dart';
import 'package:zac/src/flutter/widgets/navigator.dart';
import 'package:zac/src/flutter/widgets/clip_oval.dart';
import 'package:zac/src/flutter/widgets/clip_rect.dart';
import 'package:zac/src/flutter/widgets/decorated_box.dart';
import 'package:zac/src/flutter/widgets/fractional_translation.dart';
import 'package:zac/src/flutter/widgets/opacity.dart';
import 'package:zac/src/flutter/widgets/rotated_box.dart';
import 'package:zac/src/flutter/widgets/sliver/custom_scroll_view.dart';
import 'package:zac/src/flutter/widgets/sliver/sliver_grid.dart';
import 'package:zac/src/flutter/widgets/sliver/sliver_list.dart';
import 'package:zac/src/flutter/widgets/sliver/sliver_padding.dart';
import 'package:zac/src/flutter/widgets/sliver/sliver_to_box_adapter.dart';
import 'package:zac/src/flutter/widgets/text.dart';

typedef Convert = Object Function(Map<String, dynamic> data);

Map<String, Convert> allConverters = const {
  ZacValueActions.unionValue: ZacValueActions.fromJson,

  /**
         * SharedValue
         */
  SharedValueConsumeType.unionValue: SharedValueConsumeType.fromJson,
  SharedValueConsumeType.unionValueRead: SharedValueConsumeType.fromJson,
  SharedValueActions.unionValue: SharedValueActions.fromJson,
  SharedValueActions.unionValueReplaceWith: SharedValueActions.fromJson,
  ConvertTransformer.unionValue: ConvertTransformer.fromJson,
  IterableTransformer.unionValue: IterableTransformer.fromJson,
  IterableTransformer.unionValueSingle: IterableTransformer.fromJson,
  IterableTransformer.unionValueFirst: IterableTransformer.fromJson,
  IterableTransformer.unionValueLast: IterableTransformer.fromJson,
  IterableTransformer.unionValueLength: IterableTransformer.fromJson,
  IterableTransformer.unionValueIsEmpty: IterableTransformer.fromJson,
  IterableTransformer.unionValueIsNotEmpty: IterableTransformer.fromJson,
  IterableTransformer.unionValueToList: IterableTransformer.fromJson,
  IterableTransformer.unionValueToSet: IterableTransformer.fromJson,
  IterableTransformer.unionValueToString: IterableTransformer.fromJson,
  IterableTransformer.unionValueJoin: IterableTransformer.fromJson,
  IterableTransformer.unionValueContains: IterableTransformer.fromJson,
  IterableTransformer.unionValueElementAt: IterableTransformer.fromJson,
  IterableTransformer.unionValueSkip: IterableTransformer.fromJson,
  IterableTransformer.unionValueTake: IterableTransformer.fromJson,
  ListTransformer.unionValue: ListTransformer.fromJson,
  MapTransformer.unionValue: MapTransformer.fromJson,
  MapTransformer.unionValueKeys: MapTransformer.fromJson,
  MapTransformer.unionValueEntries: MapTransformer.fromJson,
  MapTransformer.unionValueLength: MapTransformer.fromJson,
  MapTransformer.unionValueIsEmpty: MapTransformer.fromJson,
  MapTransformer.unionValueIsNotEmpty: MapTransformer.fromJson,
  MapTransformer.unionValueContainsKey: MapTransformer.fromJson,
  MapTransformer.unionValueContainsValue: MapTransformer.fromJson,
  MapTransformer.unionValueMap: MapTransformer.fromJson,
  MapTransformer.unionValueFromObjectObject: MapTransformer.fromJson,
  MapTransformer.unionValueFromStringNullObject: MapTransformer.fromJson,
  MapTransformer.unionValueFromStringObject: MapTransformer.fromJson,
  NumTransformer.unionValue: NumTransformer.fromJson,
  NumTransformer.unionValueToInt: NumTransformer.fromJson,
  NumTransformer.unionValueAbs: NumTransformer.fromJson,
  NumTransformer.unionValueCeil: NumTransformer.fromJson,
  NumTransformer.unionValueCeilToDouble: NumTransformer.fromJson,
  NumTransformer.unionValueFloor: NumTransformer.fromJson,
  NumTransformer.unionValueFloorToDouble: NumTransformer.fromJson,
  NumTransformer.unionValueRound: NumTransformer.fromJson,
  NumTransformer.unionValueRoundToDouble: NumTransformer.fromJson,
  NumTransformer.unionValueIsFinite: NumTransformer.fromJson,
  NumTransformer.unionValueIsInfinite: NumTransformer.fromJson,
  NumTransformer.unionValueIsNan: NumTransformer.fromJson,
  NumTransformer.unionValueIsNegative: NumTransformer.fromJson,
  IntTransformer.unionValue: IntTransformer.fromJson,
  IntTransformer.unionValueTryParse: IntTransformer.fromJson,
  ObjectTransformer.unionValue: ObjectTransformer.fromJson,
  ObjectTransformer.unionValueIsMap: ObjectTransformer.fromJson,
  ObjectTransformer.unionValueEquals: ObjectTransformer.fromJson,
  ObjectTransformer.unionValueEqualsSharedValue: ObjectTransformer.fromJson,
  ObjectTransformer.unionValueToString: ObjectTransformer.fromJson,
  ObjectTransformer.unionValueRuntimeType: ObjectTransformer.fromJson,
  ObjectTransformer.unionValueHashCode: ObjectTransformer.fromJson,
  StringTransformer.unionValue: StringTransformer.fromJson,
  StringTransformer.unionValueSplit: StringTransformer.fromJson,
  StringTransformer.unionValueIsEmpty: StringTransformer.fromJson,
  StringTransformer.unionValueIsNotEmpty: StringTransformer.fromJson,
  StringTransformer.unionValueReplaceAll: StringTransformer.fromJson,
  JsonTransformer.unionValue: JsonTransformer.fromJson,
  JsonTransformer.unionValueDecode: JsonTransformer.fromJson,

  ZacActions.unionValue: ZacActions.fromJson,

  ZacTransition.unionValue: ZacTransition.fromJson,
  ZacStateConfig.unionValue: ZacStateConfig.fromJson,
  ZacStateMachineProviderBuilder.unionValue:
      ZacStateMachineProviderBuilder.fromJson,
  ZacStateMachineBuildStateBuilder.unionValue:
      ZacStateMachineBuildStateBuilder.fromJson,
  ZacStateMachineActions.unionValue: ZacStateMachineActions.fromJson,
  ZacStateMachineActions.unionValueTrySend: ZacStateMachineActions.fromJson,
  ZacStateMachineTransformer.unionValue: ZacStateMachineTransformer.fromJson,
  ZacStateMachineTransformer.unionValuePickContext:
      ZacStateMachineTransformer.fromJson,

  /**
         * Navigator && NavigatorState
         */
  FlutterNavigator.unionValue: FlutterNavigator.fromJson,
  FlutterNavigatorActions.unionValuePush: FlutterNavigatorActions.fromJson,
  FlutterNavigatorActions.unionValuePushNamed: FlutterNavigatorActions.fromJson,
  FlutterNavigatorActions.unionValuePop: FlutterNavigatorActions.fromJson,
  FlutterNavigatorActions.unionValueMaybePop: FlutterNavigatorActions.fromJson,
  FlutterNavigatorActions.unionValuePushReplacement:
      FlutterNavigatorActions.fromJson,
  FlutterNavigatorActions.unionValuePushReplacementNamed:
      FlutterNavigatorActions.fromJson,
  FlutterNavigatorState.unionValueClosest: FlutterNavigatorState.fromJson,
  FlutterNavigatorState.unionValueRoot: FlutterNavigatorState.fromJson,
  FlutterNavigatorState.unionValueShared: FlutterNavigatorState.fromJson,
  ZacFlutterGlobalKeyNavigatorStateProvider.unionValue:
      ZacFlutterGlobalKeyNavigatorStateProvider.fromJson,
  RouteFactoryFromRoutes.unionValue: RouteFactoryFromRoutes.fromJson,
  RouteFactorySingleRoute.unionValue: RouteFactorySingleRoute.fromJson,
  RouteFactoryRouteConfig.unionValue: RouteFactoryRouteConfig.fromJson,
  ZacFlutterNavigatorActions.unionValuePopUntilRouteName:
      ZacFlutterNavigatorActions.fromJson,

  /**
         * ACTIONS
         */
  FlutterDialogActions.unionValue: FlutterDialogActions.fromJson,
  FlutterScaffoldActions.unionValueOpenDrawer: FlutterScaffoldActions.fromJson,
  FlutterScaffoldActions.unionValueOpenEndDrawer:
      FlutterScaffoldActions.fromJson,
  FlutterScaffoldActions.unionValueShowBodyScrim:
      FlutterScaffoldActions.fromJson,
  FlutterScaffoldActions.unionValueShowBottomSheet:
      FlutterScaffoldActions.fromJson,
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
  FlutterRefreshIndicatorAction.unionValue:
      FlutterRefreshIndicatorAction.fromJson,

  /**
        * WIDGETS
        */
  /// ZacWidget Classes
  ZacWidgetBuilder.unionValue: ZacWidgetBuilder.fromJson,
  ZacWidgetBuilder.unionValueMap: ZacWidgetBuilder.fromJson,
  ZacWidgetBuilder.unionValueIsolate: ZacWidgetBuilder.fromJson,
  ZacWidgetBuilder.unionValueIsolateString: ZacWidgetBuilder.fromJson,
  ZacUpdateContextBuilder.unionValue: ZacUpdateContextBuilder.fromJson,
  ZacExecuteActionsBuilder.unionValue: ZacExecuteActionsBuilder.fromJson,
  ZacExecuteActionsBuilder.unionValueListen: ZacExecuteActionsBuilder.fromJson,
  SharedValueProviderBuilder.unionValue: SharedValueProviderBuilder.fromJson,

  /// Flutter
  FlutterFittedBox.unionValue: FlutterFittedBox.fromJson,
  FlutterMaterialApp.unionValue: FlutterMaterialApp.fromJson,
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
  DartUiShadow.unionValue: DartUiShadow.fromJson,
  FlutterBoxShadow.unionValue: FlutterBoxShadow.fromJson,
  FlutterFractionalOffset.unionValue: FlutterFractionalOffset.fromJson,
};

const converterKey = 'converter';

class ConverterError extends StateError {
  ConverterError(super.message);
}

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

  static Map<String, dynamic> validateConverter<T>(Object? data) {
    if (!isConverter(data)) {
      throw ConverterError('''
Could not convert ${data.runtimeType} to $T.
It is either no Map<String, dynamic> or it has an invalid/missing "$converterKey" key/value.
Data: "$data"''');
    }

    final rt = (data as Map<String, dynamic>)[converterKey] as String;

    if (!hasExistingConverter(rt)) {
      throw ConverterError('''
Error while trying to convert data to $T.
There is no registered Converter found for "$rt".''');
    }

    return data;
  }

  static T convertToType<T>(Object? data) {
    final converterMap = validateConverter<T>(data);
    final rt = converterMap[converterKey] as String;

    final dynamic converted = allConverters[rt]!(converterMap);
    if (converted is! T) {
      throw ConverterError('''
An unexpected Builder was returned after convertion of "$rt"
Expected Builder type: $T
Actual Builder: "${converted.runtimeType}"
$converted''');
    }

    return converted;
  }
}
