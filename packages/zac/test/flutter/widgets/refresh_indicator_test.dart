import 'dart:async';

import 'package:zac/src/zac/flutter/refresh_indicator.dart';
import 'package:zac/zac.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

import '../../helper.dart';
import '../../helper.mocks.dart';
import '../models.dart';

void main() {
  testWidgets('FlutterRefreshIndicator()', (tester) async {
    await testMap(
      tester,
      <String, dynamic>{
        '_converter': FlutterScaffold.unionValue,
        'appBar': {
          '_converter': FlutterAppBar.unionValue,
          'title': {
            '_converter': FlutterText.unionValue,
            'data': 'Title',
          },
        },
        'body': {
          '_converter': FlutterRefreshIndicator.unionValue,
          'key': KeysModel.getValueKey('FIND_ME'),
          'child': {
            '_converter': FlutterListView.unionValue,
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
      },
      converter: {NoopAction.unionValue: NoopAction.fromJson},
    );

    final widget = find
        .byKey(const ValueKey('FIND_ME'), skipOffstage: false)
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

  testWidgets('FlutterRefreshIndicator interaction', (tester) async {
    final SemanticsHandle handle = tester.ensureSemantics();
    final executeCb = MockLeakedActionCb();
    await testZacWidget(
      tester,
      FlutterScaffold(
        appBar: FlutterAppBar(
          title: FlutterText(ZacString('Title')),
        ),
        body: FlutterRefreshIndicator(
          onRefresh: ZacActions([
            LeakAction(executeCb),
            FlutterRefreshIndicatorAction(),
          ]),
          key: FlutterValueKey('FIND_ME'),
          child: FlutterListView(
            children: ListOfZacWidget(
              [
                FlutterSizedBox(key: FlutterValueKey('child1')),
              ],
            ),
          ),
        ),
      ),
    );

    final findMe = find.byKey(const ValueKey('FIND_ME'));
    await tester.fling(findMe, const Offset(0.0, 300.0), 1000.0);
    await tester.pumpAndSettle();

    verify(executeCb(
            any,
            argThat(isA<ActionPayload>().having(
                (p) => p.map(
                      none: (_) => throw Exception(''),
                      withData: (payload) => payload.data,
                    ),
                'payload.data',
                isA<Completer>()))))
        .called(1);

    handle.dispose();
  });

  test('convert FlutterRefreshIndicatorAction', () {
    expect(
        ConverterHelper.convertToType<FlutterRefreshIndicatorAction>(
            {'_converter': 'z:1:RefreshIndicator.complete'}),
        const FlutterRefreshIndicatorAction());
  });
}
