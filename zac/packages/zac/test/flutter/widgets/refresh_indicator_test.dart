import 'package:mockito/mockito.dart';
import 'package:zac/zac.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../helper.dart';
import '../../helper.mocks.dart';
import '../models.dart';

void main() {
  testWidgets('FlutterRefreshIndicator()', (tester) async {
    ZacRegistry().register<ZacAction>('test.action', TestAction.noop);
    await testJSON(
      tester,
      <String, dynamic>{
        'builder': 'f:1:Scaffold',
        'appBar': {
          'builder': 'f:1:AppBar',
          'title': {'builder': 'f:1:Text', 'data': 'Title'},
        },
        'body': {
          'builder': 'f:1:RefreshIndicator',
          'key': KeysModel.getValueKey('FIND_ME'),
          'child': {
            'builder': FlutterListView.unionValue,
            'children': [
              ChildModel.getSizedBox(key: 'child1'),
              ChildModel.getSizedBox(key: 'child2')
            ],
          },
          'onRefresh': const [
            {'builder': 'test.action'}
          ],
          'semanticsLabel': 'semanticsLabel',
          'semanticsValue': 'semanticsValue',
          'color': ColorModel.json,
          'backgroundColor': ColorModel.json,
          'displacement': 1,
          'edgeOffset': 2,
        },
      },
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
    final cb = MockTestActionExecute();
    await testWidgetBuilder(
      tester,
      FlutterScaffold(
        appBar: FlutterAppBar(title: FlutterText(ZacValue('Title'))),
        body: FlutterRefreshIndicator(
          onRefresh: ZacValueList<ZacAction, List<ZacAction>>([TestAction(cb)]),
          child: FlutterListView(
            children: ZacValueList<Widget, List<Widget>?>(
              [
                FlutterSizedBox(key: FlutterValueKey('child1')),
              ],
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

    verify(cb(const ZacActionPayload(), any, any)).called(1);
  });
}
