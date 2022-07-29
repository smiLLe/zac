// ignore_for_file: non_constant_identifier_names

import 'package:zac/src/flutter/painting/painting.dart';
import 'package:zac/src/zac/context/widget_context.dart';
import 'package:zac/src/converter.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:mockito/mockito.dart';
import 'package:zac/src/flutter/widgets/_layout/sized_box/sized_box.dart';

class FakeZacContext extends Fake implements ZacBuildContext {}

abstract class ActionsModel {
  static Map<String, Object?> createTestAction(String data) {
    return {
      converterKey: 'z:1:Actions',
      'actions': [
        {
          converterKey: 'test_action',
          'data': data,
        }
      ],
    };
  }
}

abstract class ChildModel {
  static Map<String, Object?> sizedBox = {
    converterKey: FlutterSizedBox.unionValue,
  };

  static Map<String, Object?> getSizedBox({
    String? key,
  }) =>
      {
        converterKey: FlutterSizedBox.unionValue,
        'key': key == null ? null : KeysModel.getValueKey(key)
      };
}

abstract class KeysModel {
  static Map<String, Object?> getValueKey(String key) => {
        converterKey: 'f:1:ValueKey',
        'value': key,
      };
}

abstract class ColorModel {
  static Map<String, Object?> json = {
    converterKey: 'f:1:Color.fromARGB',
    'a': 10,
    'r': 100,
    'g': 100,
    'b': 100
  };
  static const Color equals = Color.fromARGB(10, 100, 100, 100);
}

abstract class EdgeInsetsModel {
  static Map<String, Object?> geometry_edgeInsetsAll = {
    converterKey: FlutterEdgeInsets.unionValueAll,
    'value': 10,
  };
  static const EdgeInsets equalsAll = EdgeInsets.all(10);
}

abstract class AlignmentModel {
  static Map<String, Object?> geometry_alignment = {
    converterKey: 'f:1:Alignment',
    'x': 10,
    'y': 15,
  };
  static const AlignmentGeometry equals = Alignment(10, 15);
}

abstract class BorderModel {
  static Map<String, Object?> borderAll = {
    converterKey: 'f:1:Border.all',
    'color': ColorModel.json,
    'width': 5,
    'style': {
      converterKey: 'f:1:BorderStyle.solid',
    },
  };

  static Map<String, Object?> box_borderAll = borderAll;

  static Map<String, Object?> shape_box_borderAll = borderAll;

  static Border equals_shape_box_borderAll =
      Border.all(color: ColorModel.equals, style: BorderStyle.solid, width: 5);
}

abstract class BorderRadiusModel {
  static Map<String, Object?> allJson = {
    converterKey: FlutterBorderRadius.unionValueAll,
    'radius': RadiusModel.json,
  };

  static const BorderRadius allEquals = BorderRadius.all(RadiusModel.equals);

  static Map<String, Object?> circularJson = {
    converterKey: FlutterBorderRadius.unionValueCircular,
    'radius': 22,
  };

  static BorderRadius circularEquals = BorderRadius.circular(22);

  static Map<String, Object?> horizontalJson = {
    converterKey: FlutterBorderRadius.unionValueHorizontal,
    'left': RadiusModel.json,
    'right': RadiusModel.json
  };

  static const BorderRadius horizontalEquals = BorderRadius.horizontal(
      left: RadiusModel.equals, right: RadiusModel.equals);
}

abstract class RadiusModel {
  static Map<String, Object?> json = {
    converterKey: 'f:1:Radius.elliptical',
    'x': 10,
    'y': 20,
  };

  static const Radius equals = Radius.elliptical(10, 20);
}

abstract class BoxDecorationModel {
  static Map<String, dynamic> getMap(
          {String type = FlutterBoxDecoration.unionValue}) =>
      <String, dynamic>{
        converterKey: type,
        'color': ColorModel.json,
        'border': BorderModel.box_borderAll,
        'borderRadius': BorderRadiusModel.horizontalJson,
        'boxShadow': [BoxShadowModel.json],
        'backgroundBlendMode': {
          converterKey: 'f:1:BlendMode.darken',
        }
      };

