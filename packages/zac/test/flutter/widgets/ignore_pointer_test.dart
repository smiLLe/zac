import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:zac/src/flutter/widgets/ignore_pointer.dart';

import '../../helper.dart';
import '../models.dart';

void main() {
  testWidgets('FlutterIgnorePointer()', (tester) async {
    await testMap(
      tester,
      <String, dynamic>{
        'converter': FlutterIgnorePointer.unionValue,
        'key': KeysModel.getValueKey('FINDME'),
        'ignoring': false,
        'ignoringSemantics': false,
        'child': ChildModel.getSizedBox(key: 'child'),
      },
    );
    final findMe = find.byKey(const ValueKey('FINDME'));
    expect(findMe, findsOneWidget);
    expect(find.byKey(const ValueKey('child')), findsOneWidget);

    final widget = findMe.evaluate().first.widget;

    expect(
        widget,
        isA<IgnorePointer>()
            .having((p0) => p0.ignoring, 'IgnorePointer.ignoring', isFalse)
            .having((p0) => p0.ignoringSemantics,
                'IgnorePointer.ignoringSemantics', isFalse)
            .having((p0) => p0.child, 'IgnorePointer.child', isA<SizedBox>()));
  });
}
