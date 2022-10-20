import 'package:zac/src/flutter/widgets/interactive_viewer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../helper.dart';
import '../models.dart';

void main() {
  testWidgets('FlutterInteractiveViewer()', (tester) async {
    await testMap(
      tester,
      <String, dynamic>{
        'converter': FlutterInteractiveViewer.unionValue,
        'key': KeysModel.getValueKey('FIND_ME'),
        'child': ChildModel.getSizedBox(key: 'test_child'),
        'maxScale': 3.0,
        'minScale': 0.2,
        'boundaryMargin': EdgeInsetsModel.geometry_edgeInsetsAll,
        'constrained': false,
        'clipBehavior': {
          'converter': 'f:1:Clip.antiAlias',
        },
        'panEnabled': false,
        'scaleEnabled': false,
        'alignPanAxis': true,
        'onInteractionStart': NoopAction.createActions(),
        'onInteractionEnd': NoopAction.createActions(),
        'onInteractionUpdate': NoopAction.createActions(),
      },
      converter: {
        NoopAction.unionValue: NoopAction.fromJson,
      },
    );

    final findMe = find.byKey(const ValueKey('FIND_ME'));

    expect(findMe, findsOneWidget);

    final widget = findMe.evaluate().first.widget;

    // @Todo: Verify interactions

    expect(
        widget,
        isA<InteractiveViewer>()
            .having((p0) => p0.maxScale, 'InteractiveViewer.maxScale', 3.0)
            .having((p0) => p0.minScale, 'InteractiveViewer.minScale', 0.2)
            .having((p0) => p0.boundaryMargin,
                'InteractiveViewer.boundaryMargin', EdgeInsetsModel.equalsAll)
            .having((p0) => p0.constrained, 'InteractiveViewer.constrained',
                isFalse)
            .having((p0) => p0.clipBehavior, 'InteractiveViewer.clipBehavior',
                Clip.antiAlias)
            .having(
                (p0) => p0.panEnabled, 'InteractiveViewer.panEnabled', isFalse)
            .having((p0) => p0.scaleEnabled, 'InteractiveViewer.scaleEnabled',
                isFalse)
            .having((p0) => p0.alignPanAxis, 'InteractiveViewer.alignPanAxis',
                isTrue)
            // TODO: Actually test the interaction
            .having((p0) => p0.onInteractionStart,
                'InteractiveViewer.onInteractionStart', isNotNull)
            .having((p0) => p0.onInteractionEnd,
                'InteractiveViewer.onInteractionEnd', isNotNull)
            .having((p0) => p0.onInteractionUpdate,
                'InteractiveViewer.onInteractionUpdate', isNotNull));
  });
}
