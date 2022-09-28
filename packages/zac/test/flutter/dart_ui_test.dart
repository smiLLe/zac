import 'dart:ui';

import 'package:flutter_test/flutter_test.dart';
import 'package:zac/src/flutter/dart_ui.dart';

import '../helper.dart';

void main() {
  test('FlutterColor', () {
    fakeBuild<Color>(
      FlutterColor.fromJson(<String, dynamic>{
        '_converter': 'f:1:Color.fromARGB',
        'a': 10,
        'r': 100,
        'g': 100,
        'b': 100
      }).build,
      (matcher) => matcher.having((p0) => p0, 'Color.fromARGB',
          equals(const Color.fromARGB(10, 100, 100, 100))),
    );
    fakeBuild<Color>(
      FlutterColor.fromJson(<String, dynamic>{
        '_converter': 'f:1:Color.fromRGBO',
        'opacity': 0.9,
        'r': 100,
        'g': 100,
        'b': 100
      }).build,
      (matcher) => matcher.having((p0) => p0, 'Color.fromRGBO',
          equals(const Color.fromRGBO(100, 100, 100, 0.9))),
    );
  });

  test('FlutterOffset', () {
    fakeBuild<Offset>(
      FlutterOffset.fromJson(<String, dynamic>{
        '_converter': 'f:1:Offset',
        'dx': 10,
        'dy': 20,
      }).build,
      (matcher) =>
          matcher.having((p0) => p0, 'Offset', equals(const Offset(10, 20))),
    );

    fakeBuild<Offset>(
      FlutterOffset.fromJson(<String, dynamic>{
        '_converter': 'f:1:Offset.fromDirection',
        'direction': 10,
        'distance': 20,
      }).build,
      (matcher) => matcher.having((p0) => p0, 'Offset.fromDirection',
          equals(Offset.fromDirection(10, 20))),
    );
  });

  test('FlutterBlurStyle', () {
    fakeBuild<BlurStyle>(
      FlutterBlurStyle.fromJson(
          <String, dynamic>{'_converter': 'f:1:BlurSyle.inner'}).build,
      (matcher) => matcher.having(
          (p0) => p0, 'BlurStyle.inner', equals(BlurStyle.inner)),
    );
    fakeBuild<BlurStyle>(
      FlutterBlurStyle.fromJson(
          <String, dynamic>{'_converter': 'f:1:BlurSyle.normal'}).build,
      (matcher) => matcher.having(
          (p0) => p0, 'BlurStyle.normal', equals(BlurStyle.normal)),
    );

    fakeBuild<BlurStyle>(
      FlutterBlurStyle.fromJson(
          <String, dynamic>{'_converter': 'f:1:BlurSyle.outer'}).build,
      (matcher) => matcher.having(
          (p0) => p0, 'BlurStyle.outer', equals(BlurStyle.outer)),
    );

    fakeBuild<BlurStyle>(
      FlutterBlurStyle.fromJson(
          <String, dynamic>{'_converter': 'f:1:BlurSyle.solid'}).build,
      (matcher) => matcher.having(
          (p0) => p0, 'BlurStyle.solid', equals(BlurStyle.solid)),
    );
  });

  test('FlutterRadius', () {
    fakeBuild<Radius>(
      FlutterRadius.fromJson(<String, dynamic>{
        '_converter': 'f:1:Radius.circular',
        'radius': 5.0,
      }).build,
      (matcher) => matcher.having(
          (p0) => p0, 'Radius.circular', equals(const Radius.circular(5))),
    );
    fakeBuild<Radius>(
      FlutterRadius.fromJson(<String, dynamic>{
        '_converter': 'f:1:Radius.elliptical',
        'x': 10,
        'y': 20,
      }).build,
      (matcher) => matcher.having((p0) => p0, 'Radius.elliptical',
          equals(const Radius.elliptical(10, 20))),
    );
  });

  test('FlutterTextDirection', () {
    fakeBuild<TextDirection>(
      FlutterTextDirection.fromJson(
          <String, dynamic>{'_converter': 'f:1:TextDirection.rtl'}).build,
      (matcher) => matcher.having(
          (p0) => p0, 'TextDirection.rtl', equals(TextDirection.rtl)),
    );

    fakeBuild<TextDirection>(
      FlutterTextDirection.fromJson(
          <String, dynamic>{'_converter': 'f:1:TextDirection.ltr'}).build,
      (matcher) => matcher.having(
          (p0) => p0, 'TextDirection.ltr', equals(TextDirection.ltr)),
    );
  });

  test('FlutterClip', () {
    fakeBuild<Clip>(
      FlutterClip.fromJson(<String, dynamic>{'_converter': 'f:1:Clip.none'})
          .build,
      (matcher) => matcher.having((p0) => p0, 'Clip.none', equals(Clip.none)),
    );

    fakeBuild<Clip>(
      FlutterClip.fromJson(
          <String, dynamic>{'_converter': 'f:1:Clip.antiAlias'}).build,
      (matcher) =>
          matcher.having((p0) => p0, 'Clip.antiAlias', equals(Clip.antiAlias)),
    );

    fakeBuild<Clip>(
      FlutterClip.fromJson(<String, dynamic>{'_converter': 'f:1:Clip.hardEdge'})
          .build,
      (matcher) =>
          matcher.having((p0) => p0, 'Clip.hardEdge', equals(Clip.hardEdge)),
    );
  });

  test('FlutterTextBaseline', () {
    fakeBuild<TextBaseline>(
      FlutterTextBaseline.fromJson(
          <String, dynamic>{'_converter': 'f:1:TextBaseline.alphabetic'}).build,
      (matcher) => matcher.having((p0) => p0, 'TextBaseline.alphabetic',
          equals(TextBaseline.alphabetic)),
    );

    fakeBuild<TextBaseline>(
      FlutterTextBaseline.fromJson(
              <String, dynamic>{'_converter': 'f:1:TextBaseline.ideographic'})
          .build,
      (matcher) => matcher.having((p0) => p0, 'TextBaseline.ideographic',
          equals(TextBaseline.ideographic)),
    );
  });

  test('FlutterFontWeight', () {
    fakeBuild<FontWeight>(
      FlutterFontWeight.fromJson(
          <String, dynamic>{'_converter': 'f:1:FontWeight.bold'}).build,
      (matcher) => matcher.having(
          (p0) => p0, 'FontWeight.bold', equals(FontWeight.bold)),
    );

    fakeBuild<FontWeight>(
      FlutterFontWeight.fromJson(
          <String, dynamic>{'_converter': 'f:1:FontWeight.normal'}).build,
      (matcher) => matcher.having(
          (p0) => p0, 'FontWeight.normal', equals(FontWeight.normal)),
    );

    fakeBuild<FontWeight>(
      FlutterFontWeight.fromJson(
          <String, dynamic>{'_converter': 'f:1:FontWeight.w100'}).build,
      (matcher) => matcher.having(
          (p0) => p0, 'FontWeight.w100', equals(FontWeight.w100)),
    );

    fakeBuild<FontWeight>(
      FlutterFontWeight.fromJson(
          <String, dynamic>{'_converter': 'f:1:FontWeight.w200'}).build,
      (matcher) => matcher.having(
          (p0) => p0, 'FontWeight.w200', equals(FontWeight.w200)),
    );

    fakeBuild<FontWeight>(
      FlutterFontWeight.fromJson(
          <String, dynamic>{'_converter': 'f:1:FontWeight.w300'}).build,
      (matcher) => matcher.having(
          (p0) => p0, 'FontWeight.w300', equals(FontWeight.w300)),
    );

    fakeBuild<FontWeight>(
      FlutterFontWeight.fromJson(
          <String, dynamic>{'_converter': 'f:1:FontWeight.w400'}).build,
      (matcher) => matcher.having(
          (p0) => p0, 'FontWeight.w400', equals(FontWeight.w400)),
    );

    fakeBuild<FontWeight>(
      FlutterFontWeight.fromJson(
          <String, dynamic>{'_converter': 'f:1:FontWeight.w500'}).build,
      (matcher) => matcher.having(
          (p0) => p0, 'FontWeight.w500', equals(FontWeight.w500)),
    );

    fakeBuild<FontWeight>(
      FlutterFontWeight.fromJson(
          <String, dynamic>{'_converter': 'f:1:FontWeight.w600'}).build,
      (matcher) => matcher.having(
          (p0) => p0, 'FontWeight.w600', equals(FontWeight.w600)),
    );

    fakeBuild<FontWeight>(
      FlutterFontWeight.fromJson(
          <String, dynamic>{'_converter': 'f:1:FontWeight.w700'}).build,
      (matcher) => matcher.having(
          (p0) => p0, 'FontWeight.w700', equals(FontWeight.w700)),
    );

    fakeBuild<FontWeight>(
      FlutterFontWeight.fromJson(
          <String, dynamic>{'_converter': 'f:1:FontWeight.w800'}).build,
      (matcher) => matcher.having(
          (p0) => p0, 'FontWeight.w800', equals(FontWeight.w800)),
    );

    fakeBuild<FontWeight>(
      FlutterFontWeight.fromJson(
          <String, dynamic>{'_converter': 'f:1:FontWeight.w900'}).build,
      (matcher) => matcher.having(
          (p0) => p0, 'FontWeight.w900', equals(FontWeight.w900)),
    );
  });

  test('FlutterFontStyle', () {
    fakeBuild<FontStyle>(
      FlutterFontStyle.fromJson(
          <String, dynamic>{'_converter': 'f:1:FontStyle.italic'}).build,
      (matcher) => matcher.having(
          (p0) => p0, 'FontStyle.italic', equals(FontStyle.italic)),
    );
    fakeBuild<FontStyle>(
      FlutterFontStyle.fromJson(
          <String, dynamic>{'_converter': 'f:1:FontStyle.normal'}).build,
      (matcher) => matcher.having(
          (p0) => p0, 'FontStyle.normal', equals(FontStyle.normal)),
    );
  });

  test('FlutterTextDecoration', () {
    fakeBuild<TextDecoration>(
      FlutterTextDecoration.fromJson(
              <String, dynamic>{'_converter': 'f:1:TextDecoration.lineThrough'})
          .build,
      (matcher) => matcher.having((p0) => p0, 'TextDecoration.lineThrough',
          equals(TextDecoration.lineThrough)),
    );
    fakeBuild<TextDecoration>(
      FlutterTextDecoration.fromJson(
          <String, dynamic>{'_converter': 'f:1:TextDecoration.none'}).build,
      (matcher) => matcher.having(
          (p0) => p0, 'TextDecoration.none', equals(TextDecoration.none)),
    );
    fakeBuild<TextDecoration>(
      FlutterTextDecoration.fromJson(
          <String, dynamic>{'_converter': 'f:1:TextDecoration.overline'}).build,
      (matcher) => matcher.having((p0) => p0, 'TextDecoration.overline',
          equals(TextDecoration.overline)),
    );
    fakeBuild<TextDecoration>(
      FlutterTextDecoration.fromJson(
              <String, dynamic>{'_converter': 'f:1:TextDecoration.underline'})
          .build,
      (matcher) => matcher.having((p0) => p0, 'TextDecoration.underline',
          equals(TextDecoration.underline)),
    );
  });

  test('FlutterTextLeadingDistribution', () {
    fakeBuild<TextLeadingDistribution>(
      FlutterTextLeadingDistribution.fromJson(<String, dynamic>{
        '_converter': 'f:1:TextLeadingDistribution.even'
      }).build,
      (matcher) => matcher.having((p0) => p0, 'TextLeadingDistribution.even',
          equals(TextLeadingDistribution.even)),
    );
    fakeBuild<TextLeadingDistribution>(
      FlutterTextLeadingDistribution.fromJson(<String, dynamic>{
        '_converter': 'f:1:TextLeadingDistribution.proportional'
      }).build,
      (matcher) => matcher.having(
          (p0) => p0,
          'TextLeadingDistribution.proportional',
          equals(TextLeadingDistribution.proportional)),
    );
  });

  test('FlutterLocale', () {
    fakeBuild<Locale>(
      FlutterLocale.fromJson(<String, dynamic>{
        '_converter': 'f:1:Locale',
        'languageCode': 'de',
        'countryCode': 'AT',
      }).build,
      (matcher) => matcher.having(
          (p0) => p0, 'Locale', equals(const Locale('de', 'AT'))),
    );
  });

  test('FlutterFontFeature', () {
    fakeBuild<FontFeature>(
      FlutterFontFeature.fromJson(<String, dynamic>{
        '_converter': 'f:1:FontFeature',
        'feature': 'some',
        'value': 5,
      }).build,
      (matcher) => matcher.having(
          (p0) => p0, 'FontFeature', equals(const FontFeature('some', 5))),
    );
    fakeBuild<FontFeature>(
      FlutterFontFeature.fromJson(<String, dynamic>{
        '_converter': 'f:1:FontFeature.alternative',
        'value': 5,
      }).build,
      (matcher) => matcher.having((p0) => p0, 'FontFeature.alternative',
          equals(const FontFeature.alternative(5))),
    );

    fakeBuild<FontFeature>(
      FlutterFontFeature.fromJson(<String, dynamic>{
        '_converter': 'f:1:FontFeature.alternativeFractions',
      }).build,
      (matcher) => matcher.having(
          (p0) => p0,
          'FontFeature.alternativeFractions',
          equals(const FontFeature.alternativeFractions())),
    );

    fakeBuild<FontFeature>(
      FlutterFontFeature.fromJson(<String, dynamic>{
        '_converter': 'f:1:FontFeature.caseSensitiveForms',
      }).build,
      (matcher) => matcher.having((p0) => p0, 'FontFeature.caseSensitiveForms',
          equals(const FontFeature.caseSensitiveForms())),
    );

    fakeBuild<FontFeature>(
      FlutterFontFeature.fromJson(<String, dynamic>{
        '_converter': 'f:1:FontFeature.characterVariant',
        'value': 5,
      }).build,
      (matcher) => matcher.having((p0) => p0, 'FontFeature.characterVariant',
          equals(FontFeature.characterVariant(5))),
    );

    fakeBuild<FontFeature>(
      FlutterFontFeature.fromJson(<String, dynamic>{
        '_converter': 'f:1:FontFeature.contextualAlternates',
      }).build,
      (matcher) => matcher.having(
          (p0) => p0,
          'FontFeature.contextualAlternates',
          equals(const FontFeature.contextualAlternates())),
    );

    fakeBuild<FontFeature>(
      FlutterFontFeature.fromJson(<String, dynamic>{
        '_converter': 'f:1:FontFeature.denominator',
      }).build,
      (matcher) => matcher.having((p0) => p0, 'FontFeature.denominator',
          equals(const FontFeature.denominator())),
    );

    fakeBuild<FontFeature>(
      FlutterFontFeature.fromJson(<String, dynamic>{
        '_converter': 'f:1:FontFeature.disable',
        'feature': 'some'
      }).build,
      (matcher) => matcher.having((p0) => p0, 'FontFeature.disable',
          equals(const FontFeature.disable('some'))),
    );

    fakeBuild<FontFeature>(
      FlutterFontFeature.fromJson(<String, dynamic>{
        '_converter': 'f:1:FontFeature.enable',
        'feature': 'some'
      }).build,
      (matcher) => matcher.having((p0) => p0, 'FontFeature.enable',
          equals(const FontFeature.enable('some'))),
    );

    fakeBuild<FontFeature>(
      FlutterFontFeature.fromJson(<String, dynamic>{
        '_converter': 'f:1:FontFeature.fractions',
      }).build,
      (matcher) => matcher.having((p0) => p0, 'FontFeature.fractions',
          equals(const FontFeature.fractions())),
    );

    fakeBuild<FontFeature>(
      FlutterFontFeature.fromJson(<String, dynamic>{
        '_converter': 'f:1:FontFeature.historicalForms',
      }).build,
      (matcher) => matcher.having((p0) => p0, 'FontFeature.historicalForms',
          equals(const FontFeature.historicalForms())),
    );

    fakeBuild<FontFeature>(
      FlutterFontFeature.fromJson(<String, dynamic>{
        '_converter': 'f:1:FontFeature.historicalLigatures',
      }).build,
      (matcher) => matcher.having((p0) => p0, 'FontFeature.historicalLigatures',
          equals(const FontFeature.historicalLigatures())),
    );

    fakeBuild<FontFeature>(
      FlutterFontFeature.fromJson(<String, dynamic>{
        '_converter': 'f:1:FontFeature.liningFigures',
      }).build,
      (matcher) => matcher.having((p0) => p0, 'FontFeature.liningFigures',
          equals(const FontFeature.liningFigures())),
    );

    fakeBuild<FontFeature>(
      FlutterFontFeature.fromJson(<String, dynamic>{
        '_converter': 'f:1:FontFeature.localeAware',
      }).build,
      (matcher) => matcher.having((p0) => p0, 'FontFeature.localeAware',
          equals(const FontFeature.localeAware())),
    );

    fakeBuild<FontFeature>(
      FlutterFontFeature.fromJson(<String, dynamic>{
        '_converter': 'f:1:FontFeature.notationalForms',
        'value': 5
      }).build,
      (matcher) => matcher.having((p0) => p0, 'FontFeature.notationalForms',
          equals(const FontFeature.notationalForms(5))),
    );

    fakeBuild<FontFeature>(
      FlutterFontFeature.fromJson(<String, dynamic>{
        '_converter': 'f:1:FontFeature.numerators',
      }).build,
      (matcher) => matcher.having((p0) => p0, 'FontFeature.numerators',
          equals(const FontFeature.numerators())),
    );

    fakeBuild<FontFeature>(
      FlutterFontFeature.fromJson(<String, dynamic>{
        '_converter': 'f:1:FontFeature.oldstyleFigures',
      }).build,
      (matcher) => matcher.having((p0) => p0, 'FontFeature.oldstyleFigures',
          equals(const FontFeature.oldstyleFigures())),
    );

    fakeBuild<FontFeature>(
      FlutterFontFeature.fromJson(<String, dynamic>{
        '_converter': 'f:1:FontFeature.ordinalForms',
      }).build,
      (matcher) => matcher.having((p0) => p0, 'FontFeature.ordinalForms',
          equals(const FontFeature.ordinalForms())),
    );

    fakeBuild<FontFeature>(
      FlutterFontFeature.fromJson(<String, dynamic>{
        '_converter': 'f:1:FontFeature.proportionalFigures',
      }).build,
      (matcher) => matcher.having((p0) => p0, 'FontFeature.proportionalFigures',
          equals(const FontFeature.proportionalFigures())),
    );

    fakeBuild<FontFeature>(
      FlutterFontFeature.fromJson(<String, dynamic>{
        '_converter': 'f:1:FontFeature.randomize',
      }).build,
      (matcher) => matcher.having((p0) => p0, 'FontFeature.randomize',
          equals(const FontFeature.randomize())),
    );

    fakeBuild<FontFeature>(
      FlutterFontFeature.fromJson(<String, dynamic>{
        '_converter': 'f:1:FontFeature.scientificInferiors',
      }).build,
      (matcher) => matcher.having((p0) => p0, 'FontFeature.scientificInferiors',
          equals(const FontFeature.scientificInferiors())),
    );

    fakeBuild<FontFeature>(
      FlutterFontFeature.fromJson(<String, dynamic>{
        '_converter': 'f:1:FontFeature.slashedZero',
      }).build,
      (matcher) => matcher.having((p0) => p0, 'FontFeature.slashedZero',
          equals(const FontFeature.slashedZero())),
    );

    fakeBuild<FontFeature>(
      FlutterFontFeature.fromJson(<String, dynamic>{
        '_converter': 'f:1:FontFeature.stylisticAlternates',
      }).build,
      (matcher) => matcher.having((p0) => p0, 'FontFeature.stylisticAlternates',
          equals(const FontFeature.stylisticAlternates())),
    );

    fakeBuild<FontFeature>(
      FlutterFontFeature.fromJson(<String, dynamic>{
        '_converter': 'f:1:FontFeature.stylisticSet',
        'value': 5,
      }).build,
      (matcher) => matcher.having((p0) => p0, 'FontFeature.stylisticSet',
          equals(FontFeature.stylisticSet(5))),
    );

    fakeBuild<FontFeature>(
      FlutterFontFeature.fromJson(<String, dynamic>{
        '_converter': 'f:1:FontFeature.subscripts',
      }).build,
      (matcher) => matcher.having((p0) => p0, 'FontFeature.subscripts',
          equals(FontFeature.subscripts())),
    );

    fakeBuild<FontFeature>(
      FlutterFontFeature.fromJson(<String, dynamic>{
        '_converter': 'f:1:FontFeature.superscripts',
      }).build,
      (matcher) => matcher.having((p0) => p0, 'FontFeature.superscripts',
          equals(const FontFeature.superscripts())),
    );

    fakeBuild<FontFeature>(
      FlutterFontFeature.fromJson(<String, dynamic>{
        '_converter': 'f:1:FontFeature.swash',
        'value': 5
      }).build,
      (matcher) => matcher.having(
          (p0) => p0, 'FontFeature.swash', equals(const FontFeature.swash(5))),
    );

    fakeBuild<FontFeature>(
      FlutterFontFeature.fromJson(<String, dynamic>{
        '_converter': 'f:1:FontFeature.tabularFigures',
      }).build,
      (matcher) => matcher.having((p0) => p0, 'FontFeature.tabularFigures',
          equals(const FontFeature.tabularFigures())),
    );
  });

  test('FlutterTextDecorationStyle', () {
    fakeBuild<TextDecorationStyle>(
      FlutterTextDecorationStyle.fromJson(
              <String, dynamic>{'_converter': 'f:1:TextDecorationStyle.dashed'})
          .build,
      (matcher) => matcher.having((p0) => p0, 'TextDecorationStyle.dashed',
          equals(TextDecorationStyle.dashed)),
    );

    fakeBuild<TextDecorationStyle>(
      FlutterTextDecorationStyle.fromJson(
              <String, dynamic>{'_converter': 'f:1:TextDecorationStyle.dotted'})
          .build,
      (matcher) => matcher.having((p0) => p0, 'TextDecorationStyle.dotted',
          equals(TextDecorationStyle.dotted)),
    );

    fakeBuild<TextDecorationStyle>(
      FlutterTextDecorationStyle.fromJson(
              <String, dynamic>{'_converter': 'f:1:TextDecorationStyle.double'})
          .build,
      (matcher) => matcher.having((p0) => p0, 'TextDecorationStyle.double',
          equals(TextDecorationStyle.double)),
    );

    fakeBuild<TextDecorationStyle>(
      FlutterTextDecorationStyle.fromJson(
              <String, dynamic>{'_converter': 'f:1:TextDecorationStyle.solid'})
          .build,
      (matcher) => matcher.having((p0) => p0, 'TextDecorationStyle.solid',
          equals(TextDecorationStyle.solid)),
    );

    fakeBuild<TextDecorationStyle>(
      FlutterTextDecorationStyle.fromJson(
              <String, dynamic>{'_converter': 'f:1:TextDecorationStyle.wavy'})
          .build,
      (matcher) => matcher.having((p0) => p0, 'TextDecorationStyle.wavy',
          equals(TextDecorationStyle.wavy)),
    );
  });

  test('FlutterTextAlign', () {
    fakeBuild<TextAlign>(
      FlutterTextAlign.fromJson(
          <String, dynamic>{'_converter': 'f:1:TextAlign.center'}).build,
      (matcher) => matcher.having(
          (p0) => p0, 'TextAlign.center', equals(TextAlign.center)),
    );
    fakeBuild<TextAlign>(
      FlutterTextAlign.fromJson(
          <String, dynamic>{'_converter': 'f:1:TextAlign.end'}).build,
      (matcher) =>
          matcher.having((p0) => p0, 'TextAlign.end', equals(TextAlign.end)),
    );

    fakeBuild<TextAlign>(
      FlutterTextAlign.fromJson(
          <String, dynamic>{'_converter': 'f:1:TextAlign.justify'}).build,
      (matcher) => matcher.having(
          (p0) => p0, 'TextAlign.justify', equals(TextAlign.justify)),
    );

    fakeBuild<TextAlign>(
      FlutterTextAlign.fromJson(
          <String, dynamic>{'_converter': 'f:1:TextAlign.left'}).build,
      (matcher) =>
          matcher.having((p0) => p0, 'TextAlign.left', equals(TextAlign.left)),
    );

    fakeBuild<TextAlign>(
      FlutterTextAlign.fromJson(
          <String, dynamic>{'_converter': 'f:1:TextAlign.right'}).build,
      (matcher) => matcher.having(
          (p0) => p0, 'TextAlign.right', equals(TextAlign.right)),
    );

    fakeBuild<TextAlign>(
      FlutterTextAlign.fromJson(
          <String, dynamic>{'_converter': 'f:1:TextAlign.start'}).build,
      (matcher) => matcher.having(
          (p0) => p0, 'TextAlign.start', equals(TextAlign.start)),
    );
  });

  test('FlutterTextHeightBehavior', () {
    fakeBuild<TextHeightBehavior>(
      FlutterTextHeightBehavior.fromJson(<String, dynamic>{
        '_converter': 'f:1:TextHeightBehavior',
        'applyHeightToFirstAscent': false,
        'applyHeightToLastDescent': false,
        'leadingDistribution': {
          '_converter': 'f:1:TextLeadingDistribution.even'
        }
      }).build,
      (matcher) => matcher.having(
          (p0) => p0,
          'TextHeightBehavior',
          equals(const TextHeightBehavior(
              applyHeightToFirstAscent: false,
              applyHeightToLastDescent: false,
              leadingDistribution: TextLeadingDistribution.even))),
    );
  });

  test('FlutterBlendMode', () {
    fakeBuild<BlendMode>(
      FlutterBlendMode.fromJson(
          <String, dynamic>{'_converter': 'f:1:BlendMode.clear'}).build,
      (matcher) => matcher.having(
          (p0) => p0, 'BlendMode.clear', equals(BlendMode.clear)),
    );
    fakeBuild<BlendMode>(
      FlutterBlendMode.fromJson(
          <String, dynamic>{'_converter': 'f:1:BlendMode.color'}).build,
      (matcher) => matcher.having(
          (p0) => p0, 'BlendMode.color', equals(BlendMode.color)),
    );
    fakeBuild<BlendMode>(
      FlutterBlendMode.fromJson(
          <String, dynamic>{'_converter': 'f:1:BlendMode.colorBurn'}).build,
      (matcher) => matcher.having(
          (p0) => p0, 'BlendMode.colorBurn', equals(BlendMode.colorBurn)),
    );

    fakeBuild<BlendMode>(
      FlutterBlendMode.fromJson(
          <String, dynamic>{'_converter': 'f:1:BlendMode.colorDodge'}).build,
      (matcher) => matcher.having(
          (p0) => p0, 'BlendMode.colorDodge', equals(BlendMode.colorDodge)),
    );

    fakeBuild<BlendMode>(
      FlutterBlendMode.fromJson(
          <String, dynamic>{'_converter': 'f:1:BlendMode.darken'}).build,
      (matcher) => matcher.having(
          (p0) => p0, 'BlendMode.darken', equals(BlendMode.darken)),
    );

    fakeBuild<BlendMode>(
      FlutterBlendMode.fromJson(
          <String, dynamic>{'_converter': 'f:1:BlendMode.difference'}).build,
      (matcher) => matcher.having(
          (p0) => p0, 'BlendMode.difference', equals(BlendMode.difference)),
    );

    fakeBuild<BlendMode>(
      FlutterBlendMode.fromJson(
          <String, dynamic>{'_converter': 'f:1:BlendMode.dst'}).build,
      (matcher) =>
          matcher.having((p0) => p0, 'BlendMode.dst', equals(BlendMode.dst)),
    );

    fakeBuild<BlendMode>(
      FlutterBlendMode.fromJson(
          <String, dynamic>{'_converter': 'f:1:BlendMode.dstATop'}).build,
      (matcher) => matcher.having(
          (p0) => p0, 'BlendMode.dstATop', equals(BlendMode.dstATop)),
    );

    fakeBuild<BlendMode>(
      FlutterBlendMode.fromJson(
          <String, dynamic>{'_converter': 'f:1:BlendMode.dstIn'}).build,
      (matcher) => matcher.having(
          (p0) => p0, 'BlendMode.dstIn', equals(BlendMode.dstIn)),
    );

    fakeBuild<BlendMode>(
      FlutterBlendMode.fromJson(
          <String, dynamic>{'_converter': 'f:1:BlendMode.dstOut'}).build,
      (matcher) => matcher.having(
          (p0) => p0, 'BlendMode.dstOut', equals(BlendMode.dstOut)),
    );

    fakeBuild<BlendMode>(
      FlutterBlendMode.fromJson(
          <String, dynamic>{'_converter': 'f:1:BlendMode.dstOver'}).build,
      (matcher) => matcher.having(
          (p0) => p0, 'BlendMode.dstOver', equals(BlendMode.dstOver)),
    );

    fakeBuild<BlendMode>(
      FlutterBlendMode.fromJson(
          <String, dynamic>{'_converter': 'f:1:BlendMode.exclusion'}).build,
      (matcher) => matcher.having(
          (p0) => p0, 'BlendMode.exclusion', equals(BlendMode.exclusion)),
    );

    fakeBuild<BlendMode>(
      FlutterBlendMode.fromJson(
          <String, dynamic>{'_converter': 'f:1:BlendMode.hardLight'}).build,
      (matcher) => matcher.having(
          (p0) => p0, 'BlendMode.hardLight', equals(BlendMode.hardLight)),
    );

    fakeBuild<BlendMode>(
      FlutterBlendMode.fromJson(
          <String, dynamic>{'_converter': 'f:1:BlendMode.hue'}).build,
      (matcher) =>
          matcher.having((p0) => p0, 'BlendMode.hue', equals(BlendMode.hue)),
    );

    fakeBuild<BlendMode>(
      FlutterBlendMode.fromJson(
          <String, dynamic>{'_converter': 'f:1:BlendMode.lighten'}).build,
      (matcher) => matcher.having(
          (p0) => p0, 'BlendMode.lighten', equals(BlendMode.lighten)),
    );

    fakeBuild<BlendMode>(
      FlutterBlendMode.fromJson(
          <String, dynamic>{'_converter': 'f:1:BlendMode.luminosity'}).build,
      (matcher) => matcher.having(
          (p0) => p0, 'BlendMode.luminosity', equals(BlendMode.luminosity)),
    );

    fakeBuild<BlendMode>(
      FlutterBlendMode.fromJson(
          <String, dynamic>{'_converter': 'f:1:BlendMode.modulate'}).build,
      (matcher) => matcher.having(
          (p0) => p0, 'BlendMode.modulate', equals(BlendMode.modulate)),
    );

    fakeBuild<BlendMode>(
      FlutterBlendMode.fromJson(
          <String, dynamic>{'_converter': 'f:1:BlendMode.multiply'}).build,
      (matcher) => matcher.having(
          (p0) => p0, 'BlendMode.multiply', equals(BlendMode.multiply)),
    );

    fakeBuild<BlendMode>(
      FlutterBlendMode.fromJson(
          <String, dynamic>{'_converter': 'f:1:BlendMode.overlay'}).build,
      (matcher) => matcher.having(
          (p0) => p0, 'BlendMode.overlay', equals(BlendMode.overlay)),
    );

    fakeBuild<BlendMode>(
      FlutterBlendMode.fromJson(
          <String, dynamic>{'_converter': 'f:1:BlendMode.plus'}).build,
      (matcher) =>
          matcher.having((p0) => p0, 'BlendMode.plus', equals(BlendMode.plus)),
    );

    fakeBuild<BlendMode>(
      FlutterBlendMode.fromJson(
          <String, dynamic>{'_converter': 'f:1:BlendMode.saturation'}).build,
      (matcher) => matcher.having(
          (p0) => p0, 'BlendMode.saturation', equals(BlendMode.saturation)),
    );

    fakeBuild<BlendMode>(
      FlutterBlendMode.fromJson(
          <String, dynamic>{'_converter': 'f:1:BlendMode.screen'}).build,
      (matcher) => matcher.having(
          (p0) => p0, 'BlendMode.screen', equals(BlendMode.screen)),
    );

    fakeBuild<BlendMode>(
      FlutterBlendMode.fromJson(
          <String, dynamic>{'_converter': 'f:1:BlendMode.softLight'}).build,
      (matcher) => matcher.having(
          (p0) => p0, 'BlendMode.softLight', equals(BlendMode.softLight)),
    );

    fakeBuild<BlendMode>(
      FlutterBlendMode.fromJson(
          <String, dynamic>{'_converter': 'f:1:BlendMode.src'}).build,
      (matcher) =>
          matcher.having((p0) => p0, 'BlendMode.src', equals(BlendMode.src)),
    );

    fakeBuild<BlendMode>(
      FlutterBlendMode.fromJson(
          <String, dynamic>{'_converter': 'f:1:BlendMode.srcATop'}).build,
      (matcher) => matcher.having(
          (p0) => p0, 'BlendMode.srcATop', equals(BlendMode.srcATop)),
    );

    fakeBuild<BlendMode>(
      FlutterBlendMode.fromJson(
          <String, dynamic>{'_converter': 'f:1:BlendMode.srcIn'}).build,
      (matcher) => matcher.having(
          (p0) => p0, 'BlendMode.srcIn', equals(BlendMode.srcIn)),
    );

    fakeBuild<BlendMode>(
      FlutterBlendMode.fromJson(
          <String, dynamic>{'_converter': 'f:1:BlendMode.srcOut'}).build,
      (matcher) => matcher.having(
          (p0) => p0, 'BlendMode.srcOut', equals(BlendMode.srcOut)),
    );

    fakeBuild<BlendMode>(
      FlutterBlendMode.fromJson(
          <String, dynamic>{'_converter': 'f:1:BlendMode.srcOver'}).build,
      (matcher) => matcher.having(
          (p0) => p0, 'BlendMode.srcOver', equals(BlendMode.srcOver)),
    );

    fakeBuild<BlendMode>(
      FlutterBlendMode.fromJson(
          <String, dynamic>{'_converter': 'f:1:BlendMode.xor'}).build,
      (matcher) =>
          matcher.having((p0) => p0, 'BlendMode.xor', equals(BlendMode.xor)),
    );
  });

  test('FlutterRect', () {
    fakeBuild<Rect>(
      FlutterRect.fromJson(<String, dynamic>{
        '_converter': 'f:1:Rect.fromCenter',
        'center': {
          '_converter': 'f:1:Offset',
          'dx': 10,
          'dy': 20,
        },
        'width': 11,
        'height': 22,
      }).build,
      (matcher) => matcher.having(
          (p0) => p0,
          'Rect.fromCenter',
          equals(Rect.fromCenter(
              center: const Offset(10, 20), width: 11, height: 22))),
    );

    fakeBuild<Rect>(
      FlutterRect.fromJson(<String, dynamic>{
        '_converter': 'f:1:Rect.fromCircle',
        'center': {
          '_converter': 'f:1:Offset',
          'dx': 10,
          'dy': 20,
        },
        'radius': 11,
      }).build,
      (matcher) => matcher.having((p0) => p0, 'Rect.fromCenter',
          equals(Rect.fromCircle(center: const Offset(10, 20), radius: 11))),
    );
    fakeBuild<Rect>(
      FlutterRect.fromJson(<String, dynamic>{
        '_converter': 'f:1:Rect.fromLTRB',
        'left': 1,
        'top': 2,
        'right': 3,
        'bottom': 4
      }).build,
      (matcher) => matcher.having((p0) => p0, 'Rect.fromCenter',
          equals(const Rect.fromLTRB(1, 2, 3, 4))),
    );
    fakeBuild<Rect>(
      FlutterRect.fromJson(<String, dynamic>{
        '_converter': 'f:1:Rect.fromLTWH',
        'left': 1,
        'top': 2,
        'width': 3,
        'height': 4,
      }).build,
      (matcher) => matcher.having((p0) => p0, 'Rect.fromCenter',
          equals(const Rect.fromLTWH(1, 2, 3, 4))),
    );
    fakeBuild<Rect>(
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
      }).build,
      (matcher) => matcher.having((p0) => p0, 'Rect.fromCenter',
          equals(Rect.fromPoints(const Offset(10, 20), const Offset(10, 20)))),
    );
  });

  test('FlutterFilterQuality', () {
    fakeBuild<FilterQuality>(
      FlutterFilterQuality.fromJson(
          <String, dynamic>{'_converter': 'f:1:FilterQuality.high'}).build,
      (matcher) => matcher.having(
          (p0) => p0, 'FilterQuality.high', equals(FilterQuality.high)),
    );
    fakeBuild<FilterQuality>(
      FlutterFilterQuality.fromJson(
          <String, dynamic>{'_converter': 'f:1:FilterQuality.low'}).build,
      (matcher) => matcher.having(
          (p0) => p0, 'FilterQuality.low', equals(FilterQuality.low)),
    );

    fakeBuild<FilterQuality>(
      FlutterFilterQuality.fromJson(
          <String, dynamic>{'_converter': 'f:1:FilterQuality.medium'}).build,
      (matcher) => matcher.having(
          (p0) => p0, 'FilterQuality.medium', equals(FilterQuality.medium)),
    );

    fakeBuild<FilterQuality>(
      FlutterFilterQuality.fromJson(
          <String, dynamic>{'_converter': 'f:1:FilterQuality.none'}).build,
      (matcher) => matcher.having(
          (p0) => p0, 'FilterQuality.none', equals(FilterQuality.none)),
    );
  });

  test('FlutterBrightness', () {
    fakeBuild<Brightness>(
      FlutterBrightness.fromJson(
          <String, dynamic>{'_converter': 'f:1:Brightness.light'}).build,
      (matcher) => matcher.having(
          (p0) => p0, 'Brightness.light)', equals(Brightness.light)),
    );
    fakeBuild<Brightness>(
      FlutterBrightness.fromJson(
          <String, dynamic>{'_converter': 'f:1:Brightness.dark'}).build,
      (matcher) => matcher.having(
          (p0) => p0, 'Brightness.dark)', equals(Brightness.dark)),
    );
  });

  test('FlutterSize', () {
    fakeBuild<Size>(
      FlutterSize.fromJson(<String, dynamic>{
        '_converter': 'f:1:Size',
        'width': 10,
        'height': 20,
      }).build,
      (matcher) =>
          matcher.having((p0) => p0, 'Size)', equals(const Size(10, 20))),
    );
  });

  test('FlutterBoxHeightStyle', () {
    fakeBuild<BoxHeightStyle>(
      FlutterBoxHeightStyle.fromJson(<String, dynamic>{
        '_converter': 'f:1:BoxHeightStyle.includeLineSpacingBottom',
      }).build,
      (matcher) => matcher.having(
          (p0) => p0,
          'BoxHeightStyle.includeLineSpacingBottom)',
          equals(BoxHeightStyle.includeLineSpacingBottom)),
    );
    fakeBuild<BoxHeightStyle>(
      FlutterBoxHeightStyle.fromJson(<String, dynamic>{
        '_converter': 'f:1:BoxHeightStyle.includeLineSpacingMiddle',
      }).build,
      (matcher) => matcher.having(
          (p0) => p0,
          'BoxHeightStyle.includeLineSpacingMiddle)',
          equals(BoxHeightStyle.includeLineSpacingMiddle)),
    );
    fakeBuild<BoxHeightStyle>(
      FlutterBoxHeightStyle.fromJson(<String, dynamic>{
        '_converter': 'f:1:BoxHeightStyle.includeLineSpacingTop',
      }).build,
      (matcher) => matcher.having(
          (p0) => p0,
          'BoxHeightStyle.includeLineSpacingTop',
          equals(BoxHeightStyle.includeLineSpacingTop)),
    );
    fakeBuild<BoxHeightStyle>(
      FlutterBoxHeightStyle.fromJson(<String, dynamic>{
        '_converter': 'f:1:BoxHeightStyle.max',
      }).build,
      (matcher) => matcher.having(
          (p0) => p0, 'BoxHeightStyle.max', equals(BoxHeightStyle.max)),
    );
    fakeBuild<BoxHeightStyle>(
      FlutterBoxHeightStyle.fromJson(<String, dynamic>{
        '_converter': 'f:1:BoxHeightStyle.strut',
      }).build,
      (matcher) => matcher.having(
          (p0) => p0, 'BoxHeightStyle.strut', equals(BoxHeightStyle.strut)),
    );
    fakeBuild<BoxHeightStyle>(
      FlutterBoxHeightStyle.fromJson(<String, dynamic>{
        '_converter': 'f:1:BoxHeightStyle.tight',
      }).build,
      (matcher) => matcher.having(
          (p0) => p0, 'BoxHeightStyle.tight', equals(BoxHeightStyle.tight)),
    );
  });

  test('FlutterBoxWidthStyle', () {
    fakeBuild<BoxWidthStyle>(
      FlutterBoxWidthStyle.fromJson(<String, dynamic>{
        '_converter': 'f:1:BoxWidthStyle.max',
      }).build,
      (matcher) => matcher.having(
          (p0) => p0, 'BoxWidthStyle.max', equals(BoxWidthStyle.max)),
    );
    fakeBuild<BoxWidthStyle>(
      FlutterBoxWidthStyle.fromJson(<String, dynamic>{
        '_converter': 'f:1:BoxWidthStyle.tight',
      }).build,
      (matcher) => matcher.having(
          (p0) => p0, 'BoxWidthStyle.tight', equals(BoxWidthStyle.tight)),
    );
  });
}
