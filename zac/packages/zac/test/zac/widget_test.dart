import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:zac/zac.dart';

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

  testWidgets('Build a FlutterWidget from ZacWidget', (tester) async {
    await tester.pumpWidget(MaterialApp(
      home: ZacWidget(
        data: FlutterWidget.fromJson({
          'converter': 'f:1:Text',
          'data': 'hello',
        }),
      ),
    ));
    expect(find.text('hello'), findsOneWidget);
  });

  testWidgets('Build a FlutterWidget from ZacWidgetBuilder', (tester) async {
    await tester.pumpWidget(MaterialApp(
      home: ZacUpdateContext(builder: (zacContext) {
        return ZacWidgetBuilder.fromJson(<String, dynamic>{
          'converter': 'z:1:Widget',
          'data': {
            'converter': 'f:1:Text',
            'data': 'hello',
          }
        }).build(zacContext);
      }),
    ));
    expect(find.text('hello'), findsOneWidget);
  });

  group('Create a FlutterWidget isolated ', () {
    testWidgets('using ZacWidgetIsolated', (tester) async {
      await tester.pumpWidget(const MaterialApp(
        home: ZacWidgetIsolated(
          data: <String, dynamic>{
            'converter': 'f:1:Text',
            'data': 'hello',
          },
        ),
      ));

      await pumpUntilFound(tester, find.text('hello'));
      expect(find.text('hello'), findsOneWidget);
    });

    testWidgets('using ZacWidgetBuilder', (tester) async {
      await tester.pumpWidget(MaterialApp(
        home: ZacUpdateContext(builder: (zacContext) {
          return ZacWidgetBuilder.fromJson(<String, dynamic>{
            'converter': 'z:1:Widget.isolate',
            'data': {
              'converter': 'f:1:Text',
              'data': 'hello',
            }
          }).build(zacContext);
        }),
      ));

      await pumpUntilFound(tester, find.text('hello'));
      expect(find.text('hello'), findsOneWidget);
    });
  });

  testWidgets('Nested WidgetBuilder', (tester) async {
    await tester.pumpWidget(MaterialApp(
      home: ZacUpdateContext(builder: (zacContext) {
        return ZacWidgetBuilder.fromJson(<String, dynamic>{
          'converter': 'z:1:Widget.isolate',
          'data': {
            'converter': 'f:1:SizedBox',
            'child': {
              'converter': 'z:1:Widget',
              'data': {
                'converter': 'z:1:Widget.isolate',
                'data': {
                  'converter': 'f:1:Text',
                  'data': 'hello',
                }
              }
            },
          }
        }).build(zacContext);
      }),
    ));

    await pumpUntilFound(tester, find.text('hello'));
    expect(find.text('hello'), findsOneWidget);
  });

  test('ZacWidget only support few types for data property', () {
    expect(() => ZacWidget(data: 5), throwsAssertionError);
    expect(() => const ZacWidget(data: 'foo'), returnsNormally);
    expect(() => const ZacWidget(data: <String, dynamic>{}), returnsNormally);
    expect(() => ZacWidget(data: FlutterSizedBox()), returnsNormally);
  });

  test('ZacWidgetIsolated only support few types for data property', () {
    expect(() => ZacWidgetIsolated(data: 5), throwsAssertionError);
    expect(() => const ZacWidgetIsolated(data: 'foo'), returnsNormally);
    expect(() => const ZacWidgetIsolated(data: <String, dynamic>{}),
        returnsNormally);
  });
}
