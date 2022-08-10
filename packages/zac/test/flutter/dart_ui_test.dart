import 'dart:ui';

import 'package:zac/src/zac/any_value.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:zac/src/converter.dart';
import 'package:zac/src/base.dart';
import 'package:zac/src/flutter/dart_ui.dart';

import 'models.dart';

void main() {
  test('FlutterColor', () {
    final config = FakeZacContext();
    final fromARGB = FlutterColor.fromJson(<String, dynamic>{
      '_converter': 'f:1:Color.fromARGB',
      'a': 10,
      'r': 100,
      'g': 100,
      'b': 100
    });

    final fromRGBO = FlutterColor.fromJson(<String, dynamic>{
      '_converter': 'f:1:Color.fromRGBO',
      'opacity': 0.9,
      'r': 100,
      'g': 100,
      'b': 100
    });
    expect(fromARGB.build(config), const Color.fromARGB(10, 100, 100, 100));
    expect(fromRGBO.build(config), const Color.fromRGBO(100, 100, 100, 0.9));
  });

  test('FlutterOffset', () {
    final config = FakeZacContext();
    final offset = FlutterOffset.fromJson(<String, dynamic>{
      '_converter': 'f:1:Offset',
      'dx': 10,
      'dy': 20,
    });

    final direction = FlutterOffset.fromJson(<String, dynamic>{
      '_converter': 'f:1:Offset.fromDirection',
      'direction': 10,
      'distance': 20,
    });

    expect(offset.build(config), const Offset(10, 20));
    expect(direction.build(config), Offset.fromDirection(10, 20));
  });

  test('FlutterBlurStyle', () {
    final config = FakeZacContext();
    final inner = FlutterBlurStyle.fromJson(
        <String, dynamic>{'_converter': 'f:1:BlurSyle.inner'});
    final normal = FlutterBlurStyle.fromJson(
        <String, dynamic>{'_converter': 'f:1:BlurSyle.normal'});
    final outer = FlutterBlurStyle.fromJson(
        <String, dynamic>{'_converter': 'f:1:BlurSyle.outer'});
    final solid = FlutterBlurStyle.fromJson(
        <String, dynamic>{'_converter': 'f:1:BlurSyle.solid'});

    expect(inner.build(config), BlurStyle.inner);
    expect(normal.build(config), BlurStyle.normal);
    expect(outer.build(config), BlurStyle.outer);
    expect(solid.build(config), BlurStyle.solid);
  });

  test('FlutterRadius', () {
    final config = FakeZacContext();
    final circular = FlutterRadius.fromJson(<String, dynamic>{
      '_converter': 'f:1:Radius.circular',
      'radius': 5.0,
    });
    final elliptical = FlutterRadius.fromJson(<String, dynamic>{
      '_converter': 'f:1:Radius.elliptical',
      'x': 10,
      'y': 20,
    });

    expect(circular.build(config), const Radius.circular(5));
    expect(elliptical.build(config), const Radius.elliptical(10, 20));
  });

  test('FlutterTextDirection', () {
    final config = FakeZacContext();
    final rtl = FlutterTextDirection.fromJson(
        <String, dynamic>{'_converter': 'f:1:TextDirection.rtl'});
    final ltr = FlutterTextDirection.fromJson(
        <String, dynamic>{'_converter': 'f:1:TextDirection.ltr'});

    expect(rtl.build(config), TextDirection.rtl);
    expect(ltr.build(config), TextDirection.ltr);
  });

  test('FlutterClip', () {
    final config = FakeZacContext();
    expect(
        FlutterClip.fromJson(<String, dynamic>{'_converter': 'f:1:Clip.none'})
            .build(config),
        Clip.none);
    expect(
        FlutterClip.fromJson(
                <String, dynamic>{'_converter': 'f:1:Clip.antiAlias'})
            .build(config),
        Clip.antiAlias);
    expect(
        FlutterClip.fromJson(
            <String, dynamic>{'_converter': 'f:1:Clip.hardEdge'}).build(config),
        Clip.hardEdge);
  });

  test('FlutterTextBaseline', () {
    final config = FakeZacContext();
    expect(
        FlutterTextBaseline.fromJson(
                <String, dynamic>{'_converter': 'f:1:TextBaseline.alphabetic'})
            .build(config),
        TextBaseline.alphabetic);
    expect(
        FlutterTextBaseline.fromJson(
                <String, dynamic>{'_converter': 'f:1:TextBaseline.ideographic'})
            .build(config),
        TextBaseline.ideographic);
  });

  test('FlutterFontWeight', () {
    final config = FakeZacContext();
    expect(
        FlutterFontWeight.fromJson(
                <String, dynamic>{'_converter': 'f:1:FontWeight.bold'})
            .build(config),
        FontWeight.bold);

    expect(
        FlutterFontWeight.fromJson(
                <String, dynamic>{'_converter': 'f:1:FontWeight.normal'})
            .build(config),
        FontWeight.normal);

    expect(
        FlutterFontWeight.fromJson(
                <String, dynamic>{'_converter': 'f:1:FontWeight.w100'})
            .build(config),
        FontWeight.w100);

    expect(
        FlutterFontWeight.fromJson(
                <String, dynamic>{'_converter': 'f:1:FontWeight.w200'})
            .build(config),
        FontWeight.w200);

    expect(
        FlutterFontWeight.fromJson(
                <String, dynamic>{'_converter': 'f:1:FontWeight.w300'})
            .build(config),
        FontWeight.w300);

    expect(
        FlutterFontWeight.fromJson(
                <String, dynamic>{'_converter': 'f:1:FontWeight.w400'})
            .build(config),
        FontWeight.w400);

    expect(
        FlutterFontWeight.fromJson(
                <String, dynamic>{'_converter': 'f:1:FontWeight.w500'})
            .build(config),
        FontWeight.w500);

    expect(
        FlutterFontWeight.fromJson(
                <String, dynamic>{'_converter': 'f:1:FontWeight.w600'})
            .build(config),
        FontWeight.w600);

    expect(
        FlutterFontWeight.fromJson(
                <String, dynamic>{'_converter': 'f:1:FontWeight.w700'})
            .build(config),
        FontWeight.w700);

    expect(
        FlutterFontWeight.fromJson(
                <String, dynamic>{'_converter': 'f:1:FontWeight.w800'})
            .build(config),
        FontWeight.w800);

    expect(
        FlutterFontWeight.fromJson(
                <String, dynamic>{'_converter': 'f:1:FontWeight.w900'})
            .build(config),
        FontWeight.w900);
  });

  test('FlutterFontStyle', () {
    final config = FakeZacContext();
    expect(
        FlutterFontStyle.fromJson(
                <String, dynamic>{'_converter': 'f:1:FontStyle.italic'})
            .build(config),
        FontStyle.italic);

    expect(
        FlutterFontStyle.fromJson(
                <String, dynamic>{'_converter': 'f:1:FontStyle.normal'})
            .build(config),
        FontStyle.normal);
  });

  test('FlutterTextDecoration', () {
    final config = FakeZacContext();
    expect(
        FlutterTextDecoration.fromJson(<String, dynamic>{
          '_converter': 'f:1:TextDecoration.lineThrough'
        }).build(config),
        TextDecoration.lineThrough);
    expect(
        FlutterTextDecoration.fromJson(
                <String, dynamic>{'_converter': 'f:1:TextDecoration.none'})
            .build(config),
        TextDecoration.none);
    expect(
        FlutterTextDecoration.fromJson(
                <String, dynamic>{'_converter': 'f:1:TextDecoration.overline'})
            .build(config),
        TextDecoration.overline);
    expect(
        FlutterTextDecoration.fromJson(
                <String, dynamic>{'_converter': 'f:1:TextDecoration.underline'})
            .build(config),
        TextDecoration.underline);
  });

  test('FlutterTextLeadingDistribution', () {
    final config = FakeZacContext();
    expect(
        FlutterTextLeadingDistribution.fromJson(<String, dynamic>{
          '_converter': 'f:1:TextLeadingDistribution.even'
        }).build(config),
        TextLeadingDistribution.even);

    expect(
        FlutterTextLeadingDistribution.fromJson(<String, dynamic>{
          '_converter': 'f:1:TextLeadingDistribution.proportional'
        }).build(config),
        TextLeadingDistribution.proportional);
  });

  test('FlutterLocale', () {
    final config = FakeZacContext();
    expect(
        FlutterLocale.fromJson(<String, dynamic>{
          '_converter': 'f:1:Locale',
          'languageCode': 'de',
          'countryCode': 'AT',
        }).build(config),
        const Locale('de', 'AT'));
  });

  test('FlutterFontFeature', () {
    final config = FakeZacContext();
    expect(
        FlutterFontFeature.fromJson(<String, dynamic>{
          '_converter': 'f:1:FontFeature',
          'feature': 'some',
          'value': 5,
        }).build(config),
        const FontFeature('some', 5));

    expect(
        FlutterFontFeature.fromJson(<String, dynamic>{
          '_converter': 'f:1:FontFeature.alternative',
          'value': 5,
        }).build(config),
        const FontFeature.alternative(5));

    expect(
        FlutterFontFeature.fromJson(<String, dynamic>{
          '_converter': 'f:1:FontFeature.alternativeFractions',
        }).build(config),
        const FontFeature.alternativeFractions());

    expect(
        FlutterFontFeature.fromJson(<String, dynamic>{
          '_converter': 'f:1:FontFeature.caseSensitiveForms',
        }).build(config),
        const FontFeature.caseSensitiveForms());

    expect(
        FlutterFontFeature.fromJson(<String, dynamic>{
          '_converter': 'f:1:FontFeature.characterVariant',
          'value': 5,
        }).build(config),
        FontFeature.characterVariant(5));

    expect(
        FlutterFontFeature.fromJson(<String, dynamic>{
          '_converter': 'f:1:FontFeature.contextualAlternates',
        }).build(config),
        const FontFeature.contextualAlternates());

    expect(
        FlutterFontFeature.fromJson(<String, dynamic>{
          '_converter': 'f:1:FontFeature.denominator',
        }).build(config),
        const FontFeature.denominator());

    expect(
        FlutterFontFeature.fromJson(<String, dynamic>{
          '_converter': 'f:1:FontFeature.disable',
          'feature': 'some'
        }).build(config),
        const FontFeature.disable('some'));

    expect(
        FlutterFontFeature.fromJson(<String, dynamic>{
          '_converter': 'f:1:FontFeature.enable',
          'feature': 'some'
        }).build(config),
        const FontFeature.enable('some'));

    expect(
        FlutterFontFeature.fromJson(<String, dynamic>{
          '_converter': 'f:1:FontFeature.fractions',
        }).build(config),
        const FontFeature.fractions());

    expect(
        FlutterFontFeature.fromJson(<String, dynamic>{
          '_converter': 'f:1:FontFeature.historicalForms',
        }).build(config),
        const FontFeature.historicalForms());

    expect(
        FlutterFontFeature.fromJson(<String, dynamic>{
          '_converter': 'f:1:FontFeature.historicalLigatures',
        }).build(config),
        const FontFeature.historicalLigatures());

    expect(
        FlutterFontFeature.fromJson(<String, dynamic>{
          '_converter': 'f:1:FontFeature.liningFigures',
        }).build(config),
        const FontFeature.liningFigures());

    expect(
        FlutterFontFeature.fromJson(<String, dynamic>{
          '_converter': 'f:1:FontFeature.localeAware',
          'enable': false
        }).build(config),
        const FontFeature.localeAware(enable: false));

    expect(
        FlutterFontFeature.fromJson(<String, dynamic>{
          '_converter': 'f:1:FontFeature.notationalForms',
          'value': 5
        }).build(config),
        const FontFeature.notationalForms(5));

    expect(
        FlutterFontFeature.fromJson(<String, dynamic>{
          '_converter': 'f:1:FontFeature.numerators',
        }).build(config),
        const FontFeature.numerators());

    expect(
        FlutterFontFeature.fromJson(<String, dynamic>{
          '_converter': 'f:1:FontFeature.oldstyleFigures',
        }).build(config),
        const FontFeature.oldstyleFigures());

    expect(
        FlutterFontFeature.fromJson(<String, dynamic>{
          '_converter': 'f:1:FontFeature.ordinalForms',
        }).build(config),
        const FontFeature.ordinalForms());

    expect(
        FlutterFontFeature.fromJson(<String, dynamic>{
          '_converter': 'f:1:FontFeature.proportionalFigures',
        }).build(config),
        const FontFeature.proportionalFigures());

    expect(
        FlutterFontFeature.fromJson(<String, dynamic>{
          '_converter': 'f:1:FontFeature.randomize',
        }).build(config),
        const FontFeature.randomize());

    expect(
        FlutterFontFeature.fromJson(<String, dynamic>{
          '_converter': 'f:1:FontFeature.scientificInferiors',
        }).build(config),
        const FontFeature.scientificInferiors());

    expect(
        FlutterFontFeature.fromJson(<String, dynamic>{
          '_converter': 'f:1:FontFeature.slashedZero',
        }).build(config),
        const FontFeature.slashedZero());

    expect(
        FlutterFontFeature.fromJson(<String, dynamic>{
          '_converter': 'f:1:FontFeature.stylisticAlternates',
        }).build(config),
        const FontFeature.stylisticAlternates());

    expect(
        FlutterFontFeature.fromJson(<String, dynamic>{
          '_converter': 'f:1:FontFeature.stylisticSet',
          'value': 5,
        }).build(config),
        FontFeature.stylisticSet(5));

    expect(
        FlutterFontFeature.fromJson(<String, dynamic>{
          '_converter': 'f:1:FontFeature.subscripts',
        }).build(config),
        const FontFeature.subscripts());

    expect(
        FlutterFontFeature.fromJson(<String, dynamic>{
          '_converter': 'f:1:FontFeature.superscripts',
        }).build(config),
        const FontFeature.superscripts());

    expect(
        FlutterFontFeature.fromJson(<String, dynamic>{
          '_converter': 'f:1:FontFeature.swash',
          'value': 5
        }).build(config),
        const FontFeature.swash(5));

    expect(
        FlutterFontFeature.fromJson(<String, dynamic>{
          '_converter': 'f:1:FontFeature.tabularFigures',
        }).build(config),
        const FontFeature.tabularFigures());
  });

  test('FlutterTextDecorationStyle', () {
    final config = FakeZacContext();
    expect(
        FlutterTextDecorationStyle.fromJson(<String, dynamic>{
          '_converter': 'f:1:TextDecorationStyle.dashed'
        }).build(config),
        TextDecorationStyle.dashed);

    expect(
        FlutterTextDecorationStyle.fromJson(<String, dynamic>{
          '_converter': 'f:1:TextDecorationStyle.dotted'
        }).build(config),
        TextDecorationStyle.dotted);

    expect(
        FlutterTextDecorationStyle.fromJson(<String, dynamic>{
          '_converter': 'f:1:TextDecorationStyle.double'
        }).build(config),
        TextDecorationStyle.double);

    expect(
        FlutterTextDecorationStyle.fromJson(<String, dynamic>{
          '_converter': 'f:1:TextDecorationStyle.solid'
        }).build(config),
        TextDecorationStyle.solid);

    expect(
        FlutterTextDecorationStyle.fromJson(
                <String, dynamic>{'_converter': 'f:1:TextDecorationStyle.wavy'})
            .build(config),
        TextDecorationStyle.wavy);
  });

  test('FlutterTextAlign', () {
    final config = FakeZacContext();
    expect(
        FlutterTextAlign.fromJson(
                <String, dynamic>{'_converter': 'f:1:TextAlign.center'})
            .build(config),
        TextAlign.center);

    expect(
        FlutterTextAlign.fromJson(
            <String, dynamic>{'_converter': 'f:1:TextAlign.end'}).build(config),
        TextAlign.end);

    expect(
        FlutterTextAlign.fromJson(
                <String, dynamic>{'_converter': 'f:1:TextAlign.justify'})
            .build(config),
        TextAlign.justify);

    expect(
        FlutterTextAlign.fromJson(
                <String, dynamic>{'_converter': 'f:1:TextAlign.left'})
            .build(config),
        TextAlign.left);

    expect(
        FlutterTextAlign.fromJson(
                <String, dynamic>{'_converter': 'f:1:TextAlign.right'})
            .build(config),
        TextAlign.right);

    expect(
        FlutterTextAlign.fromJson(
                <String, dynamic>{'_converter': 'f:1:TextAlign.start'})
            .build(config),
        TextAlign.start);
  });

  test('FlutterTextHeightBehavior', () {
    final config = FakeZacContext();
    expect(
        FlutterTextHeightBehavior.fromJson(<String, dynamic>{
          '_converter': 'f:1:TextHeightBehavior',
          'applyHeightToFirstAscent': false,
          'applyHeightToLastDescent': false,
          'leadingDistribution': {
            '_converter': 'f:1:TextLeadingDistribution.even'
          }
        }).build(config),
        const TextHeightBehavior(
            applyHeightToFirstAscent: false,
            applyHeightToLastDescent: false,
            leadingDistribution: TextLeadingDistribution.even));
  });

  test('FlutterBlendMode', () {
    final config = FakeZacContext();
    expect(
        FlutterBlendMode.fromJson(
                <String, dynamic>{'_converter': 'f:1:BlendMode.clear'})
            .build(config),
        BlendMode.clear);
    expect(
        FlutterBlendMode.fromJson(
                <String, dynamic>{'_converter': 'f:1:BlendMode.color'})
            .build(config),
        BlendMode.color);

    expect(
        FlutterBlendMode.fromJson(
                <String, dynamic>{'_converter': 'f:1:BlendMode.colorBurn'})
            .build(config),
        BlendMode.colorBurn);

    expect(
        FlutterBlendMode.fromJson(
                <String, dynamic>{'_converter': 'f:1:BlendMode.colorDodge'})
            .build(config),
        BlendMode.colorDodge);

    expect(
        FlutterBlendMode.fromJson(
                <String, dynamic>{'_converter': 'f:1:BlendMode.darken'})
            .build(config),
        BlendMode.darken);

    expect(
        FlutterBlendMode.fromJson(
                <String, dynamic>{'_converter': 'f:1:BlendMode.difference'})
            .build(config),
        BlendMode.difference);

    expect(
        FlutterBlendMode.fromJson(
            <String, dynamic>{'_converter': 'f:1:BlendMode.dst'}).build(config),
        BlendMode.dst);

    expect(
        FlutterBlendMode.fromJson(
                <String, dynamic>{'_converter': 'f:1:BlendMode.dstATop'})
            .build(config),
        BlendMode.dstATop);

    expect(
        FlutterBlendMode.fromJson(
                <String, dynamic>{'_converter': 'f:1:BlendMode.dstIn'})
            .build(config),
        BlendMode.dstIn);

    expect(
        FlutterBlendMode.fromJson(
                <String, dynamic>{'_converter': 'f:1:BlendMode.dstOut'})
            .build(config),
        BlendMode.dstOut);

    expect(
        FlutterBlendMode.fromJson(
                <String, dynamic>{'_converter': 'f:1:BlendMode.dstOver'})
            .build(config),
        BlendMode.dstOver);

    expect(
        FlutterBlendMode.fromJson(
                <String, dynamic>{'_converter': 'f:1:BlendMode.exclusion'})
            .build(config),
        BlendMode.exclusion);

    expect(
        FlutterBlendMode.fromJson(
                <String, dynamic>{'_converter': 'f:1:BlendMode.hardLight'})
            .build(config),
        BlendMode.hardLight);

    expect(
        FlutterBlendMode.fromJson(
            <String, dynamic>{'_converter': 'f:1:BlendMode.hue'}).build(config),
        BlendMode.hue);

    expect(
        FlutterBlendMode.fromJson(
                <String, dynamic>{'_converter': 'f:1:BlendMode.lighten'})
            .build(config),
        BlendMode.lighten);

    expect(
        FlutterBlendMode.fromJson(
                <String, dynamic>{'_converter': 'f:1:BlendMode.luminosity'})
            .build(config),
        BlendMode.luminosity);

    expect(
        FlutterBlendMode.fromJson(
                <String, dynamic>{'_converter': 'f:1:BlendMode.modulate'})
            .build(config),
        BlendMode.modulate);

    expect(
        FlutterBlendMode.fromJson(
                <String, dynamic>{'_converter': 'f:1:BlendMode.multiply'})
            .build(config),
        BlendMode.multiply);

    expect(
        FlutterBlendMode.fromJson(
                <String, dynamic>{'_converter': 'f:1:BlendMode.overlay'})
            .build(config),
        BlendMode.overlay);

    expect(
        FlutterBlendMode.fromJson(
                <String, dynamic>{'_converter': 'f:1:BlendMode.plus'})
            .build(config),
        BlendMode.plus);

    expect(
        FlutterBlendMode.fromJson(
                <String, dynamic>{'_converter': 'f:1:BlendMode.saturation'})
            .build(config),
        BlendMode.saturation);

    expect(
        FlutterBlendMode.fromJson(
                <String, dynamic>{'_converter': 'f:1:BlendMode.screen'})
            .build(config),
        BlendMode.screen);

    expect(
        FlutterBlendMode.fromJson(
                <String, dynamic>{'_converter': 'f:1:BlendMode.softLight'})
            .build(config),
        BlendMode.softLight);

    expect(
        FlutterBlendMode.fromJson(
            <String, dynamic>{'_converter': 'f:1:BlendMode.src'}).build(config),
        BlendMode.src);

    expect(
        FlutterBlendMode.fromJson(
                <String, dynamic>{'_converter': 'f:1:BlendMode.srcATop'})
            .build(config),
        BlendMode.srcATop);

    expect(
        FlutterBlendMode.fromJson(
                <String, dynamic>{'_converter': 'f:1:BlendMode.srcIn'})
            .build(config),
        BlendMode.srcIn);

    expect(
        FlutterBlendMode.fromJson(
                <String, dynamic>{'_converter': 'f:1:BlendMode.srcOut'})
            .build(config),
        BlendMode.srcOut);

    expect(
        FlutterBlendMode.fromJson(
                <String, dynamic>{'_converter': 'f:1:BlendMode.srcOver'})
            .build(config),
        BlendMode.srcOver);

    expect(
        FlutterBlendMode.fromJson(
            <String, dynamic>{'_converter': 'f:1:BlendMode.xor'}).build(config),
        BlendMode.xor);
  });

  test('FlutterRect', () {
    final config = FakeZacContext();
    final offset = FlutterOffset(ZacDouble(10), ZacDouble(20));
    expect(
        FlutterRect.fromJson(<String, dynamic>{
          '_converter': 'f:1:Rect.fromCenter',
          'center': {
            '_converter': 'f:1:Offset',
            'dx': 10,
            'dy': 20,
          },
          'width': 11,
          'height': 22,
        }).build(config),
        Rect.fromCenter(center: offset.build(config), width: 11, height: 22));
    expect(
        FlutterRect.fromJson(<String, dynamic>{
          '_converter': 'f:1:Rect.fromCircle',
          'center': {
            '_converter': 'f:1:Offset',
            'dx': 10,
            'dy': 20,
          },
          'radius': 11,
        }).build(config),
        Rect.fromCircle(center: offset.build(config), radius: 11));
    expect(
        FlutterRect.fromJson(<String, dynamic>{
          '_converter': 'f:1:Rect.fromLTRB',
          'left': 1,
          'top': 2,
          'right': 3,
          'bottom': 4
        }).build(config),
        const Rect.fromLTRB(1, 2, 3, 4));
    expect(
        FlutterRect.fromJson(<String, dynamic>{
          '_converter': 'f:1:Rect.fromLTWH',
          'left': 1,
          'top': 2,
          'width': 3,
          'height': 4,
        }).build(config),
        const Rect.fromLTWH(1, 2, 3, 4));
    expect(
        FlutterRect.fromJson(<String, dynamic>{
          '_converter': 'f:1:Rect.fromPoints',
          'center': {
            '_converter': 'f:1:Offset',
            'dx': 10,
            'dy': 20,
          },
          'a': {
            '_converter': 'f:1:Offset',
            'dx': 10,
            'dy': 20,
          },
          'b': {
            '_converter': 'f:1:Offset',
            'dx': 10,
            'dy': 20,
          },
        }).build(config),
        Rect.fromPoints(offset.build(config), offset.build(config)));
  });

  test('FlutterFilterQuality', () {
    final config = FakeZacContext();
    expect(
        FlutterFilterQuality.fromJson(
                <String, dynamic>{'_converter': 'f:1:FilterQuality.high'})
            .build(config),
        FilterQuality.high);

    expect(
        FlutterFilterQuality.fromJson(
                <String, dynamic>{'_converter': 'f:1:FilterQuality.low'})
            .build(config),
        FilterQuality.low);

    expect(
        FlutterFilterQuality.fromJson(
                <String, dynamic>{'_converter': 'f:1:FilterQuality.medium'})
            .build(config),
        FilterQuality.medium);

    expect(
        FlutterFilterQuality.fromJson(
                <String, dynamic>{'_converter': 'f:1:FilterQuality.none'})
            .build(config),
        FilterQuality.none);
  });

  test('FlutterBrightness', () {
    final config = FakeZacContext();
    expect(
        FlutterBrightness.fromJson(
                <String, dynamic>{'_converter': 'f:1:Brightness.light'})
            .build(config),
        Brightness.light);
    expect(
        FlutterBrightness.fromJson(
                <String, dynamic>{'_converter': 'f:1:Brightness.dark'})
            .build(config),
        Brightness.dark);
  });

  test('FlutterSize', () {
    final config = FakeZacContext();
    expect(
        FlutterSize.fromJson(<String, dynamic>{
          '_converter': 'f:1:Size',
          'width': 10,
          'height': 20,
        }).build(config),
        const Size(10, 20));
  });

  test('FlutterBoxHeightStyle', () {
    final config = FakeZacContext();
    expect(
        FlutterBoxHeightStyle.fromJson(<String, dynamic>{
          '_converter': 'f:1:BoxHeightStyle.includeLineSpacingBottom',
        }).build(config),
        BoxHeightStyle.includeLineSpacingBottom);
    expect(
        FlutterBoxHeightStyle.fromJson(<String, dynamic>{
          '_converter': 'f:1:BoxHeightStyle.includeLineSpacingMiddle',
        }).build(config),
        BoxHeightStyle.includeLineSpacingMiddle);
    expect(
        FlutterBoxHeightStyle.fromJson(<String, dynamic>{
          '_converter': 'f:1:BoxHeightStyle.includeLineSpacingTop',
        }).build(config),
        BoxHeightStyle.includeLineSpacingTop);
    expect(
        FlutterBoxHeightStyle.fromJson(<String, dynamic>{
          '_converter': 'f:1:BoxHeightStyle.max',
        }).build(config),
        BoxHeightStyle.max);
    expect(
        FlutterBoxHeightStyle.fromJson(<String, dynamic>{
          '_converter': 'f:1:BoxHeightStyle.strut',
        }).build(config),
        BoxHeightStyle.strut);
    expect(
        FlutterBoxHeightStyle.fromJson(<String, dynamic>{
          '_converter': 'f:1:BoxHeightStyle.tight',
        }).build(config),
        BoxHeightStyle.tight);
  });

  test('FlutterBoxWidthStyle', () {
    final config = FakeZacContext();
    expect(
        FlutterBoxWidthStyle.fromJson(<String, dynamic>{
          '_converter': 'f:1:BoxWidthStyle.max',
        }).build(config),
        BoxWidthStyle.max);
    expect(
        FlutterBoxWidthStyle.fromJson(<String, dynamic>{
          '_converter': 'f:1:BoxWidthStyle.tight',
        }).build(config),
        BoxWidthStyle.tight);
  });
}
