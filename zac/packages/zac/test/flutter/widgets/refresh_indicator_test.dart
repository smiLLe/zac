import 'dart:async';

import 'package:mockito/mockito.dart';
import 'package:zac/zac.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../helper.dart';
import '../../helper.mocks.dart';
import '../models.dart';

void main() {
  testWidgets('FlutterRefreshIndicator()', (tester) async {
    await testWithinMaterialApp(
      tester,
      Scaffold(
        appBar: AppBar(title: const Text('Title')),
        body: ZacWidget(
          data: {
            'converter': 'f:1:RefreshIndicator',
            'key': KeysModel.getValueKey('FIND_ME'),
            'child': {
              'converter': FlutterListView.unionValue,
              'children': [
                ChildModel.getSizedBox(key: 'child1'),
                ChildModel.getSizedBox(key: 'child2')
              ],
            },
            'onRefresh': NoopAction.createActions(),
            'semanticsLabel': 'semanticsLabel',
            'semanticsValue': 'semanticsValue',
            'color': ColorModel.json,
            'backgroundColor': ColorModel.json,
            'displacement': 1,
            'edgeOffset': 2,
          },
        ),
      ),
      converter: {NoopAction.unionValue: NoopAction.fromJson},
    );

    final widget = find
        .descendant(
            of: find.byType(Scaffold),
            skipOffstage: false,
            matching: find.byType(RefreshIndicator))
        .evaluate()
        .first
        .widget;

    expect(
        widget,
        isA<RefreshIndicator>()
            .having((p0) => p0.semanticsLabel,
                'RefreshIndicator.semanticsLabel', 'semanticsLabel')
            .having((p0) => p0.semanticsValue,
                'RefreshIndicator.semanticsValue', 'semanticsValue')
            .having((p0) => p0.backgroundColor,
                'RefreshIndicator.backgroundColor', ColorModel.equals)
            .having(
                (p0) => p0.color, 'RefreshIndicator.color', ColorModel.equals)
            .having((p0) => p0.displacement, 'RefreshIndicator.displacement', 1)
            .having((p0) => p0.edgeOffset, 'RefreshIndicator.edgeOffset', 2));
  });

  testWidgets('Execute onRefresh without custom completer', (tester) async {
    final SemanticsHandle handle = tester.ensureSemantics();
    final cb = MockLeakedActionCb();
    await testWithinMaterialApp(
      tester,
      Scaffold(
        appBar: AppBar(title: const Text('Title')),
        body: ZacWidget(
          data: FlutterRefreshIndicator(
            onRefresh: ZacActions([LeakAction(cb)]),
            child: FlutterListView(
              children: ZacListOfFlutterWidget(
                items: [
                  FlutterSizedBox(key: FlutterValueKey('child1')),
                ],
              ),
            ),
          ),
        ),
      ),
    );

    await tester.fling(
        find.descendant(
            of: find.byType(Scaffold),
            skipOffstage: false,
            matching: find.byType(RefreshIndicator)),
        const Offset(0.0, 300.0),
        1000.0);
    await tester.pumpAndSettle();

    handle.dispose();

    verify(cb(const ZacActionPayload(), any)).called(1);
  });

  testWidgets('Execute onRefresh with custom completer', (tester) async {
    final SemanticsHandle handle = tester.ensureSemantics();
    final cb = MockLeakedActionCb();
    await testWithinMaterialApp(
      tester,
      Scaffold(
        appBar: AppBar(title: const Text('Title')),
        body: ZacWidget(
          data: ZacCompleterProviderBuilder.asVoid(
            family: 'shared',
            child: ZacValue<Widget>.builder(
              builder: FlutterRefreshIndicator(
                onRefresh: ZacActions([
                  LeakAction(cb),
                  ZacCompleterActions.completeVoid(
                      completer: DartCompleterVoid.consume(family: 'shared'))
                ]),
                onRefreshCompleter:
                    DartCompleterVoid.fromJson(<String, dynamic>{
                  'converter': 'z:1:Completer<void>.consume',
                  'family': 'shared',
                }),
                child: FlutterListView(
                  children: ZacListOfFlutterWidget(
                    items: [
                      FlutterSizedBox(key: FlutterValueKey('child1')),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );

    await tester.fling(
        find.descendant(
            of: find.byType(Scaffold),
            skipOffstage: false,
            matching: find.byType(RefreshIndicator)),
        const Offset(0.0, 300.0),
        1000.0);
    await tester.pumpAndSettle();

    handle.dispose();

    verify(cb(
            argThat(isA<ZacActionPayload>().having(
                (p0) => p0.paramsAsList, 'payload params', [isA<Completer>()])),
            any))
        .called(1);
  });
}
