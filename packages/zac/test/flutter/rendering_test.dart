import 'package:flutter/widgets.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:zac/src/flutter/rendering.dart';

import '../helper.dart';

void main() {
  test('FlutterCrossAxisAlignment', () {
    fakeBuild<CrossAxisAlignment>(
      FlutterCrossAxisAlignment.fromJson(
              <String, dynamic>{'converter': 'f:1:CrossAxisAlignment.baseline'})
          .build,
      (matcher) => matcher.having((p0) => p0, 'CrossAxisAlignment.baseline',
          equals(CrossAxisAlignment.baseline)),
    );
    fakeBuild<CrossAxisAlignment>(
      FlutterCrossAxisAlignment.fromJson(
              <String, dynamic>{'converter': 'f:1:CrossAxisAlignment.center'})
          .build,
      (matcher) => matcher.having((p0) => p0, 'CrossAxisAlignment.center',
          equals(CrossAxisAlignment.center)),
    );

    fakeBuild<CrossAxisAlignment>(
      FlutterCrossAxisAlignment.fromJson(
          <String, dynamic>{'converter': 'f:1:CrossAxisAlignment.end'}).build,
      (matcher) => matcher.having(
          (p0) => p0, 'CrossAxisAlignment.end', equals(CrossAxisAlignment.end)),
    );

    fakeBuild<CrossAxisAlignment>(
      FlutterCrossAxisAlignment.fromJson(
          <String, dynamic>{'converter': 'f:1:CrossAxisAlignment.start'}).build,
      (matcher) => matcher.having((p0) => p0, 'CrossAxisAlignment.start',
          equals(CrossAxisAlignment.start)),
    );

    fakeBuild<CrossAxisAlignment>(
      FlutterCrossAxisAlignment.fromJson(
              <String, dynamic>{'converter': 'f:1:CrossAxisAlignment.stretch'})
          .build,
      (matcher) => matcher.having((p0) => p0, 'CrossAxisAlignment.stretch',
          equals(CrossAxisAlignment.stretch)),
    );
  });

  test('FlutterMainAxisSize', () {
    fakeBuild<MainAxisSize>(
      FlutterMainAxisSize.fromJson(
          <String, dynamic>{'converter': 'f:1:MainAxisSize.min'}).build,
      (matcher) => matcher.having(
          (p0) => p0, 'MainAxisSize.min', equals(MainAxisSize.min)),
    );
    fakeBuild<MainAxisSize>(
      FlutterMainAxisSize.fromJson(
          <String, dynamic>{'converter': 'f:1:MainAxisSize.max'}).build,
      (matcher) => matcher.having(
          (p0) => p0, 'MainAxisSize.max', equals(MainAxisSize.max)),
    );
  });

  test('FlutterMainAxisAlignment', () {
    fakeBuild<MainAxisAlignment>(
      FlutterMainAxisAlignment.fromJson(
          <String, dynamic>{'converter': 'f:1:MainAxisAlignment.start'}).build,
      (matcher) => matcher.having((p0) => p0, 'MainAxisAlignment.start',
          equals(MainAxisAlignment.start)),
    );
    fakeBuild<MainAxisAlignment>(
      FlutterMainAxisAlignment.fromJson(
          <String, dynamic>{'converter': 'f:1:MainAxisAlignment.end'}).build,
      (matcher) => matcher.having(
          (p0) => p0, 'MainAxisAlignment.end', equals(MainAxisAlignment.end)),
    );

    fakeBuild<MainAxisAlignment>(
      FlutterMainAxisAlignment.fromJson(
          <String, dynamic>{'converter': 'f:1:MainAxisAlignment.center'}).build,
      (matcher) => matcher.having((p0) => p0, 'MainAxisAlignment.center',
          equals(MainAxisAlignment.center)),
    );

    fakeBuild<MainAxisAlignment>(
      FlutterMainAxisAlignment.fromJson(<String, dynamic>{
        'converter': 'f:1:MainAxisAlignment.spaceBetween'
      }).build,
      (matcher) => matcher.having((p0) => p0, 'MainAxisAlignment.spaceBetween',
          equals(MainAxisAlignment.spaceBetween)),
    );

    fakeBuild<MainAxisAlignment>(
      FlutterMainAxisAlignment.fromJson(<String, dynamic>{
        'converter': 'f:1:MainAxisAlignment.spaceAround'
      }).build,
      (matcher) => matcher.having((p0) => p0, 'MainAxisAlignment.spaceAround',
          equals(MainAxisAlignment.spaceAround)),
    );

    fakeBuild<MainAxisAlignment>(
      FlutterMainAxisAlignment.fromJson(<String, dynamic>{
        'converter': 'f:1:MainAxisAlignment.spaceEvenly'
      }).build,
      (matcher) => matcher.having((p0) => p0, 'MainAxisAlignment.spaceEvenly',
          equals(MainAxisAlignment.spaceEvenly)),
    );
  });

  test('FlutterFlexFit', () {
    fakeBuild<FlexFit>(
      FlutterFlexFit.fromJson(
          <String, dynamic>{'converter': 'f:1:FlexFit.tight'}).build,
      (matcher) =>
          matcher.having((p0) => p0, 'FlexFit.tight', equals(FlexFit.tight)),
    );
    fakeBuild<FlexFit>(
      FlutterFlexFit.fromJson(
          <String, dynamic>{'converter': 'f:1:FlexFit.loose'}).build,
      (matcher) =>
          matcher.having((p0) => p0, 'FlexFit.loose', equals(FlexFit.loose)),
    );
  });

  test('FlutterWrapAlignment', () {
    fakeBuild<WrapAlignment>(
      FlutterWrapAlignment.fromJson(
          <String, dynamic>{'converter': 'f:1:WrapAlignment.start'}).build,
      (matcher) => matcher.having(
          (p0) => p0, 'WrapAlignment.start', equals(WrapAlignment.start)),
    );
    fakeBuild<WrapAlignment>(
      FlutterWrapAlignment.fromJson(
          <String, dynamic>{'converter': 'f:1:WrapAlignment.end'}).build,
      (matcher) => matcher.having(
          (p0) => p0, 'WrapAlignment.end', equals(WrapAlignment.end)),
    );

    fakeBuild<WrapAlignment>(
      FlutterWrapAlignment.fromJson(
          <String, dynamic>{'converter': 'f:1:WrapAlignment.center'}).build,
      (matcher) => matcher.having(
          (p0) => p0, 'WrapAlignment.center', equals(WrapAlignment.center)),
    );

    fakeBuild<WrapAlignment>(
      FlutterWrapAlignment.fromJson(
              <String, dynamic>{'converter': 'f:1:WrapAlignment.spaceBetween'})
          .build,
      (matcher) => matcher.having((p0) => p0, 'WrapAlignment.spaceBetween',
          equals(WrapAlignment.spaceBetween)),
    );

    fakeBuild<WrapAlignment>(
      FlutterWrapAlignment.fromJson(
              <String, dynamic>{'converter': 'f:1:WrapAlignment.spaceAround'})
          .build,
      (matcher) => matcher.having((p0) => p0, 'WrapAlignment.spaceAround',
          equals(WrapAlignment.spaceAround)),
    );

    fakeBuild<WrapAlignment>(
      FlutterWrapAlignment.fromJson(
              <String, dynamic>{'converter': 'f:1:WrapAlignment.spaceEvenly'})
          .build,
      (matcher) => matcher.having((p0) => p0, 'WrapAlignment.spaceEvenly',
          equals(WrapAlignment.spaceEvenly)),
    );
  });

  test('FlutterWrapCrossAlignment', () {
    fakeBuild<WrapCrossAlignment>(
      FlutterWrapCrossAlignment.fromJson(
              <String, dynamic>{'converter': 'f:1:WrapCrossAlignment.center'})
          .build,
      (matcher) => matcher.having((p0) => p0, 'WrapCrossAlignment.center',
          equals(WrapCrossAlignment.center)),
    );
    fakeBuild<WrapCrossAlignment>(
      FlutterWrapCrossAlignment.fromJson(
          <String, dynamic>{'converter': 'f:1:WrapCrossAlignment.end'}).build,
      (matcher) => matcher.having(
          (p0) => p0, 'WrapCrossAlignment.end', equals(WrapCrossAlignment.end)),
    );

    fakeBuild<WrapCrossAlignment>(
      FlutterWrapCrossAlignment.fromJson(
          <String, dynamic>{'converter': 'f:1:WrapCrossAlignment.start'}).build,
      (matcher) => matcher.having((p0) => p0, 'WrapCrossAlignment.start',
          equals(WrapCrossAlignment.start)),
    );
  });

  test('FlutterStackFit', () {
    fakeBuild<StackFit>(
      FlutterStackFit.fromJson(
          <String, dynamic>{'converter': 'f:1:StackFit.expand'}).build,
      (matcher) => matcher.having(
          (p0) => p0, 'StackFit.expand', equals(StackFit.expand)),
    );
    fakeBuild<StackFit>(
      FlutterStackFit.fromJson(
          <String, dynamic>{'converter': 'f:1:StackFit.loose'}).build,
      (matcher) =>
          matcher.having((p0) => p0, 'StackFit.loose', equals(StackFit.loose)),
    );

    fakeBuild<StackFit>(
      FlutterStackFit.fromJson(
          <String, dynamic>{'converter': 'f:1:StackFit.passthrough'}).build,
      (matcher) => matcher.having(
          (p0) => p0, 'StackFit.passthrough', equals(StackFit.passthrough)),
    );
  });

  group('FlutterSliverGridDelegate', () {
    test('FlutterSliverGridDelegateWithFixedCrossAxisCount()', () {
      final data = FlutterSliverGridDelegate.fromJson(<String, dynamic>{
        'converter': 'f:1:SliverGridDelegateWithFixedCrossAxisCount',
        'crossAxisCount': 8,
        'mainAxisSpacing': 1,
        'crossAxisSpacing': 2,
        'childAspectRatio': 0.9,
        'mainAxisExtent': 3,
      });

      fakeBuild<SliverGridDelegateWithFixedCrossAxisCount>(
        data.build,
        (matcher) => matcher
            .having((p0) => p0.crossAxisCount, 'crossAxisCount', 8)
            .having((p0) => p0.mainAxisSpacing, 'mainAxisSpacing', 1)
            .having((p0) => p0.crossAxisSpacing, 'crossAxisSpacing', 2)
            .having((p0) => p0.childAspectRatio, 'childAspectRatio', 0.9)
            .having((p0) => p0.mainAxisExtent, 'mainAxisExtent', 3),
      );
    });

    test('FlutterSliverGridDelegateWithMaxCrossAxisExtent()', () {
      final data = FlutterSliverGridDelegate.fromJson(<String, dynamic>{
        'converter': 'f:1:SliverGridDelegateWithMaxCrossAxisExtent',
        'maxCrossAxisExtent': 8,
        'mainAxisSpacing': 1,
        'crossAxisSpacing': 2,
        'childAspectRatio': 0.9,
        'mainAxisExtent': 3,
      });

      fakeBuild<SliverGridDelegateWithMaxCrossAxisExtent>(
        data.build,
        (matcher) => matcher
            .having((p0) => p0.maxCrossAxisExtent, 'maxCrossAxisExtent', 8)
            .having((p0) => p0.mainAxisSpacing, 'mainAxisSpacing', 1)
            .having((p0) => p0.crossAxisSpacing, 'crossAxisSpacing', 2)
            .having((p0) => p0.childAspectRatio, 'childAspectRatio', 0.9)
            .having((p0) => p0.mainAxisExtent, 'mainAxisExtent', 3),
      );
    });
  });

  test('FlutterHitTestBehavior', () {
    fakeBuild<HitTestBehavior>(
      FlutterHitTestBehavior.fromJson(<String, dynamic>{
        'converter': 'f:1:HitTestBehavior.deferToChild'
      }).build,
      (matcher) => matcher.having((p0) => p0, 'HitTestBehavior.deferToChild',
          equals(HitTestBehavior.deferToChild)),
    );
    fakeBuild<HitTestBehavior>(
      FlutterHitTestBehavior.fromJson(
          <String, dynamic>{'converter': 'f:1:HitTestBehavior.opaque'}).build,
      (matcher) => matcher.having(
          (p0) => p0, 'HitTestBehavior.opaque', equals(HitTestBehavior.opaque)),
    );

    fakeBuild<HitTestBehavior>(
      FlutterHitTestBehavior.fromJson(
              <String, dynamic>{'converter': 'f:1:HitTestBehavior.translucent'})
          .build,
      (matcher) => matcher.having((p0) => p0, 'HitTestBehavior.translucent',
          equals(HitTestBehavior.translucent)),
    );
  });

  test('FlutterBoxConstraints', () {
    fakeBuild<BoxConstraints>(
      FlutterBoxConstraints.fromJson(<String, dynamic>{
        'converter': 'f:1:BoxConstraints',
        'minHeight': 100,
        'maxHeight': 200,
        'minWidth': 300,
        'maxWidth': 400,
      }).build,
      (matcher) => matcher.having(
          (p0) => p0,
          'BoxConstraints',
          equals(const BoxConstraints(
            minHeight: 100,
            maxHeight: 200,
            minWidth: 300,
            maxWidth: 400,
          ))),
    );

    fakeBuild<BoxConstraints>(
      FlutterBoxConstraints.fromJson(<String, dynamic>{
        'converter': 'f:1:BoxConstraints.expand',
        'width': 20,
        'height': 30,
      }).build,
      (matcher) => matcher.having((p0) => p0, 'BoxConstraints',
          equals(const BoxConstraints.expand(width: 20, height: 30))),
    );
    fakeBuild<BoxConstraints>(
      FlutterBoxConstraints.fromJson(<String, dynamic>{
        'converter': 'f:1:BoxConstraints.loose',
        'size': {
          'converter': 'f:1:Size',
          'width': 10,
          'height': 20,
        },
      }).build,
      (matcher) => matcher.having((p0) => p0, 'BoxConstraints',
          equals(BoxConstraints.loose(const Size(10, 20)))),
    );
    fakeBuild<BoxConstraints>(
      FlutterBoxConstraints.fromJson(<String, dynamic>{
        'converter': 'f:1:BoxConstraints.tight',
        'size': {
          'converter': 'f:1:Size',
          'width': 10,
          'height': 20,
        },
      }).build,
      (matcher) => matcher.having((p0) => p0, 'BoxConstraints',
          equals(BoxConstraints.tight(const Size(10, 20)))),
    );

    fakeBuild<BoxConstraints>(
      FlutterBoxConstraints.fromJson(<String, dynamic>{
        'converter': 'f:1:BoxConstraints.tightFor',
        'width': 30,
        'height': 40,
      }).build,
      (matcher) => matcher.having((p0) => p0, 'BoxConstraints',
          equals(const BoxConstraints.tightFor(width: 30, height: 40))),
    );

    fakeBuild<BoxConstraints>(
      FlutterBoxConstraints.fromJson(<String, dynamic>{
        'converter': 'f:1:BoxConstraints.tightForFinite',
        'width': 30,
        'height': 40,
      }).build,
      (matcher) => matcher.having((p0) => p0, 'BoxConstraints',
          equals(const BoxConstraints.tightForFinite(width: 30, height: 40))),
    );
  });

  test('FlutterDecorationPosition', () {
    fakeBuild<DecorationPosition>(
      FlutterDecorationPosition.fromJson(<String, dynamic>{
        'converter': 'f:1:DecorationPosition.background'
      }).build,
      (matcher) => matcher.having((p0) => p0, 'DecorationPosition.background',
          equals(DecorationPosition.background)),
    );
    fakeBuild<DecorationPosition>(
      FlutterDecorationPosition.fromJson(<String, dynamic>{
        'converter': 'f:1:DecorationPosition.foreground'
      }).build,
      (matcher) => matcher.having((p0) => p0, 'DecorationPosition.foreground',
          equals(DecorationPosition.foreground)),
    );
  });
}