  static BoxDecoration equals = BoxDecoration(
    color: ColorModel.equals,
    border: BorderModel.equals_shape_box_borderAll,
    borderRadius: BorderRadiusModel.horizontalEquals,
    boxShadow: const [BoxShadowModel.equals],
    backgroundBlendMode: BlendMode.darken,
  );
}

abstract class BlurStyleModel {
  static Map<String, Object?> json = {
    converterKey: 'f:1:BlurSyle.inner',
  };

  static const BlurStyle equals = BlurStyle.inner;
}

abstract class OffsetModel {
  static Map<String, Object?> json = {
    converterKey: 'f:1:Offset',
    'dx': 10,
    'dy': 20,
  };

  static const Offset equals = Offset(10, 20);
}

abstract class BoxShadowModel {
  static Map<String, Object?> json = {
    converterKey: FlutterBoxShadow.unionValue,
    'color': ColorModel.json,
    'offset': OffsetModel.json,
    'blurRadius': 11,
    'spreadRadius': 12,
    'blurStyle': BlurStyleModel.json,
  };

  static const BoxShadow equals = BoxShadow(
    color: ColorModel.equals,
    offset: OffsetModel.equals,
    blurRadius: 11,
    spreadRadius: 12,
    blurStyle: BlurStyleModel.equals,
  );
}

abstract class ShadowModel {
  static Map<String, Object?> json = {
    converterKey: 'f:1:Shadow',
    'color': ColorModel.json,
    'offset': OffsetModel.json,
    'blurRadius': 10,
  };

  static const Shadow equals = Shadow(
    color: ColorModel.equals,
    offset: OffsetModel.equals,
    blurRadius: 10,
  );
}

abstract class BoxShapeModel {
  static Map<String, Object?> json = {converterKey: 'f:1:BoxShape.circle'};

  static const BoxShape equals = BoxShape.circle;
}

abstract class LocaleModel {
  static Map<String, Object?> json = {
    converterKey: 'f:1:Locale',
    'languageCode': 'de',
    'countryCode': 'AT',
  };

  static const Locale equals = Locale('de', 'AT');
}

abstract class TextModel {
  static Map<String, Object?> textStyle = {
    converterKey: 'f:1:TextStyle',
    'inherit': false,
    'color': ColorModel.json,
    'backgroundColor': ColorModel.json,
    'fontSize': 20,
    'letterSpacing': 5,
    'wordSpacing': 3,
    'textBaseline': {converterKey: 'f:1:TextBaseline.alphabetic'}
  };

  static const TextStyle equalsTextStyle = TextStyle(
    inherit: false,
    color: ColorModel.equals,
    backgroundColor: ColorModel.equals,
    fontSize: 20,
    letterSpacing: 5,
    wordSpacing: 3,
    textBaseline: TextBaseline.alphabetic,
  );

  static Map<String, Object?> fontWeight = {
    converterKey: 'f:1:FontWeight.w900'
  };

  static const FontWeight equalsFontWeight = FontWeight.w900;

  static Map<String, Object?> fontStyle = {
    converterKey: 'f:1:FontStyle.italic'
  };

  static const FontStyle equalsFontStyle = FontStyle.italic;

  static Map<String, Object?> textDecoration = {
    converterKey: 'f:1:TextDecoration.underline'
  };

  static const TextDecoration equalsTextDecoration = TextDecoration.underline;

  static Map<String, Object?> textLeadingDistribution = {
    converterKey: 'f:1:TextLeadingDistribution.proportional'
  };

  static const TextLeadingDistribution equalsTextLeadingDistribution =
      TextLeadingDistribution.proportional;

