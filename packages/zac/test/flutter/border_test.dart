import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:zac/src/converter.dart';
import 'package:zac/src/flutter/material/material.dart';
import 'package:zac/src/flutter/painting.dart';

import 'models.dart';

void main() {
  test('BorderStyle', () {
    final config = FakeZacContext();
    expect(
        FlutterBorderStyle.fromJson(
                <String, dynamic>{'_converter': 'f:1:BorderStyle.none'})
            .build(config),
        isA<BorderStyle>()
            .having((p0) => p0, 'BorderStyle.none', BorderStyle.none));

    expect(
        FlutterBorderStyle.fromJson(
                <String, dynamic>{'_converter': 'f:1:BorderStyle.solid'})
            .build(config),
        isA<BorderStyle>()
            .having((p0) => p0, 'BorderStyle.solid', BorderStyle.solid));
  });

  group('Border', () {
    test('FlutterBorder', () {
      final config = FakeZacContext();

      Map<String, dynamic> getMap(String type) => <String, dynamic>{
            '_converter': type,
            'top': {
              '_converter': 'f:1:BorderSide',
              'width': 11,
            },
            'right': {
              '_converter': 'f:1:BorderSide',
              'width': 12,
            },
            'bottom': {
              '_converter': 'f:1:BorderSide',
              'width': 13,
            },
            'left': {
              '_converter': 'f:1:BorderSide',
              'width': 14,
            },
          };

      Map<String, dynamic> getMapAll(String type) => <String, dynamic>{
            '_converter': type,
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

      expect(
          FlutterBorder.fromJson(getMap(FlutterBorder.unionValue))
              .build(config),
          matcher);

      expect(
          FlutterBorder.fromJson(getMapAll(FlutterBorder.unionValueAll))
              .build(config),
          matcherAll);

      expect(
          FlutterBoxBorder.fromJson(getMap(FlutterBorder.unionValue))
              .build(config),
          matcher);

      expect(
          FlutterBoxBorder.fromJson(getMapAll(FlutterBorder.unionValueAll))
              .build(config),
          matcherAll);

      expect(
          FlutterShapeBorder.fromJson(getMap(FlutterBorder.unionValue))
              .build(config),
          matcher);

      expect(
          FlutterShapeBorder.fromJson(getMapAll(FlutterBorder.unionValueAll))
              .build(config),
          matcherAll);
    });
  });

  group('Radius', () {
    test('BorderRadius.all', () {
      final config = FakeZacContext();
      expect(
          FlutterBorderRadiusGeometry.fromJson(<String, dynamic>{
            '_converter': FlutterBorderRadius.unionValueAll,
            'radius': {
              '_converter': 'f:1:Radius.circular',
              'radius': 11,
            }
          }).build(config),
          isA<BorderRadius>()
              .having((p0) => p0.topLeft, 'BorderRadius.topLeft',
                  const Radius.circular(11))
              .having((p0) => p0.topRight, 'BorderRadius.topRight',
                  const Radius.circular(11))
              .having((p0) => p0.bottomLeft, 'BorderRadius.bottomLeft',
                  const Radius.circular(11))
              .having((p0) => p0.bottomRight, 'BorderRadius.bottomRight',
                  const Radius.circular(11)));

      expect(
          FlutterBorderRadius.fromJson(<String, dynamic>{
            '_converter': FlutterBorderRadius.unionValueAll,
            'radius': {
              '_converter': 'f:1:Radius.circular',
              'radius': 11,
            }
          }).build(config),
          isA<BorderRadius>()
              .having((p0) => p0.topLeft, 'BorderRadius.topLeft',
                  const Radius.circular(11))
              .having((p0) => p0.topRight, 'BorderRadius.topRight',
                  const Radius.circular(11))
              .having((p0) => p0.bottomLeft, 'BorderRadius.bottomLeft',
                  const Radius.circular(11))
              .having((p0) => p0.bottomRight, 'BorderRadius.bottomRight',
                  const Radius.circular(11)));
    });
    test('BorderRadius.circular', () {
      final config = FakeZacContext();
      expect(
          FlutterBorderRadiusGeometry.fromJson(<String, dynamic>{
            '_converter': FlutterBorderRadius.unionValueCircular,
            'radius': 12
          }).build(config),
          isA<BorderRadius>()
              .having((p0) => p0.topLeft, 'BorderRadius.topLeft',
                  const Radius.circular(12))
              .having((p0) => p0.topRight, 'BorderRadius.topRight',
                  const Radius.circular(12))
              .having((p0) => p0.bottomLeft, 'BorderRadius.bottomLeft',
                  const Radius.circular(12))
              .having((p0) => p0.bottomRight, 'BorderRadius.bottomRight',
                  const Radius.circular(12)));

      expect(
          FlutterBorderRadius.fromJson(<String, dynamic>{
            '_converter': FlutterBorderRadius.unionValueCircular,
            'radius': 12
          }).build(config),
          isA<BorderRadius>()
              .having((p0) => p0.topLeft, 'BorderRadius.topLeft',
                  const Radius.circular(12))
              .having((p0) => p0.topRight, 'BorderRadius.topRight',
                  const Radius.circular(12))
              .having((p0) => p0.bottomLeft, 'BorderRadius.bottomLeft',
                  const Radius.circular(12))
              .having((p0) => p0.bottomRight, 'BorderRadius.bottomRight',
                  const Radius.circular(12)));
    });
    test('BorderRadius.horizontal', () {
      final config = FakeZacContext();
      expect(
          FlutterBorderRadiusGeometry.fromJson(<String, dynamic>{
            '_converter': FlutterBorderRadius.unionValueHorizontal,
            'left': {
              '_converter': 'f:1:Radius.circular',
              'radius': 11,
            },
            'right': {
              '_converter': 'f:1:Radius.circular',
              'radius': 12,
            },
          }).build(config),
          isA<BorderRadius>()
              .having((p0) => p0.topLeft, 'BorderRadius.topLeft',
                  const Radius.circular(11))
              .having((p0) => p0.topRight, 'BorderRadius.topRight',
                  const Radius.circular(12))
              .having((p0) => p0.bottomLeft, 'BorderRadius.bottomLeft',
                  const Radius.circular(11))
              .having((p0) => p0.bottomRight, 'BorderRadius.bottomRight',
                  const Radius.circular(12)));

      expect(
          FlutterBorderRadius.fromJson(<String, dynamic>{
            '_converter': FlutterBorderRadius.unionValueHorizontal,
            'left': {
              '_converter': 'f:1:Radius.circular',
              'radius': 11,
            },
            'right': {
              '_converter': 'f:1:Radius.circular',
              'radius': 12,
            },
          }).build(config),
          isA<BorderRadius>()
              .having((p0) => p0.topLeft, 'BorderRadius.topLeft',
                  const Radius.circular(11))
              .having((p0) => p0.topRight, 'BorderRadius.topRight',
                  const Radius.circular(12))
              .having((p0) => p0.bottomLeft, 'BorderRadius.bottomLeft',
                  const Radius.circular(11))
              .having((p0) => p0.bottomRight, 'BorderRadius.bottomRight',
                  const Radius.circular(12)));
    });
  });

  group('FlutterInputBorder', () {
    test('FlutterOutlineInputBorder', () {
      final context = FakeZacContext();
      expect(
          FlutterOutlineInputBorder.fromJson(<String, dynamic>{
            '_converter': 'f:1:OutlineInputBorder',
            'borderSide': {
              '_converter': 'f:1:BorderSide',
              'width': 11,
            },
            'borderRadius': BorderRadiusModel.allJson,
            'gapPadding': 1.0,
          }).build(context),
          isA<OutlineInputBorder>()
              .having(
                  (p0) => p0.borderSide,
                  'FlutterOutlineInputBorder.borderSide',
                  const BorderSide(width: 11))
              .having(
                  (p0) => p0.borderRadius,
                  'FlutterOutlineInputBorder.borderRadius',
                  BorderRadiusModel.allEquals)
              .having((p0) => p0.gapPadding,
                  'FlutterOutlineInputBorder.gapPadding', 1.0));

      expect(
          FlutterInputBorder.fromJson(<String, dynamic>{
            '_converter': 'f:1:OutlineInputBorder',
          }).build(context),
          isA<OutlineInputBorder>());

      expect(
          FlutterShapeBorder.fromJson(<String, dynamic>{
            '_converter': 'f:1:OutlineInputBorder',
          }).build(context),
          isA<OutlineInputBorder>());
    });

    test('FlutterUnderlineInputBorder', () {
      final context = FakeZacContext();
      expect(
          FlutterUnderlineInputBorder.fromJson(<String, dynamic>{
            '_converter': 'f:1:UnderlineInputBorder',
            'borderSide': {
              '_converter': 'f:1:BorderSide',
              'width': 11,
            },
            'borderRadius': BorderRadiusModel.allJson,
          }).build(context),
          isA<UnderlineInputBorder>()
              .having((p0) => p0.borderSide, 'UnderlineInputBorder.borderSide',
                  const BorderSide(width: 11))
              .having(
                  (p0) => p0.borderRadius,
                  'UnderlineInputBorder.borderRadius',
                  BorderRadiusModel.allEquals));

      expect(
          FlutterInputBorder.fromJson(<String, dynamic>{
            '_converter': 'f:1:UnderlineInputBorder',
          }).build(context),
          isA<UnderlineInputBorder>());

      expect(
          FlutterShapeBorder.fromJson(<String, dynamic>{
            '_converter': 'f:1:UnderlineInputBorder',
          }).build(context),
          isA<UnderlineInputBorder>());
    });
  });

  test('FlutterCircleBorder', () {
    final context = FakeZacContext();
    expect(
        FlutterCircleBorder.fromJson(<String, dynamic>{
          '_converter': 'f:1:CircleBorder',
          'side': {
            '_converter': 'f:1:BorderSide',
            'width': 11,
          },
        }).build(context),
        isA<CircleBorder>().having(
            (p0) => p0.side, 'CircleBorder.side', const BorderSide(width: 11)));

    expect(
        FlutterShapeBorder.fromJson(<String, dynamic>{
          '_converter': 'f:1:CircleBorder',
        }).build(context),
        isA<CircleBorder>());

    expect(
        FlutterOutlinedBorder.fromJson(<String, dynamic>{
          '_converter': 'f:1:CircleBorder',
        }).build(context),
        isA<CircleBorder>());
  });

  test('FlutterRoundedRectangleBorder', () {
    final context = FakeZacContext();
    expect(
        FlutterRoundedRectangleBorder.fromJson(<String, dynamic>{
          '_converter': 'f:1:RoundedRectangleBorder',
          'side': {
            '_converter': 'f:1:BorderSide',
            'width': 11,
          },
          'borderRadius': BorderRadiusModel.allJson,
        }).build(context),
        isA<RoundedRectangleBorder>()
            .having((p0) => p0.side, 'RoundedRectangleBorder.side',
                const BorderSide(width: 11))
            .having(
                (p0) => p0.borderRadius,
                'RoundedRectangleBorder.borderRadius',
                BorderRadiusModel.allEquals));

    expect(
        FlutterShapeBorder.fromJson(<String, dynamic>{
          '_converter': 'f:1:RoundedRectangleBorder',
        }).build(context),
        isA<RoundedRectangleBorder>());

    expect(
        FlutterOutlinedBorder.fromJson(<String, dynamic>{
          '_converter': 'f:1:RoundedRectangleBorder',
        }).build(context),
        isA<RoundedRectangleBorder>());
  });

  test('FlutterBorderDirectional', () {
    final context = FakeZacContext();
    expect(
        FlutterBorderDirectional.fromJson(<String, dynamic>{
          '_converter': 'f:1:BorderDirectional',
          'top': {
            '_converter': 'f:1:BorderSide',
            'width': 11,
          },
          'start': {
            '_converter': 'f:1:BorderSide',
            'width': 12,
          },
          'bottom': {
            '_converter': 'f:1:BorderSide',
            'width': 13,
          },
          'end': {
            '_converter': 'f:1:BorderSide',
            'width': 14,
          },
        }).build(context),
        isA<BorderDirectional>()
            .having((p0) => p0.top, 'BorderDirectional.top',
                const BorderSide(width: 11))
            .having((p0) => p0.start, 'BorderDirectional.start',
                const BorderSide(width: 12))
            .having((p0) => p0.bottom, 'BorderDirectional.bottom',
                const BorderSide(width: 13))
            .having((p0) => p0.end, 'BorderDirectional.end',
                const BorderSide(width: 14)));

    expect(
        FlutterShapeBorder.fromJson(<String, dynamic>{
          '_converter': 'f:1:BorderDirectional',
        }).build(context),
        isA<BorderDirectional>());

    expect(
        FlutterBoxBorder.fromJson(<String, dynamic>{
          '_converter': 'f:1:BorderDirectional',
        }).build(context),
        isA<BorderDirectional>());
  });
}
