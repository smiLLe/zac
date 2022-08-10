import 'package:flutter/widgets.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:zac/src/converter.dart';
import 'package:zac/src/base.dart';
import 'package:zac/src/flutter/rendering.dart';

import 'models.dart';

void main() {
  test('FlutterCrossAxisAlignment', () {
    final config = FakeZacContext();
    expect(
        FlutterCrossAxisAlignment.fromJson(<String, dynamic>{
          converterKey: 'f:1:CrossAxisAlignment.baseline'
        }).build(config),
        CrossAxisAlignment.baseline);

    expect(
        FlutterCrossAxisAlignment.fromJson(<String, dynamic>{
          converterKey: 'f:1:CrossAxisAlignment.center'
        }).build(config),
        CrossAxisAlignment.center);

    expect(
        FlutterCrossAxisAlignment.fromJson(
                <String, dynamic>{converterKey: 'f:1:CrossAxisAlignment.end'})
            .build(config),
        CrossAxisAlignment.end);

    expect(
        FlutterCrossAxisAlignment.fromJson(
                <String, dynamic>{converterKey: 'f:1:CrossAxisAlignment.start'})
            .build(config),
        CrossAxisAlignment.start);

    expect(
        FlutterCrossAxisAlignment.fromJson(<String, dynamic>{
          converterKey: 'f:1:CrossAxisAlignment.stretch'
        }).build(config),
        CrossAxisAlignment.stretch);
  });

  test('FlutterMainAxisSize', () {
    final config = FakeZacContext();
    expect(
        FlutterMainAxisSize.fromJson(
                <String, dynamic>{converterKey: 'f:1:MainAxisSize.min'})
            .build(config),
        MainAxisSize.min);

    expect(
        FlutterMainAxisSize.fromJson(
                <String, dynamic>{converterKey: 'f:1:MainAxisSize.max'})
            .build(config),
        MainAxisSize.max);
  });

  test('FlutterMainAxisAlignment', () {
    final config = FakeZacContext();
    expect(
        FlutterMainAxisAlignment.fromJson(
                <String, dynamic>{converterKey: 'f:1:MainAxisAlignment.start'})
            .build(config),
        MainAxisAlignment.start);

    expect(
        FlutterMainAxisAlignment.fromJson(
                <String, dynamic>{converterKey: 'f:1:MainAxisAlignment.end'})
            .build(config),
        MainAxisAlignment.end);

    expect(
        FlutterMainAxisAlignment.fromJson(
                <String, dynamic>{converterKey: 'f:1:MainAxisAlignment.center'})
            .build(config),
        MainAxisAlignment.center);

    expect(
        FlutterMainAxisAlignment.fromJson(<String, dynamic>{
          converterKey: 'f:1:MainAxisAlignment.spaceBetween'
        }).build(config),
        MainAxisAlignment.spaceBetween);

    expect(
        FlutterMainAxisAlignment.fromJson(<String, dynamic>{
          converterKey: 'f:1:MainAxisAlignment.spaceAround'
        }).build(config),
        MainAxisAlignment.spaceAround);

    expect(
        FlutterMainAxisAlignment.fromJson(<String, dynamic>{
          converterKey: 'f:1:MainAxisAlignment.spaceEvenly'
        }).build(config),
        MainAxisAlignment.spaceEvenly);
  });

  test('FlutterFlexFit', () {
    final config = FakeZacContext();
    expect(
        FlutterFlexFit.fromJson(
            <String, dynamic>{converterKey: 'f:1:FlexFit.tight'}).build(config),
        FlexFit.tight);

    expect(
        FlutterFlexFit.fromJson(
            <String, dynamic>{converterKey: 'f:1:FlexFit.loose'}).build(config),
        FlexFit.loose);
  });

  test('FlutterWrapAlignment', () {
    final config = FakeZacContext();
    expect(
        FlutterWrapAlignment.fromJson(
                <String, dynamic>{converterKey: 'f:1:WrapAlignment.start'})
            .build(config),
        WrapAlignment.start);

    expect(
        FlutterWrapAlignment.fromJson(
                <String, dynamic>{converterKey: 'f:1:WrapAlignment.end'})
            .build(config),
        WrapAlignment.end);

    expect(
        FlutterWrapAlignment.fromJson(
                <String, dynamic>{converterKey: 'f:1:WrapAlignment.center'})
            .build(config),
        WrapAlignment.center);

    expect(
        FlutterWrapAlignment.fromJson(<String, dynamic>{
          converterKey: 'f:1:WrapAlignment.spaceBetween'
        }).build(config),
        WrapAlignment.spaceBetween);

    expect(
        FlutterWrapAlignment.fromJson(<String, dynamic>{
          converterKey: 'f:1:WrapAlignment.spaceAround'
        }).build(config),
        WrapAlignment.spaceAround);

    expect(
        FlutterWrapAlignment.fromJson(<String, dynamic>{
          converterKey: 'f:1:WrapAlignment.spaceEvenly'
        }).build(config),
        WrapAlignment.spaceEvenly);
  });

  test('FlutterWrapCrossAlignment', () {
    final config = FakeZacContext();
    expect(
        FlutterWrapCrossAlignment.fromJson(<String, dynamic>{
          converterKey: 'f:1:WrapCrossAlignment.center'
        }).build(config),
        WrapCrossAlignment.center);

    expect(
        FlutterWrapCrossAlignment.fromJson(
                <String, dynamic>{converterKey: 'f:1:WrapCrossAlignment.end'})
            .build(config),
        WrapCrossAlignment.end);

    expect(
        FlutterWrapCrossAlignment.fromJson(
                <String, dynamic>{converterKey: 'f:1:WrapCrossAlignment.start'})
            .build(config),
        WrapCrossAlignment.start);
  });

  test('FlutterStackFit', () {
    final config = FakeZacContext();
    expect(
        FlutterStackFit.fromJson(
                <String, dynamic>{converterKey: 'f:1:StackFit.expand'})
            .build(config),
        StackFit.expand);

    expect(
        FlutterStackFit.fromJson(
                <String, dynamic>{converterKey: 'f:1:StackFit.loose'})
            .build(config),
        StackFit.loose);
    expect(
        FlutterStackFit.fromJson(
                <String, dynamic>{converterKey: 'f:1:StackFit.passthrough'})
            .build(config),
        StackFit.passthrough);
  });

  group('FlutterSliverGridDelegate', () {
    test('FlutterSliverGridDelegateWithFixedCrossAxisCount()', () {
      final config = FakeZacContext();
      final data = FlutterSliverGridDelegate.fromJson(<String, dynamic>{
        converterKey: 'f:1:SliverGridDelegateWithFixedCrossAxisCount',
        'crossAxisCount': 8,
        'mainAxisSpacing': 1,
        'crossAxisSpacing': 2,
        'childAspectRatio': 0.9,
        'mainAxisExtent': 3,
      });

      expect(
          data.build(config),
          isA<SliverGridDelegateWithFixedCrossAxisCount>()
              .having((p0) => p0.crossAxisCount, 'crossAxisCount', 8)
              .having((p0) => p0.mainAxisSpacing, 'mainAxisSpacing', 1)
              .having((p0) => p0.crossAxisSpacing, 'crossAxisSpacing', 2)
              .having((p0) => p0.childAspectRatio, 'childAspectRatio', 0.9)
              .having((p0) => p0.mainAxisExtent, 'mainAxisExtent', 3));
    });

    test('FlutterSliverGridDelegateWithMaxCrossAxisExtent()', () {
      final config = FakeZacContext();
      final data = FlutterSliverGridDelegate.fromJson(<String, dynamic>{
        converterKey: 'f:1:SliverGridDelegateWithMaxCrossAxisExtent',
        'maxCrossAxisExtent': 8,
        'mainAxisSpacing': 1,
        'crossAxisSpacing': 2,
        'childAspectRatio': 0.9,
        'mainAxisExtent': 3,
      });

      expect(
          data.build(config),
          isA<SliverGridDelegateWithMaxCrossAxisExtent>()
              .having((p0) => p0.maxCrossAxisExtent, 'maxCrossAxisExtent', 8)
              .having((p0) => p0.mainAxisSpacing, 'mainAxisSpacing', 1)
              .having((p0) => p0.crossAxisSpacing, 'crossAxisSpacing', 2)
              .having((p0) => p0.childAspectRatio, 'childAspectRatio', 0.9)
              .having((p0) => p0.mainAxisExtent, 'mainAxisExtent', 3));
    });
  });

  test('FlutterHitTestBehavior', () {
    final config = FakeZacContext();
    expect(
        FlutterHitTestBehavior.fromJson(<String, dynamic>{
          converterKey: 'f:1:HitTestBehavior.deferToChild'
        }).build(config),
        HitTestBehavior.deferToChild);

    expect(
        FlutterHitTestBehavior.fromJson(
                <String, dynamic>{converterKey: 'f:1:HitTestBehavior.opaque'})
            .build(config),
        HitTestBehavior.opaque);

    expect(
        FlutterHitTestBehavior.fromJson(<String, dynamic>{
          converterKey: 'f:1:HitTestBehavior.translucent'
        }).build(config),
        HitTestBehavior.translucent);
  });

  test('FlutterBoxConstraints', () {
    final config = FakeZacContext();
    expect(
        FlutterBoxConstraints.fromJson(<String, dynamic>{
          converterKey: 'f:1:BoxConstraints',
          'minHeight': 100,
          'maxHeight': 200,
          'minWidth': 300,
          'maxWidth': 400,
        }).build(config),
        const BoxConstraints(
          minHeight: 100,
          maxHeight: 200,
          minWidth: 300,
          maxWidth: 400,
        ));

    expect(
        FlutterBoxConstraints.fromJson(<String, dynamic>{
          converterKey: 'f:1:BoxConstraints.expand',
          'width': 20,
          'height': 30,
        }).build(config),
        const BoxConstraints.expand(width: 20, height: 30));

    expect(
        FlutterBoxConstraints.fromJson(<String, dynamic>{
          converterKey: 'f:1:BoxConstraints.loose',
          'size': {
            converterKey: 'f:1:Size',
            'width': 10,
            'height': 20,
          },
        }).build(config),
        BoxConstraints.loose(const Size(10, 20)));

    expect(
        FlutterBoxConstraints.fromJson(<String, dynamic>{
          converterKey: 'f:1:BoxConstraints.tight',
          'size': {
            converterKey: 'f:1:Size',
            'width': 10,
            'height': 20,
          },
        }).build(config),
        BoxConstraints.tight(const Size(10, 20)));

    expect(
        FlutterBoxConstraints.fromJson(<String, dynamic>{
          converterKey: 'f:1:BoxConstraints.tightFor',
          'width': 30,
          'height': 40,
        }).build(config),
        const BoxConstraints.tightFor(width: 30, height: 40));

    expect(
        FlutterBoxConstraints.fromJson(<String, dynamic>{
          converterKey: 'f:1:BoxConstraints.tightForFinite',
          'width': 30,
          'height': 40,
        }).build(config),
        const BoxConstraints.tightForFinite(width: 30, height: 40));
  });

  test('FlutterDecorationPosition', () {
    final config = FakeZacContext();
    expect(
        FlutterDecorationPosition.fromJson(<String, dynamic>{
          converterKey: 'f:1:DecorationPosition.background'
        }).build(config),
        DecorationPosition.background);

    expect(
        FlutterDecorationPosition.fromJson(<String, dynamic>{
          converterKey: 'f:1:DecorationPosition.foreground'
        }).build(config),
        DecorationPosition.foreground);
  });
}
