import 'dart:ui';
import 'package:zac/src/zac/context.dart';
import 'package:zac/src/zac/zac_builder.dart';
import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:zac/src/base.dart';

part 'dart_ui.freezed.dart';
part 'dart_ui.g.dart';

@freezedZacBuilder
class FlutterColor with _$FlutterColor, ZacBuilder<Color> {
  const FlutterColor._();

  factory FlutterColor.fromJson(Map<String, dynamic> json) =>
      _$FlutterColorFromJson(json);

  @FreezedUnionValue('f:1:Color.fromARGB')
  factory FlutterColor.fromARGB({
    required int a,
    required int r,
    required int g,
    required int b,
  }) = _FlutterColorFromARGB;

  @FreezedUnionValue('f:1:Color.fromRGBO')
  factory FlutterColor.fromRGBO({
    required int r,
    required int g,
    required int b,
    required ZacBuilder<double> opacity,
  }) = _FlutterColorFromRBGO;

  Color _build(BuildContext context, ZacContext zacContext) {
    return map(
      fromARGB: (value) {
        return Color.fromARGB(value.a, value.r, value.g, value.b);
      },
      fromRGBO: (value) {
        return Color.fromRGBO(value.r, value.g, value.b,
            value.opacity.build(context, zacContext));
      },
    );
  }

  @override
  Color build(BuildContext context, ZacContext zacContext) {
    return _build(context, zacContext);
  }
}

@freezedZacBuilder
class FlutterOffset with _$FlutterOffset, ZacBuilder<Offset> {
  const FlutterOffset._();

  factory FlutterOffset.fromJson(Map<String, dynamic> json) =>
      _$FlutterOffsetFromJson(json);

  @FreezedUnionValue('f:1:Offset')
  factory FlutterOffset(ZacBuilder<double> dx, ZacBuilder<double> dy) =
      _FlutterOffset;

  @FreezedUnionValue('f:1:Offset.fromDirection')
  factory FlutterOffset.fromDirection(
      {required ZacBuilder<double> direction,
      ZacBuilder<double?>? distance}) = _FlutterOffsetFromDirection;

  Offset _build(BuildContext context, ZacContext zacContext) {
    return map(
      (value) => Offset(value.dx.build(context, zacContext),
          value.dy.build(context, zacContext)),
      fromDirection: (value) => Offset.fromDirection(
          value.direction.build(context, zacContext),
          value.distance?.build(context, zacContext) ?? 1.0),
    );
  }

  @override
  Offset build(BuildContext context, ZacContext zacContext) {
    return _build(context, zacContext);
  }
}

@freezedZacBuilder
class FlutterBlurStyle with _$FlutterBlurStyle, ZacBuilder<BlurStyle> {
  const FlutterBlurStyle._();

  factory FlutterBlurStyle.fromJson(Map<String, dynamic> json) =>
      _$FlutterBlurStyleFromJson(json);

  @FreezedUnionValue('f:1:BlurStyle.inner')
  factory FlutterBlurStyle.inner() = _FlutterBlurStyleInner;

  @FreezedUnionValue('f:1:BlurStyle.normal')
  factory FlutterBlurStyle.normal() = _FlutterBlurStyleNormal;

  @FreezedUnionValue('f:1:BlurStyle.outer')
  factory FlutterBlurStyle.outer() = _FlutterBlurStyleOuter;

  @FreezedUnionValue('f:1:BlurStyle.solid')
  factory FlutterBlurStyle.solid() = _FlutterBlurStyleSolid;

  BlurStyle _build(BuildContext context, ZacContext zacContext) {
    return map(
      inner: (_) => BlurStyle.inner,
      normal: (_) => BlurStyle.normal,
      outer: (_) => BlurStyle.outer,
      solid: (_) => BlurStyle.solid,
    );
  }

  @override
  build(BuildContext context, ZacContext zacContext) {
    return _build(context, zacContext);
  }
}

@freezedZacBuilder
class FlutterRadius with _$FlutterRadius, ZacBuilder<Radius> {
  const FlutterRadius._();

  factory FlutterRadius.fromJson(Map<String, dynamic> json) =>
      _$FlutterRadiusFromJson(json);

  @FreezedUnionValue('f:1:Radius.circular')
  factory FlutterRadius.circular(ZacBuilder<double> radius) =
      _FlutterRadiusCircular;

  @FreezedUnionValue('f:1:Radius.elliptical')
  factory FlutterRadius.elliptical(ZacBuilder<double> x, ZacBuilder<double> y) =
      _FlutterRadiusElliptical;

  Radius _build(BuildContext context, ZacContext zacContext) {
    return map(
      circular: (value) =>
          Radius.circular(value.radius.build(context, zacContext)),
      elliptical: (value) => Radius.elliptical(
          value.x.build(context, zacContext),
          value.y.build(context, zacContext)),
    );
  }

  @override
  Radius build(BuildContext context, ZacContext zacContext) {
    return _build(context, zacContext);
  }
}

