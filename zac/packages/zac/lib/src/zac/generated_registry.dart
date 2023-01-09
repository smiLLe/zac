///
/// Generated file.
/// DO NOT MODIFY BY HAND.
///

import 'package:zac/src/flutter/completer.dart';
import 'package:zac/src/flutter/dart_ui.dart';
import 'package:zac/src/flutter/foundation.dart';
import 'package:zac/src/flutter/material/input_decoration.dart';
import 'package:zac/src/flutter/material/material.dart';
import 'package:zac/src/flutter/painting.dart';
import 'package:zac/src/flutter/rendering.dart';
import 'package:zac/src/flutter/services.dart';
import 'package:zac/src/flutter/widgets/builder.dart';
import 'package:zac/src/flutter/widgets/clip_oval.dart';
import 'package:zac/src/flutter/widgets/clip_rect.dart';
import 'package:zac/src/flutter/widgets/decorated_box.dart';
import 'package:zac/src/flutter/widgets/fractional_translation.dart';
import 'package:zac/src/flutter/widgets/gesture_detector.dart';
import 'package:zac/src/flutter/widgets/icon.dart';
import 'package:zac/src/flutter/widgets/ignore_pointer.dart';
import 'package:zac/src/flutter/widgets/image.dart';
import 'package:zac/src/flutter/widgets/interactive_viewer.dart';
import 'package:zac/src/flutter/widgets/keyboard.dart';
import 'package:zac/src/flutter/widgets/layout/align.dart';
import 'package:zac/src/flutter/widgets/layout/aspect_ratio.dart';
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
import 'package:zac/src/flutter/widgets/material/floating_action_button.dart';
import 'package:zac/src/flutter/widgets/material/list_tile.dart';
import 'package:zac/src/flutter/widgets/material/material.dart';
import 'package:zac/src/flutter/widgets/material/material_app.dart';
import 'package:zac/src/flutter/widgets/material/progress_indicator.dart';
import 'package:zac/src/flutter/widgets/material/refresh_indicator.dart';
import 'package:zac/src/flutter/widgets/material/scaffold.dart';
import 'package:zac/src/flutter/widgets/material/selectable_text.dart';
import 'package:zac/src/flutter/widgets/material/text_field.dart';
import 'package:zac/src/flutter/widgets/navigator.dart';
import 'package:zac/src/flutter/widgets/opacity.dart';
import 'package:zac/src/flutter/widgets/rotated_box.dart';
import 'package:zac/src/flutter/widgets/scroll_controller.dart';
import 'package:zac/src/flutter/widgets/scroll_physics.dart';
import 'package:zac/src/flutter/widgets/sliver/custom_scroll_view.dart';
import 'package:zac/src/flutter/widgets/sliver/sliver_delegate/sliver_child_delegate.dart';
import 'package:zac/src/flutter/widgets/sliver/sliver_delegate/sliver_grid_delegate.dart';
import 'package:zac/src/flutter/widgets/sliver/sliver_grid.dart';
import 'package:zac/src/flutter/widgets/sliver/sliver_list.dart';
import 'package:zac/src/flutter/widgets/sliver/sliver_padding.dart';
import 'package:zac/src/flutter/widgets/sliver/sliver_to_box_adapter.dart';
import 'package:zac/src/flutter/widgets/text.dart';
import 'package:zac/src/zac/action.dart';
import 'package:zac/src/zac/shared_value.dart';
import 'package:zac/src/zac/state_machine.dart';
import 'package:zac/src/zac/transformers.dart';
import 'package:zac/src/zac/widget.dart';
import 'package:zac/src/zac/zac_value.dart';
import 'package:zac/src/zac/registry.dart';

