import 'package:flutter/widgets.dart';
import 'package:flutter_test/flutter_test.dart';

import '../helper.dart';

void main() {
  testWidgets('FlutterCrossAxisAlignment', (tester) async {
    for (var ele in [
      ['baseline', CrossAxisAlignment.baseline],
      ['center', CrossAxisAlignment.center],
      ['end', CrossAxisAlignment.end],
      ['start', CrossAxisAlignment.start],
      ['stretch', CrossAxisAlignment.stretch],
      ['baseline', CrossAxisAlignment.baseline],
      ['baseline', CrossAxisAlignment.baseline],
      ['baseline', CrossAxisAlignment.baseline],
      ['baseline', CrossAxisAlignment.baseline],
      ['baseline', CrossAxisAlignment.baseline],
      ['baseline', CrossAxisAlignment.baseline],
    ]) {
      await testBuilder<CrossAxisAlignment>(
        tester,
        'f:1:CrossAxisAlignment.${ele[0]}',
        matcher: (matcher) => matcher.having(
            (p0) => p0, 'CrossAxisAlignment.${ele[0]}', equals(ele[1])),
      );
    }
  });

  testWidgets('FlutterMainAxisSize', (tester) async {
    for (var ele in [
      ['min', MainAxisSize.min],
      ['max', MainAxisSize.max],
    ]) {
      await testBuilder<MainAxisSize>(
        tester,
        'f:1:MainAxisSize.${ele[0]}',
        matcher: (matcher) => matcher.having(
            (p0) => p0, 'MainAxisSize.${ele[0]}', equals(ele[1])),
      );
    }
  });

  testWidgets('FlutterMainAxisAlignment', (tester) async {
    for (var ele in [
      ['start', MainAxisAlignment.start],
      ['end', MainAxisAlignment.end],
      ['center', MainAxisAlignment.center],
      ['spaceBetween', MainAxisAlignment.spaceBetween],
      ['spaceAround', MainAxisAlignment.spaceAround],
      ['spaceEvenly', MainAxisAlignment.spaceEvenly],
    ]) {
      await testBuilder<MainAxisAlignment>(
        tester,
        'f:1:MainAxisAlignment.${ele[0]}',
        matcher: (matcher) => matcher.having(
            (p0) => p0, 'MainAxisAlignment.${ele[0]}', equals(ele[1])),
      );
    }
  });

  testWidgets('FlutterFlexFit', (tester) async {
    for (var ele in [
      ['tight', FlexFit.tight],
      ['loose', FlexFit.loose],
    ]) {
      await testBuilder<FlexFit>(
        tester,
        'f:1:FlexFit.${ele[0]}',
        matcher: (matcher) =>
            matcher.having((p0) => p0, 'FlexFit.${ele[0]}', equals(ele[1])),
      );
    }
  });

  testWidgets('FlutterWrapAlignment', (tester) async {
    for (var ele in [
      ['start', WrapAlignment.start],
      ['end', WrapAlignment.end],
      ['center', WrapAlignment.center],
      ['spaceBetween', WrapAlignment.spaceBetween],
      ['spaceAround', WrapAlignment.spaceAround],
      ['spaceEvenly', WrapAlignment.spaceEvenly],
    ]) {
      await testBuilder<WrapAlignment>(
        tester,
        'f:1:WrapAlignment.${ele[0]}',
        matcher: (matcher) => matcher.having(
            (p0) => p0, 'WrapAlignment.${ele[0]}', equals(ele[1])),
      );
    }
  });

  testWidgets('FlutterWrapCrossAlignment', (tester) async {
    for (var ele in [
      ['center', WrapCrossAlignment.center],
      ['end', WrapCrossAlignment.end],
    ]) {
      await testBuilder<WrapCrossAlignment>(
        tester,
        'f:1:WrapCrossAlignment.${ele[0]}',
        matcher: (matcher) => matcher.having(
            (p0) => p0, 'WrapCrossAlignment.${ele[0]}', equals(ele[1])),
      );
    }
  });

  testWidgets('FlutterStackFit', (tester) async {
    for (var ele in [
      ['expand', StackFit.expand],
      ['loose', StackFit.loose],
      ['passthrough', StackFit.passthrough],
    ]) {
      await testBuilder<StackFit>(
        tester,
        'f:1:StackFit.${ele[0]}',
        matcher: (matcher) =>
            matcher.having((p0) => p0, 'StackFit.${ele[0]}', equals(ele[1])),
      );
    }
  });

  group('FlutterSliverGridDelegate', () {
    testWidgets('FlutterSliverGridDelegateWithFixedCrossAxisCount()',
        (tester) async {
      await testBuilder<SliverGridDelegate>(
        tester,
        'f:1:SliverGridDelegateWithFixedCrossAxisCount',
        props: <String, dynamic>{
          'crossAxisCount': 8,
          'mainAxisSpacing': 1,
          'crossAxisSpacing': 2,
          'childAspectRatio': 0.9,
          'mainAxisExtent': 3,
        },
        matcher: (matcher) => matcher.having(
            (p0) => p0,
            'SliverGridDelegateWithFixedCrossAxisCount',
            isA<SliverGridDelegateWithFixedCrossAxisCount>()
                .having((p0) => p0.crossAxisCount, 'crossAxisCount', 8)
                .having((p0) => p0.mainAxisSpacing, 'mainAxisSpacing', 1)
                .having((p0) => p0.crossAxisSpacing, 'crossAxisSpacing', 2)
                .having((p0) => p0.childAspectRatio, 'childAspectRatio', 0.9)
                .having((p0) => p0.mainAxisExtent, 'mainAxisExtent', 3)),
      );
    });

    testWidgets('FlutterSliverGridDelegateWithMaxCrossAxisExtent()',
        (tester) async {
      await testBuilder<SliverGridDelegate>(
        tester,
        'f:1:SliverGridDelegateWithMaxCrossAxisExtent',
        props: <String, dynamic>{
          'maxCrossAxisExtent': 8,
          'mainAxisSpacing': 1,
          'crossAxisSpacing': 2,
          'childAspectRatio': 0.9,
          'mainAxisExtent': 3,
        },
        matcher: (matcher) => matcher.having(
            (p0) => p0,
            'SliverGridDelegateWithMaxCrossAxisExtent',
            isA<SliverGridDelegateWithMaxCrossAxisExtent>()
                .having((p0) => p0.maxCrossAxisExtent, 'maxCrossAxisExtent', 8)
                .having((p0) => p0.mainAxisSpacing, 'mainAxisSpacing', 1)
                .having((p0) => p0.crossAxisSpacing, 'crossAxisSpacing', 2)
                .having((p0) => p0.childAspectRatio, 'childAspectRatio', 0.9)
                .having((p0) => p0.mainAxisExtent, 'mainAxisExtent', 3)),
      );
    });
  });

  testWidgets('FlutterHitTestBehavior', (tester) async {
    for (var ele in [
      ['deferToChild', HitTestBehavior.deferToChild],
      ['opaque', HitTestBehavior.opaque],
      ['translucent', HitTestBehavior.translucent],
    ]) {
      await testBuilder<HitTestBehavior>(
        tester,
        'f:1:HitTestBehavior.${ele[0]}',
        matcher: (matcher) => matcher.having(
            (p0) => p0, 'HitTestBehavior.${ele[0]}', equals(ele[1])),
      );
    }
  });

  testWidgets('FlutterBoxConstraints', (tester) async {
    await testBuilder<BoxConstraints>(
      tester,
      'f:1:BoxConstraints',
      props: <String, dynamic>{
        'minHeight': 100,
        'maxHeight': 200,
        'minWidth': 300,
        'maxWidth': 400,
      },
      matcher: (matcher) => matcher.having(
          (p0) => p0,
          'BoxConstraints',
          equals(const BoxConstraints(
            minHeight: 100,
            maxHeight: 200,
            minWidth: 300,
            maxWidth: 400,
          ))),
    );
    await testBuilder<BoxConstraints>(
      tester,
      'f:1:BoxConstraints.expand',
      props: <String, dynamic>{
        'width': 20,
        'height': 30,
      },
      matcher: (matcher) => matcher.having((p0) => p0, 'BoxConstraints',
          equals(const BoxConstraints.expand(width: 20, height: 30))),
    );

    await testBuilder<BoxConstraints>(
      tester,
      'f:1:BoxConstraints.loose',
      props: <String, dynamic>{
        'size': {
          'builder': 'f:1:Size',
          'width': 10,
          'height': 20,
        },
      },
      matcher: (matcher) => matcher.having((p0) => p0, 'BoxConstraints',
          equals(BoxConstraints.loose(const Size(10, 20)))),
    );
    await testBuilder<BoxConstraints>(
      tester,
      'f:1:BoxConstraints.tight',
      props: <String, dynamic>{
        'size': {
          'builder': 'f:1:Size',
          'width': 10,
          'height': 20,
        },
      },
      matcher: (matcher) => matcher.having((p0) => p0, 'BoxConstraints',
          equals(BoxConstraints.tight(const Size(10, 20)))),
    );
    await testBuilder<BoxConstraints>(
      tester,
      'f:1:BoxConstraints.tightFor',
      props: <String, dynamic>{
        'width': 30,
        'height': 40,
      },
      matcher: (matcher) => matcher.having((p0) => p0, 'BoxConstraints',
          equals(const BoxConstraints.tightFor(width: 30, height: 40))),
    );

    await testBuilder<BoxConstraints>(
      tester,
      'f:1:BoxConstraints.tightForFinite',
      props: <String, dynamic>{
        'width': 30,
        'height': 40,
      },
      matcher: (matcher) => matcher.having((p0) => p0, 'BoxConstraints',
          equals(const BoxConstraints.tightForFinite(width: 30, height: 40))),
    );
  });

  testWidgets('FlutterDecorationPosition', (tester) async {
    for (var ele in [
      ['background', DecorationPosition.background],
      ['foreground', DecorationPosition.foreground],
    ]) {
      await testBuilder<DecorationPosition>(
        tester,
        'f:1:DecorationPosition.${ele[0]}',
        matcher: (matcher) => matcher.having(
            (p0) => p0, 'DecorationPosition.${ele[0]}', equals(ele[1])),
      );
    }
  });
}