@freezedZacBuilder
class FlutterTextDirection
    with _$FlutterTextDirection, ZacBuilder<TextDirection> {
  const FlutterTextDirection._();

  factory FlutterTextDirection.fromJson(Map<String, dynamic> json) =>
      _$FlutterTextDirectionFromJson(json);

  @FreezedUnionValue('f:1:TextDirection.rtl')
  factory FlutterTextDirection.rtl() = _FlutterTextDirectionRtl;

  @FreezedUnionValue('f:1:TextDirection.ltr')
  factory FlutterTextDirection.ltr() = _FlutterTextDirectionLtr;

  TextDirection _build(BuildContext context, ZacContext zacContext) {
    return map(ltr: (_) => TextDirection.ltr, rtl: (_) => TextDirection.rtl);
  }

  @override
  TextDirection build(BuildContext context, ZacContext zacContext) {
    return _build(context, zacContext);
  }
}

@freezedZacBuilder
class FlutterClip with _$FlutterClip, ZacBuilder<Clip> {
  const FlutterClip._();

  factory FlutterClip.fromJson(Map<String, dynamic> json) =>
      _$FlutterClipFromJson(json);

  @FreezedUnionValue('f:1:Clip.none')
  factory FlutterClip.none() = _FlutterClipNone;

  @FreezedUnionValue('f:1:Clip.antiAlias')
  factory FlutterClip.antiAlias() = _FlutterClipAntiAlias;

  @FreezedUnionValue('f:1:Clip.hardEdge')
  factory FlutterClip.hardEdge() = _FlutterClipHardEdge;

  Clip _build(BuildContext context, ZacContext zacContext) {
    return map(
      none: (_) => Clip.none,
      antiAlias: (_) => Clip.antiAlias,
      hardEdge: (_) => Clip.hardEdge,
    );
  }

  @override
  Clip build(BuildContext context, ZacContext zacContext) {
    return _build(context, zacContext);
  }
}

@freezedZacBuilder
class FlutterTextBaseline with _$FlutterTextBaseline, ZacBuilder<TextBaseline> {
  const FlutterTextBaseline._();

  factory FlutterTextBaseline.fromJson(Map<String, dynamic> json) =>
      _$FlutterTextBaselineFromJson(json);

  @FreezedUnionValue('f:1:TextBaseline.alphabetic')
  factory FlutterTextBaseline.alphabetic() = _FlutterTextBaselineAlphabetic;

  @FreezedUnionValue('f:1:TextBaseline.ideographic')
  factory FlutterTextBaseline.ideographic() = _FlutterTextBaselineIdeographic;

  TextBaseline _build(BuildContext context, ZacContext zacContext) {
    return map(
        alphabetic: (_) => TextBaseline.alphabetic,
        ideographic: (_) => TextBaseline.ideographic);
  }

  @override
  TextBaseline build(BuildContext context, ZacContext zacContext) {
    return _build(context, zacContext);
  }
}

@freezedZacBuilder
class FlutterFontWeight with _$FlutterFontWeight, ZacBuilder<FontWeight> {
  const FlutterFontWeight._();

  factory FlutterFontWeight.fromJson(Map<String, dynamic> json) =>
      _$FlutterFontWeightFromJson(json);

  @FreezedUnionValue('f:1:FontWeight.bold')
  factory FlutterFontWeight.bold() = _FlutterFontWeightBold;

  @FreezedUnionValue('f:1:FontWeight.normal')
  factory FlutterFontWeight.normal() = _FlutterFontWeightNormal;

  @FreezedUnionValue('f:1:FontWeight.w100')
  factory FlutterFontWeight.w100() = _FlutterFontWeightW100;

  @FreezedUnionValue('f:1:FontWeight.w200')
  factory FlutterFontWeight.w200() = _FlutterFontWeightW200;

  @FreezedUnionValue('f:1:FontWeight.w300')
  factory FlutterFontWeight.w300() = _FlutterFontWeightW300;

  @FreezedUnionValue('f:1:FontWeight.w400')
  factory FlutterFontWeight.w400() = _FlutterFontWeightW400;

  @FreezedUnionValue('f:1:FontWeight.w500')
  factory FlutterFontWeight.w500() = _FlutterFontWeightW500;

  @FreezedUnionValue('f:1:FontWeight.w600')
  factory FlutterFontWeight.w600() = _FlutterFontWeightW600;

  @FreezedUnionValue('f:1:FontWeight.w700')
  factory FlutterFontWeight.w700() = _FlutterFontWeightW700;

  @FreezedUnionValue('f:1:FontWeight.w800')
  factory FlutterFontWeight.w800() = _FlutterFontWeightW800;

  @FreezedUnionValue('f:1:FontWeight.w900')
  factory FlutterFontWeight.w900() = _FlutterFontWeightW900;

  FontWeight _build(BuildContext context, ZacContext zacContext) {
    return map(
      bold: (_) => FontWeight.bold,
      normal: (_) => FontWeight.normal,
      w100: (_) => FontWeight.w100,
      w200: (_) => FontWeight.w200,
      w300: (_) => FontWeight.w300,
      w400: (_) => FontWeight.w400,
      w500: (_) => FontWeight.w500,
      w600: (_) => FontWeight.w600,
      w700: (_) => FontWeight.w700,
      w800: (_) => FontWeight.w800,
      w900: (_) => FontWeight.w900,
    );
  }

  @override
  FontWeight build(BuildContext context, ZacContext zacContext) {
    return _build(context, zacContext);
  }
}

@freezedZacBuilder
class FlutterFontStyle with _$FlutterFontStyle, ZacBuilder<FontStyle> {
  const FlutterFontStyle._();

