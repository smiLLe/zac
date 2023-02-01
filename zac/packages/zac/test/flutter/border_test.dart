import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import '../helper.dart';
import 'models.dart';

void main() {
  testWidgets('BorderStyle', (tester) async {
    await testBuilder<BorderStyle>(
      tester,
      'f:1:BorderStyle.none',
      matcher: (matcher) => matcher.having(
          (p0) => p0, 'BorderStyle.none', equals(BorderStyle.none)),
    );

    await testBuilder<BorderStyle>(
      tester,
      'f:1:BorderStyle.solid',
      matcher: (matcher) => matcher.having(
          (p0) => p0, 'BorderStyle.solid', equals(BorderStyle.solid)),
    );
  });

  group('Border', () {
    testWidgets('FlutterBorder', (tester) async {
      final matcher = isA<Border>()
          .having((p0) => p0.top, 'Border.top',
              isA<BorderSide>().having((p0) => p0.width, 'width', 11))
          .having((p0) => p0.right, 'Border.right',
              isA<BorderSide>().having((p0) => p0.width, 'width', 12))
          .having((p0) => p0.bottom, 'Border.bottom',
              isA<BorderSide>().having((p0) => p0.width, 'width', 13))
          .having((p0) => p0.left, 'Border.left',
              isA<BorderSide>().having((p0) => p0.width, 'width', 14));

      final matcherAll = isA<Border>().having((p0) => p0.top, 'Border.top',
          isA<BorderSide>().having((p0) => p0.width, 'width', 11));

      await testBuilder<Border>(
        tester,
        'f:1:Border',
        props: <String, dynamic>{
          'top': {
            'builder': 'f:1:BorderSide',
            'width': 11,
          },
          'right': {
            'builder': 'f:1:BorderSide',
            'width': 12,
          },
          'bottom': {
            'builder': 'f:1:BorderSide',
            'width': 13,
          },
          'left': {
            'builder': 'f:1:BorderSide',
            'width': 14,
          },
        },
        matcher: (m) => m.having((p0) => p0, 'matcher', matcher),
      );

      await testBuilder<Border>(
        tester,
        'f:1:Border.all',
        props: <String, dynamic>{'width': 11},
        matcher: (m) => m.having((p0) => p0, 'matcher', matcherAll),
      );
    });
  });

  group('Radius', () {
    testWidgets('BorderRadius.all', (tester) async {
      await testBuilder<BorderRadius>(
        tester,
        'f:1:BorderRadius.all',
        props: <String, dynamic>{
          'radius': {
            'builder': 'f:1:Radius.circular',
            'radius': 11,
          }
        },
        matcher: (matcher) => matcher
            .having((p0) => p0.topLeft, 'BorderRadius.topLeft',
                const Radius.circular(11))
            .having((p0) => p0.topRight, 'BorderRadius.topRight',
                const Radius.circular(11))
            .having((p0) => p0.bottomLeft, 'BorderRadius.bottomLeft',
                const Radius.circular(11))
            .having((p0) => p0.bottomRight, 'BorderRadius.bottomRight',
                const Radius.circular(11)),
      );
    });

    testWidgets('BorderRadius.circular', (tester) async {
      await testBuilder<BorderRadius>(
        tester,
        'f:1:BorderRadius.circular',
        props: <String, dynamic>{'radius': 12},
        matcher: (matcher) => matcher
            .having((p0) => p0.topLeft, 'BorderRadius.topLeft',
                const Radius.circular(12))
            .having((p0) => p0.topRight, 'BorderRadius.topRight',
                const Radius.circular(12))
            .having((p0) => p0.bottomLeft, 'BorderRadius.bottomLeft',
                const Radius.circular(12))
            .having((p0) => p0.bottomRight, 'BorderRadius.bottomRight',
                const Radius.circular(12)),
      );
    });

    testWidgets('BorderRadius.horizontal', (tester) async {
      await testBuilder<BorderRadius>(
        tester,
        'f:1:BorderRadius.horizontal',
        props: <String, dynamic>{
          'left': {
            'builder': 'f:1:Radius.circular',
            'radius': 11,
          },
          'right': {
            'builder': 'f:1:Radius.circular',
            'radius': 12,
          },
        },
        matcher: (matcher) => matcher
            .having((p0) => p0.topLeft, 'BorderRadius.topLeft',
                const Radius.circular(11))
            .having((p0) => p0.topRight, 'BorderRadius.topRight',
                const Radius.circular(12))
            .having((p0) => p0.bottomLeft, 'BorderRadius.bottomLeft',
                const Radius.circular(11))
            .having((p0) => p0.bottomRight, 'BorderRadius.bottomRight',
                const Radius.circular(12)),
      );
    });
  });

  group('FlutterInputBorder', () {
    testWidgets('FlutterOutlineInputBorder', (tester) async {
      await testBuilder<OutlineInputBorder>(
        tester,
        'f:1:OutlineInputBorder',
        props: <String, dynamic>{
          'borderSide': {
            'builder': 'f:1:BorderSide',
            'width': 11,
          },
          'borderRadius': BorderRadiusModel.allJson,
          'gapPadding': 1.0,
        },
        matcher: (matcher) => matcher
            .having(
                (p0) => p0.borderSide,
                'FlutterOutlineInputBorder.borderSide',
                const BorderSide(width: 11))
            .having(
                (p0) => p0.borderRadius,
                'FlutterOutlineInputBorder.borderRadius',
                BorderRadiusModel.allEquals)
            .having((p0) => p0.gapPadding,
                'FlutterOutlineInputBorder.gapPadding', 1.0),
      );
    });

    testWidgets('FlutterUnderlineInputBorder', (tester) async {
      await testBuilder<UnderlineInputBorder>(
        tester,
        'f:1:UnderlineInputBorder',
        props: <String, dynamic>{
          'borderSide': {
            'builder': 'f:1:BorderSide',
            'width': 11,
          },
          'borderRadius': BorderRadiusModel.allJson,
        },
        matcher: (matcher) => matcher
            .having((p0) => p0.borderSide, 'UnderlineInputBorder.borderSide',
                const BorderSide(width: 11))
            .having(
                (p0) => p0.borderRadius,
                'UnderlineInputBorder.borderRadius',
                BorderRadiusModel.allEquals),
      );
    });
  });

  testWidgets('FlutterCircleBorder', (tester) async {
    await testBuilder<CircleBorder>(
      tester,
      'f:1:CircleBorder',
      props: <String, dynamic>{
        'side': {
          'builder': 'f:1:BorderSide',
          'width': 11,
        },
      },
      matcher: (matcher) => matcher.having(
          (p0) => p0.side, 'CircleBorder.side', const BorderSide(width: 11)),
    );
  });

  testWidgets('FlutterRoundedRectangleBorder', (tester) async {
    await testBuilder<RoundedRectangleBorder>(
      tester,
      'f:1:RoundedRectangleBorder',
      props: <String, dynamic>{
        'side': {
          'builder': 'f:1:BorderSide',
          'width': 11,
        },
        'borderRadius': BorderRadiusModel.allJson,
      },
      matcher: (matcher) => matcher
          .having((p0) => p0.side, 'RoundedRectangleBorder.side',
              const BorderSide(width: 11))
          .having(
              (p0) => p0.borderRadius,
              'RoundedRectangleBorder.borderRadius',
              BorderRadiusModel.allEquals),
    );
  });

  testWidgets('FlutterBorderDirectional', (tester) async {
    await testBuilder<BorderDirectional>(
      tester,
      'f:1:BorderDirectional',
      props: <String, dynamic>{
        'top': {
          'builder': 'f:1:BorderSide',
          'width': 11,
        },
        'start': {
          'builder': 'f:1:BorderSide',
          'width': 12,
        },
        'bottom': {
          'builder': 'f:1:BorderSide',
          'width': 13,
        },
        'end': {
          'builder': 'f:1:BorderSide',
          'width': 14,
        },
      },
      matcher: (matcher) => matcher
          .having((p0) => p0.top, 'BorderDirectional.top',
              const BorderSide(width: 11))
          .having((p0) => p0.start, 'BorderDirectional.start',
              const BorderSide(width: 12))
          .having((p0) => p0.bottom, 'BorderDirectional.bottom',
              const BorderSide(width: 13))
          .having((p0) => p0.end, 'BorderDirectional.end',
              const BorderSide(width: 14)),
    );
  });
}
