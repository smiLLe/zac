import 'package:zac/src/zac/context.dart';
import 'package:zac/src/zac/zac_value.dart';
import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:zac/src/flutter/dart_ui.dart';
import 'package:zac/src/base.dart';

part 'rendering.freezed.dart';
part 'rendering.g.dart';

@freezedZacBuilder
@ZacGenerate(order: zacGenerateOrderDartClasses)
class FlutterHitTestBehavior with _$FlutterHitTestBehavior {
  const FlutterHitTestBehavior._();

  factory FlutterHitTestBehavior.fromJson(Map<String, dynamic> json) =>
      _$FlutterHitTestBehaviorFromJson(json);

  @FreezedUnionValue('f:1:HitTestBehavior.deferToChild')
  factory FlutterHitTestBehavior.deferToChild() =
      _FlutterHitTestBehaviordeferToChild;

  @FreezedUnionValue('f:1:HitTestBehavior.opaque')
  factory FlutterHitTestBehavior.opaque() = _FlutterHitTestBehavioropaque;

  @FreezedUnionValue('f:1:HitTestBehavior.translucent')
  factory FlutterHitTestBehavior.translucent() =
      _FlutterHitTestBehaviortranslucent;

  HitTestBehavior build(ZacContext zacContext) {
    return map(
      deferToChild: (_) => HitTestBehavior.deferToChild,
      opaque: (_) => HitTestBehavior.opaque,
      translucent: (_) => HitTestBehavior.translucent,
    );
  }
}

@freezedZacBuilder
@ZacGenerate(order: zacGenerateOrderDartClasses)
class FlutterCrossAxisAlignment with _$FlutterCrossAxisAlignment {
  const FlutterCrossAxisAlignment._();

  factory FlutterCrossAxisAlignment.fromJson(Map<String, dynamic> json) =>
      _$FlutterCrossAxisAlignmentFromJson(json);

  @FreezedUnionValue('f:1:CrossAxisAlignment.baseline')
  factory FlutterCrossAxisAlignment.baseline() =
      _FlutterCrossAxisAlignmentBaseline;

  @FreezedUnionValue('f:1:CrossAxisAlignment.center')
  factory FlutterCrossAxisAlignment.center() = _FlutterCrossAxisAlignmentCenter;

  @FreezedUnionValue('f:1:CrossAxisAlignment.end')
  factory FlutterCrossAxisAlignment.end() = _FlutterCrossAxisAlignmentEnd;

  @FreezedUnionValue('f:1:CrossAxisAlignment.start')
  factory FlutterCrossAxisAlignment.start() = _FlutterCrossAxisAlignmentStart;

  @FreezedUnionValue('f:1:CrossAxisAlignment.stretch')
  factory FlutterCrossAxisAlignment.stretch() =
      _FlutterCrossAxisAlignmentStretch;

  CrossAxisAlignment build(ZacContext zacContext) {
    return map(
      baseline: (_) => CrossAxisAlignment.baseline,
      center: (_) => CrossAxisAlignment.center,
      end: (_) => CrossAxisAlignment.end,
      start: (_) => CrossAxisAlignment.start,
      stretch: (_) => CrossAxisAlignment.stretch,
    );
  }
}

@freezedZacBuilder
@ZacGenerate(order: zacGenerateOrderDartClasses)
class FlutterMainAxisAlignment with _$FlutterMainAxisAlignment {
  const FlutterMainAxisAlignment._();

  factory FlutterMainAxisAlignment.fromJson(Map<String, dynamic> json) =>
      _$FlutterMainAxisAlignmentFromJson(json);

  @FreezedUnionValue('f:1:MainAxisAlignment.start')
  factory FlutterMainAxisAlignment.start() = _FlutterMainAxisAlignmentStart;

  @FreezedUnionValue('f:1:MainAxisAlignment.end')
  factory FlutterMainAxisAlignment.end() = _FlutterMainAxisAlignmentEnd;

  @FreezedUnionValue('f:1:MainAxisAlignment.center')
  factory FlutterMainAxisAlignment.center() = _FlutterMainAxisAlignmentCenter;

  @FreezedUnionValue('f:1:MainAxisAlignment.spaceBetween')
  factory FlutterMainAxisAlignment.spaceBetween() =
      _FlutterMainAxisAlignmentSpaceBetween;

  @FreezedUnionValue('f:1:MainAxisAlignment.spaceAround')
  factory FlutterMainAxisAlignment.spaceAround() =
      _FlutterMainAxisAlignmentAround;

  @FreezedUnionValue('f:1:MainAxisAlignment.spaceEvenly')
  factory FlutterMainAxisAlignment.spaceEvenly() =
      _FlutterMainAxisAlignmentEvenly;

