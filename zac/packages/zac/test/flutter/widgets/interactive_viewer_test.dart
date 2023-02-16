import 'package:zac/src/zac/registry.dart';
import 'package:zac/src/flutter/widgets/interactive_viewer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../helper.dart';
import '../models.dart';

void main() {
  testWidgets('FlutterInteractiveViewer()', (tester) async {
    ZacRegistry().register('test.action', TestAction.noop);
    await testJSON(
      tester,
      <String, dynamic>{
        'builder': FlutterInteractiveViewer.unionValue,
        'key': KeysModel.getValueKey('FIND_ME'),
        'child': ChildModel.getSizedBox(key: 'test_child'),
        'maxScale': 3.0,
        'minScale': 0.2,
        'boundaryMargin': EdgeInsetsModel.geometry_edgeInsetsAll,
        'constrained': false,
        'clipBehavior': {
          'builder': 'f:1:Clip.antiAlias',
        },
        'panEnabled': false,
        'scaleEnabled': false,
        'panAxis': {
          'builder': 'f:1:PanAxis.horizontal',
        },
        'onInteractionStart': const [
          {'builder': 'test.action'}
        ],
        'onInteractionEnd': const [
          {'builder': 'test.action'}
        ],
        'onInteractionUpdate': const [
          {'builder': 'test.action'}
        ],
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
            .having((p0) => p0.panAxis, 'InteractiveViewer.panAxis',
                PanAxis.horizontal)
            // TODO: Actually test the interaction
            .having((p0) => p0.onInteractionStart,
                'InteractiveViewer.onInteractionStart', isNotNull)
            .having((p0) => p0.onInteractionEnd,
                'InteractiveViewer.onInteractionEnd', isNotNull)
            .having((p0) => p0.onInteractionUpdate,
                'InteractiveViewer.onInteractionUpdate', isNotNull));
  });

  testWidgets('PanAxis', (tester) async {
    await testBuilder<PanAxis>(
      tester,
      'f:1:PanAxis.horizontal',
      matcher: (matcher) =>
          matcher.having((p0) => p0, 'horizontal', PanAxis.horizontal),
    );
    await testBuilder<PanAxis>(
      tester,
      'f:1:PanAxis.vertical',
      matcher: (matcher) =>
          matcher.having((p0) => p0, 'vertical', PanAxis.vertical),
    );
    await testBuilder<PanAxis>(
      tester,
      'f:1:PanAxis.aligned',
      matcher: (matcher) =>
          matcher.having((p0) => p0, 'aligned', PanAxis.aligned),
    );
    await testBuilder<PanAxis>(
      tester,
      'f:1:PanAxis.free',
      matcher: (matcher) => matcher.having((p0) => p0, 'free', PanAxis.free),
    );
  });
}
