import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:zac/zac.dart';

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

  test('In Registry', () {
    expectInRegistry([
      'z:1:Build.fromJsonString',
      'z:1:Build.fromBuilderMap',
      'z:1:Build.fromBuilder',
      'z:1:Build:Isolate.fromJsonString',
      'z:1:Build:Isolate.fromBuilderMap'
    ], ZacBuild.fromJson);
  });

  testWidgets('Test Widget constructors', (tester) async {
    await tester.pumpWidget(ProviderScope(
      child: MaterialApp(
        home: Material(
          child: ZacBuildWidget.fromJsonString(
              json: jsonEncode(
                  <String, dynamic>{'builder': 'f:1:Text', 'data': 'hello 1'})),
        ),
      ),
    ));
    expect(find.text('hello 1'), findsOneWidget);

    await tester.pumpWidget(const ProviderScope(
      child: MaterialApp(
        home: Material(
          child: ZacBuildWidget.fromBuilderMap(
              map: <String, dynamic>{'builder': 'f:1:Text', 'data': 'hello 2'}),
        ),
      ),
    ));
    expect(find.text('hello 2'), findsOneWidget);

    await tester.pumpWidget(ProviderScope(
      child: MaterialApp(
        home: Material(
          child: ZacBuildWidget.fromBuilder(
              builder: FlutterText(ZacString('hello 3'))),
        ),
      ),
    ));
    expect(find.text('hello 3'), findsOneWidget);

    await tester.pumpWidget(ProviderScope(
      child: MaterialApp(
        home: Material(
          child: ZacBuildIsolatedWidget.fromJsonString(
            json: jsonEncode(
                <String, dynamic>{'builder': 'f:1:Text', 'data': 'hello 4'}),
          ),
        ),
      ),
    ));
    await pumpUntilFound(tester, find.text('hello 4'));

    await tester.pumpWidget(
      const ProviderScope(
        child: MaterialApp(
          home: Material(
            child: ZacBuildIsolatedWidget.fromBuilderMap(map: <String, dynamic>{
              'builder': 'f:1:Text',
              'data': 'hello 5'
            }),
          ),
        ),
      ),
    );
    await pumpUntilFound(tester, find.text('hello 4'));
  });

  testWidgets('Mixed nested build', (tester) async {
    await testWidgetBuilder(
        tester,
        ZacBuild.fromJson(<String, dynamic>{
          'builder': 'z:1:Build:Isolate.fromBuilderMap',
          'builderMap': {
            'builder': 'f:1:SizedBox',
            'child': {
              'builder': 'z:1:Build.fromBuilderMap',
              'builderMap': {
                'builder': 'z:1:Build:Isolate.fromBuilderMap',
                'builderMap': {
                  'builder': 'f:1:Text',
                  'data': 'hello',
                }
              }
            },
          }
        }));

    await pumpUntilFound(tester, find.text('hello'));
    expect(find.text('hello'), findsOneWidget);
  });
}