  factory FlutterFontStyle.fromJson(Map<String, dynamic> json) =>
      _$FlutterFontStyleFromJson(json);

  @FreezedUnionValue('f:1:FontStyle.italic')
  factory FlutterFontStyle.italic() = _FlutterFontStyleItalic;

  @FreezedUnionValue('f:1:FontStyle.normal')
  factory FlutterFontStyle.normal() = _FlutterFontStyleNormal;

  FontStyle _build(BuildContext context, ZacContext zacContext) {
    return map(
        italic: (_) => FontStyle.italic, normal: (_) => FontStyle.normal);
  }

  @override
  FontStyle build(BuildContext context, ZacContext zacContext) {
    return _build(context, zacContext);
  }
}

@freezedZacBuilder
class FlutterTextDecoration
    with _$FlutterTextDecoration, ZacBuilder<TextDecoration> {
  const FlutterTextDecoration._();

  factory FlutterTextDecoration.fromJson(Map<String, dynamic> json) =>
      _$FlutterTextDecorationFromJson(json);

  @FreezedUnionValue('f:1:TextDecoration.lineThrough')
  factory FlutterTextDecoration.lineThrough() =
      _FlutterTextDecorationLineThrough;

  @FreezedUnionValue('f:1:TextDecoration.none')
  factory FlutterTextDecoration.none() = _FlutterTextDecorationNone;

  @FreezedUnionValue('f:1:TextDecoration.overline')
  factory FlutterTextDecoration.overline() = _FlutterTextDecorationOverline;

  @FreezedUnionValue('f:1:TextDecoration.underline')
  factory FlutterTextDecoration.underline() = _FlutterTextDecorationUnderline;

  TextDecoration _build(BuildContext context, ZacContext zacContext) {
    return map(
      lineThrough: (_) => TextDecoration.lineThrough,
      none: (_) => TextDecoration.none,
      overline: (_) => TextDecoration.overline,
      underline: (_) => TextDecoration.underline,
    );
  }

  @override
  TextDecoration build(BuildContext context, ZacContext zacContext) {
    return _build(context, zacContext);
  }
}

@freezedZacBuilder
class FlutterTextLeadingDistribution
    with _$FlutterTextLeadingDistribution, ZacBuilder<TextLeadingDistribution> {
  const FlutterTextLeadingDistribution._();

  factory FlutterTextLeadingDistribution.fromJson(Map<String, dynamic> json) =>
      _$FlutterTextLeadingDistributionFromJson(json);

  @FreezedUnionValue('f:1:TextLeadingDistribution.even')
  factory FlutterTextLeadingDistribution.even() =
      _FlutterTextLeadingDistributionEven;

  @FreezedUnionValue('f:1:TextLeadingDistribution.proportional')
  factory FlutterTextLeadingDistribution.proportional() =
      _FlutterTextLeadingDistributionProportional;

  TextLeadingDistribution _build(BuildContext context, ZacContext zacContext) {
    return map(
        even: (_) => TextLeadingDistribution.even,
        proportional: (_) => TextLeadingDistribution.proportional);
  }

  @override
  TextLeadingDistribution build(BuildContext context, ZacContext zacContext) {
    return _build(context, zacContext);
  }
}

@freezedZacBuilder
class FlutterLocale with _$FlutterLocale, ZacBuilder<Locale> {
  const FlutterLocale._();

  factory FlutterLocale.fromJson(Map<String, dynamic> json) =>
      _$FlutterLocaleFromJson(json);

  @FreezedUnionValue('f:1:Locale')
  factory FlutterLocale(String languageCode, [String? countryCode]) =
      _FlutterLocale;

  Locale _build(BuildContext context, ZacContext zacContext) {
    return Locale(languageCode, countryCode);
  }

  @override
  Locale build(BuildContext context, ZacContext zacContext) {
    return _build(context, zacContext);
  }
}

@freezedZacBuilder
class FlutterFontFeature with _$FlutterFontFeature, ZacBuilder<FontFeature> {
  const FlutterFontFeature._();

  factory FlutterFontFeature.fromJson(Map<String, dynamic> json) =>
      _$FlutterFontFeatureFromJson(json);

  @FreezedUnionValue('f:1:FontFeature')
  factory FlutterFontFeature(String feature, [ZacBuilder<int?>? value]) =
      _FontFeature;

  @FreezedUnionValue('f:1:FontFeature.alternative')
  factory FlutterFontFeature.alternative(int value) = _FontFeatureAlternative;

  @FreezedUnionValue('f:1:FontFeature.alternativeFractions')
  factory FlutterFontFeature.alternativeFractions() =
      _FontFeatureAlternativeFractions;

  @FreezedUnionValue('f:1:FontFeature.caseSensitiveForms')
  factory FlutterFontFeature.caseSensitiveForms() =
      _FontFeatureCaseSenitiveForms;

  @FreezedUnionValue('f:1:FontFeature.characterVariant')
  factory FlutterFontFeature.characterVariant(int value) =
      _FontFeatureCharacterVariant;

  @FreezedUnionValue('f:1:FontFeature.contextualAlternates')
  factory FlutterFontFeature.contextualAlternates() =
      _FontFeatureContextualAlternates;

  @FreezedUnionValue('f:1:FontFeature.denominator')
  factory FlutterFontFeature.denominator() = _FontFeatureDenominator;

