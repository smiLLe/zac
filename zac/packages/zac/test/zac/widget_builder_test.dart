import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:zac/src/flutter/all.dart';
import 'package:zac/src/zac/context.dart';
import 'package:zac/src/zac/zac_values.dart';
import 'package:zac/src/zac/widget.dart';

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

  group('WidgetBuilder', () {
    testWidgets('create from Map', (tester) async {
      await testMap(tester, <String, dynamic>{
        'converter': 'f:1:SizedBox',
        'child': {
          'converter': 'f:1:SizedBox',
          'key': KeysModel.getValueKey('FIND_ME'),
        },
      });
      expect(find.byKey(const ValueKey('FIND_ME')), findsOneWidget);
    });

    testWidgets('nested', (tester) async {
      await testMap(tester, <String, dynamic>{
        'converter': 'z:1:Widget',
        'data': {
          'converter': 'z:1:Widget',
          'data': {
            'converter': 'z:1:Widget',
            'data': {
              'converter': 'f:1:SizedBox',
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
          'converter': 'z:1:Widget.isolate',
          'data': {
            'converter': 'z:1:Widget.isolateString',
            'data': jsonEncode({
              'converter': 'z:1:Widget.isolate',
              'data': {
                'converter': 'f:1:SizedBox',
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
        'converter': 'z:1:Widget.isolate',
        'data': {
          'converter': 'z:1:Widget',
          'data': {
            'converter': 'z:1:Widget.isolateString',
            'data': jsonEncode({
              'converter': 'z:1:Widget.isolate',
              'data': {
                'converter': 'f:1:SizedBox',
                'key': KeysModel.getValueKey('FIND_ME'),
              },
            }),
          },
        },
      });
      await pumpUntilFound(tester, find.byKey(const ValueKey('FIND_ME')));
    });
  });

  group('ZacWidgetBuilderFromMapInIsolate', () {
    testWidgets('allow rethrow of error', (tester) async {
      Object? error;

      await runZonedGuarded(() async {
        await tester.runAsync(() async {
          await testZacWidget(
            tester,
            ZacWidgetBuilder.isolate(
              data: ZacValue<Map>.fromJson(
                <String, dynamic>{},
              ),
            ),
          );
          await Future<void>.delayed(const Duration(seconds: 1));
        });
      }, (err, trace) {
        error = err;
      });

      expect(error, isNotNull);
    });

    testWidgets('show DebugErrorBox when no error child given', (tester) async {
      await tester.runAsync(() async {
        await testZacWidget(
          tester,
          ZacWidgetBuilder.isolate(
            data: ZacValue<Map>.fromJson(
              <String, dynamic>{},
            ),
            debugRethrowError: false,
          ),
        );
        await Future<void>.delayed(const Duration(seconds: 1));
      });

      await tester.pump();

      expect(find.textContaining('ERROR IN $ZacWidget'), findsOneWidget);
    });

    testWidgets('allow custom error widget with access to the error',
        (tester) async {
      late ZacContext zacContext;

      await tester.runAsync(() async {
        await testZacWidget(
          tester,
          ZacWidgetBuilder.isolate(
            data: ZacValue<Map>.fromJson(
              <String, dynamic>{},
            ),
            errorChild: LeakContext(
              cb: (o) => zacContext = o,
              child: FlutterSizedBox(
                key: FlutterValueKey('ERROR'),
              ),
            ),
            debugRethrowError: false,
          ),
        );
        await Future<void>.delayed(const Duration(seconds: 1));
      });

      await tester.pump();
      expect(find.byKey(const ValueKey('ERROR')), findsOneWidget);
      expect(
          ZacValueConsume<Object>.watch(family: 'ZacWidget.error')
              .getValue(zacContext),
          isNotNull);
    });
  });

  group('ZacWidgetBuilderFromMapInIsolateFromString', () {
    testWidgets('allow rethrow of error', (tester) async {
      Object? error;

      await runZonedGuarded(() async {
        await tester.runAsync(() async {
          await testZacWidget(
            tester,
            ZacWidgetBuilder.isolateString(
              data: ZacValue<String>.fromJson('{'),
            ),
          );
          await Future<void>.delayed(const Duration(seconds: 1));
        });
      }, (err, trace) {
        error = err;
      });

      expect(error, isNotNull);
    });

    testWidgets('show DebugErrorBox when no error child given', (tester) async {
      await tester.runAsync(() async {
        await testZacWidget(
          tester,
          ZacWidgetBuilder.isolateString(
            data: ZacValue<String>.fromJson('{'),
            debugRethrowError: false,
          ),
        );
        await Future<void>.delayed(const Duration(seconds: 1));
      });

      await tester.pump();

      expect(find.textContaining('ERROR IN $ZacWidget'), findsOneWidget);
    });

    testWidgets('allow custom error widget with access to the error',
        (tester) async {
      late ZacContext zacContext;

      await tester.runAsync(() async {
        await testZacWidget(
          tester,
          ZacWidgetBuilder.isolateString(
            data: ZacValue<String>.fromJson('{'),
            errorChild: LeakContext(
              cb: (o) => zacContext = o,
              child: FlutterSizedBox(
                key: FlutterValueKey('ERROR'),
              ),
            ),
            debugRethrowError: false,
          ),
        );
        await Future<void>.delayed(const Duration(seconds: 1));
      });

      await tester.pump();
      expect(find.byKey(const ValueKey('ERROR')), findsOneWidget);
      expect(
          ZacValueConsume<Object>.watch(family: 'ZacWidget.error')
              .getValue(zacContext),
          isNotNull);
    });
  });
}
