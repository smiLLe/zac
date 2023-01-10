import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:zac/src/flutter/painting.dart';

import '../../helper.dart';
import '../models.dart';

void main() {
  testWidgets('FlutterBoxShadow', (tester) async {
    await testBuilder<BoxShadow>(
      tester,
      'f:1:BoxShadow',
      props: <String, dynamic>{
        'color': ColorModel.json,
        'offset': OffsetModel.json,
        'blurRadius': 11,
        'spreadRadius': 12,
        'blurStyle': BlurStyleModel.json,
      },
      matcher: (matcher) => matcher.having(
          (p0) => p0, 'BoxShadow', equals(BoxShadowModel.equals)),
    );
  });

  testWidgets('FlutterBoxShape', (tester) async {
    await testBuilder<BoxShape>(
      tester,
      'f:1:BoxShape.circle',
      matcher: (matcher) =>
          matcher.having((p0) => p0, 'BoxShadow', BoxShape.circle),
    );
  });

  testWidgets('FlutterBoxDecoration', (tester) async {
    await testBuilder<BoxDecoration>(
      tester,
      'f:1:BoxDecoration',
      props: <String, dynamic>{
        'color': ColorModel.json,
        'border': BorderModel.box_borderAll,
        'borderRadius': BorderRadiusModel.horizontalJson,
        'boxShadow': [BoxShadowModel.json],
        'backgroundBlendMode': {
          'builder': 'f:1:BlendMode.darken',
        }
      },
      matcher: (matcher) => matcher.having(
          (p0) => p0, 'BoxDecoration', equals(BoxDecorationModel.equals)),
    );
  });

  testWidgets('FlutterShapeDecoration', (tester) async {
    await testBuilder<ShapeDecoration>(
      tester,
      'f:1:ShapeDecoration',
      props: <String, dynamic>{
        'shape': {
          'builder': 'f:1:CircleBorder',
        },
      },
      matcher: (matcher) => matcher.having(
          (p0) => p0.shape, 'ShapeDecoration.shape', isA<CircleBorder>()),
    );
  });

  testWidgets('FlutterAxis', (tester) async {
    await testBuilder<Axis>(
      tester,
      'f:1:Axis.horizontal',
      matcher: (matcher) =>
          matcher.having((p0) => p0, 'Axis', equals(Axis.horizontal)),
    );
    await testBuilder<Axis>(
      tester,
      'f:1:Axis.vertical',
      matcher: (matcher) =>
          matcher.having((p0) => p0, 'Axis', equals(Axis.vertical)),
    );
  });

  testWidgets('FlutterVerticalDirection', (tester) async {
    await testBuilder<VerticalDirection>(
      tester,
      'f:1:VerticalDirection.up',
      matcher: (matcher) => matcher.having(
          (p0) => p0, 'VerticalDirection.up', equals(VerticalDirection.up)),
    );
    await testBuilder<VerticalDirection>(
      tester,
      'f:1:VerticalDirection.down',
      matcher: (matcher) => matcher.having(
          (p0) => p0, 'VerticalDirection.down', equals(VerticalDirection.down)),
    );
  });

  testWidgets('TextStyle', (tester) async {
    await testBuilder<TextStyle>(
      tester,
      'f:1:TextStyle',
      props: <String, dynamic>{
        'inherit': false,
        'color': ColorModel.json,
        'backgroundColor': ColorModel.json,
        'fontSize': 20,
        'letterSpacing': 5,
        'wordSpacing': 3,
        'textBaseline': {'builder': 'f:1:TextBaseline.ideographic'},
        'height': 200,
        'leadingDistribution': {
          'builder': 'f:1:TextLeadingDistribution.proportional'
        },
        'locale': LocaleModel.json,
        'shadows': [ShadowModel.json],
        'fontFeatures': [
          {
            'builder': 'f:1:FontFeature.slashedZero',
          }
        ],
        'decorationColor': ColorModel.json,
        'decorationStyle': {
          'builder': 'f:1:TextDecorationStyle.wavy',
        },
        'decorationThickness': 20,
        'debugLabel': 'test_debugLabel',
        'fontFamily': 'test_fontFamily',
        'fontFamilyFallback': ['a_fontFamilyFallback', 'b_fontFamilyFallback'],
        'fontWeight': TextModel.fontWeight,
        'fontStyle': TextModel.fontStyle,
        'decoration': TextModel.textDecoration,
        'overflow': {
          'builder': 'f:1:TextOverflow.clip',
        }
      },
      matcher: (matcher) => matcher
          .having((p0) => p0.inherit, 'TextStyle.inherit', isFalse)
          .having((p0) => p0.color, 'TextStyle.color', ColorModel.equals)
          .having((p0) => p0.backgroundColor, 'TextStyle.backgroundColor',
              ColorModel.equals)
          .having((p0) => p0.fontSize, 'TextStyle.fontSize', 20)
          .having((p0) => p0.letterSpacing, 'TextStyle.letterSpacing', 5)
          .having((p0) => p0.wordSpacing, 'TextStyle.wordSpacing', 3)
          .having((p0) => p0.textBaseline, 'TextStyle.textBaseline',
              TextBaseline.ideographic)
          .having((p0) => p0.height, 'TextStyle.height', 200)
          .having(
              (p0) => p0.leadingDistribution,
              'TextStyle.leadingDistribution',
              TextLeadingDistribution.proportional)
          .having((p0) => p0.locale, 'TextStyle.locale', LocaleModel.equals)
          .having((p0) => p0.shadows, 'TextStyle.shadows', [ShadowModel.equals])
          .having((p0) => p0.fontFeatures, 'TextStyle.fontFeatures',
              const [FontFeature.slashedZero()])
          .having((p0) => p0.decorationColor, 'TextStyle.decorationColor',
              ColorModel.equals)
          .having((p0) => p0.decorationStyle, 'TextStyle.decorationStyle',
              TextDecorationStyle.wavy)
          .having((p0) => p0.decorationThickness,
              'TextStyle.decorationThickness', 20)
          .having(
              (p0) => p0.debugLabel, 'TextStyle.debugLabel', 'test_debugLabel')
          .having(
              (p0) => p0.fontFamily, 'TextStyle.fontFamily', 'test_fontFamily')
          .having((p0) => p0.fontFamilyFallback, 'TextStyle.fontFamilyFallback',
              ['a_fontFamilyFallback', 'b_fontFamilyFallback'])
          .having((p0) => p0.fontWeight, 'TextStyle.fontWeight',
              TextModel.equalsFontWeight)
          .having((p0) => p0.fontStyle, 'TextStyle.fontStyle',
              TextModel.equalsFontStyle)
          .having((p0) => p0.decoration, 'TextStyle.decoration',
              TextModel.equalsTextDecoration)
          .having((p0) => p0.overflow, 'TextStyle.overflow', TextOverflow.clip),
    );
  });

  testWidgets('FlutterTextOverflow', (tester) async {
    for (var ele in [
      ['clip', TextOverflow.clip],
      ['ellipsis', TextOverflow.ellipsis],
      ['fade', TextOverflow.fade],
      ['visible', TextOverflow.visible],
    ]) {
      await testBuilder<TextOverflow>(
        tester,
        'f:1:TextOverflow.${ele[0]}',
        matcher: (matcher) => matcher.having(
            (p0) => p0, 'VerticalDirection.${ele[0]}', equals(ele[1])),
      );
    }
  });

  group('FlutterStrutStyle', () {
    testWidgets('FlutterStrutStyle()', (tester) async {
      await testBuilder<StrutStyle>(
        tester,
        'f:1:StrutStyle',
        props: <String, dynamic>{
          'fontFamily': 'test_fontFamily',
          'fontFamilyFallback': ['test_fontFamilyFallback'],
          'fontSize': 42,
          'height': 43,
          'leadingDistribution': TextModel.textLeadingDistribution,
          'leading': 44,
          'fontWeight': TextModel.fontWeight,
          'fontStyle': TextModel.fontStyle,
          'forceStrutHeight': true,
          'debugLabel': 'test_debugLabel',
          'package': 'test_package',
        },
        matcher: (matcher) => matcher.having(
            (p0) => p0,
            'StrutStyle',
            equals(const StrutStyle(
              fontFamily: 'test_fontFamily',
              fontFamilyFallback: ['test_fontFamilyFallback'],
              fontSize: 42,
              height: 43,
              leadingDistribution: TextModel.equalsTextLeadingDistribution,
              leading: 44,
              fontWeight: TextModel.equalsFontWeight,
              fontStyle: TextModel.equalsFontStyle,
              forceStrutHeight: true,
              debugLabel: 'test_debugLabel',
              package: 'test_package',
            ))),
      );
    });

    testWidgets('FlutterStrutStyle.fromTextStyle()', (tester) async {
      await testBuilder<StrutStyle>(
        tester,
        'f:1:StrutStyle.fromTextStyle',
        props: <String, dynamic>{
          'textStyle': TextModel.textStyle,
          'fontFamily': 'test_fontFamily',
          'fontFamilyFallback': ['test_fontFamilyFallback'],
          'fontSize': 42,
          'height': 43,
          'leadingDistribution': TextModel.textLeadingDistribution,
          'leading': 44,
          'fontWeight': TextModel.fontWeight,
          'fontStyle': TextModel.fontStyle,
          'forceStrutHeight': true,
          'debugLabel': 'test_debugLabel',
          'package': 'test_package',
        },
        matcher: (matcher) => matcher.having(
            (p0) => p0,
            'StrutStyle.fromTextStyle',
            equals(StrutStyle.fromTextStyle(
              TextModel.equalsTextStyle,
              fontFamily: 'test_fontFamily',
              fontFamilyFallback: const ['test_fontFamilyFallback'],
              fontSize: 42,
              height: 43,
              leadingDistribution: TextModel.equalsTextLeadingDistribution,
              leading: 44,
              fontWeight: TextModel.equalsFontWeight,
              fontStyle: TextModel.equalsFontStyle,
              forceStrutHeight: true,
              debugLabel: 'test_debugLabel',
              package: 'test_package',
            ))),
      );
    });
  });

  testWidgets('FlutterTextWidthBasis', (tester) async {
    await testBuilder<TextWidthBasis>(
      tester,
      'f:1:TextWidthBasis.longestLine',
      matcher: (matcher) => matcher.having((p0) => p0,
          'TextWidthBasis.longestLine', equals(TextWidthBasis.longestLine)),
    );

    await testBuilder<TextWidthBasis>(
      tester,
      'f:1:TextWidthBasis.parent',
      matcher: (matcher) => matcher.having(
          (p0) => p0, 'TextWidthBasis.parent', equals(TextWidthBasis.parent)),
    );
  });

  testWidgets('FlutterBoxFit', (tester) async {
    for (var ele in [
      ['contain', BoxFit.contain],
      ['cover', BoxFit.cover],
      ['fill', BoxFit.fill],
      ['fitHeight', BoxFit.fitHeight],
      ['fitWidth', BoxFit.fitWidth],
      ['none', BoxFit.none],
      ['scaleDown', BoxFit.scaleDown],
    ]) {
      await testBuilder<BoxFit>(
        tester,
        'f:1:BoxFit.${ele[0]}',
        matcher: (matcher) =>
            matcher.having((p0) => p0, 'BoxFit.${ele[0]}', equals(ele[1])),
      );
    }
  });

  testWidgets('FlutterImageRepeat', (tester) async {
    for (var ele in [
      ['noRepeat', ImageRepeat.noRepeat],
      ['repeat', ImageRepeat.repeat],
      ['repeatX', ImageRepeat.repeatX],
      ['repeatY', ImageRepeat.repeatY],
    ]) {
      await testBuilder<ImageRepeat>(
        tester,
        'f:1:ImageRepeat.${ele[0]}',
        matcher: (matcher) =>
            matcher.having((p0) => p0, 'ImageRepeat.${ele[0]}', equals(ele[1])),
      );
    }
  });

  testWidgets('FlutterTextAlignVertical', (tester) async {
    for (var ele in [
      ['bottom', TextAlignVertical.bottom],
      ['center', TextAlignVertical.center],
      ['top', TextAlignVertical.top],
    ]) {
      await testBuilder<TextAlignVertical>(
        tester,
        'f:1:TextAlignVertical.${ele[0]}',
        matcher: (matcher) =>
            matcher.having((p0) => p0, 'ImageRepeat.${ele[0]}', equals(ele[1])),
      );
    }

    await testBuilder<TextAlignVertical>(
      tester,
      'f:1:TextAlignVertical',
      props: <String, dynamic>{
        'y': 0.2,
      },
      matcher: (matcher) =>
          matcher..having((p0) => p0.y, 'TextAlignVertical.y', 0.2),
    );
  });
}
