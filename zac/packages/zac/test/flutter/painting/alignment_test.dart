import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:zac/src/flutter/painting.dart';
import 'package:zac/src/zac/context.dart';
import 'package:zac/src/zac/update_widget.dart';
import 'package:zac/src/zac/zac_value.dart';

import '../../helper.dart';

Future<ZacContext> _getZacContext(WidgetTester tester) async {
  late ZacContext zacContext;
  await tester.pumpWidget(
    ProviderScope(
      child: ZacUpdateContext(
        builder: (z) {
          zacContext = z;
          return const SizedBox.shrink();
        },
      ),
    ),
  );

  return zacContext;
}

void main() {
  test('is in builder list', () {
    expectInConverter('f:1:FractionalOffset', FlutterFractionalOffset.fromJson);

    expectInConverter([
      'f:1:AlignmentDirectional',
      'f:1:AlignmentDirectional.bottomCenter',
      'f:1:AlignmentDirectional.bottomEnd',
      'f:1:AlignmentDirectional.bottomStart',
      'f:1:AlignmentDirectional.center',
      'f:1:AlignmentDirectional.centerEnd',
      'f:1:AlignmentDirectional.centerStart',
      'f:1:AlignmentDirectional.topCenter',
      'f:1:AlignmentDirectional.topEnd',
      'f:1:AlignmentDirectional.topStart',
    ], FlutterAlignmentDirectional.fromJson);

    expectInConverter([
      'f:1:Alignment',
      'f:1:Alignment.bottomCenter',
      'f:1:Alignment.bottomLeft',
      'f:1:Alignment.bottomRight',
      'f:1:Alignment.center',
      'f:1:Alignment.centerLeft',
      'f:1:Alignment.centerRight',
      'f:1:Alignment.topCenter',
      'f:1:Alignment.topLeft',
      'f:1:Alignment.topRight',
    ], FlutterAlignment.fromJson);
  });

  testWidgets('FlutterAlignment', (tester) async {
    final zacContext = await _getZacContext(tester);
    expect(
        FlutterAlignment.fromJson(<String, dynamic>{
          'builder': 'f:1:Alignment',
          'x': 1,
          'y': 2,
        }).build(zacContext),
        FlutterAlignment(ZacValueSimple<double>.fromJson(1),
                ZacValueSimple<double>.fromJson(2))
            .build(zacContext));

    final map = {
      'f:1:Alignment.bottomCenter': FlutterAlignment.bottomCenter(),
      'f:1:Alignment.bottomLeft': FlutterAlignment.bottomLeft(),
      'f:1:Alignment.bottomRight': FlutterAlignment.bottomRight(),
      'f:1:Alignment.center': FlutterAlignment.center(),
      'f:1:Alignment.centerLeft': FlutterAlignment.centerLeft(),
      'f:1:Alignment.centerRight': FlutterAlignment.centerRight(),
      'f:1:Alignment.topCenter': FlutterAlignment.topCenter(),
      'f:1:Alignment.topLeft': FlutterAlignment.topLeft(),
      'f:1:Alignment.topRight': FlutterAlignment.topRight(),
    };

    for (var e in map.entries) {
      expect(
          FlutterAlignment.fromJson(<String, dynamic>{
            'builder': e.key,
          }).build(zacContext),
          e.value.build(zacContext));
    }
  });

  testWidgets('FlutterAlignmentDirectional', (tester) async {
    final zacContext = await _getZacContext(tester);
    expect(
        FlutterAlignmentDirectional.fromJson(<String, dynamic>{
          'builder': 'f:1:AlignmentDirectional',
          'start': 1,
          'y': 2,
        }).build(zacContext),
        FlutterAlignmentDirectional(ZacValueSimple<double>.fromJson(1),
                ZacValueSimple<double>.fromJson(2))
            .build(zacContext));

    final map = {
      'f:1:AlignmentDirectional.bottomCenter':
          FlutterAlignmentDirectional.bottomCenter(),
      'f:1:AlignmentDirectional.bottomEnd':
          FlutterAlignmentDirectional.bottomEnd(),
      'f:1:AlignmentDirectional.bottomStart':
          FlutterAlignmentDirectional.bottomStart(),
      'f:1:AlignmentDirectional.center': FlutterAlignmentDirectional.center(),
      'f:1:AlignmentDirectional.centerEnd':
          FlutterAlignmentDirectional.centerEnd(),
      'f:1:AlignmentDirectional.centerStart':
          FlutterAlignmentDirectional.centerStart(),
      'f:1:AlignmentDirectional.topCenter':
          FlutterAlignmentDirectional.topCenter(),
      'f:1:AlignmentDirectional.topEnd': FlutterAlignmentDirectional.topEnd(),
      'f:1:AlignmentDirectional.topStart':
          FlutterAlignmentDirectional.topStart(),
    };

    for (var e in map.entries) {
      expect(
          FlutterAlignmentDirectional.fromJson(<String, dynamic>{
            'builder': e.key,
          }).build(zacContext),
          e.value.build(zacContext));
    }
  });

  testWidgets('FlutterFractionalOffset', (tester) async {
    final zacContext = await _getZacContext(tester);
    expect(
        FlutterFractionalOffset.fromJson(<String, dynamic>{
          'builder': 'f:1:FractionalOffset',
          'dx': 1,
          'dy': 2,
        }).build(zacContext),
        FlutterFractionalOffset(ZacValueSimple<double>.fromJson(1),
                ZacValueSimple<double>.fromJson(2))
            .build(zacContext));
  });
}