  @FreezedUnionValue('f:1:FontFeature.disable')
  factory FlutterFontFeature.disable(String feature) = _FontFeatureDisable;

  @FreezedUnionValue('f:1:FontFeature.enable')
  factory FlutterFontFeature.enable(String feature) = _FontFeatureEnable;

  @FreezedUnionValue('f:1:FontFeature.fractions')
  factory FlutterFontFeature.fractions() = _FontFeatureFractions;

  @FreezedUnionValue('f:1:FontFeature.historicalForms')
  factory FlutterFontFeature.historicalForms() = _FontFeatureHistoricalForms;

  @FreezedUnionValue('f:1:FontFeature.historicalLigatures')
  factory FlutterFontFeature.historicalLigatures() =
      _FontFeatureHistoricalLigatures;

  @FreezedUnionValue('f:1:FontFeature.liningFigures')
  factory FlutterFontFeature.liningFigures() = _FontFeatureLiningFigures;

  @FreezedUnionValue('f:1:FontFeature.localeAware')
  factory FlutterFontFeature.localeAware({ZacBuilder<bool?>? enable}) =
      _FontFeatureLocaleAware;

  @FreezedUnionValue('f:1:FontFeature.notationalForms')
  factory FlutterFontFeature.notationalForms([ZacBuilder<int?>? value]) =
      _FontFeatureNotationalForms;

  @FreezedUnionValue('f:1:FontFeature.numerators')
  factory FlutterFontFeature.numerators() = _FontFeatureNumerators;

  @FreezedUnionValue('f:1:FontFeature.oldstyleFigures')
  factory FlutterFontFeature.oldstyleFigures() = _FontFeatureOldStyleFigures;

  @FreezedUnionValue('f:1:FontFeature.ordinalForms')
  factory FlutterFontFeature.ordinalForms() = _FontFeatureOrdinalForms;

  @FreezedUnionValue('f:1:FontFeature.proportionalFigures')
  factory FlutterFontFeature.proportionalFigures() =
      _FontFeatureProportionalFigures;

  @FreezedUnionValue('f:1:FontFeature.randomize')
  factory FlutterFontFeature.randomize() = _FontFeatureRandomize;

  @FreezedUnionValue('f:1:FontFeature.scientificInferiors')
  factory FlutterFontFeature.scientificInferiors() =
      _FontFeatureScientificInferiors;

  @FreezedUnionValue('f:1:FontFeature.slashedZero')
  factory FlutterFontFeature.slashedZero() = _FontFeatureSlashedZero;

  @FreezedUnionValue('f:1:FontFeature.stylisticAlternates')
  factory FlutterFontFeature.stylisticAlternates() =
      _FontFeatureStylisticAlternates;

  @FreezedUnionValue('f:1:FontFeature.stylisticSet')
  factory FlutterFontFeature.stylisticSet(int value) = _FontFeatureStylisticSet;

  @FreezedUnionValue('f:1:FontFeature.subscripts')
  factory FlutterFontFeature.subscripts() = _FontFeatureSubscripts;

  @FreezedUnionValue('f:1:FontFeature.superscripts')
  factory FlutterFontFeature.superscripts() = _FontFeatureSuperscripts;

  @FreezedUnionValue('f:1:FontFeature.swash')
  factory FlutterFontFeature.swash([ZacBuilder<int?>? value]) =
      _FontFeatureSwash;

  @FreezedUnionValue('f:1:FontFeature.tabularFigures')
  factory FlutterFontFeature.tabularFigures() = _FontFeatureTabularFigures;

  FontFeature _build(BuildContext context, ZacContext zacContext) {
    return map(
      (value) => FontFeature(
          value.feature, value.value?.build(context, zacContext) ?? 1),
      alternative: (value) => FontFeature.alternative(value.value),
      alternativeFractions: (value) => const FontFeature.alternativeFractions(),
      caseSensitiveForms: (value) => const FontFeature.caseSensitiveForms(),
      characterVariant: (value) => FontFeature.characterVariant(value.value),
      contextualAlternates: (value) => const FontFeature.contextualAlternates(),
      denominator: (value) => const FontFeature.denominator(),
      disable: (value) => FontFeature.disable(value.feature),
      enable: (value) => FontFeature.enable(value.feature),
      fractions: (value) => const FontFeature.fractions(),
      historicalForms: (value) => const FontFeature.historicalForms(),
      historicalLigatures: (value) => const FontFeature.historicalLigatures(),
      liningFigures: (value) => const FontFeature.liningFigures(),
      localeAware: (value) => FontFeature.localeAware(
          enable: value.enable?.build(context, zacContext) ?? true),
      notationalForms: (value) => FontFeature.notationalForms(
          value.value?.build(context, zacContext) ?? 1),
      numerators: (value) => const FontFeature.numerators(),
      oldstyleFigures: (value) => const FontFeature.oldstyleFigures(),
      ordinalForms: (value) => const FontFeature.ordinalForms(),
      proportionalFigures: (value) => const FontFeature.proportionalFigures(),
      randomize: (value) => const FontFeature.randomize(),
      scientificInferiors: (value) => const FontFeature.scientificInferiors(),
      slashedZero: (value) => const FontFeature.slashedZero(),
      stylisticAlternates: (value) => const FontFeature.stylisticAlternates(),
      stylisticSet: (value) => FontFeature.stylisticSet(value.value),
      subscripts: (value) => const FontFeature.subscripts(),
      superscripts: (value) => const FontFeature.superscripts(),
      swash: (value) =>
          FontFeature.swash(value.value?.build(context, zacContext) ?? 1),
      tabularFigures: (value) => const FontFeature.tabularFigures(),
    );
  }

