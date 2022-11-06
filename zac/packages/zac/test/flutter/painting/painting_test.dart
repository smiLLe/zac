import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:zac/src/flutter/painting.dart';

import '../../helper.dart';
import '../models.dart';

void main() {
  test('FlutterBoxShadow', () {
    fakeBuild<BoxShadow>(
      FlutterBoxShadow.fromJson(BoxShadowModel.json).build,
      (matcher) => matcher.having(
          (p0) => p0, 'BoxShadow', equals(BoxShadowModel.equals)),
    );
  });

  test('FlutterBoxShape', () {
    fakeBuild<BoxShape>(
      FlutterBoxShape.fromJson(BoxShapeModel.json).build,
      (matcher) =>
          matcher.having((p0) => p0, 'BoxShape ', equals(BoxShapeModel.equals)),
    );
  });

  test('FlutterBoxDecoration', () {
    fakeBuild<BoxDecoration>(
      FlutterBoxDecoration.fromJson(
              BoxDecorationModel.getMap(type: FlutterBoxDecoration.unionValue))
          .build,
      (matcher) => matcher.having(
          (p0) => p0, 'BoxDecoration', equals(BoxDecorationModel.equals)),
    );

    fakeBuild<BoxDecoration>(
      FlutterDecoration.fromJson(
              BoxDecorationModel.getMap(type: FlutterBoxDecoration.unionValue))
          .build,
      (matcher) => matcher.having(
          (p0) => p0, 'BoxDecoration', equals(BoxDecorationModel.equals)),
    );
  });

  test('FlutterShapeDecoration', () {
    fakeBuild<ShapeDecoration>(
      FlutterShapeDecoration.fromJson(<String, dynamic>{
        'converter': 'f:1:ShapeDecoration',
        'shape': {
          'converter': 'f:1:CircleBorder',
        },
      }).build,
      (matcher) => matcher.having(
          (p0) => p0.shape, 'ShapeDecoration.shape', isA<CircleBorder>()),
    );

    fakeBuild<ShapeDecoration>(
      FlutterDecoration.fromJson(<String, dynamic>{
        'converter': 'f:1:ShapeDecoration',
        'shape': {
          'converter': 'f:1:CircleBorder',
        },
      }).build,
      (matcher) => matcher,
    );
  });

  test('FlutterAxis', () {
    fakeBuild<Axis>(
      FlutterAxis.fromJson(
          <String, dynamic>{'converter': 'f:1:Axis.horizontal'}).build,
      (matcher) => matcher.having((p0) => p0, 'Axis', equals(Axis.horizontal)),
    );

    fakeBuild<Axis>(
      FlutterAxis.fromJson(<String, dynamic>{'converter': 'f:1:Axis.vertical'})
          .build,
      (matcher) => matcher.having((p0) => p0, 'Axis', equals(Axis.vertical)),
    );
  });

  test('FlutterVerticalDirection', () {
    fakeBuild<VerticalDirection>(
      FlutterVerticalDirection.fromJson(
          <String, dynamic>{'converter': 'f:1:VerticalDirection.up'}).build,
      (matcher) => matcher.having(
          (p0) => p0, 'VerticalDirection.up', equals(VerticalDirection.up)),
    );

    fakeBuild<VerticalDirection>(
      FlutterVerticalDirection.fromJson(
          <String, dynamic>{'converter': 'f:1:VerticalDirection.down'}).build,
      (matcher) => matcher.having(
          (p0) => p0, 'VerticalDirection.down', equals(VerticalDirection.down)),
    );
  });

  test('TextStyle', () {
    fakeBuild<TextStyle>(
      FlutterTextStyle.fromJson(<String, dynamic>{
        'converter': 'f:1:TextStyle',
        'inherit': false,
        'color': ColorModel.json,
        'backgroundColor': ColorModel.json,
        'fontSize': 20,
        'letterSpacing': 5,
        'wordSpacing': 3,
        'textBaseline': {'converter': 'f:1:TextBaseline.ideographic'},
        'height': 200,
        'leadingDistribution': {
          'converter': 'f:1:TextLeadingDistribution.proportional'
        },
        'locale': LocaleModel.json,
        'shadows': [ShadowModel.json],
        'fontFeatures': [
          {
            'converter': 'f:1:FontFeature.slashedZero',
          }
        ],
        'decorationColor': ColorModel.json,
        'decorationStyle': {
          'converter': 'f:1:TextDecorationStyle.wavy',
        },
        'decorationThickness': 20,
        'debugLabel': 'test_debugLabel',
        'fontFamily': 'test_fontFamily',
        'fontFamilyFallback': ['a_fontFamilyFallback', 'b_fontFamilyFallback'],
        'fontWeight': TextModel.fontWeight,
        'fontStyle': TextModel.fontStyle,
        'decoration': TextModel.textDecoration,
        'overflow': {
          'converter': 'f:1:TextOverflow.clip',
        }
      }).build,
      (matcher) => matcher
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

  test('FlutterTextOverflow', () {
    fakeBuild<TextOverflow>(
      FlutterTextOverflow.fromJson(
          <String, dynamic>{'converter': 'f:1:TextOverflow.clip'}).build,
      (matcher) => matcher.having(
          (p0) => p0, 'TextOverflow.clip', equals(TextOverflow.clip)),
    );

    fakeBuild<TextOverflow>(
      FlutterTextOverflow.fromJson(
          <String, dynamic>{'converter': 'f:1:TextOverflow.ellipsis'}).build,
      (matcher) => matcher.having(
          (p0) => p0, 'TextOverflow.ellipsis', equals(TextOverflow.ellipsis)),
    );

    fakeBuild<TextOverflow>(
      FlutterTextOverflow.fromJson(
          <String, dynamic>{'converter': 'f:1:TextOverflow.fade'}).build,
      (matcher) => matcher.having(
          (p0) => p0, 'TextOverflow.fade', equals(TextOverflow.fade)),
    );

    fakeBuild<TextOverflow>(
      FlutterTextOverflow.fromJson(
          <String, dynamic>{'converter': 'f:1:TextOverflow.visible'}).build,
      (matcher) => matcher.having(
          (p0) => p0, 'TextOverflow.visible', equals(TextOverflow.visible)),
    );
  });

  group('FlutterStrutStyle', () {
    test('FlutterStrutStyle()', () {
      fakeBuild<StrutStyle>(
        FlutterStrutStyle.fromJson(<String, dynamic>{
          'converter': 'f:1:StrutStyle',
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
        }).build,
        (matcher) => matcher.having(
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

    test('FlutterStrutStyle.fromTextStyle()', () {
      fakeBuild<StrutStyle>(
        FlutterStrutStyle.fromJson(<String, dynamic>{
          'converter': 'f:1:StrutStyle.fromTextStyle',
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
        }).build,
        (matcher) => matcher.having(
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

  test('FlutterTextWidthBasis', () {
    fakeBuild<TextWidthBasis>(
      FlutterTextWidthBasis.fromJson(
              <String, dynamic>{'converter': 'f:1:TextWidthBasis.longestLine'})
          .build,
      (matcher) => matcher.having((p0) => p0, 'TextWidthBasis.longestLine',
          equals(TextWidthBasis.longestLine)),
    );

    fakeBuild<TextWidthBasis>(
      FlutterTextWidthBasis.fromJson(
          <String, dynamic>{'converter': 'f:1:TextWidthBasis.parent'}).build,
      (matcher) => matcher.having(
          (p0) => p0, 'TextWidthBasis.parent', equals(TextWidthBasis.parent)),
    );
  });

  test('FlutterBoxFit', () {
    fakeBuild<BoxFit>(
      FlutterBoxFit.fromJson(
          <String, dynamic>{'converter': 'f:1:BoxFit.contain'}).build,
      (matcher) =>
          matcher.having((p0) => p0, 'BoxFit.contain', equals(BoxFit.contain)),
    );

    fakeBuild<BoxFit>(
      FlutterBoxFit.fromJson(<String, dynamic>{'converter': 'f:1:BoxFit.cover'})
          .build,
      (matcher) =>
          matcher.having((p0) => p0, 'BoxFit.cover', equals(BoxFit.cover)),
    );

    fakeBuild<BoxFit>(
      FlutterBoxFit.fromJson(<String, dynamic>{'converter': 'f:1:BoxFit.fill'})
          .build,
      (matcher) =>
          matcher.having((p0) => p0, 'BoxFit.fill', equals(BoxFit.fill)),
    );

    fakeBuild<BoxFit>(
      FlutterBoxFit.fromJson(
          <String, dynamic>{'converter': 'f:1:BoxFit.fitHeight'}).build,
      (matcher) => matcher.having(
          (p0) => p0, 'BoxFit.fitHeight', equals(BoxFit.fitHeight)),
    );

    fakeBuild<BoxFit>(
      FlutterBoxFit.fromJson(
          <String, dynamic>{'converter': 'f:1:BoxFit.fitWidth'}).build,
      (matcher) => matcher.having(
          (p0) => p0, 'BoxFit.fitWidth', equals(BoxFit.fitWidth)),
    );

    fakeBuild<BoxFit>(
      FlutterBoxFit.fromJson(<String, dynamic>{'converter': 'f:1:BoxFit.none'})
          .build,
      (matcher) =>
          matcher.having((p0) => p0, 'BoxFit.none', equals(BoxFit.none)),
    );

    fakeBuild<BoxFit>(
      FlutterBoxFit.fromJson(
          <String, dynamic>{'converter': 'f:1:BoxFit.scaleDown'}).build,
      (matcher) => matcher.having(
          (p0) => p0, 'BoxFit.scaleDown', equals(BoxFit.scaleDown)),
    );
  });

  test('FlutterImageRepeat', () {
    fakeBuild<ImageRepeat>(
      FlutterImageRepeat.fromJson(
          <String, dynamic>{'converter': 'f:1:ImageRepeat.noRepeat'}).build,
      (matcher) => matcher.having(
          (p0) => p0, 'ImageRepeat.noRepeat', equals(ImageRepeat.noRepeat)),
    );

    fakeBuild<ImageRepeat>(
      FlutterImageRepeat.fromJson(
          <String, dynamic>{'converter': 'f:1:ImageRepeat.repeat'}).build,
      (matcher) => matcher.having(
          (p0) => p0, 'ImageRepeat.repeat', equals(ImageRepeat.repeat)),
    );

    fakeBuild<ImageRepeat>(
      FlutterImageRepeat.fromJson(
          <String, dynamic>{'converter': 'f:1:ImageRepeat.repeatX'}).build,
      (matcher) => matcher.having(
          (p0) => p0, 'ImageRepeat.repeatX', equals(ImageRepeat.repeatX)),
    );

    fakeBuild<ImageRepeat>(
      FlutterImageRepeat.fromJson(
          <String, dynamic>{'converter': 'f:1:ImageRepeat.repeatY'}).build,
      (matcher) => matcher.having(
          (p0) => p0, 'ImageRepeat.repeatY', equals(ImageRepeat.repeatY)),
    );
  });

  test('FlutterTextAlignVertical', () {
    fakeBuild<TextAlignVertical>(
      FlutterTextAlignVertical.fromJson(<String, dynamic>{
        'converter': 'f:1:TextAlignVertical',
        'y': 0.2,
      }).build,
      (matcher) => matcher..having((p0) => p0.y, 'TextAlignVertical.y', 0.2),
    );

    fakeBuild<TextAlignVertical>(
      FlutterTextAlignVertical.fromJson(
          <String, dynamic>{'converter': 'f:1:TextAlignVertical.bottom'}).build,
      (matcher) => matcher
        ..having((p0) => p0, 'TextAlignVertical.bottom',
            equals(TextAlignVertical.bottom)),
    );

    fakeBuild<TextAlignVertical>(
      FlutterTextAlignVertical.fromJson(
          <String, dynamic>{'converter': 'f:1:TextAlignVertical.center'}).build,
      (matcher) => matcher
        ..having((p0) => p0, 'TextAlignVertical.center',
            equals(TextAlignVertical.center)),
    );

    fakeBuild<TextAlignVertical>(
      FlutterTextAlignVertical.fromJson(
          <String, dynamic>{'converter': 'f:1:TextAlignVertical.top'}).build,
      (matcher) => matcher
        ..having(
            (p0) => p0, 'TextAlignVertical.top', equals(TextAlignVertical.top)),
    );
  });
}