  MainAxisAlignment build(ZacContext zacContext) {
    return map(
      start: (_) => MainAxisAlignment.start,
      end: (_) => MainAxisAlignment.end,
      center: (_) => MainAxisAlignment.center,
      spaceBetween: (_) => MainAxisAlignment.spaceBetween,
      spaceAround: (_) => MainAxisAlignment.spaceAround,
      spaceEvenly: (_) => MainAxisAlignment.spaceEvenly,
    );
  }
}

@freezedZacBuilder
@ZacGenerate(order: zacGenerateOrderDartClasses)
class FlutterMainAxisSize with _$FlutterMainAxisSize {
  const FlutterMainAxisSize._();

  factory FlutterMainAxisSize.fromJson(Map<String, dynamic> json) =>
      _$FlutterMainAxisSizeFromJson(json);

  @FreezedUnionValue('f:1:MainAxisSize.min')
  factory FlutterMainAxisSize.min() = _FlutterMainAxisSizeMin;

  @FreezedUnionValue('f:1:MainAxisSize.max')
  factory FlutterMainAxisSize.max() = _FlutterMainAxisSizeMax;

  MainAxisSize build(ZacContext zacContext) {
    return map(min: (_) => MainAxisSize.min, max: (_) => MainAxisSize.max);
  }
}

@freezedZacBuilder
@ZacGenerate(order: zacGenerateOrderDartClasses)
class FlutterFlexFit with _$FlutterFlexFit {
  const FlutterFlexFit._();

  factory FlutterFlexFit.fromJson(Map<String, dynamic> json) =>
      _$FlutterFlexFitFromJson(json);

  @FreezedUnionValue('f:1:FlexFit.tight')
  factory FlutterFlexFit.tight() = _FlutterFlexFitTight;

  @FreezedUnionValue('f:1:FlexFit.loose')
  factory FlutterFlexFit.loose() = _FlutterFlexFitLoose;

  FlexFit build(ZacContext zacContext) {
    return map(tight: (_) => FlexFit.tight, loose: (_) => FlexFit.loose);
  }
}

@freezedZacBuilder
@ZacGenerate(order: zacGenerateOrderDartClasses)
class FlutterWrapAlignment with _$FlutterWrapAlignment {
  const FlutterWrapAlignment._();

  factory FlutterWrapAlignment.fromJson(Map<String, dynamic> json) =>
      _$FlutterWrapAlignmentFromJson(json);

  @FreezedUnionValue('f:1:WrapAlignment.start')
  factory FlutterWrapAlignment.start() = _FlutterWrapAlignmentStart;

  @FreezedUnionValue('f:1:WrapAlignment.end')
  factory FlutterWrapAlignment.end() = _FlutterWrapAlignmentEnd;

  @FreezedUnionValue('f:1:WrapAlignment.center')
  factory FlutterWrapAlignment.center() = _FlutterWrapAlignmentCenter;

  @FreezedUnionValue('f:1:WrapAlignment.spaceBetween')
  factory FlutterWrapAlignment.spaceBetween() =
      _FlutterWrapAlignmentSpaceBetween;

  @FreezedUnionValue('f:1:WrapAlignment.spaceAround')
  factory FlutterWrapAlignment.spaceAround() = _FlutterWrapAlignmentSpaceAround;

  @FreezedUnionValue('f:1:WrapAlignment.spaceEvenly')
  factory FlutterWrapAlignment.spaceEvenly() = _FlutterWrapAlignmentSpaceEvenly;

  WrapAlignment build(ZacContext zacContext) {
    return map(
      center: (_) => WrapAlignment.center,
      end: (_) => WrapAlignment.end,
      spaceAround: (_) => WrapAlignment.spaceAround,
      spaceBetween: (_) => WrapAlignment.spaceBetween,
      spaceEvenly: (_) => WrapAlignment.spaceEvenly,
      start: (_) => WrapAlignment.start,
    );
  }
}

@freezedZacBuilder
@ZacGenerate(order: zacGenerateOrderDartClasses)
class FlutterWrapCrossAlignment with _$FlutterWrapCrossAlignment {
  const FlutterWrapCrossAlignment._();

  factory FlutterWrapCrossAlignment.fromJson(Map<String, dynamic> json) =>
      _$FlutterWrapCrossAlignmentFromJson(json);

  @FreezedUnionValue('f:1:WrapCrossAlignment.center')
  factory FlutterWrapCrossAlignment.center() = _FlutterWrapCrossAlignmentCenter;

  @FreezedUnionValue('f:1:WrapCrossAlignment.end')
  factory FlutterWrapCrossAlignment.end() = _FlutterWrapCrossAlignmentEnd;

  @FreezedUnionValue('f:1:WrapCrossAlignment.start')
  factory FlutterWrapCrossAlignment.start() = _FlutterWrapCrossAlignmentStart;

  WrapCrossAlignment build(ZacContext zacContext) {
    return map(
      center: (_) => WrapCrossAlignment.center,
      end: (_) => WrapCrossAlignment.end,
      start: (_) => WrapCrossAlignment.start,
    );
  }
}