  @override
  FontFeature build(BuildContext context, ZacContext zacContext) {
    return _build(context, zacContext);
  }
}

@freezedZacBuilder
class FlutterTextDecorationStyle
    with _$FlutterTextDecorationStyle, ZacBuilder<TextDecorationStyle> {
  const FlutterTextDecorationStyle._();

  factory FlutterTextDecorationStyle.fromJson(Map<String, dynamic> json) =>
      _$FlutterTextDecorationStyleFromJson(json);

  @FreezedUnionValue('f:1:TextDecorationStyle.dashed')
  factory FlutterTextDecorationStyle.dashed() =
      _FlutterTextDecorationStyleDashed;

  @FreezedUnionValue('f:1:TextDecorationStyle.dotted')
  factory FlutterTextDecorationStyle.dotted() =
      _FlutterTextDecorationStyleDotted;

  @FreezedUnionValue('f:1:TextDecorationStyle.double')
  factory FlutterTextDecorationStyle.double() =
      _FlutterTextDecorationStyleDouble;

  @FreezedUnionValue('f:1:TextDecorationStyle.solid')
  factory FlutterTextDecorationStyle.solid() = _FlutterTextDecorationStyleSolid;

  @FreezedUnionValue('f:1:TextDecorationStyle.wavy')
  factory FlutterTextDecorationStyle.wavy() = _FlutterTextDecorationStyleWavy;

  TextDecorationStyle _build(BuildContext context, ZacContext zacContext) {
    return map(
      dashed: (_) => TextDecorationStyle.dashed,
      dotted: (_) => TextDecorationStyle.dotted,
      double: (_) => TextDecorationStyle.double,
      solid: (_) => TextDecorationStyle.solid,
      wavy: (_) => TextDecorationStyle.wavy,
    );
  }

  @override
  TextDecorationStyle build(BuildContext context, ZacContext zacContext) {
    return _build(context, zacContext);
  }
}

@freezedZacBuilder
class FlutterTextAlign with _$FlutterTextAlign, ZacBuilder<TextAlign> {
  const FlutterTextAlign._();

  factory FlutterTextAlign.fromJson(Map<String, dynamic> json) =>
      _$FlutterTextAlignFromJson(json);

  @FreezedUnionValue('f:1:TextAlign.center')
  factory FlutterTextAlign.center() = _FlutterTextAlignCenter;

  @FreezedUnionValue('f:1:TextAlign.end')
  factory FlutterTextAlign.end() = _FlutterTextAlignEnd;

  @FreezedUnionValue('f:1:TextAlign.justify')
  factory FlutterTextAlign.justify() = _FlutterTextAlignJustify;

  @FreezedUnionValue('f:1:TextAlign.left')
  factory FlutterTextAlign.left() = _FlutterTextAlignLeft;

  @FreezedUnionValue('f:1:TextAlign.right')
  factory FlutterTextAlign.right() = _FlutterTextAlignRight;

  @FreezedUnionValue('f:1:TextAlign.start')
  factory FlutterTextAlign.start() = _FlutterTextAlignStart;

  TextAlign _build(BuildContext context, ZacContext zacContext) {
    return map(
      center: (_) => TextAlign.center,
      end: (_) => TextAlign.end,
      justify: (_) => TextAlign.justify,
      left: (_) => TextAlign.left,
      right: (_) => TextAlign.right,
      start: (_) => TextAlign.start,
    );
  }

  @override
  TextAlign build(BuildContext context, ZacContext zacContext) {
    return _build(context, zacContext);
  }
}

@freezedZacBuilder
class FlutterTextHeightBehavior
    with _$FlutterTextHeightBehavior, ZacBuilder<TextHeightBehavior> {
  const FlutterTextHeightBehavior._();

  factory FlutterTextHeightBehavior.fromJson(Map<String, dynamic> json) =>
      _$FlutterTextHeightBehaviorFromJson(json);

  @FreezedUnionValue('f:1:TextHeightBehavior')
  factory FlutterTextHeightBehavior({
    ZacBuilder<bool?>? applyHeightToFirstAscent,
    ZacBuilder<bool?>? applyHeightToLastDescent,
    ZacBuilder<TextLeadingDistribution?>? leadingDistribution,
  }) = _FlutterTextHeightBehavior;

  TextHeightBehavior _build(BuildContext context, ZacContext zacContext) {
    return TextHeightBehavior(
      applyHeightToFirstAscent:
          applyHeightToFirstAscent?.build(context, zacContext) ?? true,
      applyHeightToLastDescent:
          applyHeightToLastDescent?.build(context, zacContext) ?? true,
      leadingDistribution: leadingDistribution?.build(context, zacContext) ??
          TextLeadingDistribution.proportional,
    );
  }

  @override
  TextHeightBehavior build(BuildContext context, ZacContext zacContext) {
    return _build(context, zacContext);
  }
}

@freezedZacBuilder
class FlutterBlendMode with _$FlutterBlendMode, ZacBuilder<BlendMode> {
  const FlutterBlendMode._();

  factory FlutterBlendMode.fromJson(Map<String, dynamic> json) =>
      _$FlutterBlendModeFromJson(json);