  static Map<String, Object?> strutStyle = {
    converterKey: 'f:1:StrutStyle',
    'fontFamily': 'test_fontFamily',
    'fontFamilyFallback': ['test_fontFamilyFallback'],
    'fontSize': 42,
  };

  static const StrutStyle equalsStrutStyle = StrutStyle(
    fontFamily: 'test_fontFamily',
    fontFamilyFallback: ['test_fontFamilyFallback'],
    fontSize: 42,
  );

  static Map<String, Object?> textAlign = {converterKey: 'f:1:TextAlign.right'};

  static const TextAlign equalsTextAlign = TextAlign.right;

  static Map<String, Object?> textDirection = {
    converterKey: 'f:1:TextDirection.ltr'
  };

  static const TextDirection equalsTextDirection = TextDirection.ltr;

  static Map<String, Object?> textOverflow = {
    converterKey: 'f:1:TextOverflow.clip'
  };

  static const TextOverflow equalsTextOverflow = TextOverflow.clip;

  static Map<String, Object?> textWidthBasis = {
    converterKey: 'f:1:TextWidthBasis.longestLine'
  };

  static const TextWidthBasis equalsTextWidthBasis = TextWidthBasis.longestLine;

  static Map<String, Object?> textHeightBehavior = {
    converterKey: 'f:1:TextHeightBehavior',
    'applyHeightToFirstAscent': false,
    'applyHeightToLastDescent': true,
    'leadingDistribution': {
      converterKey: 'f:1:TextLeadingDistribution.even',
    }
  };

  static const TextHeightBehavior equalsTextHeightBehavior = TextHeightBehavior(
    applyHeightToFirstAscent: false,
    applyHeightToLastDescent: true,
    leadingDistribution: TextLeadingDistribution.even,
  );
}

abstract class AxisModel {
  static Map<String, Object?> horizontal = {
    converterKey: 'f:1:Axis.horizontal'
  };

  static const Axis equalsHorizontal = Axis.horizontal;
}

abstract class BrightnessModel {
  static Map<String, Object?> light = {converterKey: 'f:1:Brightness.light'};

  static const Brightness equalsLight = Brightness.light;
}

abstract class SystemUiOverlayStyleModel {
  static Map<String, Object?> json = {
    converterKey: 'f:1:SystemUiOverlayStyle',
    'systemNavigationBarColor': ColorModel.json,
    'systemNavigationBarDividerColor': ColorModel.json,
    'systemNavigationBarIconBrightness': BrightnessModel.light,
    'systemNavigationBarContrastEnforced': true,
    'statusBarColor': ColorModel.json,
    'statusBarBrightness': BrightnessModel.light,
    'statusBarIconBrightness': BrightnessModel.light,
    'systemStatusBarContrastEnforced': true,
  };

  static const SystemUiOverlayStyle equals = SystemUiOverlayStyle(
    systemNavigationBarColor: ColorModel.equals,
    systemNavigationBarDividerColor: ColorModel.equals,
    systemNavigationBarIconBrightness: BrightnessModel.equalsLight,
    systemNavigationBarContrastEnforced: true,
    statusBarColor: ColorModel.equals,
    statusBarBrightness: BrightnessModel.equalsLight,
    statusBarIconBrightness: BrightnessModel.equalsLight,
    systemStatusBarContrastEnforced: true,
  );
}

abstract class GridDelegateModel {
  static Map<String, Object?> json = {
    converterKey: 'f:1:SliverGridDelegateWithFixedCrossAxisCount',
    'crossAxisCount': 7,
  };
}

abstract class ClipBehaviorModel {
  static Map<String, Object?> json = {
    converterKey: 'f:1:Clip.hardEdge',
  };

  static Clip equals = Clip.hardEdge;
}

abstract class BoxConstraintsModel {
  static Map<String, Object?> json = {
    converterKey: 'f:1:BoxConstraints.expand',
    'width': 400,
    'height': 401,
  };

  static const BoxConstraints equals =
      BoxConstraints.expand(width: 400, height: 401);
}
