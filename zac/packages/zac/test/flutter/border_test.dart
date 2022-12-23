import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:zac/src/flutter/material/material.dart';
import 'package:zac/src/flutter/painting.dart';

import '../helper.dart';
import 'models.dart';

void main() {
  test('BorderStyle', () {
    fakeBuild<BorderStyle>(
      FlutterBorderStyle.fromJson(
          <String, dynamic>{'converter': 'f:1:BorderStyle.none'}).build,
      (matcher) => matcher.having(
          (p0) => p0, 'BorderStyle.none', equals(BorderStyle.none)),
    );

    fakeBuild<BorderStyle>(
      FlutterBorderStyle.fromJson(
          <String, dynamic>{'converter': 'f:1:BorderStyle.solid'}).build,
      (matcher) => matcher.having(
          (p0) => p0, 'BorderStyle.solid', equals(BorderStyle.solid)),
    );
  });

  group('Border', () {
    test('FlutterBorder', () {
      Map<String, dynamic> getMap(String type) => <String, dynamic>{
            'converter': type,
            'top': {
              'converter': 'f:1:BorderSide',
              'width': 11,
            },
            'right': {
              'converter': 'f:1:BorderSide',
              'width': 12,
            },
            'bottom': {
              'converter': 'f:1:BorderSide',
              'width': 13,
            },
            'left': {
              'converter': 'f:1:BorderSide',
              'width': 14,
            },
          };

      Map<String, dynamic> getMapAll(String type) => <String, dynamic>{
            'converter': type,
            'width': 11,
          };

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

      fakeBuild<Border>(
        FlutterBorder.fromJson(getMap(FlutterBorder.unionValue)).build,
        (m) => m.having((p0) => p0, 'matcher', matcher),
      );

      fakeBuild<Border>(
        FlutterBorder.fromJson(getMapAll(FlutterBorder.unionValueAll)).build,
        (m) => m.having((p0) => p0, 'matcher', matcherAll),
      );
    });
  });

  group('Radius', () {
    test('BorderRadius.all', () {
      fakeBuild<BorderRadius>(
        FlutterBorderRadius.fromJson(<String, dynamic>{
          'converter': FlutterBorderRadius.unionValueAll,
          'radius': {
            'converter': 'f:1:Radius.circular',
            'radius': 11,
          }
        }).build,
        (matcher) => matcher
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

    test('BorderRadius.circular', () {
      fakeBuild<BorderRadius>(
        FlutterBorderRadius.fromJson(<String, dynamic>{
          'converter': FlutterBorderRadius.unionValueCircular,
          'radius': 12
        }).build,
        (matcher) => matcher
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

    test('BorderRadius.horizontal', () {
      fakeBuild<BorderRadius>(
        FlutterBorderRadius.fromJson(<String, dynamic>{
          'converter': FlutterBorderRadius.unionValueHorizontal,
          'left': {
            'converter': 'f:1:Radius.circular',
            'radius': 11,
          },
          'right': {
            'converter': 'f:1:Radius.circular',
            'radius': 12,
          },
        }).build,
        (matcher) => matcher
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
    test('FlutterOutlineInputBorder', () {
      fakeBuild<OutlineInputBorder>(
        FlutterOutlineInputBorder.fromJson(<String, dynamic>{
          'converter': 'f:1:OutlineInputBorder',
          'borderSide': {
            'converter': 'f:1:BorderSide',
            'width': 11,
          },
          'borderRadius': BorderRadiusModel.allJson,
          'gapPadding': 1.0,
        }).build,
        (matcher) => matcher
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

    test('FlutterUnderlineInputBorder', () {
      fakeBuild<UnderlineInputBorder>(
        FlutterUnderlineInputBorder.fromJson(<String, dynamic>{
          'converter': 'f:1:UnderlineInputBorder',
          'borderSide': {
            'converter': 'f:1:BorderSide',
            'width': 11,
          },
          'borderRadius': BorderRadiusModel.allJson,
        }).build,
        (matcher) => matcher
            .having((p0) => p0.borderSide, 'UnderlineInputBorder.borderSide',
                const BorderSide(width: 11))
            .having(
                (p0) => p0.borderRadius,
                'UnderlineInputBorder.borderRadius',
                BorderRadiusModel.allEquals),
      );
    });
  });

  test('FlutterCircleBorder', () {
    fakeBuild<CircleBorder>(
      FlutterCircleBorder.fromJson(<String, dynamic>{
        'converter': 'f:1:CircleBorder',
        'side': {
          'converter': 'f:1:BorderSide',
          'width': 11,
        },
      }).build,
      (matcher) => matcher.having(
          (p0) => p0.side, 'CircleBorder.side', const BorderSide(width: 11)),
    );
  });

  test('FlutterRoundedRectangleBorder', () {
    fakeBuild<RoundedRectangleBorder>(
      FlutterRoundedRectangleBorder.fromJson(<String, dynamic>{
        'converter': 'f:1:RoundedRectangleBorder',
        'side': {
          'converter': 'f:1:BorderSide',
          'width': 11,
        },
        'borderRadius': BorderRadiusModel.allJson,
      }).build,
      (matcher) => matcher
          .having((p0) => p0.side, 'RoundedRectangleBorder.side',
              const BorderSide(width: 11))
          .having(
              (p0) => p0.borderRadius,
              'RoundedRectangleBorder.borderRadius',
              BorderRadiusModel.allEquals),
    );
  });

  test('FlutterBorderDirectional', () {
    fakeBuild<BorderDirectional>(
      FlutterBorderDirectional.fromJson(<String, dynamic>{
        'converter': 'f:1:BorderDirectional',
        'top': {
          'converter': 'f:1:BorderSide',
          'width': 11,
        },
        'start': {
          'converter': 'f:1:BorderSide',
          'width': 12,
        },
        'bottom': {
          'converter': 'f:1:BorderSide',
          'width': 13,
        },
        'end': {
          'converter': 'f:1:BorderSide',
          'width': 14,
        },
      }).build,
      (matcher) => matcher
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