  @FreezedUnionValue('f:1:BlendMode.clear')
  factory FlutterBlendMode.clear() = _FlutterBlendModeClear;

  @FreezedUnionValue('f:1:BlendMode.color')
  factory FlutterBlendMode.color() = _FlutterBlendModeColor;

  @FreezedUnionValue('f:1:BlendMode.colorBurn')
  factory FlutterBlendMode.colorBurn() = _FlutterBlendModeColorBurn;

  @FreezedUnionValue('f:1:BlendMode.colorDodge')
  factory FlutterBlendMode.colorDodge() = _FlutterBlendModeColorDodge;

  @FreezedUnionValue('f:1:BlendMode.darken')
  factory FlutterBlendMode.darken() = _FlutterBlendModeDarken;

  @FreezedUnionValue('f:1:BlendMode.difference')
  factory FlutterBlendMode.difference() = _FlutterBlendModeDifference;

  @FreezedUnionValue('f:1:BlendMode.dst')
  factory FlutterBlendMode.dst() = _FlutterBlendModeDst;

  @FreezedUnionValue('f:1:BlendMode.dstATop')
  factory FlutterBlendMode.dstATop() = _FlutterBlendModeDstATop;

  @FreezedUnionValue('f:1:BlendMode.dstIn')
  factory FlutterBlendMode.dstIn() = _FlutterBlendModeDstIn;

  @FreezedUnionValue('f:1:BlendMode.dstOut')
  factory FlutterBlendMode.dstOut() = _FlutterBlendModeDstOut;

  @FreezedUnionValue('f:1:BlendMode.dstOver')
  factory FlutterBlendMode.dstOver() = _FlutterBlendModeDstOver;

  @FreezedUnionValue('f:1:BlendMode.exclusion')
  factory FlutterBlendMode.exclusion() = _FlutterBlendModeExclusion;

  @FreezedUnionValue('f:1:BlendMode.hardLight')
  factory FlutterBlendMode.hardLight() = _FlutterBlendModeHardLight;

  @FreezedUnionValue('f:1:BlendMode.hue')
  factory FlutterBlendMode.hue() = _FlutterBlendModeHue;

  @FreezedUnionValue('f:1:BlendMode.lighten')
  factory FlutterBlendMode.lighten() = _FlutterBlendModeLighten;

  @FreezedUnionValue('f:1:BlendMode.luminosity')
  factory FlutterBlendMode.luminosity() = _FlutterBlendModeLuminosity;

  @FreezedUnionValue('f:1:BlendMode.modulate')
  factory FlutterBlendMode.modulate() = _FlutterBlendModeModulate;

  @FreezedUnionValue('f:1:BlendMode.multiply')
  factory FlutterBlendMode.multiply() = _FlutterBlendModeMultiply;

  @FreezedUnionValue('f:1:BlendMode.overlay')
  factory FlutterBlendMode.overlay() = _FlutterBlendModeOverlay;

  @FreezedUnionValue('f:1:BlendMode.plus')
  factory FlutterBlendMode.plus() = _FlutterBlendModePlus;

  @FreezedUnionValue('f:1:BlendMode.saturation')
  factory FlutterBlendMode.saturation() = _FlutterBlendModeSaturation;

  @FreezedUnionValue('f:1:BlendMode.screen')
  factory FlutterBlendMode.screen() = _FlutterBlendModeScreen;

  @FreezedUnionValue('f:1:BlendMode.softLight')
  factory FlutterBlendMode.softLight() = _FlutterBlendModeSoftLight;

  @FreezedUnionValue('f:1:BlendMode.src')
  factory FlutterBlendMode.src() = _FlutterBlendModeSrc;

  @FreezedUnionValue('f:1:BlendMode.srcATop')
  factory FlutterBlendMode.srcATop() = _FlutterBlendModeSrcATop;

  @FreezedUnionValue('f:1:BlendMode.srcIn')
  factory FlutterBlendMode.srcIn() = _FlutterBlendModeSrcIn;

  @FreezedUnionValue('f:1:BlendMode.srcOut')
  factory FlutterBlendMode.srcOut() = _FlutterBlendModeSrcOut;

  @FreezedUnionValue('f:1:BlendMode.srcOver')
  factory FlutterBlendMode.srcOver() = _FlutterBlendModeSrcOver;

  @FreezedUnionValue('f:1:BlendMode.xor')
  factory FlutterBlendMode.xor() = _FlutterBlendModeXor;

  BlendMode _build(BuildContext context, ZacContext zacContext) {
    return map(
      clear: (_) => BlendMode.clear,
      color: (_) => BlendMode.color,
      colorBurn: (_) => BlendMode.colorBurn,
      colorDodge: (_) => BlendMode.colorDodge,
      darken: (_) => BlendMode.darken,
      difference: (_) => BlendMode.difference,
      dst: (_) => BlendMode.dst,
      dstATop: (_) => BlendMode.dstATop,
      dstIn: (_) => BlendMode.dstIn,
      dstOut: (_) => BlendMode.dstOut,
      dstOver: (_) => BlendMode.dstOver,
      exclusion: (_) => BlendMode.exclusion,
      hardLight: (_) => BlendMode.hardLight,
      hue: (_) => BlendMode.hue,
      lighten: (_) => BlendMode.lighten,
      luminosity: (_) => BlendMode.luminosity,
      modulate: (_) => BlendMode.modulate,
      multiply: (_) => BlendMode.multiply,
      overlay: (_) => BlendMode.overlay,
      plus: (_) => BlendMode.plus,
      saturation: (_) => BlendMode.saturation,
      screen: (_) => BlendMode.screen,
      softLight: (_) => BlendMode.softLight,
      src: (_) => BlendMode.src,
      srcATop: (_) => BlendMode.srcATop,
      srcIn: (_) => BlendMode.srcIn,
      srcOut: (_) => BlendMode.srcOut,
      srcOver: (_) => BlendMode.srcOver,
      xor: (_) => BlendMode.xor,
    );
  }