void addZacBuilders(ZacRegistry registry) {
  registry
    ..register('f:1:AlertDialog', FlutterDialogs.fromJson)
    ..register('f:1:Align', FlutterAlign.fromJson)
    ..register('f:1:Alignment', FlutterAlignment.fromJson)
    ..register('f:1:Alignment.bottomCenter', FlutterAlignment.fromJson)
    ..register('f:1:Alignment.bottomLeft', FlutterAlignment.fromJson)
    ..register('f:1:Alignment.bottomRight', FlutterAlignment.fromJson)
    ..register('f:1:Alignment.center', FlutterAlignment.fromJson)
    ..register('f:1:Alignment.centerLeft', FlutterAlignment.fromJson)
    ..register('f:1:Alignment.centerRight', FlutterAlignment.fromJson)
    ..register('f:1:Alignment.topCenter', FlutterAlignment.fromJson)
    ..register('f:1:Alignment.topLeft', FlutterAlignment.fromJson)
    ..register('f:1:Alignment.topRight', FlutterAlignment.fromJson)
    ..register('f:1:AlignmentDirectional', FlutterAlignmentDirectional.fromJson)
    ..register('f:1:AlignmentDirectional.bottomCenter',
        FlutterAlignmentDirectional.fromJson)
    ..register('f:1:AlignmentDirectional.bottomEnd',
        FlutterAlignmentDirectional.fromJson)
    ..register('f:1:AlignmentDirectional.bottomStart',
        FlutterAlignmentDirectional.fromJson)
    ..register(
        'f:1:AlignmentDirectional.center', FlutterAlignmentDirectional.fromJson)
    ..register('f:1:AlignmentDirectional.centerEnd',
        FlutterAlignmentDirectional.fromJson)
    ..register('f:1:AlignmentDirectional.centerStart',
        FlutterAlignmentDirectional.fromJson)
    ..register('f:1:AlignmentDirectional.topCenter',
        FlutterAlignmentDirectional.fromJson)
    ..register(
        'f:1:AlignmentDirectional.topEnd', FlutterAlignmentDirectional.fromJson)
    ..register('f:1:AlignmentDirectional.topStart',
        FlutterAlignmentDirectional.fromJson)
    ..register(
        'f:1:AlwaysScrollableScrollPhysics', FlutterScrollPhysics.fromJson)
    ..register('f:1:AppBar', FlutterAppBar.fromJson)
    ..register('f:1:AspectRatio', FlutterAspectRatio.fromJson)
    ..register('f:1:Axis.horizontal', FlutterAxis.fromJson)
    ..register('f:1:Axis.vertical', FlutterAxis.fromJson)
    ..register('f:1:BlendMode.clear', FlutterBlendMode.fromJson)
    ..register('f:1:BlendMode.color', FlutterBlendMode.fromJson)
    ..register('f:1:BlendMode.colorBurn', FlutterBlendMode.fromJson)
    ..register('f:1:BlendMode.colorDodge', FlutterBlendMode.fromJson)
    ..register('f:1:BlendMode.darken', FlutterBlendMode.fromJson)
    ..register('f:1:BlendMode.difference', FlutterBlendMode.fromJson)
    ..register('f:1:BlendMode.dst', FlutterBlendMode.fromJson)
    ..register('f:1:BlendMode.dstATop', FlutterBlendMode.fromJson)
    ..register('f:1:BlendMode.dstIn', FlutterBlendMode.fromJson)
    ..register('f:1:BlendMode.dstOut', FlutterBlendMode.fromJson)
    ..register('f:1:BlendMode.dstOver', FlutterBlendMode.fromJson)
    ..register('f:1:BlendMode.exclusion', FlutterBlendMode.fromJson)
    ..register('f:1:BlendMode.hardLight', FlutterBlendMode.fromJson)
    ..register('f:1:BlendMode.hue', FlutterBlendMode.fromJson)
    ..register('f:1:BlendMode.lighten', FlutterBlendMode.fromJson)
    ..register('f:1:BlendMode.luminosity', FlutterBlendMode.fromJson)
    ..register('f:1:BlendMode.modulate', FlutterBlendMode.fromJson)
    ..register('f:1:BlendMode.multiply', FlutterBlendMode.fromJson)
    ..register('f:1:BlendMode.overlay', FlutterBlendMode.fromJson)
    ..register('f:1:BlendMode.plus', FlutterBlendMode.fromJson)
    ..register('f:1:BlendMode.saturation', FlutterBlendMode.fromJson)
    ..register('f:1:BlendMode.screen', FlutterBlendMode.fromJson)
    ..register('f:1:BlendMode.softLight', FlutterBlendMode.fromJson)
    ..register('f:1:BlendMode.src', FlutterBlendMode.fromJson)
    ..register('f:1:BlendMode.srcATop', FlutterBlendMode.fromJson)
    ..register('f:1:BlendMode.srcIn', FlutterBlendMode.fromJson)
    ..register('f:1:BlendMode.srcOut', FlutterBlendMode.fromJson)
    ..register('f:1:BlendMode.srcOver', FlutterBlendMode.fromJson)
    ..register('f:1:BlendMode.xor', FlutterBlendMode.fromJson)
    ..register('f:1:BlurStyle.inner', FlutterBlurStyle.fromJson)
    ..register('f:1:BlurStyle.normal', FlutterBlurStyle.fromJson)
    ..register('f:1:BlurStyle.outer', FlutterBlurStyle.fromJson)
    ..register('f:1:BlurStyle.solid', FlutterBlurStyle.fromJson)
    ..register('f:1:Border', FlutterBorder.fromJson)
    ..register('f:1:Border.all', FlutterBorder.fromJson)
    ..register('f:1:BorderDirectional', FlutterBorderDirectional.fromJson)
    ..register('f:1:BorderRadius.all', FlutterBorderRadius.fromJson)
    ..register('f:1:BorderRadius.circular', FlutterBorderRadius.fromJson)
    ..register('f:1:BorderRadius.horizontal', FlutterBorderRadius.fromJson)
    ..register('f:1:BorderSide', FlutterBorderSide.fromJson)
    ..register('f:1:BorderStyle.none', FlutterBorderStyle.fromJson)
    ..register('f:1:BorderStyle.solid', FlutterBorderStyle.fromJson)
    ..register('f:1:BouncingScrollPhysics', FlutterScrollPhysics.fromJson)
    ..register('f:1:BoxConstraints', FlutterBoxConstraints.fromJson)
    ..register('f:1:BoxConstraints.expand', FlutterBoxConstraints.fromJson)
    ..register('f:1:BoxConstraints.loose', FlutterBoxConstraints.fromJson)
    ..register('f:1:BoxConstraints.tight', FlutterBoxConstraints.fromJson)
    ..register('f:1:BoxConstraints.tightFor', FlutterBoxConstraints.fromJson)
    ..register(
        'f:1:BoxConstraints.tightForFinite', FlutterBoxConstraints.fromJson)
    ..register('f:1:BoxDecoration', FlutterBoxDecoration.fromJson)
    ..register('f:1:BoxFit.contain', FlutterBoxFit.fromJson)
    ..register('f:1:BoxFit.cover', FlutterBoxFit.fromJson)
    ..register('f:1:BoxFit.fill', FlutterBoxFit.fromJson)
    ..register('f:1:BoxFit.fitHeight', FlutterBoxFit.fromJson)
    ..register('f:1:BoxFit.fitWidth', FlutterBoxFit.fromJson)
    ..register('f:1:BoxFit.none', FlutterBoxFit.fromJson)
    ..register('f:1:BoxFit.scaleDown', FlutterBoxFit.fromJson)
    ..register('f:1:BoxHeightStyle.includeLineSpacingBottom',
        FlutterBoxHeightStyle.fromJson)
    ..register('f:1:BoxHeightStyle.includeLineSpacingMiddle',
        FlutterBoxHeightStyle.fromJson)
    ..register('f:1:BoxHeightStyle.includeLineSpacingTop',
        FlutterBoxHeightStyle.fromJson)
    ..register('f:1:BoxHeightStyle.max', FlutterBoxHeightStyle.fromJson)
    ..register('f:1:BoxHeightStyle.strut', FlutterBoxHeightStyle.fromJson)
    ..register('f:1:BoxHeightStyle.tight', FlutterBoxHeightStyle.fromJson)
    ..register('f:1:BoxShadow', FlutterBoxShadow.fromJson)
    ..register('f:1:BoxShape.circle', FlutterBoxShape.fromJson)
    ..register('f:1:BoxShape.rectangle', FlutterBoxShape.fromJson)
    ..register('f:1:BoxWidthStyle.max', FlutterBoxWidthStyle.fromJson)
    ..register('f:1:BoxWidthStyle.tight', FlutterBoxWidthStyle.fromJson)
    ..register('f:1:Brightness.dark', FlutterBrightness.fromJson)
    ..register('f:1:Brightness.light', FlutterBrightness.fromJson)
    ..register('f:1:Builder', FlutterBuilder.fromJson)
    ..register('f:1:ButtonBar', FlutterButtonBar.fromJson)
    ..register('f:1:Card', FlutterCard.fromJson)
    ..register('f:1:Center', FlutterCenter.fromJson)
    ..register('f:1:CircleBorder', FlutterCircleBorder.fromJson)
    ..register(
        'f:1:CircularProgressIndicator', FlutterProgressIndicator.fromJson)
    ..register('f:1:ClampingScrollPhysics', FlutterScrollPhysics.fromJson)
    ..register('f:1:Clip.antiAlias', FlutterClip.fromJson)
    ..register('f:1:Clip.hardEdge', FlutterClip.fromJson)
    ..register('f:1:Clip.none', FlutterClip.fromJson)
    ..register('f:1:ClipOval', FlutterClipOval.fromJson)
    ..register('f:1:ClipRect', FlutterClipRect.fromJson)
    ..register('f:1:Color.fromARGB', FlutterColor.fromJson)
    ..register('f:1:Color.fromRGBO', FlutterColor.fromJson)
    ..register('f:1:Column', FlutterColumn.fromJson)
    ..register('f:1:ConstrainedBox', FlutterConstrainedBox.fromJson)
    ..register('f:1:Container', FlutterContainer.fromJson)
    ..register(
        'f:1:CrossAxisAlignment.baseline', FlutterCrossAxisAlignment.fromJson)
    ..register(
        'f:1:CrossAxisAlignment.center', FlutterCrossAxisAlignment.fromJson)
    ..register('f:1:CrossAxisAlignment.end', FlutterCrossAxisAlignment.fromJson)
    ..register(
        'f:1:CrossAxisAlignment.start', FlutterCrossAxisAlignment.fromJson)
    ..register(
        'f:1:CrossAxisAlignment.stretch', FlutterCrossAxisAlignment.fromJson)
    ..register('f:1:CustomScrollView', FlutterCustomScrollView.fromJson)
    ..register('f:1:DecoratedBox', FlutterDecoratedBox.fromJson)
    ..register(
        'f:1:DecorationPosition.background', FlutterDecorationPosition.fromJson)
    ..register(
        'f:1:DecorationPosition.foreground', FlutterDecorationPosition.fromJson)
    ..register('f:1:Dialog', FlutterDialogs.fromJson)
    ..register('f:1:Divider', FlutterDivider.fromJson)
    ..register('f:1:Drawer', FlutterDrawer.fromJson)
    ..register('f:1:EdgeInsets.all', FlutterEdgeInsets.fromJson)
    ..register('f:1:EdgeInsets.only', FlutterEdgeInsets.fromJson)
    ..register('f:1:EdgeInsets.symmetric', FlutterEdgeInsets.fromJson)
    ..register(
        'f:1:EdgeInsetsDirectional.all', FlutterEdgeInsetsDirectional.fromJson)
    ..register(
        'f:1:EdgeInsetsDirectional.only', FlutterEdgeInsetsDirectional.fromJson)
    ..register('f:1:ElevatedButton', FlutterElevatedButton.fromJson)
    ..register('f:1:ElevatedButton.icon', FlutterElevatedButton.fromJson)
    ..register('f:1:Expanded', FlutterExpanded.fromJson)
    ..register('f:1:FilterQuality.high', FlutterFilterQuality.fromJson)
    ..register('f:1:FilterQuality.low', FlutterFilterQuality.fromJson)
    ..register('f:1:FilterQuality.medium', FlutterFilterQuality.fromJson)
    ..register('f:1:FilterQuality.none', FlutterFilterQuality.fromJson)
    ..register('f:1:FittedBox', FlutterFittedBox.fromJson)
    ..register('f:1:FlexFit.loose', FlutterFlexFit.fromJson)
    ..register('f:1:FlexFit.tight', FlutterFlexFit.fromJson)
    ..register('f:1:Flexible', FlutterFlexible.fromJson)
    ..register('f:1:FloatingActionButton', FlutterFloatingActionButton.fromJson)
    ..register('f:1:FloatingActionButton.extended',
        FlutterFloatingActionButton.fromJson)
    ..register(
        'f:1:FloatingActionButton.large', FlutterFloatingActionButton.fromJson)
    ..register(
        'f:1:FloatingActionButton.small', FlutterFloatingActionButton.fromJson)
    ..register('f:1:FontFeature', FlutterFontFeature.fromJson)
    ..register('f:1:FontFeature.alternative', FlutterFontFeature.fromJson)
    ..register(
        'f:1:FontFeature.alternativeFractions', FlutterFontFeature.fromJson)
    ..register(
        'f:1:FontFeature.caseSensitiveForms', FlutterFontFeature.fromJson)
    ..register('f:1:FontFeature.characterVariant', FlutterFontFeature.fromJson)
    ..register(
        'f:1:FontFeature.contextualAlternates', FlutterFontFeature.fromJson)
    ..register('f:1:FontFeature.denominator', FlutterFontFeature.fromJson)
    ..register('f:1:FontFeature.disable', FlutterFontFeature.fromJson)
    ..register('f:1:FontFeature.enable', FlutterFontFeature.fromJson)
    ..register('f:1:FontFeature.fractions', FlutterFontFeature.fromJson)
    ..register('f:1:FontFeature.historicalForms', FlutterFontFeature.fromJson)
    ..register(
        'f:1:FontFeature.historicalLigatures', FlutterFontFeature.fromJson)
    ..register('f:1:FontFeature.liningFigures', FlutterFontFeature.fromJson)
    ..register('f:1:FontFeature.localeAware', FlutterFontFeature.fromJson)
    ..register('f:1:FontFeature.notationalForms', FlutterFontFeature.fromJson)
    ..register('f:1:FontFeature.numerators', FlutterFontFeature.fromJson)
    ..register('f:1:FontFeature.oldstyleFigures', FlutterFontFeature.fromJson)
    ..register('f:1:FontFeature.ordinalForms', FlutterFontFeature.fromJson)
    ..register(
        'f:1:FontFeature.proportionalFigures', FlutterFontFeature.fromJson)
    ..register('f:1:FontFeature.randomize', FlutterFontFeature.fromJson)
    ..register(
        'f:1:FontFeature.scientificInferiors', FlutterFontFeature.fromJson)
    ..register('f:1:FontFeature.slashedZero', FlutterFontFeature.fromJson)
    ..register(
        'f:1:FontFeature.stylisticAlternates', FlutterFontFeature.fromJson)
    ..register('f:1:FontFeature.stylisticSet', FlutterFontFeature.fromJson)
    ..register('f:1:FontFeature.subscripts', FlutterFontFeature.fromJson)
    ..register('f:1:FontFeature.superscripts', FlutterFontFeature.fromJson)
    ..register('f:1:FontFeature.swash', FlutterFontFeature.fromJson)
    ..register('f:1:FontFeature.tabularFigures', FlutterFontFeature.fromJson)
    ..register('f:1:FontStyle.italic', FlutterFontStyle.fromJson)
    ..register('f:1:FontStyle.normal', FlutterFontStyle.fromJson)
    ..register('f:1:FontWeight.bold', FlutterFontWeight.fromJson)
    ..register('f:1:FontWeight.normal', FlutterFontWeight.fromJson)
    ..register('f:1:FontWeight.w100', FlutterFontWeight.fromJson)
    ..register('f:1:FontWeight.w200', FlutterFontWeight.fromJson)
    ..register('f:1:FontWeight.w300', FlutterFontWeight.fromJson)
    ..register('f:1:FontWeight.w400', FlutterFontWeight.fromJson)
    ..register('f:1:FontWeight.w500', FlutterFontWeight.fromJson)
    ..register('f:1:FontWeight.w600', FlutterFontWeight.fromJson)
    ..register('f:1:FontWeight.w700', FlutterFontWeight.fromJson)
    ..register('f:1:FontWeight.w800', FlutterFontWeight.fromJson)
    ..register('f:1:FontWeight.w900', FlutterFontWeight.fromJson)
    ..register('f:1:FractionalOffset', FlutterFractionalOffset.fromJson)
    ..register(
        'f:1:FractionalTranslation', FlutterFractionalTranslation.fromJson)
    ..register('f:1:FractionallySizedBox', FlutterFractionallySizedBox.fromJson)
    ..register('f:1:GestureDetector', FlutterGestureDetector.fromJson)
    ..register('f:1:GridView', FlutterGridView.fromJson)
    ..register(
        'f:1:HitTestBehavior.deferToChild', FlutterHitTestBehavior.fromJson)
    ..register('f:1:HitTestBehavior.opaque', FlutterHitTestBehavior.fromJson)
    ..register(
        'f:1:HitTestBehavior.translucent', FlutterHitTestBehavior.fromJson)
    ..register('f:1:Icon', FlutterIcon.fromJson)
    ..register('f:1:IconData', FlutterIconData.fromJson)
    ..register('f:1:IconThemeData', FlutterIconThemeData.fromJson)
    ..register('f:1:IgnorePointer', FlutterIgnorePointer.fromJson)
    ..register('f:1:Image.asset', FlutterImage.fromJson)
    ..register('f:1:Image.network', FlutterImage.fromJson)
    ..register('f:1:ImageRepeat.noRepeat', FlutterImageRepeat.fromJson)
    ..register('f:1:ImageRepeat.repeat', FlutterImageRepeat.fromJson)
    ..register('f:1:ImageRepeat.repeatX', FlutterImageRepeat.fromJson)
    ..register('f:1:ImageRepeat.repeatY', FlutterImageRepeat.fromJson)
    ..register('f:1:IndexedStack', FlutterIndexedStack.fromJson)
    ..register('f:1:InputDecoration', FlutterInputDecoration.fromJson)
    ..register('f:1:InteractiveViewer', FlutterInteractiveViewer.fromJson)
    ..register('f:1:IntrinsicHeight', FlutterIntrinsicHeight.fromJson)
    ..register('f:1:IntrinsicWidth', FlutterIntrinsicWidth.fromJson)
    ..register('f:1:LimitedBox', FlutterLimitedBox.fromJson)
    ..register('f:1:LinearProgressIndicator', FlutterProgressIndicator.fromJson)
    ..register('f:1:ListTile', FlutterListTile.fromJson)
    ..register('f:1:ListView', FlutterListView.fromJson)
    ..register('f:1:Locale', FlutterLocale.fromJson)
    ..register(
        'f:1:MainAxisAlignment.center', FlutterMainAxisAlignment.fromJson)
    ..register('f:1:MainAxisAlignment.end', FlutterMainAxisAlignment.fromJson)
    ..register(
        'f:1:MainAxisAlignment.spaceAround', FlutterMainAxisAlignment.fromJson)
    ..register(
        'f:1:MainAxisAlignment.spaceBetween', FlutterMainAxisAlignment.fromJson)
    ..register(
        'f:1:MainAxisAlignment.spaceEvenly', FlutterMainAxisAlignment.fromJson)
    ..register('f:1:MainAxisAlignment.start', FlutterMainAxisAlignment.fromJson)
    ..register('f:1:MainAxisSize.max', FlutterMainAxisSize.fromJson)
    ..register('f:1:MainAxisSize.min', FlutterMainAxisSize.fromJson)
    ..register('f:1:Material', FlutterMaterial.fromJson)
    ..register('f:1:MaterialApp', FlutterMaterialApp.fromJson)
    ..register('f:1:MaterialBanner', FlutterMaterialBanner.fromJson)
    ..register('f:1:MaterialPageRoute', FlutterMaterialPageRoute.fromJson)
    ..register('f:1:Navigator', FlutterNavigator.fromJson)
    ..register('f:1:Navigator.maybePop', FlutterNavigatorActions.fromJson)
    ..register('f:1:Navigator.pop', FlutterNavigatorActions.fromJson)
    ..register('f:1:Navigator.push', FlutterNavigatorActions.fromJson)
    ..register('f:1:Navigator.pushNamed', FlutterNavigatorActions.fromJson)
    ..register(
        'f:1:Navigator.pushReplacement', FlutterNavigatorActions.fromJson)
    ..register(
        'f:1:Navigator.pushReplacementNamed', FlutterNavigatorActions.fromJson)
    ..register('f:1:NavigatorState.closest', FlutterNavigatorState.fromJson)
    ..register('f:1:NavigatorState.root', FlutterNavigatorState.fromJson)
    ..register('f:1:Offset', FlutterOffset.fromJson)
    ..register('f:1:Offset.fromDirection', FlutterOffset.fromJson)
    ..register('f:1:Offstage', FlutterOffstage.fromJson)
    ..register('f:1:Opacity', FlutterOpacity.fromJson)
    ..register('f:1:OutlineInputBorder', FlutterOutlineInputBorder.fromJson)
    ..register('f:1:OutlinedButton', FlutterOutlinedButton.fromJson)
    ..register('f:1:OutlinedButton.icon', FlutterOutlinedButton.fromJson)
    ..register('f:1:OverflowBox', FlutterOverflowBox.fromJson)
    ..register('f:1:Padding', FlutterPadding.fromJson)
    ..register('f:1:PageRouteBuilder', FlutterPageRouteBuilder.fromJson)
    ..register('f:1:Positioned', FlutterPositioned.fromJson)
    ..register('f:1:Positioned.directional', FlutterPositioned.fromJson)
    ..register('f:1:Positioned.fill', FlutterPositioned.fromJson)
    ..register('f:1:Radius.circular', FlutterRadius.fromJson)
    ..register('f:1:Radius.elliptical', FlutterRadius.fromJson)
    ..register('f:1:Rect.fromCenter', FlutterRect.fromJson)
    ..register('f:1:Rect.fromCircle', FlutterRect.fromJson)
    ..register('f:1:Rect.fromLTRB', FlutterRect.fromJson)
    ..register('f:1:Rect.fromLTWH', FlutterRect.fromJson)
    ..register('f:1:Rect.fromPoints', FlutterRect.fromJson)
    ..register('f:1:RefreshIndicator', FlutterRefreshIndicator.fromJson)
    ..register('f:1:RefreshIndicatorTriggerMode.anywhere',
        FlutterRefreshIndicatorTriggerMode.fromJson)
    ..register('f:1:RefreshIndicatorTriggerMode.onEdge',
        FlutterRefreshIndicatorTriggerMode.fromJson)
    ..register('f:1:RotatedBox', FlutterRotatedBox.fromJson)
    ..register(
        'f:1:RoundedRectangleBorder', FlutterRoundedRectangleBorder.fromJson)
    ..register('f:1:RouteFactory', FlutterRouteFactory.fromJson)
    ..register('f:1:RouteSettings', FlutterRouteSettings.fromJson)
    ..register('f:1:Row', FlutterRow.fromJson)
    ..register('f:1:SafeArea', FlutterSafeArea.fromJson)
    ..register('f:1:Scaffold', FlutterScaffold.fromJson)
    ..register('f:1:Scaffold.openDrawer', FlutterScaffoldActions.fromJson)
    ..register('f:1:Scaffold.openEndDrawer', FlutterScaffoldActions.fromJson)
    ..register('f:1:Scaffold.showBodyScrim', FlutterScaffoldActions.fromJson)
    ..register('f:1:Scaffold.showBottomSheet', FlutterScaffoldActions.fromJson)
    ..register('f:1:ScaffoldMessenger.hideCurrentMaterialBanner',
        FlutterScaffoldMessenger.fromJson)
    ..register('f:1:ScaffoldMessenger.hideCurrentSnackBar',
        FlutterScaffoldMessenger.fromJson)
    ..register('f:1:ScaffoldMessenger.removeCurrentMaterialBanner',
        FlutterScaffoldMessenger.fromJson)
    ..register('f:1:ScaffoldMessenger.removeCurrentSnackBar',
        FlutterScaffoldMessenger.fromJson)
    ..register('f:1:ScaffoldMessenger.showMaterialBanner',
        FlutterScaffoldMessenger.fromJson)
    ..register(
        'f:1:ScaffoldMessenger.showSnackBar', FlutterScaffoldMessenger.fromJson)
    ..register('f:1:ScrollViewKeyboardDismissBehavior.manual',
        FlutterScrollViewKeyboardDismissBehavior.fromJson)
    ..register('f:1:ScrollViewKeyboardDismissBehavior.onDrag',
        FlutterScrollViewKeyboardDismissBehavior.fromJson)
    ..register('f:1:SelectableText', FlutterSelectableText.fromJson)
    ..register('f:1:Shadow', FlutterShadow.fromJson)
    ..register('f:1:ShapeDecoration', FlutterShapeDecoration.fromJson)
    ..register('f:1:SimpleDialog', FlutterDialogs.fromJson)
    ..register('f:1:SimpleDialogOption', FlutterDialogs.fromJson)
    ..register(
        'f:1:SingleChildScrollView', FlutterSingleChildScrollView.fromJson)
    ..register('f:1:Size', FlutterSize.fromJson)
    ..register('f:1:SizedBox', FlutterSizedBox.fromJson)
    ..register('f:1:SizedBox.expand', FlutterSizedBox.fromJson)
    ..register('f:1:SizedBox.fromSize', FlutterSizedBox.fromJson)
    ..register('f:1:SizedBox.shrink', FlutterSizedBox.fromJson)
    ..register('f:1:SizedBox.square', FlutterSizedBox.fromJson)
    ..register('f:1:SizedOverflowBox', FlutterSizedOverflowBox.fromJson)
    ..register(
        'f:1:SliverChildListDelegate', FlutterSliverChildDelegate.fromJson)
    ..register('f:1:SliverChildListDelegate.fixed',
        FlutterSliverChildDelegate.fromJson)
    ..register('f:1:SliverGrid', FlutterSliverGrid.fromJson)
    ..register('f:1:SliverGridDelegateWithFixedCrossAxisCount',
        FlutterSliverGridDelegate.fromJson)
    ..register('f:1:SliverGridDelegateWithMaxCrossAxisExtent',
        FlutterSliverGridDelegate.fromJson)
    ..register('f:1:SliverList', FlutterSliverList.fromJson)
    ..register('f:1:SliverPadding', FlutterSliverPadding.fromJson)
    ..register('f:1:SliverToBoxAdapter', FlutterSliverToBoxAdapter.fromJson)
    ..register('f:1:SmartDashesType.disabled', FlutterSmartDashesType.fromJson)
    ..register('f:1:SmartDashesType.enabled', FlutterSmartDashesType.fromJson)
    ..register('f:1:SmartQuotesType.disabled', FlutterSmartQuotesType.fromJson)
    ..register('f:1:SmartQuotesType.enabled', FlutterSmartQuotesType.fromJson)
    ..register('f:1:SnackBar', FlutterSnackBar.fromJson)
    ..register('f:1:SnackBarAction', FlutterSnackBarAction.fromJson)
    ..register('f:1:SnackBarBehavior.fixed', FlutterSnackBarBehavior.fromJson)
    ..register(
        'f:1:SnackBarBehavior.floating', FlutterSnackBarBehavior.fromJson)
    ..register('f:1:Spacer', FlutterSpacer.fromJson)
    ..register('f:1:Stack', FlutterStack.fromJson)
    ..register('f:1:StackFit.expand', FlutterStackFit.fromJson)
    ..register('f:1:StackFit.loose', FlutterStackFit.fromJson)
    ..register('f:1:StackFit.passthrough', FlutterStackFit.fromJson)
    ..register('f:1:StrutStyle', FlutterStrutStyle.fromJson)
    ..register('f:1:StrutStyle.fromTextStyle', FlutterStrutStyle.fromJson)
    ..register('f:1:SystemUiOverlayStyle', FlutterSystemUiOverlayStyle.fromJson)
    ..register('f:1:Text', FlutterText.fromJson)
    ..register('f:1:TextAlign.center', FlutterTextAlign.fromJson)
    ..register('f:1:TextAlign.end', FlutterTextAlign.fromJson)
    ..register('f:1:TextAlign.justify', FlutterTextAlign.fromJson)
    ..register('f:1:TextAlign.left', FlutterTextAlign.fromJson)
    ..register('f:1:TextAlign.right', FlutterTextAlign.fromJson)
    ..register('f:1:TextAlign.start', FlutterTextAlign.fromJson)
    ..register('f:1:TextAlignVertical', FlutterTextAlignVertical.fromJson)
    ..register(
        'f:1:TextAlignVertical.bottom', FlutterTextAlignVertical.fromJson)
    ..register(
        'f:1:TextAlignVertical.center', FlutterTextAlignVertical.fromJson)
    ..register('f:1:TextAlignVertical.top', FlutterTextAlignVertical.fromJson)
    ..register('f:1:TextBaseline.alphabetic', FlutterTextBaseline.fromJson)
    ..register('f:1:TextBaseline.ideographic', FlutterTextBaseline.fromJson)
    ..register('f:1:TextButton', FlutterTextButton.fromJson)
    ..register('f:1:TextButton.icon', FlutterTextButton.fromJson)
    ..register(
        'f:1:TextCapitalization.characters', FlutterTextCapitalization.fromJson)
    ..register(
        'f:1:TextCapitalization.none', FlutterTextCapitalization.fromJson)
    ..register(
        'f:1:TextCapitalization.sentences', FlutterTextCapitalization.fromJson)
    ..register(
        'f:1:TextCapitalization.words', FlutterTextCapitalization.fromJson)
    ..register('f:1:TextDecoration.lineThrough', FlutterTextDecoration.fromJson)
    ..register('f:1:TextDecoration.none', FlutterTextDecoration.fromJson)
    ..register('f:1:TextDecoration.overline', FlutterTextDecoration.fromJson)
    ..register('f:1:TextDecoration.underline', FlutterTextDecoration.fromJson)
    ..register(
        'f:1:TextDecorationStyle.dashed', FlutterTextDecorationStyle.fromJson)
    ..register(
        'f:1:TextDecorationStyle.dotted', FlutterTextDecorationStyle.fromJson)
    ..register(
        'f:1:TextDecorationStyle.double', FlutterTextDecorationStyle.fromJson)
    ..register(
        'f:1:TextDecorationStyle.solid', FlutterTextDecorationStyle.fromJson)
    ..register(
        'f:1:TextDecorationStyle.wavy', FlutterTextDecorationStyle.fromJson)
    ..register('f:1:TextDirection.ltr', FlutterTextDirection.fromJson)
    ..register('f:1:TextDirection.rtl', FlutterTextDirection.fromJson)
    ..register('f:1:TextField', FlutterTextField.fromJson)
    ..register('f:1:TextHeightBehavior', FlutterTextHeightBehavior.fromJson)
    ..register(
        'f:1:TextInputAction.continueAction', FlutterTextInputAction.fromJson)
    ..register('f:1:TextInputAction.done', FlutterTextInputAction.fromJson)
    ..register(
        'f:1:TextInputAction.emergencyCall', FlutterTextInputAction.fromJson)
    ..register('f:1:TextInputAction.go', FlutterTextInputAction.fromJson)
    ..register('f:1:TextInputAction.join', FlutterTextInputAction.fromJson)
    ..register('f:1:TextInputAction.newline', FlutterTextInputAction.fromJson)
    ..register('f:1:TextInputAction.next', FlutterTextInputAction.fromJson)
    ..register('f:1:TextInputAction.none', FlutterTextInputAction.fromJson)
    ..register('f:1:TextInputAction.previous', FlutterTextInputAction.fromJson)
    ..register('f:1:TextInputAction.route', FlutterTextInputAction.fromJson)
    ..register('f:1:TextInputAction.search', FlutterTextInputAction.fromJson)
    ..register('f:1:TextInputAction.send', FlutterTextInputAction.fromJson)
    ..register(
        'f:1:TextInputAction.unspecified', FlutterTextInputAction.fromJson)
    ..register('f:1:TextInputType.datetime', FlutterTextInputType.fromJson)
    ..register('f:1:TextInputType.emailAddress', FlutterTextInputType.fromJson)
    ..register('f:1:TextInputType.multiline', FlutterTextInputType.fromJson)
    ..register('f:1:TextInputType.name', FlutterTextInputType.fromJson)
    ..register('f:1:TextInputType.none', FlutterTextInputType.fromJson)
    ..register('f:1:TextInputType.number', FlutterTextInputType.fromJson)
    ..register('f:1:TextInputType.phone', FlutterTextInputType.fromJson)
    ..register('f:1:TextInputType.streetAddress', FlutterTextInputType.fromJson)
    ..register('f:1:TextInputType.text', FlutterTextInputType.fromJson)
    ..register('f:1:TextInputType.url', FlutterTextInputType.fromJson)
    ..register(
        'f:1:TextInputType.visiblePassword', FlutterTextInputType.fromJson)
    ..register('f:1:TextLeadingDistribution.even',
        FlutterTextLeadingDistribution.fromJson)
    ..register('f:1:TextLeadingDistribution.proportional',
        FlutterTextLeadingDistribution.fromJson)
    ..register('f:1:TextOverflow.clip', FlutterTextOverflow.fromJson)
    ..register('f:1:TextOverflow.ellipsis', FlutterTextOverflow.fromJson)
    ..register('f:1:TextOverflow.fade', FlutterTextOverflow.fromJson)
    ..register('f:1:TextOverflow.visible', FlutterTextOverflow.fromJson)
    ..register('f:1:TextStyle', FlutterTextStyle.fromJson)
    ..register('f:1:TextWidthBasis.longestLine', FlutterTextWidthBasis.fromJson)
    ..register('f:1:TextWidthBasis.parent', FlutterTextWidthBasis.fromJson)
    ..register('f:1:UnconstrainedBox', FlutterUnconstrainedBox.fromJson)
    ..register('f:1:UnderlineInputBorder', FlutterUnderlineInputBorder.fromJson)
    ..register('f:1:ValueKey', FlutterValueKey.fromJson)
    ..register('f:1:VerticalDirection.down', FlutterVerticalDirection.fromJson)
    ..register('f:1:VerticalDirection.up', FlutterVerticalDirection.fromJson)
    ..register('f:1:Wrap', FlutterWrap.fromJson)
    ..register('f:1:WrapAlignment.center', FlutterWrapAlignment.fromJson)
    ..register('f:1:WrapAlignment.end', FlutterWrapAlignment.fromJson)
    ..register('f:1:WrapAlignment.spaceAround', FlutterWrapAlignment.fromJson)
    ..register('f:1:WrapAlignment.spaceBetween', FlutterWrapAlignment.fromJson)
    ..register('f:1:WrapAlignment.spaceEvenly', FlutterWrapAlignment.fromJson)
    ..register('f:1:WrapAlignment.start', FlutterWrapAlignment.fromJson)
    ..register(
        'f:1:WrapCrossAlignment.center', FlutterWrapCrossAlignment.fromJson)
    ..register('f:1:WrapCrossAlignment.end', FlutterWrapCrossAlignment.fromJson)
    ..register(
        'f:1:WrapCrossAlignment.start', FlutterWrapCrossAlignment.fromJson)
    ..register('f:1:showDialog', FlutterDialogActions.fromJson)
    ..register('z:1:Completer<void>.complete', ZacCompleterActions.fromJson)
    ..register('z:1:Completer<void>.provide', ZacCompleterVoidProvider.fromJson)
    ..register('z:1:ControlFlowAction.if', ZacControlFlowAction.fromJson)
    ..register('z:1:ExecuteActions.listen', ZacExecuteActionsBuilder.fromJson)
    ..register('z:1:ExecuteActions.once', ZacExecuteActionsBuilder.fromJson)
    ..register('z:1:GlobalKey<NavigatorState>.provide',
        FlutterGlobalKeyNavigatorStateProvider.fromJson)
    ..register('z:1:GlobalKey<ScaffoldMessengerState>.provide',
        FlutterGlobalKeyScaffoldMessengerStateProvider.fromJson)
    ..register('z:1:List<Widget>.provide', SharedValueProviderBuilder.fromJson)
    ..register('z:1:List<Widget>.updateShared', SharedValueActions.fromJson)
    ..register(
        'z:1:Map<String, Widget>.provide', SharedValueProviderBuilder.fromJson)
    ..register(
        'z:1:Navigator.popUntilRouteName', FlutterNavigatorActions.fromJson)
    ..register('z:1:NavigatorState.shared', FlutterNavigatorState.fromJson)
    ..register('z:1:Object.provide', SharedValueProviderBuilder.fromJson)
    ..register('z:1:ScrollController.provide', FlutterScrollController.fromJson)
    ..register('z:1:SharedValue.invalidate', SharedValueActions.fromJson)
    ..register(
        'z:1:SharedValue.transformCurrentValue', SharedValueActions.fromJson)
    ..register('z:1:SharedValue.update', SharedValueActions.fromJson)
    ..register('z:1:SharedValue.updateFromPayload', SharedValueActions.fromJson)
    ..register(
        'z:1:StateMachine.provide', ZacStateMachineProviderBuilder.fromJson)
    ..register('z:1:StateMachine:Action.send', ZacStateMachineActions.fromJson)
    ..register(
        'z:1:StateMachine:Action.trySend', ZacStateMachineActions.fromJson)
    ..register('z:1:StateMachine:BuildState',
        ZacStateMachineBuildStateBuilder.fromJson)
    ..register('z:1:StateMachine:Transformer.pickContext',
        ZacStateMachineTransformer.fromJson)
    ..register('z:1:StateMachine:Transformer.pickState',
        ZacStateMachineTransformer.fromJson)
    ..register('z:1:String.provide', SharedValueProviderBuilder.fromJson)
    ..register('z:1:Transformer:ActionPayload.toList',
        ZacActionPayloadTransformer.fromJson)
    ..register('z:1:Transformer:ActionPayload.toObject',
        ZacActionPayloadTransformer.fromJson)
    ..register('z:1:Transformer:Bool.negate', BoolTransformer.fromJson)
    ..register(
        'z:1:Transformer:Iterable.contains', IterableTransformer.fromJson)
    ..register(
        'z:1:Transformer:Iterable.elementAt', IterableTransformer.fromJson)
    ..register('z:1:Transformer:Iterable.first', IterableTransformer.fromJson)
    ..register('z:1:Transformer:Iterable.isEmpty', IterableTransformer.fromJson)
    ..register(
        'z:1:Transformer:Iterable.isNotEmpty', IterableTransformer.fromJson)
    ..register('z:1:Transformer:Iterable.join', IterableTransformer.fromJson)
    ..register('z:1:Transformer:Iterable.last', IterableTransformer.fromJson)
    ..register('z:1:Transformer:Iterable.length', IterableTransformer.fromJson)
    ..register('z:1:Transformer:Iterable.map', IterableTransformer.fromJson)
    ..register('z:1:Transformer:Iterable.single', IterableTransformer.fromJson)
    ..register('z:1:Transformer:Iterable.skip', IterableTransformer.fromJson)
    ..register('z:1:Transformer:Iterable.take', IterableTransformer.fromJson)
    ..register('z:1:Transformer:Iterable.toList', IterableTransformer.fromJson)
    ..register('z:1:Transformer:Iterable.toSet', IterableTransformer.fromJson)
    ..register(
        'z:1:Transformer:Iterable.toString', IterableTransformer.fromJson)
    ..register('z:1:Transformer:Json.decode', JsonTransformer.fromJson)
    ..register('z:1:Transformer:Json.encode', JsonTransformer.fromJson)
    ..register('z:1:Transformer:List.add', ListTransformer.fromJson)
    ..register('z:1:Transformer:List.reversed', ListTransformer.fromJson)
    ..register('z:1:Transformer:Map.containsKey', MapTransformer.fromJson)
    ..register('z:1:Transformer:Map.containsValue', MapTransformer.fromJson)
    ..register('z:1:Transformer:Map.entries', MapTransformer.fromJson)
    ..register('z:1:Transformer:Map.isEmpty', MapTransformer.fromJson)
    ..register('z:1:Transformer:Map.isNotEmpty', MapTransformer.fromJson)
    ..register('z:1:Transformer:Map.keys', MapTransformer.fromJson)
    ..register('z:1:Transformer:Map.length', MapTransformer.fromJson)
    ..register('z:1:Transformer:Map.map', MapTransformer.fromJson)
    ..register('z:1:Transformer:Map.setValueForKey', MapTransformer.fromJson)
    ..register('z:1:Transformer:Map.values', MapTransformer.fromJson)
    ..register(
        'z:1:Transformer:Map<Object, Object>.from', MapTransformer.fromJson)
    ..register(
        'z:1:Transformer:Map<String, Object>.from', MapTransformer.fromJson)
    ..register(
        'z:1:Transformer:Map<String, Object?>.from', MapTransformer.fromJson)
    ..register('z:1:Transformer:Map[key]', MapTransformer.fromJson)
    ..register('z:1:Transformer:Object.equals', ObjectTransformer.fromJson)
    ..register(
        'z:1:Transformer:Object.equalsSharedValue', ObjectTransformer.fromJson)
    ..register('z:1:Transformer:Object.hashCode', ObjectTransformer.fromJson)
    ..register(
        'z:1:Transformer:Object.isActionPayload', ObjectTransformer.fromJson)
    ..register('z:1:Transformer:Object.isBool', ObjectTransformer.fromJson)
    ..register('z:1:Transformer:Object.isDouble', ObjectTransformer.fromJson)
    ..register('z:1:Transformer:Object.isInt', ObjectTransformer.fromJson)
    ..register('z:1:Transformer:Object.isList', ObjectTransformer.fromJson)
    ..register('z:1:Transformer:Object.isMap', ObjectTransformer.fromJson)
    ..register('z:1:Transformer:Object.isNull', ObjectTransformer.fromJson)
    ..register('z:1:Transformer:Object.isString', ObjectTransformer.fromJson)
    ..register('z:1:Transformer:Object.runtimeType', ObjectTransformer.fromJson)
    ..register('z:1:Transformer:Object.toString', ObjectTransformer.fromJson)
    ..register('z:1:Transformer:String.isEmpty', StringTransformer.fromJson)
    ..register('z:1:Transformer:String.isNotEmpty', StringTransformer.fromJson)
    ..register('z:1:Transformer:String.length', StringTransformer.fromJson)
    ..register('z:1:Transformer:String.replaceAll', StringTransformer.fromJson)
    ..register('z:1:Transformer:String.split', StringTransformer.fromJson)
    ..register('z:1:Transformer:int.decr', IntTransformer.fromJson)
    ..register('z:1:Transformer:int.incr', IntTransformer.fromJson)
    ..register('z:1:Transformer:int.parse', IntTransformer.fromJson)
    ..register('z:1:Transformer:int.tryParse', IntTransformer.fromJson)
    ..register('z:1:Transformer:num.abs', NumTransformer.fromJson)
    ..register('z:1:Transformer:num.ceil', NumTransformer.fromJson)
    ..register('z:1:Transformer:num.ceilToDouble', NumTransformer.fromJson)
    ..register('z:1:Transformer:num.floor', NumTransformer.fromJson)
    ..register('z:1:Transformer:num.floorToDouble', NumTransformer.fromJson)
    ..register('z:1:Transformer:num.isFinite', NumTransformer.fromJson)
    ..register('z:1:Transformer:num.isInfinite', NumTransformer.fromJson)
    ..register('z:1:Transformer:num.isNan', NumTransformer.fromJson)
    ..register('z:1:Transformer:num.isNegative', NumTransformer.fromJson)
    ..register('z:1:Transformer:num.round', NumTransformer.fromJson)
    ..register('z:1:Transformer:num.roundToDouble', NumTransformer.fromJson)
    ..register('z:1:Transformer:num.toDouble', NumTransformer.fromJson)
    ..register('z:1:Transformer:num.toInt', NumTransformer.fromJson)
    ..register('z:1:Widget', ZacWidgetBuilder.fromJson)
    ..register('z:1:Widget.isolate', ZacWidgetBuilder.fromJson)
    ..register('z:1:Widget.provide', SharedValueProviderBuilder.fromJson)
    ..register('z:1:Widget.updateShared', SharedValueActions.fromJson)
    ..register(
        'z:1:ZacBuilder<Object>.provide', SharedValueProviderBuilder.fromJson)
    ..register(
        'z:1:ZacBuilder<Object>.updateShared', SharedValueActions.fromJson)
    ..register('z:1:ZacValue.asActionPayload', ZacValueActions.fromJson)
    ..register('z:1:bool.provide', SharedValueProviderBuilder.fromJson)
    ..register('z:1:double.provide', SharedValueProviderBuilder.fromJson)
    ..register('z:1:int.provide', SharedValueProviderBuilder.fromJson)
    ..register('z:1:null.provide', SharedValueProviderBuilder.fromJson)
    ..register('z:1:null.updateShared', SharedValueActions.fromJson);
}
