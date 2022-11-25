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
import 'package:zac/src/zac/flutter/navigator.dart';
import 'package:zac/src/zac/shared_value.dart';
import 'package:zac/src/zac/state_machine.dart';
import 'package:zac/src/zac/transformers.dart';
import 'package:zac/src/zac/update_widget.dart';
import 'package:zac/src/zac/widget.dart';
import 'package:zac/src/zac/zac_value.dart';

Map<String, Object Function(Map<String, dynamic> data)> zacConverter = const {
  'f:1:AlertDialog': FlutterDialogs.fromJson,
  'f:1:Align': FlutterAlign.fromJson,
  'f:1:Alignment': FlutterAlignment.fromJson,
  'f:1:Alignment.bottomCenter': FlutterAlignment.fromJson,
  'f:1:Alignment.bottomLeft': FlutterAlignment.fromJson,
  'f:1:Alignment.bottomRight': FlutterAlignment.fromJson,
  'f:1:Alignment.center': FlutterAlignment.fromJson,
  'f:1:Alignment.centerLeft': FlutterAlignment.fromJson,
  'f:1:Alignment.centerRight': FlutterAlignment.fromJson,
  'f:1:Alignment.topCenter': FlutterAlignment.fromJson,
  'f:1:Alignment.topLeft': FlutterAlignment.fromJson,
  'f:1:Alignment.topRight': FlutterAlignment.fromJson,
  'f:1:AlignmentDirectional': FlutterAlignmentDirectional.fromJson,
  'f:1:AlignmentDirectional.bottomCenter': FlutterAlignmentDirectional.fromJson,
  'f:1:AlignmentDirectional.bottomEnd': FlutterAlignmentDirectional.fromJson,
  'f:1:AlignmentDirectional.bottomStart': FlutterAlignmentDirectional.fromJson,
  'f:1:AlignmentDirectional.center': FlutterAlignmentDirectional.fromJson,
  'f:1:AlignmentDirectional.centerEnd': FlutterAlignmentDirectional.fromJson,
  'f:1:AlignmentDirectional.centerStart': FlutterAlignmentDirectional.fromJson,
  'f:1:AlignmentDirectional.topCenter': FlutterAlignmentDirectional.fromJson,
  'f:1:AlignmentDirectional.topEnd': FlutterAlignmentDirectional.fromJson,
  'f:1:AlignmentDirectional.topStart': FlutterAlignmentDirectional.fromJson,
  'f:1:AlwaysScrollableScrollPhysics': FlutterScrollPhysics.fromJson,
  'f:1:AppBar': FlutterAppBar.fromJson,
  'f:1:AspectRatio': FlutterAspectRatio.fromJson,
  'f:1:Axis.horizontal': FlutterAxis.fromJson,
  'f:1:Axis.vertical': FlutterAxis.fromJson,
  'f:1:BlendMode.clear': FlutterBlendMode.fromJson,
  'f:1:BlendMode.color': FlutterBlendMode.fromJson,
  'f:1:BlendMode.colorBurn': FlutterBlendMode.fromJson,
  'f:1:BlendMode.colorDodge': FlutterBlendMode.fromJson,
  'f:1:BlendMode.darken': FlutterBlendMode.fromJson,
  'f:1:BlendMode.difference': FlutterBlendMode.fromJson,
  'f:1:BlendMode.dst': FlutterBlendMode.fromJson,
  'f:1:BlendMode.dstATop': FlutterBlendMode.fromJson,
  'f:1:BlendMode.dstIn': FlutterBlendMode.fromJson,
  'f:1:BlendMode.dstOut': FlutterBlendMode.fromJson,
  'f:1:BlendMode.dstOver': FlutterBlendMode.fromJson,
  'f:1:BlendMode.exclusion': FlutterBlendMode.fromJson,
  'f:1:BlendMode.hardLight': FlutterBlendMode.fromJson,
  'f:1:BlendMode.hue': FlutterBlendMode.fromJson,
  'f:1:BlendMode.lighten': FlutterBlendMode.fromJson,
  'f:1:BlendMode.luminosity': FlutterBlendMode.fromJson,
  'f:1:BlendMode.modulate': FlutterBlendMode.fromJson,
  'f:1:BlendMode.multiply': FlutterBlendMode.fromJson,
  'f:1:BlendMode.overlay': FlutterBlendMode.fromJson,
  'f:1:BlendMode.plus': FlutterBlendMode.fromJson,
  'f:1:BlendMode.saturation': FlutterBlendMode.fromJson,
  'f:1:BlendMode.screen': FlutterBlendMode.fromJson,
  'f:1:BlendMode.softLight': FlutterBlendMode.fromJson,
  'f:1:BlendMode.src': FlutterBlendMode.fromJson,
  'f:1:BlendMode.srcATop': FlutterBlendMode.fromJson,
  'f:1:BlendMode.srcIn': FlutterBlendMode.fromJson,
  'f:1:BlendMode.srcOut': FlutterBlendMode.fromJson,
  'f:1:BlendMode.srcOver': FlutterBlendMode.fromJson,
  'f:1:BlendMode.xor': FlutterBlendMode.fromJson,
  'f:1:BlurSyle.inner': FlutterBlurStyle.fromJson,
  'f:1:BlurSyle.normal': FlutterBlurStyle.fromJson,
  'f:1:BlurSyle.outer': FlutterBlurStyle.fromJson,
  'f:1:BlurSyle.solid': FlutterBlurStyle.fromJson,
  'f:1:Border': FlutterBorder.fromJson,
  'f:1:Border.all': FlutterBorder.fromJson,
  'f:1:BorderDirectional': FlutterBorderDirectional.fromJson,
  'f:1:BorderRadius.all': FlutterBorderRadius.fromJson,
  'f:1:BorderRadius.circular': FlutterBorderRadius.fromJson,
  'f:1:BorderRadius.horizontal': FlutterBorderRadius.fromJson,
  'f:1:BorderSide': FlutterBorderSide.fromJson,
  'f:1:BorderStyle.none': FlutterBorderStyle.fromJson,
  'f:1:BorderStyle.solid': FlutterBorderStyle.fromJson,
  'f:1:BouncingScrollPhysics': FlutterScrollPhysics.fromJson,
  'f:1:BoxConstraints': FlutterBoxConstraints.fromJson,
  'f:1:BoxConstraints.expand': FlutterBoxConstraints.fromJson,
  'f:1:BoxConstraints.loose': FlutterBoxConstraints.fromJson,
  'f:1:BoxConstraints.tight': FlutterBoxConstraints.fromJson,
  'f:1:BoxConstraints.tightFor': FlutterBoxConstraints.fromJson,
  'f:1:BoxConstraints.tightForFinite': FlutterBoxConstraints.fromJson,
  'f:1:BoxDecoration': FlutterBoxDecoration.fromJson,
  'f:1:BoxFit.contain': FlutterBoxFit.fromJson,
  'f:1:BoxFit.cover': FlutterBoxFit.fromJson,
  'f:1:BoxFit.fill': FlutterBoxFit.fromJson,
  'f:1:BoxFit.fitHeight': FlutterBoxFit.fromJson,
  'f:1:BoxFit.fitWidth': FlutterBoxFit.fromJson,
  'f:1:BoxFit.none': FlutterBoxFit.fromJson,
  'f:1:BoxFit.scaleDown': FlutterBoxFit.fromJson,
  'f:1:BoxHeightStyle.includeLineSpacingBottom': FlutterBoxHeightStyle.fromJson,
  'f:1:BoxHeightStyle.includeLineSpacingMiddle': FlutterBoxHeightStyle.fromJson,
  'f:1:BoxHeightStyle.includeLineSpacingTop': FlutterBoxHeightStyle.fromJson,
  'f:1:BoxHeightStyle.max': FlutterBoxHeightStyle.fromJson,
  'f:1:BoxHeightStyle.strut': FlutterBoxHeightStyle.fromJson,
  'f:1:BoxHeightStyle.tight': FlutterBoxHeightStyle.fromJson,
  'f:1:BoxShadow': FlutterBoxShadow.fromJson,
  'f:1:BoxShape.circle': FlutterBoxShape.fromJson,
  'f:1:BoxShape.rectangle': FlutterBoxShape.fromJson,
  'f:1:BoxWidthStyle.max': FlutterBoxWidthStyle.fromJson,
  'f:1:BoxWidthStyle.tight': FlutterBoxWidthStyle.fromJson,
  'f:1:Brightness.dark': FlutterBrightness.fromJson,
  'f:1:Brightness.light': FlutterBrightness.fromJson,
  'f:1:Builder': FlutterBuilder.fromJson,
  'f:1:ButtonBar': FlutterButtonBar.fromJson,
  'f:1:Card': FlutterCard.fromJson,
  'f:1:Center': FlutterCenter.fromJson,
  'f:1:CircleBorder': FlutterCircleBorder.fromJson,
  'f:1:CircularProgressIndicator': FlutterProgressIndicator.fromJson,
  'f:1:ClampingScrollPhysics': FlutterScrollPhysics.fromJson,
  'f:1:Clip.antiAlias': FlutterClip.fromJson,
  'f:1:Clip.hardEdge': FlutterClip.fromJson,
  'f:1:Clip.none': FlutterClip.fromJson,
  'f:1:ClipOval': FlutterClipOval.fromJson,
  'f:1:ClipRect': FlutterClipRect.fromJson,
  'f:1:Color.fromARGB': FlutterColor.fromJson,
  'f:1:Color.fromRGBO': FlutterColor.fromJson,
  'f:1:Column': FlutterColumn.fromJson,
  'f:1:ConstrainedBox': FlutterConstrainedBox.fromJson,
  'f:1:Container': FlutterContainer.fromJson,
  'f:1:CrossAxisAlignment.baseline': FlutterCrossAxisAlignment.fromJson,
  'f:1:CrossAxisAlignment.center': FlutterCrossAxisAlignment.fromJson,
  'f:1:CrossAxisAlignment.end': FlutterCrossAxisAlignment.fromJson,
  'f:1:CrossAxisAlignment.start': FlutterCrossAxisAlignment.fromJson,
  'f:1:CrossAxisAlignment.stretch': FlutterCrossAxisAlignment.fromJson,
  'f:1:CustomScrollView': FlutterCustomScrollView.fromJson,
  'f:1:DecoratedBox': FlutterDecoratedBox.fromJson,
  'f:1:DecorationPosition.background': FlutterDecorationPosition.fromJson,
  'f:1:DecorationPosition.foreground': FlutterDecorationPosition.fromJson,
  'f:1:Dialog': FlutterDialogs.fromJson,
  'f:1:Divider': FlutterDivider.fromJson,
  'f:1:Drawer': FlutterDrawer.fromJson,
  'f:1:EdgeInsets.all': FlutterEdgeInsets.fromJson,
  'f:1:EdgeInsets.only': FlutterEdgeInsets.fromJson,
  'f:1:EdgeInsets.symmetric': FlutterEdgeInsets.fromJson,
  'f:1:EdgeInsetsDirectional.all': FlutterEdgeInsetsDirectional.fromJson,
  'f:1:EdgeInsetsDirectional.only': FlutterEdgeInsetsDirectional.fromJson,
  'f:1:ElevatedButton': FlutterElevatedButton.fromJson,
  'f:1:ElevatedButton.icon': FlutterElevatedButton.fromJson,
  'f:1:Expanded': FlutterExpanded.fromJson,
  'f:1:FilterQuality.high': FlutterFilterQuality.fromJson,
  'f:1:FilterQuality.low': FlutterFilterQuality.fromJson,
  'f:1:FilterQuality.medium': FlutterFilterQuality.fromJson,
  'f:1:FilterQuality.none': FlutterFilterQuality.fromJson,
  'f:1:FittedBox': FlutterFittedBox.fromJson,
  'f:1:FlexFit.loose': FlutterFlexFit.fromJson,
  'f:1:FlexFit.tight': FlutterFlexFit.fromJson,
  'f:1:Flexible': FlutterFlexible.fromJson,
  'f:1:FontFeature': FlutterFontFeature.fromJson,
  'f:1:FontFeature.alternative': FlutterFontFeature.fromJson,
  'f:1:FontFeature.alternativeFractions': FlutterFontFeature.fromJson,
  'f:1:FontFeature.caseSensitiveForms': FlutterFontFeature.fromJson,
  'f:1:FontFeature.characterVariant': FlutterFontFeature.fromJson,
  'f:1:FontFeature.contextualAlternates': FlutterFontFeature.fromJson,
  'f:1:FontFeature.denominator': FlutterFontFeature.fromJson,
  'f:1:FontFeature.disable': FlutterFontFeature.fromJson,
  'f:1:FontFeature.enable': FlutterFontFeature.fromJson,
  'f:1:FontFeature.fractions': FlutterFontFeature.fromJson,
  'f:1:FontFeature.historicalForms': FlutterFontFeature.fromJson,
  'f:1:FontFeature.historicalLigatures': FlutterFontFeature.fromJson,
  'f:1:FontFeature.liningFigures': FlutterFontFeature.fromJson,
  'f:1:FontFeature.localeAware': FlutterFontFeature.fromJson,
  'f:1:FontFeature.notationalForms': FlutterFontFeature.fromJson,
  'f:1:FontFeature.numerators': FlutterFontFeature.fromJson,
  'f:1:FontFeature.oldstyleFigures': FlutterFontFeature.fromJson,
  'f:1:FontFeature.ordinalForms': FlutterFontFeature.fromJson,
  'f:1:FontFeature.proportionalFigures': FlutterFontFeature.fromJson,
  'f:1:FontFeature.randomize': FlutterFontFeature.fromJson,
  'f:1:FontFeature.scientificInferiors': FlutterFontFeature.fromJson,
  'f:1:FontFeature.slashedZero': FlutterFontFeature.fromJson,
  'f:1:FontFeature.stylisticAlternates': FlutterFontFeature.fromJson,
  'f:1:FontFeature.stylisticSet': FlutterFontFeature.fromJson,
  'f:1:FontFeature.subscripts': FlutterFontFeature.fromJson,
  'f:1:FontFeature.superscripts': FlutterFontFeature.fromJson,
  'f:1:FontFeature.swash': FlutterFontFeature.fromJson,
  'f:1:FontFeature.tabularFigures': FlutterFontFeature.fromJson,
  'f:1:FontStyle.italic': FlutterFontStyle.fromJson,
  'f:1:FontStyle.normal': FlutterFontStyle.fromJson,
  'f:1:FontWeight.bold': FlutterFontWeight.fromJson,
  'f:1:FontWeight.normal': FlutterFontWeight.fromJson,
  'f:1:FontWeight.w100': FlutterFontWeight.fromJson,
  'f:1:FontWeight.w200': FlutterFontWeight.fromJson,
  'f:1:FontWeight.w300': FlutterFontWeight.fromJson,
  'f:1:FontWeight.w400': FlutterFontWeight.fromJson,
  'f:1:FontWeight.w500': FlutterFontWeight.fromJson,
  'f:1:FontWeight.w600': FlutterFontWeight.fromJson,
  'f:1:FontWeight.w700': FlutterFontWeight.fromJson,
  'f:1:FontWeight.w800': FlutterFontWeight.fromJson,
  'f:1:FontWeight.w900': FlutterFontWeight.fromJson,
  'f:1:FractionalOffset': FlutterFractionalOffset.fromJson,
  'f:1:FractionalTranslation': FlutterFractionalTranslation.fromJson,
  'f:1:FractionallySizedBox': FlutterFractionallySizedBox.fromJson,
  'f:1:GestureDetector': FlutterGestureDetector.fromJson,
  'f:1:GridView': FlutterGridView.fromJson,
  'f:1:HitTestBehavior.deferToChild': FlutterHitTestBehavior.fromJson,
  'f:1:HitTestBehavior.opaque': FlutterHitTestBehavior.fromJson,
  'f:1:HitTestBehavior.translucent': FlutterHitTestBehavior.fromJson,
  'f:1:Icon': FlutterIcon.fromJson,
  'f:1:IconData': FlutterIconData.fromJson,
  'f:1:IconThemeData': FlutterIconThemeData.fromJson,
  'f:1:IgnorePointer': FlutterIgnorePointer.fromJson,
  'f:1:Image.asset': FlutterImage.fromJson,
  'f:1:Image.network': FlutterImage.fromJson,
  'f:1:ImageRepeat.noRepeat': FlutterImageRepeat.fromJson,
  'f:1:ImageRepeat.repeat': FlutterImageRepeat.fromJson,
  'f:1:ImageRepeat.repeatX': FlutterImageRepeat.fromJson,
  'f:1:ImageRepeat.repeatY': FlutterImageRepeat.fromJson,
  'f:1:IndexedStack': FlutterIndexedStack.fromJson,
  'f:1:InputDecoration': FlutterInputDecoration.fromJson,
  'f:1:InteractiveViewer': FlutterInteractiveViewer.fromJson,
  'f:1:IntrinsicHeight': FlutterIntrinsicHeight.fromJson,
  'f:1:IntrinsicWidth': FlutterIntrinsicWidth.fromJson,
  'f:1:LimitedBox': FlutterLimitedBox.fromJson,
  'f:1:LinearProgressIndicator': FlutterProgressIndicator.fromJson,
  'f:1:ListTile': FlutterListTile.fromJson,
  'f:1:ListView': FlutterListView.fromJson,
  'f:1:Locale': FlutterLocale.fromJson,
  'f:1:MainAxisAlignment.center': FlutterMainAxisAlignment.fromJson,
  'f:1:MainAxisAlignment.end': FlutterMainAxisAlignment.fromJson,
  'f:1:MainAxisAlignment.spaceAround': FlutterMainAxisAlignment.fromJson,
  'f:1:MainAxisAlignment.spaceBetween': FlutterMainAxisAlignment.fromJson,
  'f:1:MainAxisAlignment.spaceEvenly': FlutterMainAxisAlignment.fromJson,
  'f:1:MainAxisAlignment.start': FlutterMainAxisAlignment.fromJson,
  'f:1:MainAxisSize.max': FlutterMainAxisSize.fromJson,
  'f:1:MainAxisSize.min': FlutterMainAxisSize.fromJson,
  'f:1:Material': FlutterMaterial.fromJson,
  'f:1:MaterialApp': FlutterMaterialApp.fromJson,
  'f:1:MaterialBanner': FlutterMaterialBanner.fromJson,
  'f:1:MaterialPageRoute': FlutterMaterialPageRoute.fromJson,
  'f:1:Navigator': FlutterNavigator.fromJson,
  'f:1:Navigator.maybePop': FlutterNavigatorActions.fromJson,
  'f:1:Navigator.pop': FlutterNavigatorActions.fromJson,
  'f:1:Navigator.push': FlutterNavigatorActions.fromJson,
  'f:1:Navigator.pushNamed': FlutterNavigatorActions.fromJson,
  'f:1:Navigator.pushReplacement': FlutterNavigatorActions.fromJson,
  'f:1:Navigator.pushReplacementNamed': FlutterNavigatorActions.fromJson,
  'f:1:NavigatorState.closest': FlutterNavigatorState.fromJson,
  'f:1:NavigatorState.root': FlutterNavigatorState.fromJson,
  'f:1:Offset': FlutterOffset.fromJson,
  'f:1:Offset.fromDirection': FlutterOffset.fromJson,
  'f:1:Offstage': FlutterOffstage.fromJson,
  'f:1:Opacity': FlutterOpacity.fromJson,
  'f:1:OutlineInputBorder': FlutterOutlineInputBorder.fromJson,
  'f:1:OutlinedButton': FlutterOutlinedButton.fromJson,
  'f:1:OutlinedButton.icon': FlutterOutlinedButton.fromJson,
  'f:1:OverflowBox': FlutterOverflowBox.fromJson,
  'f:1:Padding': FlutterPadding.fromJson,
  'f:1:PageRouteBuilder': FlutterPageRouteBuilder.fromJson,
  'f:1:Positioned': FlutterPositioned.fromJson,
  'f:1:Positioned.directional': FlutterPositioned.fromJson,
  'f:1:Positioned.fill': FlutterPositioned.fromJson,
  'f:1:Radius.circular': FlutterRadius.fromJson,
  'f:1:Radius.elliptical': FlutterRadius.fromJson,
  'f:1:Rect.fromCenter': FlutterRect.fromJson,
  'f:1:Rect.fromCircle': FlutterRect.fromJson,
  'f:1:Rect.fromLTRB': FlutterRect.fromJson,
  'f:1:Rect.fromLTWH': FlutterRect.fromJson,
  'f:1:Rect.fromPoints': FlutterRect.fromJson,
  'f:1:RefreshIndicator': FlutterRefreshIndicator.fromJson,
  'f:1:RefreshIndicatorTriggerMode.anywhere':
      FlutterRefreshIndicatorTriggerMode.fromJson,
  'f:1:RefreshIndicatorTriggerMode.onEdge':
      FlutterRefreshIndicatorTriggerMode.fromJson,
  'f:1:RotatedBox': FlutterRotatedBox.fromJson,
  'f:1:RoundedRectangleBorder': FlutterRoundedRectangleBorder.fromJson,
  'f:1:RouteSettings': FlutterRouteSettings.fromJson,
  'f:1:Row': FlutterRow.fromJson,
  'f:1:SafeArea': FlutterSafeArea.fromJson,
  'f:1:Scaffold': FlutterScaffold.fromJson,
  'f:1:Scaffold.openDrawer': FlutterScaffoldActions.fromJson,
  'f:1:Scaffold.openEndDrawer': FlutterScaffoldActions.fromJson,
  'f:1:Scaffold.showBodyScrim': FlutterScaffoldActions.fromJson,
  'f:1:Scaffold.showBottomSheet': FlutterScaffoldActions.fromJson,
  'f:1:ScaffoldMessenger.hideCurrentMaterialBanner':
      FlutterScaffoldMessenger.fromJson,
  'f:1:ScaffoldMessenger.hideCurrentSnackBar':
      FlutterScaffoldMessenger.fromJson,
  'f:1:ScaffoldMessenger.removeCurrentMaterialBanner':
      FlutterScaffoldMessenger.fromJson,
  'f:1:ScaffoldMessenger.removeCurrentSnackBar':
      FlutterScaffoldMessenger.fromJson,
  'f:1:ScaffoldMessenger.showMaterialBanner': FlutterScaffoldMessenger.fromJson,
  'f:1:ScaffoldMessenger.showSnackBar': FlutterScaffoldMessenger.fromJson,
  'f:1:ScrollViewKeyboardDismissBehavior.manual':
      FlutterScrollViewKeyboardDismissBehavior.fromJson,
  'f:1:ScrollViewKeyboardDismissBehavior.onDrag':
      FlutterScrollViewKeyboardDismissBehavior.fromJson,
  'f:1:SelectableText': FlutterSelectableText.fromJson,
  'f:1:Shadow': FlutterShadow.fromJson,
  'f:1:ShapeDecoration': FlutterShapeDecoration.fromJson,
  'f:1:SimpleDialog': FlutterDialogs.fromJson,
  'f:1:SimpleDialogOption': FlutterDialogs.fromJson,
  'f:1:SingleChildScrollView': FlutterSingleChildScrollView.fromJson,
  'f:1:Size': FlutterSize.fromJson,
  'f:1:SizedBox': FlutterSizedBox.fromJson,
  'f:1:SizedBox.expand': FlutterSizedBox.fromJson,
  'f:1:SizedBox.fromSize': FlutterSizedBox.fromJson,
  'f:1:SizedBox.shrink': FlutterSizedBox.fromJson,
  'f:1:SizedBox.square': FlutterSizedBox.fromJson,
  'f:1:SizedOverflowBox': FlutterSizedOverflowBox.fromJson,
  'f:1:SliverChildListDelegate': FlutterSliverChildDelegate.fromJson,
  'f:1:SliverChildListDelegate.fixed': FlutterSliverChildDelegate.fromJson,
  'f:1:SliverGrid': FlutterSliverGrid.fromJson,
  'f:1:SliverGridDelegateWithFixedCrossAxisCount':
      FlutterSliverGridDelegate.fromJson,
  'f:1:SliverGridDelegateWithMaxCrossAxisExtent':
      FlutterSliverGridDelegate.fromJson,
  'f:1:SliverList': FlutterSliverList.fromJson,
  'f:1:SliverPadding': FlutterSliverPadding.fromJson,
  'f:1:SliverToBoxAdapter': FlutterSliverToBoxAdapter.fromJson,
  'f:1:SmartDashesType.disabled': FlutterSmartDashesType.fromJson,
  'f:1:SmartDashesType.enabled': FlutterSmartDashesType.fromJson,
  'f:1:SmartQuotesType.disabled': FlutterSmartQuotesType.fromJson,
  'f:1:SmartQuotesType.enabled': FlutterSmartQuotesType.fromJson,
  'f:1:SnackBar': FlutterSnackBar.fromJson,
  'f:1:SnackBarAction': FlutterSnackBarAction.fromJson,
  'f:1:SnackBarBehavior.fixed': FlutterSnackBarBehavior.fromJson,
  'f:1:SnackBarBehavior.floating': FlutterSnackBarBehavior.fromJson,
  'f:1:Spacer': FlutterSpacer.fromJson,
  'f:1:Stack': FlutterStack.fromJson,
  'f:1:StackFit.expand': FlutterStackFit.fromJson,
  'f:1:StackFit.loose': FlutterStackFit.fromJson,
  'f:1:StackFit.passthrough': FlutterStackFit.fromJson,
  'f:1:StrutStyle': FlutterStrutStyle.fromJson,
  'f:1:StrutStyle.fromTextStyle': FlutterStrutStyle.fromJson,
  'f:1:SystemUiOverlayStyle': FlutterSystemUiOverlayStyle.fromJson,
  'f:1:Text': FlutterText.fromJson,
  'f:1:TextAlign.center': FlutterTextAlign.fromJson,
  'f:1:TextAlign.end': FlutterTextAlign.fromJson,
  'f:1:TextAlign.justify': FlutterTextAlign.fromJson,
  'f:1:TextAlign.left': FlutterTextAlign.fromJson,
  'f:1:TextAlign.right': FlutterTextAlign.fromJson,
  'f:1:TextAlign.start': FlutterTextAlign.fromJson,
  'f:1:TextAlignVertical': FlutterTextAlignVertical.fromJson,
  'f:1:TextAlignVertical.bottom': FlutterTextAlignVertical.fromJson,
  'f:1:TextAlignVertical.center': FlutterTextAlignVertical.fromJson,
  'f:1:TextAlignVertical.top': FlutterTextAlignVertical.fromJson,
  'f:1:TextBaseline.alphabetic': FlutterTextBaseline.fromJson,
  'f:1:TextBaseline.ideographic': FlutterTextBaseline.fromJson,
  'f:1:TextButton': FlutterTextButton.fromJson,
  'f:1:TextButton.icon': FlutterTextButton.fromJson,
  'f:1:TextCapitalization.characters': FlutterTextCapitalization.fromJson,
  'f:1:TextCapitalization.none': FlutterTextCapitalization.fromJson,
  'f:1:TextCapitalization.sentences': FlutterTextCapitalization.fromJson,
  'f:1:TextCapitalization.words': FlutterTextCapitalization.fromJson,
  'f:1:TextDecoration.lineThrough': FlutterTextDecoration.fromJson,
  'f:1:TextDecoration.none': FlutterTextDecoration.fromJson,
  'f:1:TextDecoration.overline': FlutterTextDecoration.fromJson,
  'f:1:TextDecoration.underline': FlutterTextDecoration.fromJson,
  'f:1:TextDecorationStyle.dashed': FlutterTextDecorationStyle.fromJson,
  'f:1:TextDecorationStyle.dotted': FlutterTextDecorationStyle.fromJson,
  'f:1:TextDecorationStyle.double': FlutterTextDecorationStyle.fromJson,
  'f:1:TextDecorationStyle.solid': FlutterTextDecorationStyle.fromJson,
  'f:1:TextDecorationStyle.wavy': FlutterTextDecorationStyle.fromJson,
  'f:1:TextDirection.ltr': FlutterTextDirection.fromJson,
  'f:1:TextDirection.rtl': FlutterTextDirection.fromJson,
  'f:1:TextField': FlutterTextField.fromJson,
  'f:1:TextHeightBehavior': FlutterTextHeightBehavior.fromJson,
  'f:1:TextInputAction.continueAction': FlutterTextInputAction.fromJson,
  'f:1:TextInputAction.done': FlutterTextInputAction.fromJson,
  'f:1:TextInputAction.emergencyCall': FlutterTextInputAction.fromJson,
  'f:1:TextInputAction.go': FlutterTextInputAction.fromJson,
  'f:1:TextInputAction.join': FlutterTextInputAction.fromJson,
  'f:1:TextInputAction.newline': FlutterTextInputAction.fromJson,
  'f:1:TextInputAction.next': FlutterTextInputAction.fromJson,
  'f:1:TextInputAction.none': FlutterTextInputAction.fromJson,
  'f:1:TextInputAction.previous': FlutterTextInputAction.fromJson,
  'f:1:TextInputAction.route': FlutterTextInputAction.fromJson,
  'f:1:TextInputAction.search': FlutterTextInputAction.fromJson,
  'f:1:TextInputAction.send': FlutterTextInputAction.fromJson,
  'f:1:TextInputAction.unspecified': FlutterTextInputAction.fromJson,
  'f:1:TextInputType.datetime': FlutterTextInputType.fromJson,
  'f:1:TextInputType.emailAddress': FlutterTextInputType.fromJson,
  'f:1:TextInputType.multiline': FlutterTextInputType.fromJson,
  'f:1:TextInputType.name': FlutterTextInputType.fromJson,
  'f:1:TextInputType.none': FlutterTextInputType.fromJson,
  'f:1:TextInputType.number': FlutterTextInputType.fromJson,
  'f:1:TextInputType.phone': FlutterTextInputType.fromJson,
  'f:1:TextInputType.streetAddress': FlutterTextInputType.fromJson,
  'f:1:TextInputType.text': FlutterTextInputType.fromJson,
  'f:1:TextInputType.url': FlutterTextInputType.fromJson,
  'f:1:TextInputType.visiblePassword': FlutterTextInputType.fromJson,
  'f:1:TextLeadingDistribution.even': FlutterTextLeadingDistribution.fromJson,
  'f:1:TextLeadingDistribution.proportional':
      FlutterTextLeadingDistribution.fromJson,
  'f:1:TextOverflow.clip': FlutterTextOverflow.fromJson,
  'f:1:TextOverflow.ellipsis': FlutterTextOverflow.fromJson,
  'f:1:TextOverflow.fade': FlutterTextOverflow.fromJson,
  'f:1:TextOverflow.visible': FlutterTextOverflow.fromJson,
  'f:1:TextStyle': FlutterTextStyle.fromJson,
  'f:1:TextWidthBasis.longestLine': FlutterTextWidthBasis.fromJson,
  'f:1:TextWidthBasis.parent': FlutterTextWidthBasis.fromJson,
  'f:1:UnconstrainedBox': FlutterUnconstrainedBox.fromJson,
  'f:1:UnderlineInputBorder': FlutterUnderlineInputBorder.fromJson,
  'f:1:ValueKey': FlutterValueKey.fromJson,
  'f:1:VerticalDirection.down': FlutterVerticalDirection.fromJson,
  'f:1:VerticalDirection.up': FlutterVerticalDirection.fromJson,
  'f:1:Wrap': FlutterWrap.fromJson,
  'f:1:WrapAlignment.center': FlutterWrapAlignment.fromJson,
  'f:1:WrapAlignment.end': FlutterWrapAlignment.fromJson,
  'f:1:WrapAlignment.spaceAround': FlutterWrapAlignment.fromJson,
  'f:1:WrapAlignment.spaceBetween': FlutterWrapAlignment.fromJson,
  'f:1:WrapAlignment.spaceEvenly': FlutterWrapAlignment.fromJson,
  'f:1:WrapAlignment.start': FlutterWrapAlignment.fromJson,
  'f:1:WrapCrossAlignment.center': FlutterWrapCrossAlignment.fromJson,
  'f:1:WrapCrossAlignment.end': FlutterWrapCrossAlignment.fromJson,
  'f:1:WrapCrossAlignment.start': FlutterWrapCrossAlignment.fromJson,
  'f:1:showDialog': FlutterDialogActions.fromJson,
  'z:1:Actions': ZacActions.fromJson,
  'z:1:Completer<void>.consume': DartCompleterVoid.fromJson,
  'z:1:CompleterAction.completeVoid': ZacCompleterActions.fromJson,
  'z:1:CompleterProvider.void': ZacCompleterProviderBuilder.fromJson,
  'z:1:ControlFlowAction.if': ZacControlFlowAction.fromJson,
  'z:1:DateTime': ZacDateTime.fromJson,
  'z:1:DateTime.consume': ZacDateTime.fromJson,
  'z:1:ExecuteActions.listen': ZacExecuteActionsBuilder.fromJson,
  'z:1:ExecuteActions.once': ZacExecuteActionsBuilder.fromJson,
  'z:1:FlutterWidget': ZacFlutterWidget.fromJson,
  'z:1:FlutterWidget.consume': ZacFlutterWidget.fromJson,
  'z:1:GlobalKey<NavigatorState>.consume':
      FlutterGlobalKeyNavigatorState.fromJson,
  'z:1:GlobalKey<ScaffoldMessengerState>.consume':
      FlutterGlobalKeyScaffoldMessengerState.fromJson,
  'z:1:List<FlutterWidget>': ZacListOfFlutterWidget.fromJson,
  'z:1:List<FlutterWidget>.consume': ZacListOfFlutterWidget.fromJson,
  'z:1:Navigator.popUntilRouteName': ZacFlutterNavigatorActions.fromJson,
  'z:1:NavigatorState.shared': FlutterNavigatorState.fromJson,
  'z:1:Object': ZacObject.fromJson,
  'z:1:Object.consume': ZacObject.fromJson,
  'z:1:ProvideKey:GlobalKey<NavigatorState>': ZacProvideFlutterKey.fromJson,
  'z:1:ProvideKey:GlobalKey<ScaffoldMessengerState>':
      ZacProvideFlutterKey.fromJson,
  'z:1:RouteFactoryFromRoutes': RouteFactoryFromRoutes.fromJson,
  'z:1:RouteFactoryRouteConfig': RouteFactoryRouteConfig.fromJson,
  'z:1:RouteFactorySingleRoute': RouteFactorySingleRoute.fromJson,
  'z:1:ScrollController.consume': FlutterScrollController.fromJson,
  'z:1:SharedValue.invalidate': SharedValueActions.fromJson,
  'z:1:SharedValue.provide': SharedValueProviderBuilder.fromJson,
  'z:1:SharedValue.update': SharedValueActions.fromJson,
  'z:1:SharedValueConsume.read': SharedValueConsumeType.fromJson,
  'z:1:SharedValueConsume.watch': SharedValueConsumeType.fromJson,
  'z:1:StateMachine.provide': ZacStateMachineProviderBuilder.fromJson,
  'z:1:StateMachine:Action.send': ZacStateMachineActions.fromJson,
  'z:1:StateMachine:Action.trySend': ZacStateMachineActions.fromJson,
  'z:1:StateMachine:BuildState': ZacStateMachineBuildStateBuilder.fromJson,
  'z:1:StateMachine:StateConfig': ZacStateConfig.fromJson,
  'z:1:StateMachine:Transformer.pickContext':
      ZacStateMachineTransformer.fromJson,
  'z:1:StateMachine:Transformer.pickState': ZacStateMachineTransformer.fromJson,
  'z:1:StateMachine:Transition': ZacTransition.fromJson,
  'z:1:String': ZacString.fromJson,
  'z:1:String.consume': ZacString.fromJson,
  'z:1:Transformer:Bool.negate': BoolTransformer.fromJson,
  'z:1:Transformer:Converter': ConvertTransformer.fromJson,
  'z:1:Transformer:Iterable.contains': IterableTransformer.fromJson,
  'z:1:Transformer:Iterable.elementAt': IterableTransformer.fromJson,
  'z:1:Transformer:Iterable.first': IterableTransformer.fromJson,
  'z:1:Transformer:Iterable.isEmpty': IterableTransformer.fromJson,
  'z:1:Transformer:Iterable.isNotEmpty': IterableTransformer.fromJson,
  'z:1:Transformer:Iterable.join': IterableTransformer.fromJson,
  'z:1:Transformer:Iterable.last': IterableTransformer.fromJson,
  'z:1:Transformer:Iterable.length': IterableTransformer.fromJson,
  'z:1:Transformer:Iterable.map': IterableTransformer.fromJson,
  'z:1:Transformer:Iterable.single': IterableTransformer.fromJson,
  'z:1:Transformer:Iterable.skip': IterableTransformer.fromJson,
  'z:1:Transformer:Iterable.take': IterableTransformer.fromJson,
  'z:1:Transformer:Iterable.toList': IterableTransformer.fromJson,
  'z:1:Transformer:Iterable.toSet': IterableTransformer.fromJson,
  'z:1:Transformer:Iterable.toString': IterableTransformer.fromJson,
  'z:1:Transformer:Json.decode': JsonTransformer.fromJson,
  'z:1:Transformer:Json.encode': JsonTransformer.fromJson,
  'z:1:Transformer:List.add': ListTransformer.fromJson,
  'z:1:Transformer:List.reversed': ListTransformer.fromJson,
  'z:1:Transformer:List<FlutterWidget>.from': ListTransformer.fromJson,
  'z:1:Transformer:Map.containsKey': MapTransformer.fromJson,
  'z:1:Transformer:Map.containsValue': MapTransformer.fromJson,
  'z:1:Transformer:Map.entries': MapTransformer.fromJson,
  'z:1:Transformer:Map.isEmpty': MapTransformer.fromJson,
  'z:1:Transformer:Map.isNotEmpty': MapTransformer.fromJson,
  'z:1:Transformer:Map.keys': MapTransformer.fromJson,
  'z:1:Transformer:Map.length': MapTransformer.fromJson,
  'z:1:Transformer:Map.map': MapTransformer.fromJson,
  'z:1:Transformer:Map.setValueForKey': MapTransformer.fromJson,
  'z:1:Transformer:Map.values': MapTransformer.fromJson,
  'z:1:Transformer:Map<Object, Object>.from': MapTransformer.fromJson,
  'z:1:Transformer:Map<String, FlutterWidget>.from': MapTransformer.fromJson,
  'z:1:Transformer:Map<String, Object>.from': MapTransformer.fromJson,
  'z:1:Transformer:Map<String, Object?>.from': MapTransformer.fromJson,
  'z:1:Transformer:Map[key]': MapTransformer.fromJson,
  'z:1:Transformer:Object.equals': ObjectTransformer.fromJson,
  'z:1:Transformer:Object.equalsSharedValue': ObjectTransformer.fromJson,
  'z:1:Transformer:Object.hashCode': ObjectTransformer.fromJson,
  'z:1:Transformer:Object.isBool': ObjectTransformer.fromJson,
  'z:1:Transformer:Object.isDouble': ObjectTransformer.fromJson,
  'z:1:Transformer:Object.isFlutterWidget': ObjectTransformer.fromJson,
  'z:1:Transformer:Object.isInt': ObjectTransformer.fromJson,
  'z:1:Transformer:Object.isList': ObjectTransformer.fromJson,
  'z:1:Transformer:Object.isMap': ObjectTransformer.fromJson,
  'z:1:Transformer:Object.isNull': ObjectTransformer.fromJson,
  'z:1:Transformer:Object.isString': ObjectTransformer.fromJson,
  'z:1:Transformer:Object.runtimeType': ObjectTransformer.fromJson,
  'z:1:Transformer:Object.toString': ObjectTransformer.fromJson,
  'z:1:Transformer:String.isEmpty': StringTransformer.fromJson,
  'z:1:Transformer:String.isNotEmpty': StringTransformer.fromJson,
  'z:1:Transformer:String.length': StringTransformer.fromJson,
  'z:1:Transformer:String.replaceAll': StringTransformer.fromJson,
  'z:1:Transformer:String.split': StringTransformer.fromJson,
  'z:1:Transformer:int.parse': IntTransformer.fromJson,
  'z:1:Transformer:int.tryParse': IntTransformer.fromJson,
  'z:1:Transformer:num.abs': NumTransformer.fromJson,
  'z:1:Transformer:num.ceil': NumTransformer.fromJson,
  'z:1:Transformer:num.ceilToDouble': NumTransformer.fromJson,
  'z:1:Transformer:num.floor': NumTransformer.fromJson,
  'z:1:Transformer:num.floorToDouble': NumTransformer.fromJson,
  'z:1:Transformer:num.isFinite': NumTransformer.fromJson,
  'z:1:Transformer:num.isInfinite': NumTransformer.fromJson,
  'z:1:Transformer:num.isNan': NumTransformer.fromJson,
  'z:1:Transformer:num.isNegative': NumTransformer.fromJson,
  'z:1:Transformer:num.round': NumTransformer.fromJson,
  'z:1:Transformer:num.roundToDouble': NumTransformer.fromJson,
  'z:1:Transformer:num.toDouble': NumTransformer.fromJson,
  'z:1:Transformer:num.toInt': NumTransformer.fromJson,
  'z:1:Transformers': ZacTransformers.fromJson,
  'z:1:UpdateContext': ZacUpdateContextBuilder.fromJson,
  'z:1:ValueKey.consume': FlutterValueKey.fromJson,
  'z:1:Widget': ZacWidgetBuilder.fromJson,
  'z:1:Widget.isolate': ZacWidgetBuilder.fromJson,
  'z:1:ZacValue.asActionPayload': ZacValueActions.fromJson,
  'z:1:bool': ZacBool.fromJson,
  'z:1:bool.consume': ZacBool.fromJson,
  'z:1:double': ZacDouble.fromJson,
  'z:1:double.consume': ZacDouble.fromJson,
  'z:1:int': ZacInt.fromJson,
  'z:1:int.consume': ZacInt.fromJson,
  'z:1:num': ZacNum.fromJson,
  'z:1:num.consume': ZacNum.fromJson
};