  @override
  BlendMode build(BuildContext context, ZacContext zacContext) {
    return _build(context, zacContext);
  }
}

@freezedZacBuilder
class FlutterRect with _$FlutterRect, ZacBuilder<Rect> {
  const FlutterRect._();

  factory FlutterRect.fromJson(Map<String, dynamic> json) =>
      _$FlutterRectFromJson(json);

  @FreezedUnionValue('f:1:Rect.fromCenter')
  factory FlutterRect.fromCenter({
    required FlutterOffset center,
    required ZacBuilder<double> width,
    required ZacBuilder<double> height,
  }) = _FlutterRectFroMCenter;

  @FreezedUnionValue('f:1:Rect.fromCircle')
  factory FlutterRect.fromCircle({
    required FlutterOffset center,
    required ZacBuilder<double> radius,
  }) = _FlutterRectFromCircle;

  @FreezedUnionValue('f:1:Rect.fromLTRB')
  factory FlutterRect.fromLTRB(
      ZacBuilder<double> left,
      ZacBuilder<double> top,
      ZacBuilder<double> right,
      ZacBuilder<double> bottom) = _FlutterRectFromLTRB;

  @FreezedUnionValue('f:1:Rect.fromLTWH')
  factory FlutterRect.fromLTWH(
      ZacBuilder<double> left,
      ZacBuilder<double> top,
      ZacBuilder<double> width,
      ZacBuilder<double> height) = _FlutterRectFromLTWH;

  @FreezedUnionValue('f:1:Rect.fromPoints')
  factory FlutterRect.fromPoints(FlutterOffset a, FlutterOffset b) =
      _FlutterRectFromPoints;

  Rect _build(BuildContext context, ZacContext zacContext) {
    return map(
      fromCenter: (value) => Rect.fromCenter(
          center: value.center.build(context, zacContext),
          width: value.width.build(context, zacContext),
          height: value.height.build(context, zacContext)),
      fromCircle: (value) => Rect.fromCircle(
          center: value.center.build(context, zacContext),
          radius: value.radius.build(context, zacContext)),
      fromLTRB: (value) => Rect.fromLTRB(
          value.left.build(context, zacContext),
          value.top.build(context, zacContext),
          value.right.build(context, zacContext),
          value.bottom.build(context, zacContext)),
      fromLTWH: (value) => Rect.fromLTWH(
          value.left.build(context, zacContext),
          value.top.build(context, zacContext),
          value.width.build(context, zacContext),
          value.height.build(context, zacContext)),
      fromPoints: (value) => Rect.fromPoints(value.a.build(context, zacContext),
          value.b.build(context, zacContext)),
    );
  }

  @override
  Rect build(BuildContext context, ZacContext zacContext) {
    return _build(context, zacContext);
  }
}

@freezedZacBuilder
class FlutterFilterQuality
    with _$FlutterFilterQuality, ZacBuilder<FilterQuality> {
  const FlutterFilterQuality._();

  factory FlutterFilterQuality.fromJson(Map<String, dynamic> json) =>
      _$FlutterFilterQualityFromJson(json);

  @FreezedUnionValue('f:1:FilterQuality.high')
  factory FlutterFilterQuality.high() = _FlutterFilterQualityHigh;

  @FreezedUnionValue('f:1:FilterQuality.low')
  factory FlutterFilterQuality.low() = _FlutterFilterQualityLow;

  @FreezedUnionValue('f:1:FilterQuality.medium')
  factory FlutterFilterQuality.medium() = _FlutterFilterQualityMedium;

  @FreezedUnionValue('f:1:FilterQuality.none')
  factory FlutterFilterQuality.none() = _FlutterFilterQualityNone;

  FilterQuality _build(BuildContext context, ZacContext zacContext) {
    return map(
      high: (_) => FilterQuality.high,
      low: (_) => FilterQuality.low,
      medium: (_) => FilterQuality.medium,
      none: (_) => FilterQuality.none,
    );
  }

  @override
  FilterQuality build(BuildContext context, ZacContext zacContext) {
    return _build(context, zacContext);
  }
}

@freezedZacBuilder
class FlutterBrightness with _$FlutterBrightness, ZacBuilder<Brightness> {
  const FlutterBrightness._();

  factory FlutterBrightness.fromJson(Map<String, dynamic> json) =>
      _$FlutterBrightnessFromJson(json);

  @FreezedUnionValue('f:1:Brightness.dark')
  factory FlutterBrightness.dark() = _FlutterBrightnessDark;

  @FreezedUnionValue('f:1:Brightness.light')
  factory FlutterBrightness.light() = _FlutterBrightnessLight;

