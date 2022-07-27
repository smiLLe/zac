import 'dart:ui';

import 'package:zac/src/converter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:zac/src/converter.dart';
import 'package:zac/src/flutter/mixed/decoration/decoration.dart';
import 'package:zac/src/flutter/mixed/shadow/shadow.dart';
import 'package:zac/src/flutter/painting/painting.dart';

import '../models.dart';

void main() {
  test('FlutterBoxShadow', () {
    final config = FakeWidgetConfig();
    final data = FlutterBoxShadow.fromJson(BoxShadowModel.json);
    expect(data.build(config), BoxShadowModel.equals);
  });

  test('FlutterBoxShape', () {
    final config = FakeWidgetConfig();
    final data = FlutterBoxShape.fromJson(BoxShapeModel.json);
    expect(data.build(config), BoxShapeModel.equals);
  });

  test('FlutterBoxDecoration', () {
    final config = FakeWidgetConfig();
    expect(
        FlutterBoxDecoration.fromJson(BoxDecorationModel.getMap(
                type: FlutterBoxDecoration.unionValue))
            .build(config),
        BoxDecorationModel.equals);

    expect(
        FlutterDecoration.fromJson(BoxDecorationModel.getMap(
                type: FlutterBoxDecoration.unionValue))
            .build(config),
        BoxDecorationModel.equals);
  });

  test('FlutterShapeDecoration', () {
    final config = FakeWidgetConfig();
    expect(
        FlutterShapeDecoration.fromJson(<String, dynamic>{
          converterKey: 'f:1:ShapeDecoration',
          'shape': {
            converterKey: 'f:1:CircleBorder',
          },
        }).build(config),
        isA<ShapeDecoration>().having(
            (p0) => p0.shape, 'ShapeDecoration.shape', isA<CircleBorder>()));

    expect(
        FlutterDecoration.fromJson(<String, dynamic>{
          converterKey: 'f:1:ShapeDecoration',
          'shape': {
            converterKey: 'f:1:CircleBorder',
          },
        }).build(config),
        isA<ShapeDecoration>());
  });

  test('FlutterAxis', () {
    final config = FakeWidgetConfig();
    expect(
        FlutterAxis.fromJson(
                <String, dynamic>{converterKey: 'f:1:Axis.horizontal'})
            .build(config),
        Axis.horizontal);

    expect(
        FlutterAxis.fromJson(
            <String, dynamic>{converterKey: 'f:1:Axis.vertical'}).build(config),
        Axis.vertical);
  });

  test('FlutterVerticalDirection', () {
    final config = FakeWidgetConfig();
    expect(
        FlutterVerticalDirection.fromJson(
                <String, dynamic>{converterKey: 'f:1:VerticalDirection.up'})
            .build(config),
        VerticalDirection.up);

    expect(
        FlutterVerticalDirection.fromJson(
                <String, dynamic>{converterKey: 'f:1:VerticalDirection.down'})
            .build(config),
        VerticalDirection.down);
  });

  test('TextStyle', () {
    final config = FakeWidgetConfig();
    expect(
        FlutterTextStyle.fromJson(<String, dynamic>{
          converterKey: 'f:1:TextStyle',
          'inherit': false,
          'color': ColorModel.json,
          'backgroundColor': ColorModel.json,
          'fontSize': 20,
          'letterSpacing': 5,
          'wordSpacing': 3,
          'textBaseline': {converterKey: 'f:1:TextBaseline.ideographic'},
          'height': 200,
          'leadingDistribution': {
            converterKey: 'f:1:TextLeadingDistribution.proportional'
          },
          'locale': LocaleModel.json,
          'shadows': [ShadowModel.json],
          'fontFeatures': [
            {
              converterKey: 'f:1:FontFeature.slashedZero',
            }
          ],
          'decorationColor': ColorModel.json,
          'decorationStyle': {
            converterKey: 'f:1:TextDecorationStyle.wavy',
          },
          'decorationThickness': 20,
          'debugLabel': 'test_debugLabel',
          'fontFamily': 'test_fontFamily',
          'fontFamilyFallback': [
            'a_fontFamilyFallback',
            'b_fontFamilyFallback'
          ],
          'fontWeight': TextModel.fontWeight,
          'fontStyle': TextModel.fontStyle,
          'decoration': TextModel.textDecoration,
          'overflow': {
            converterKey: 'f:1:TextOverflow.clip',
          }
        }).build(config),
        isA<TextStyle>()
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
            .having(
                (p0) => p0.shadows, 'TextStyle.shadows', [ShadowModel.equals])
            .having((p0) => p0.fontFeatures, 'TextStyle.fontFeatures',
                const [FontFeature.slashedZero()])
            .having((p0) => p0.decorationColor, 'TextStyle.decorationColor',
                ColorModel.equals)
            .having((p0) => p0.decorationStyle, 'TextStyle.decorationStyle',
                TextDecorationStyle.wavy)
            .having((p0) => p0.decorationThickness,
                'TextStyle.decorationThickness', 20)
            .having((p0) => p0.debugLabel, 'TextStyle.debugLabel',
                'test_debugLabel')
            .having((p0) => p0.fontFamily, 'TextStyle.fontFamily',
                'test_fontFamily')
            .having(
                (p0) => p0.fontFamilyFallback,
                'TextStyle.fontFamilyFallback',
                ['a_fontFamilyFallback', 'b_fontFamilyFallback'])
            .having((p0) => p0.fontWeight, 'TextStyle.fontWeight',
                TextModel.equalsFontWeight)
            .having((p0) => p0.fontStyle, 'TextStyle.fontStyle',
                TextModel.equalsFontStyle)
            .having((p0) => p0.decoration, 'TextStyle.decoration',
                TextModel.equalsTextDecoration)
            .having(
                (p0) => p0.overflow, 'TextStyle.overflow', TextOverflow.clip));
  });

  test('FlutterTextOverflow', () {
    final config = FakeWidgetConfig();
    expect(
        FlutterTextOverflow.fromJson(
                <String, dynamic>{converterKey: 'f:1:TextOverflow.clip'})
            .build(config),
        TextOverflow.clip);

    expect(
        FlutterTextOverflow.fromJson(
                <String, dynamic>{converterKey: 'f:1:TextOverflow.ellipsis'})
            .build(config),
        TextOverflow.ellipsis);

    expect(
        FlutterTextOverflow.fromJson(
                <String, dynamic>{converterKey: 'f:1:TextOverflow.fade'})
            .build(config),
        TextOverflow.fade);

    expect(
        FlutterTextOverflow.fromJson(
                <String, dynamic>{converterKey: 'f:1:TextOverflow.visible'})
            .build(config),
        TextOverflow.visible);
  });

  group('FlutterStrutStyle', () {
    test('FlutterStrutStyle()', () {
      final config = FakeWidgetConfig();
      expect(
          FlutterStrutStyle.fromJson(<String, dynamic>{
            converterKey: 'f:1:StrutStyle',
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
          }).build(config),
          const StrutStyle(
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
          ));
    });

    test('FlutterStrutStyle.fromTextStyle()', () {
      final config = FakeWidgetConfig();
      expect(
          FlutterStrutStyle.fromJson(<String, dynamic>{
            converterKey: 'f:1:StrutStyle.fromTextStyle',
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
          }).build(config),
          StrutStyle.fromTextStyle(
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
          ));
    });
  });

  test('FlutterTextWidthBasis', () {
    final config = FakeWidgetConfig();
    expect(
        FlutterTextWidthBasis.fromJson(<String, dynamic>{
          converterKey: 'f:1:TextWidthBasis.longestLine'
        }).build(config),
        TextWidthBasis.longestLine);

    expect(
        FlutterTextWidthBasis.fromJson(
                <String, dynamic>{converterKey: 'f:1:TextWidthBasis.parent'})
            .build(config),
        TextWidthBasis.parent);
  });

  test('FlutterBoxFit', () {
    final config = FakeWidgetConfig();
    expect(
        FlutterBoxFit.fromJson(
                <String, dynamic>{converterKey: 'f:1:BoxFit.contain'})
            .build(config),
        BoxFit.contain);
    expect(
        FlutterBoxFit.fromJson(
            <String, dynamic>{converterKey: 'f:1:BoxFit.cover'}).build(config),
        BoxFit.cover);
    expect(
        FlutterBoxFit.fromJson(
            <String, dynamic>{converterKey: 'f:1:BoxFit.fill'}).build(config),
        BoxFit.fill);
    expect(
        FlutterBoxFit.fromJson(
                <String, dynamic>{converterKey: 'f:1:BoxFit.fitHeight'})
            .build(config),
        BoxFit.fitHeight);
    expect(
        FlutterBoxFit.fromJson(
                <String, dynamic>{converterKey: 'f:1:BoxFit.fitWidth'})
            .build(config),
        BoxFit.fitWidth);
    expect(
        FlutterBoxFit.fromJson(
            <String, dynamic>{converterKey: 'f:1:BoxFit.none'}).build(config),
        BoxFit.none);
    expect(
        FlutterBoxFit.fromJson(
                <String, dynamic>{converterKey: 'f:1:BoxFit.scaleDown'})
            .build(config),
        BoxFit.scaleDown);
  });

  test('FlutterImageRepeat', () {
    final config = FakeWidgetConfig();
    expect(
        FlutterImageRepeat.fromJson(
                <String, dynamic>{converterKey: 'f:1:ImageRepeat.noRepeat'})
            .build(config),
        ImageRepeat.noRepeat);

    expect(
        FlutterImageRepeat.fromJson(
                <String, dynamic>{converterKey: 'f:1:ImageRepeat.repeat'})
            .build(config),
        ImageRepeat.repeat);

    expect(
        FlutterImageRepeat.fromJson(
                <String, dynamic>{converterKey: 'f:1:ImageRepeat.repeatX'})
            .build(config),
        ImageRepeat.repeatX);

    expect(
        FlutterImageRepeat.fromJson(
                <String, dynamic>{converterKey: 'f:1:ImageRepeat.repeatY'})
            .build(config),
        ImageRepeat.repeatY);
  });

  test('FlutterTextAlignVertical', () {
    final config = FakeWidgetConfig();
    expect(
        FlutterTextAlignVertical.fromJson(<String, dynamic>{
          converterKey: 'f:1:TextAlignVertical',
          'y': 0.2,
        }).build(config),
        isA<TextAlignVertical>()
            .having((p0) => p0.y, 'TextAlignVertical.y', 0.2));

    expect(
        FlutterTextAlignVertical.fromJson(
                <String, dynamic>{converterKey: 'f:1:TextAlignVertical.bottom'})
            .build(config),
        TextAlignVertical.bottom);
    expect(
        FlutterTextAlignVertical.fromJson(
                <String, dynamic>{converterKey: 'f:1:TextAlignVertical.center'})
            .build(config),
        TextAlignVertical.center);
    expect(
        FlutterTextAlignVertical.fromJson(
                <String, dynamic>{converterKey: 'f:1:TextAlignVertical.top'})
            .build(config),
        TextAlignVertical.top);
  });
}
