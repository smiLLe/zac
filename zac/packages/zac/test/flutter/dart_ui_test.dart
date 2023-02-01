import 'dart:ui';

import 'package:flutter_test/flutter_test.dart';

import '../helper.dart';

void main() {
  testWidgets('FlutterColor', (tester) async {
    await testBuilder<Color>(
      tester,
      'f:1:Color.fromARGB',
      props: <String, dynamic>{'a': 10, 'r': 100, 'g': 100, 'b': 100},
      matcher: (matcher) => matcher.having((p0) => p0, 'Color.fromARGB',
          equals(const Color.fromARGB(10, 100, 100, 100))),
    );
    await testBuilder<Color>(
      tester,
      'f:1:Color.fromRGBO',
      props: <String, dynamic>{'opacity': 0.9, 'r': 100, 'g': 100, 'b': 100},
      matcher: (matcher) => matcher.having((p0) => p0, 'Color.fromRGBO',
          equals(const Color.fromRGBO(100, 100, 100, 0.9))),
    );
  });

  testWidgets('FlutterOffset', (tester) async {
    await testBuilder<Offset>(
      tester,
      'f:1:Offset',
      props: <String, dynamic>{
        'dx': 10,
        'dy': 20,
      },
      matcher: (matcher) =>
          matcher.having((p0) => p0, 'Offset', equals(const Offset(10, 20))),
    );

    await testBuilder<Offset>(
      tester,
      'f:1:Offset.fromDirection',
      props: <String, dynamic>{
        'direction': 10,
        'distance': 20,
      },
      matcher: (matcher) => matcher.having((p0) => p0, 'Offset.fromDirection',
          equals(Offset.fromDirection(10, 20))),
    );
  });

  testWidgets('FlutterBlurStyle', (tester) async {
    for (var ele in [
      ['inner', BlurStyle.inner],
      ['normal', BlurStyle.normal],
      ['outer', BlurStyle.outer],
      ['solid', BlurStyle.solid],
    ]) {
      await testBuilder<BlurStyle>(
        tester,
        'f:1:BlurStyle.${ele[0]}',
        matcher: (matcher) =>
            matcher.having((p0) => p0, 'BlurStyle.${ele[0]}', equals(ele[1])),
      );
    }
  });

  testWidgets('FlutterRadius', (tester) async {
    await testBuilder<Radius>(
      tester,
      'f:1:Radius.circular',
      props: <String, dynamic>{
        'radius': 5.0,
      },
      matcher: (matcher) => matcher.having(
          (p0) => p0, 'Radius.circular', equals(const Radius.circular(5))),
    );
    await testBuilder<Radius>(
      tester,
      'f:1:Radius.elliptical',
      props: <String, dynamic>{
        'x': 10,
        'y': 20,
      },
      matcher: (matcher) => matcher.having((p0) => p0, 'Radius.elliptical',
          equals(const Radius.elliptical(10, 20))),
    );
  });

  testWidgets('FlutterTextDirection', (tester) async {
    for (var ele in [
      ['rtl', TextDirection.rtl],
      ['ltr', TextDirection.ltr],
    ]) {
      await testBuilder<TextDirection>(
        tester,
        'f:1:TextDirection.${ele[0]}',
        matcher: (matcher) => matcher.having(
            (p0) => p0, 'TextDirection.${ele[0]}', equals(ele[1])),
      );
    }
  });

  testWidgets('FlutterClip', (tester) async {
    for (var ele in [
      ['none', Clip.none],
      ['antiAlias', Clip.antiAlias],
      ['hardEdge', Clip.hardEdge]
    ]) {
      await testBuilder<Clip>(
        tester,
        'f:1:Clip.${ele[0]}',
        matcher: (matcher) =>
            matcher.having((p0) => p0, 'Clip.${ele[0]}', equals(ele[1])),
      );
    }
  });

  testWidgets('FlutterTextBaseline', (tester) async {
    for (var ele in [
      ['alphabetic', TextBaseline.alphabetic],
      ['ideographic', TextBaseline.ideographic],
    ]) {
      await testBuilder<TextBaseline>(
        tester,
        'f:1:TextBaseline.${ele[0]}',
        matcher: (matcher) => matcher.having(
            (p0) => p0, 'TextBaseline.${ele[0]}', equals(ele[1])),
      );
    }
  });

  testWidgets('FlutterFontWeight', (tester) async {
    for (var ele in [
      ['bold', FontWeight.bold],
      ['normal', FontWeight.normal],
      ['w100', FontWeight.w100],
      ['w200', FontWeight.w200],
      ['w300', FontWeight.w300],
      ['w400', FontWeight.w400],
      ['w500', FontWeight.w500],
      ['w600', FontWeight.w600],
      ['w700', FontWeight.w700],
      ['w800', FontWeight.w800],
      ['w900', FontWeight.w900],
    ]) {
      await testBuilder<FontWeight>(
        tester,
        'f:1:FontWeight.${ele[0]}',
        matcher: (matcher) =>
            matcher.having((p0) => p0, 'FontWeight.${ele[0]}', equals(ele[1])),
      );
    }
  });

  testWidgets('FlutterFontStyle', (tester) async {
    for (var ele in [
      ['italic', FontStyle.italic],
      ['normal', FontStyle.normal],
    ]) {
      await testBuilder<FontStyle>(
        tester,
        'f:1:FontStyle.${ele[0]}',
        matcher: (matcher) =>
            matcher.having((p0) => p0, 'FontStyle.${ele[0]}', equals(ele[1])),
      );
    }
  });

  testWidgets('FlutterTextDecoration', (tester) async {
    for (var ele in [
      ['lineThrough', TextDecoration.lineThrough],
      ['none', TextDecoration.none],
      ['underline', TextDecoration.underline],
      ['overline', TextDecoration.overline],
    ]) {
      await testBuilder<TextDecoration>(
        tester,
        'f:1:TextDecoration.${ele[0]}',
        matcher: (matcher) => matcher.having(
            (p0) => p0, 'TextDecoration.${ele[0]}', equals(ele[1])),
      );
    }
  });

  testWidgets('FlutterTextLeadingDistribution', (tester) async {
    for (var ele in [
      ['even', TextLeadingDistribution.even],
      ['proportional', TextLeadingDistribution.proportional],
    ]) {
      await testBuilder<TextLeadingDistribution>(
        tester,
        'f:1:TextLeadingDistribution.${ele[0]}',
        matcher: (matcher) => matcher.having(
            (p0) => p0, 'TextLeadingDistribution.${ele[0]}', equals(ele[1])),
      );
    }
  });

  testWidgets('FlutterLocale', (tester) async {
    await testBuilder<Locale>(
      tester,
      'f:1:Locale',
      props: <String, dynamic>{
        'languageCode': 'de',
        'countryCode': 'AT',
      },
      matcher: (matcher) => matcher.having(
          (p0) => p0, 'Locale', equals(const Locale('de', 'AT'))),
    );
  });

  testWidgets('FlutterFontFeature', (tester) async {
    for (var ele in [
      ['alternativeFractions', const FontFeature.alternativeFractions()],
      ['caseSensitiveForms', const FontFeature.caseSensitiveForms()],
      ['contextualAlternates', const FontFeature.contextualAlternates()],
      ['denominator', const FontFeature.denominator()],
      ['fractions', const FontFeature.fractions()],
      ['historicalForms', const FontFeature.historicalForms()],
      ['historicalLigatures', const FontFeature.historicalLigatures()],
      ['liningFigures', const FontFeature.liningFigures()],
      ['localeAware', const FontFeature.localeAware()],
      ['numerators', const FontFeature.numerators()],
      ['oldstyleFigures', const FontFeature.oldstyleFigures()],
      ['ordinalForms', const FontFeature.ordinalForms()],
      ['proportionalFigures', const FontFeature.proportionalFigures()],
      ['randomize', const FontFeature.randomize()],
      ['scientificInferiors', const FontFeature.scientificInferiors()],
      ['slashedZero', const FontFeature.slashedZero()],
      ['stylisticAlternates', const FontFeature.stylisticAlternates()],
      ['subscripts', const FontFeature.subscripts()],
      ['superscripts', const FontFeature.superscripts()],
      ['tabularFigures', const FontFeature.tabularFigures()],
    ]) {
      await testBuilder<FontFeature>(
        tester,
        'f:1:FontFeature.${ele[0]}',
        matcher: (matcher) =>
            matcher.having((p0) => p0, 'FontFeature.${ele[0]}', equals(ele[1])),
      );
    }

    await testBuilder<FontFeature>(
      tester,
      'f:1:FontFeature',
      props: <String, dynamic>{
        'feature': 'some',
        'value': 5,
      },
      matcher: (matcher) => matcher.having(
          (p0) => p0, 'FontFeature', equals(const FontFeature('some', 5))),
    );

    await testBuilder<FontFeature>(
      tester,
      'f:1:FontFeature.alternative',
      props: <String, dynamic>{
        'value': 5,
      },
      matcher: (matcher) => matcher.having((p0) => p0,
          'FontFeature.alternative', equals(const FontFeature.alternative(5))),
    );
    await testBuilder<FontFeature>(
      tester,
      'f:1:FontFeature.characterVariant',
      props: <String, dynamic>{
        'value': 5,
      },
      matcher: (matcher) => matcher.having(
          (p0) => p0,
          'FontFeature.characterVariant',
          equals(FontFeature.characterVariant(5))),
    );
    await testBuilder<FontFeature>(
      tester,
      'f:1:FontFeature.disable',
      props: <String, dynamic>{'feature': 'some'},
      matcher: (matcher) => matcher.having((p0) => p0, 'FontFeature.disable',
          equals(const FontFeature.disable('some'))),
    );
    await testBuilder<FontFeature>(
      tester,
      'f:1:FontFeature.enable',
      props: <String, dynamic>{'feature': 'some'},
      matcher: (matcher) => matcher.having((p0) => p0, 'FontFeature.enable',
          equals(const FontFeature.enable('some'))),
    );
    await testBuilder<FontFeature>(
      tester,
      'f:1:FontFeature.notationalForms',
      props: <String, dynamic>{'value': 5},
      matcher: (matcher) => matcher.having(
          (p0) => p0,
          'FontFeature.notationalForms',
          equals(const FontFeature.notationalForms(5))),
    );
    await testBuilder<FontFeature>(
      tester,
      'f:1:FontFeature.stylisticSet',
      props: <String, dynamic>{'value': 5},
      matcher: (matcher) => matcher.having((p0) => p0,
          'FontFeature.stylisticSet', equals(FontFeature.stylisticSet(5))),
    );
    await testBuilder<FontFeature>(
      tester,
      'f:1:FontFeature.swash',
      props: <String, dynamic>{'value': 5},
      matcher: (matcher) => matcher.having(
          (p0) => p0, 'FontFeature.swash', equals(const FontFeature.swash(5))),
    );
  });

  testWidgets('FlutterTextDecorationStyle', (tester) async {
    for (var ele in [
      ['dashed', TextDecorationStyle.dashed],
      ['double', TextDecorationStyle.double],
      ['dotted', TextDecorationStyle.dotted],
      ['solid', TextDecorationStyle.solid],
      ['wavy', TextDecorationStyle.wavy],
    ]) {
      await testBuilder<TextDecorationStyle>(
        tester,
        'f:1:TextDecorationStyle.${ele[0]}',
        matcher: (matcher) => matcher.having(
            (p0) => p0, 'TextDecorationStyle.${ele[0]}', equals(ele[1])),
      );
    }
  });

  testWidgets('FlutterTextAlign', (tester) async {
    for (var ele in [
      ['center', TextAlign.center],
      ['end', TextAlign.end],
      ['justify', TextAlign.justify],
      ['left', TextAlign.left],
      ['right', TextAlign.right],
      ['start', TextAlign.start],
    ]) {
      await testBuilder<TextAlign>(
        tester,
        'f:1:TextAlign.${ele[0]}',
        matcher: (matcher) =>
            matcher.having((p0) => p0, 'TextAlign.${ele[0]}', equals(ele[1])),
      );
    }
  });

  testWidgets('FlutterTextHeightBehavior', (tester) async {
    await testBuilder<TextHeightBehavior>(
      tester,
      'f:1:TextHeightBehavior',
      props: <String, dynamic>{
        'applyHeightToFirstAscent': false,
        'applyHeightToLastDescent': false,
        'leadingDistribution': {'builder': 'f:1:TextLeadingDistribution.even'}
      },
      matcher: (matcher) => matcher.having(
          (p0) => p0,
          'TextHeightBehavior',
          equals(const TextHeightBehavior(
              applyHeightToFirstAscent: false,
              applyHeightToLastDescent: false,
              leadingDistribution: TextLeadingDistribution.even))),
    );
  });

  testWidgets('FlutterBlendMode', (tester) async {
    for (var ele in [
      ['clear', BlendMode.clear],
      ['color', BlendMode.color],
      ['colorBurn', BlendMode.colorBurn],
      ['colorDodge', BlendMode.colorDodge],
      ['darken', BlendMode.darken],
      ['difference', BlendMode.difference],
      ['dst', BlendMode.dst],
      ['dstATop', BlendMode.dstATop],
      ['dstIn', BlendMode.dstIn],
      ['dstOut', BlendMode.dstOut],
      ['dstOver', BlendMode.dstOver],
      ['exclusion', BlendMode.exclusion],
      ['hardLight', BlendMode.hardLight],
      ['hue', BlendMode.hue],
      ['lighten', BlendMode.lighten],
      ['luminosity', BlendMode.luminosity],
      ['modulate', BlendMode.modulate],
      ['multiply', BlendMode.multiply],
      ['overlay', BlendMode.overlay],
      ['plus', BlendMode.plus],
      ['saturation', BlendMode.saturation],
      ['screen', BlendMode.screen],
      ['softLight', BlendMode.softLight],
      ['src', BlendMode.src],
      ['srcATop', BlendMode.srcATop],
      ['srcIn', BlendMode.srcIn],
      ['srcOut', BlendMode.srcOut],
      ['srcOver', BlendMode.srcOver],
      ['xor', BlendMode.xor],
    ]) {
      await testBuilder<BlendMode>(
        tester,
        'f:1:BlendMode.${ele[0]}',
        matcher: (matcher) =>
            matcher.having((p0) => p0, 'BlendMode.${ele[0]}', equals(ele[1])),
      );
    }
  });

  testWidgets('FlutterRect', (tester) async {
    await testBuilder<Rect>(
      tester,
      'f:1:Rect.fromCenter',
      props: <String, dynamic>{
        'center': {
          'builder': 'f:1:Offset',
          'dx': 10,
          'dy': 20,
        },
        'width': 11,
        'height': 22,
      },
      matcher: (matcher) => matcher.having(
          (p0) => p0,
          'Rect.fromCenter',
          equals(Rect.fromCenter(
              center: const Offset(10, 20), width: 11, height: 22))),
    );

    await testBuilder<Rect>(
      tester,
      'f:1:Rect.fromCircle',
      props: <String, dynamic>{
        'center': {
          'builder': 'f:1:Offset',
          'dx': 10,
          'dy': 20,
        },
        'radius': 11,
      },
      matcher: (matcher) => matcher.having((p0) => p0, 'Rect.fromCenter',
          equals(Rect.fromCircle(center: const Offset(10, 20), radius: 11))),
    );

    await testBuilder<Rect>(
      tester,
      'f:1:Rect.fromLTRB',
      props: <String, dynamic>{'left': 1, 'top': 2, 'right': 3, 'bottom': 4},
      matcher: (matcher) => matcher.having((p0) => p0, 'Rect.fromCenter',
          equals(const Rect.fromLTRB(1, 2, 3, 4))),
    );

    await testBuilder<Rect>(
      tester,
      'f:1:Rect.fromLTWH',
      props: <String, dynamic>{
        'left': 1,
        'top': 2,
        'width': 3,
        'height': 4,
      },
      matcher: (matcher) => matcher.having((p0) => p0, 'Rect.fromCenter',
          equals(const Rect.fromLTWH(1, 2, 3, 4))),
    );
    await testBuilder<Rect>(
      tester,
      'f:1:Rect.fromPoints',
      props: <String, dynamic>{
        'center': {
          'builder': 'f:1:Offset',
          'dx': 10,
          'dy': 20,
        },
        'a': {
          'builder': 'f:1:Offset',
          'dx': 10,
          'dy': 20,
        },
        'b': {
          'builder': 'f:1:Offset',
          'dx': 10,
          'dy': 20,
        },
      },
      matcher: (matcher) => matcher.having((p0) => p0, 'Rect.fromCenter',
          equals(Rect.fromPoints(const Offset(10, 20), const Offset(10, 20)))),
    );
  });

  testWidgets('FlutterFilterQuality', (tester) async {
    for (var ele in [
      ['high', FilterQuality.high],
      ['low', FilterQuality.low],
      ['medium', FilterQuality.medium],
      ['none', FilterQuality.none],
    ]) {
      await testBuilder<FilterQuality>(
        tester,
        'f:1:FilterQuality.${ele[0]}',
        matcher: (matcher) => matcher.having(
            (p0) => p0, 'FilterQuality.${ele[0]}', equals(ele[1])),
      );
    }
  });

  testWidgets('FlutterBrightness', (tester) async {
    for (var ele in [
      ['light', Brightness.light],
      ['dark', Brightness.dark],
    ]) {
      await testBuilder<Brightness>(
        tester,
        'f:1:Brightness.${ele[0]}',
        matcher: (matcher) =>
            matcher.having((p0) => p0, 'Brightness.${ele[0]}', equals(ele[1])),
      );
    }
  });

  testWidgets('FlutterSize', (tester) async {
    await testBuilder<Size>(
      tester,
      'f:1:Size',
      props: <String, dynamic>{
        'width': 10,
        'height': 20,
      },
      matcher: (matcher) =>
          matcher.having((p0) => p0, 'Size)', equals(const Size(10, 20))),
    );
  });

  testWidgets('FlutterBoxHeightStyle', (tester) async {
    for (var ele in [
      ['includeLineSpacingBottom', BoxHeightStyle.includeLineSpacingBottom],
      ['includeLineSpacingMiddle', BoxHeightStyle.includeLineSpacingMiddle],
      ['includeLineSpacingTop', BoxHeightStyle.includeLineSpacingTop],
      ['max', BoxHeightStyle.max],
      ['strut', BoxHeightStyle.strut],
      ['tight', BoxHeightStyle.tight],
      ['includeLineSpacingBottom', BoxHeightStyle.includeLineSpacingBottom],
      ['includeLineSpacingBottom', BoxHeightStyle.includeLineSpacingBottom],
      ['includeLineSpacingBottom', BoxHeightStyle.includeLineSpacingBottom],
      ['includeLineSpacingBottom', BoxHeightStyle.includeLineSpacingBottom],
    ]) {
      await testBuilder<BoxHeightStyle>(
        tester,
        'f:1:BoxHeightStyle.${ele[0]}',
        matcher: (matcher) => matcher.having(
            (p0) => p0, 'BoxHeightStyle.${ele[0]}', equals(ele[1])),
      );
    }
  });

  testWidgets('FlutterBoxWidthStyle', (tester) async {
    for (var ele in [
      ['max', BoxWidthStyle.max],
      ['tight', BoxWidthStyle.tight],
    ]) {
      await testBuilder<BoxWidthStyle>(
        tester,
        'f:1:BoxWidthStyle.${ele[0]}',
        matcher: (matcher) => matcher.having(
            (p0) => p0, 'BoxWidthStyle.${ele[0]}', equals(ele[1])),
      );
    }
  });
}