  Brightness _build(BuildContext context, ZacContext zacContext) {
    return map(light: (_) => Brightness.light, dark: (_) => Brightness.dark);
  }

  @override
  Brightness build(BuildContext context, ZacContext zacContext) {
    return _build(context, zacContext);
  }
}

@freezedZacBuilder
class FlutterSize with _$FlutterSize, ZacBuilder<Size> {
  const FlutterSize._();

  factory FlutterSize.fromJson(Map<String, dynamic> json) =>
      _$FlutterSizeFromJson(json);

  @FreezedUnionValue('f:1:Size')
  factory FlutterSize(
    ZacBuilder<double> width,
    ZacBuilder<double> height,
  ) = _FlutterSize;

  Size _build(BuildContext context, ZacContext zacContext) {
    return Size(
        width.build(context, zacContext), height.build(context, zacContext));
  }

  @override
  Size build(BuildContext context, ZacContext zacContext) {
    return _build(context, zacContext);
  }
}

@freezedZacBuilder
class FlutterBoxHeightStyle
    with _$FlutterBoxHeightStyle, ZacBuilder<BoxHeightStyle> {
  const FlutterBoxHeightStyle._();

  factory FlutterBoxHeightStyle.fromJson(Map<String, dynamic> json) =>
      _$FlutterBoxHeightStyleFromJson(json);

  @FreezedUnionValue('f:1:BoxHeightStyle.includeLineSpacingBottom')
  factory FlutterBoxHeightStyle.includeLineSpacingBottom() =
      _FlutterBoxHeightStyleincludeLineSpacingBottom;

  @FreezedUnionValue('f:1:BoxHeightStyle.includeLineSpacingMiddle')
  factory FlutterBoxHeightStyle.includeLineSpacingMiddle() =
      _FlutterBoxHeightStyleincludeLineSpacingMiddle;

  @FreezedUnionValue('f:1:BoxHeightStyle.includeLineSpacingTop')
  factory FlutterBoxHeightStyle.includeLineSpacingTop() =
      _FlutterBoxHeightStyleincludeLineSpacingTop;

  @FreezedUnionValue('f:1:BoxHeightStyle.max')
  factory FlutterBoxHeightStyle.max() = _FlutterBoxHeightStylemax;

  @FreezedUnionValue('f:1:BoxHeightStyle.strut')
  factory FlutterBoxHeightStyle.strut() = _FlutterBoxHeightStylestrut;

  @FreezedUnionValue('f:1:BoxHeightStyle.tight')
  factory FlutterBoxHeightStyle.tight() = _FlutterBoxHeightStyletight;

  BoxHeightStyle _build(BuildContext context, ZacContext zacContext) {
    return map(
      includeLineSpacingBottom: (_) => BoxHeightStyle.includeLineSpacingBottom,
      includeLineSpacingMiddle: (_) => BoxHeightStyle.includeLineSpacingMiddle,
      includeLineSpacingTop: (_) => BoxHeightStyle.includeLineSpacingTop,
      max: (_) => BoxHeightStyle.max,
      strut: (_) => BoxHeightStyle.strut,
      tight: (_) => BoxHeightStyle.tight,
    );
  }

  @override
  BoxHeightStyle build(BuildContext context, ZacContext zacContext) {
    return _build(context, zacContext);
  }
}

@freezedZacBuilder
class FlutterBoxWidthStyle
    with _$FlutterBoxWidthStyle, ZacBuilder<BoxWidthStyle> {
  const FlutterBoxWidthStyle._();

  factory FlutterBoxWidthStyle.fromJson(Map<String, dynamic> json) =>
      _$FlutterBoxWidthStyleFromJson(json);

  @FreezedUnionValue('f:1:BoxWidthStyle.max')
  factory FlutterBoxWidthStyle.max() = _FlutterBoxWidthStylemax;

  @FreezedUnionValue('f:1:BoxWidthStyle.tight')
  factory FlutterBoxWidthStyle.tight() = _FlutterBoxWidthStyletight;

  BoxWidthStyle _build(BuildContext context, ZacContext zacContext) {
    return map(
      max: (_) => BoxWidthStyle.max,
      tight: (_) => BoxWidthStyle.tight,
    );
  }

  @override
  BoxWidthStyle build(BuildContext context, ZacContext zacContext) {
    return _build(context, zacContext);
  }
}

@freezedZacBuilder
class FlutterShadow with _$FlutterShadow implements ZacBuilder<Shadow> {
  const FlutterShadow._();

  static const String unionValue = 'f:1:Shadow';

  factory FlutterShadow.fromJson(Map<String, dynamic> json) =>
      _$FlutterShadowFromJson(json);

  @FreezedUnionValue(FlutterShadow.unionValue)
  factory FlutterShadow({
    ZacBuilder<Color?>? color,
    ZacBuilder<Offset?>? offset,
    ZacBuilder<double?>? blurRadius,
  }) = _FlutterShadowShadow;

  Shadow _build(BuildContext context, ZacContext zacContext) {
    return Shadow(
      color: color?.build(context, zacContext) ?? const Color(0xFF000000),
      offset: offset?.build(context, zacContext) ?? Offset.zero,
      blurRadius: blurRadius?.build(context, zacContext) ?? 0.0,
    );
  }

  @override
  Shadow build(BuildContext context, ZacContext zacContext) {
    return _build(context, zacContext);
  }
}
