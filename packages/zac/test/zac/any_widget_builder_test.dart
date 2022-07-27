import 'dart:convert';

import 'package:zac/src/converter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:zac/src/converter.dart';

import '../flutter/models.dart';
import '../helper.dart';

void main() {
  Future<void> pumpUntilFound(
    WidgetTester tester,
    Finder finder, {
    int iterations = 200,
  }) async {
    var found = false;
    for (int i = 1; i <= iterations; i++) {
      found = tester.any(finder);
      if (!found) {
        await tester.runAsync<void>(
            () => Future.delayed(const Duration(milliseconds: 100)));
        await tester.pump();
      } else {
        return;
      }
    }
    if (!found) throw Exception('did not find $finder');
  }

  group('AnyWidgetBuilder', () {
    testWidgets('create from Map', (tester) async {
      await testMap(tester, <String, dynamic>{
        converterKey: 'f:1:SizedBox',
        'child': {
          converterKey: 'f:1:SizedBox',
          'key': KeysModel.getValueKey('FIND_ME'),
        },
      });
      expect(find.byKey(const ValueKey('FIND_ME')), findsOneWidget);
    });

    testWidgets('nested', (tester) async {
      await testMap(tester, <String, dynamic>{
        converterKey: 'z:1:AnyWidgetBuilder',
        'data': {
          converterKey: 'z:1:AnyWidgetBuilder',
          'data': {
            converterKey: 'z:1:AnyWidgetBuilder',
            'data': {
              converterKey: 'f:1:SizedBox',
              'key': KeysModel.getValueKey('FIND_ME'),
            },
          },
        },
      });
      expect(find.byKey(const ValueKey('FIND_ME')), findsOneWidget);
    });

    testWidgets('in isolate', (tester) async {
      await testMap(
        tester,
        <String, dynamic>{
          converterKey: 'z:1:AnyWidgetBuilder.isolate',
          'data': {
            converterKey: 'z:1:AnyWidgetBuilder.isolateString',
            'data': jsonEncode({
              converterKey: 'z:1:AnyWidgetBuilder.isolate',
              'data': {
                converterKey: 'f:1:SizedBox',
                'key': KeysModel.getValueKey('FIND_ME'),
              },
            }),
          },
        },
      );

      await pumpUntilFound(tester, find.byKey(const ValueKey('FIND_ME')));
    });

    testWidgets('mixed nested', (tester) async {
      await testMap(tester, <String, dynamic>{
        converterKey: 'z:1:AnyWidgetBuilder.isolate',
        'data': {
          converterKey: 'z:1:AnyWidgetBuilder',
          'data': {
            converterKey: 'z:1:AnyWidgetBuilder.isolateString',
            'data': jsonEncode({
              converterKey: 'z:1:AnyWidgetBuilder.isolate',
              'data': {
                converterKey: 'f:1:SizedBox',
                'key': KeysModel.getValueKey('FIND_ME'),
              },
            }),
          },
        },
      });
      await pumpUntilFound(tester, find.byKey(const ValueKey('FIND_ME')));
    });
  });
}