@freezedZacBuilder
@ZacGenerate(order: zacGenerateOrderDartClasses)
class FlutterStackFit with _$FlutterStackFit {
  const FlutterStackFit._();

  factory FlutterStackFit.fromJson(Map<String, dynamic> json) =>
      _$FlutterStackFitFromJson(json);

  @FreezedUnionValue('f:1:StackFit.expand')
  factory FlutterStackFit.expand() = _FlutterStackFitExpand;

  @FreezedUnionValue('f:1:StackFit.loose')
  factory FlutterStackFit.loose() = _FlutterStackFitLoose;

  @FreezedUnionValue('f:1:StackFit.passthrough')
  factory FlutterStackFit.passthrough() = _FlutterStackFit;

  StackFit build(ZacContext zacContext) {
    return map(
      expand: (_) => StackFit.expand,
      loose: (_) => StackFit.loose,
      passthrough: (_) => StackFit.passthrough,
    );
  }
}

@freezedZacBuilder
@ZacGenerate(order: zacGenerateOrderDartClasses)
class FlutterBoxConstraints with _$FlutterBoxConstraints {
  const FlutterBoxConstraints._();

  factory FlutterBoxConstraints.fromJson(Map<String, dynamic> json) =>
      _$FlutterBoxConstraintsFromJson(json);

  @FreezedUnionValue('f:1:BoxConstraints')
  factory FlutterBoxConstraints({
    ZacDouble? minWidth,
    ZacDouble? maxWidth,
    ZacDouble? minHeight,
    ZacDouble? maxHeight,
  }) = _FlutterBoxConstraints;

  @FreezedUnionValue('f:1:BoxConstraints.expand')
  factory FlutterBoxConstraints.expand({
    ZacDouble? width,
    ZacDouble? height,
  }) = _FlutterBoxConstraintsExpand;

  @FreezedUnionValue('f:1:BoxConstraints.loose')
  factory FlutterBoxConstraints.loose(FlutterSize size) =
      _FlutterBoxConstraintsLoose;

  @FreezedUnionValue('f:1:BoxConstraints.tight')
  factory FlutterBoxConstraints.tight(FlutterSize size) =
      _FlutterBoxConstraintsTight;

  @FreezedUnionValue('f:1:BoxConstraints.tightFor')
  factory FlutterBoxConstraints.tightFor(
      {ZacDouble? width, ZacDouble? height}) = _FlutterBoxConstraintsTightFor;

  @FreezedUnionValue('f:1:BoxConstraints.tightForFinite')
  factory FlutterBoxConstraints.tightForFinite(
      {ZacDouble? width,
      ZacDouble? height}) = _FlutterBoxConstraintsTightForFinite;

  BoxConstraints build(ZacContext zacContext) {
    return map(
      (value) => BoxConstraints(
        minWidth: value.minWidth?.getValueOrNull(zacContext) ?? 0.0,
        maxWidth: value.maxWidth?.getValueOrNull(zacContext) ?? double.infinity,
        minHeight: value.minHeight?.getValueOrNull(zacContext) ?? 0.0,
        maxHeight:
            value.maxHeight?.getValueOrNull(zacContext) ?? double.infinity,
      ),
      expand: (value) => BoxConstraints.expand(
          width: value.width?.getValueOrNull(zacContext),
          height: value.height?.getValueOrNull(zacContext)),
      loose: (value) => BoxConstraints.loose(value.size.build(zacContext)),
      tight: (value) => BoxConstraints.tight(value.size.build(zacContext)),
      tightFor: (value) => BoxConstraints.tightFor(
          width: value.width?.getValueOrNull(zacContext),
          height: value.height?.getValueOrNull(zacContext)),
      tightForFinite: (value) => BoxConstraints.tightForFinite(
        width: value.width?.getValueOrNull(zacContext) ?? double.infinity,
        height: value.height?.getValueOrNull(zacContext) ?? double.infinity,
      ),
    );
  }
}

@freezedZacBuilder
@ZacGenerate(order: zacGenerateOrderDartClasses)
class FlutterDecorationPosition with _$FlutterDecorationPosition {
  const FlutterDecorationPosition._();

  factory FlutterDecorationPosition.fromJson(Map<String, dynamic> json) =>
      _$FlutterDecorationPositionFromJson(json);

  @FreezedUnionValue('f:1:DecorationPosition.background')
  factory FlutterDecorationPosition.background() = _FlutterDecorationPositionBG;

  @FreezedUnionValue('f:1:DecorationPosition.foreground')
  factory FlutterDecorationPosition.foreground() = _FlutterDecorationPositionFG;

  DecorationPosition build(ZacContext zacContext) {
    return map(
      background: (_) => DecorationPosition.background,
      foreground: (_) => DecorationPosition.foreground,
    );
  }
}
