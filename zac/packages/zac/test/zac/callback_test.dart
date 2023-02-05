import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:zac/src/base.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:zac/src/zac/callback.dart';

import '../flutter/models.dart';
import '../helper.dart';
import '../helper.mocks.dart';

void main() {
  test('In Registry', () {
    expectInRegistry(
        'z:1:SharedCallbacks.provide', ZacCallbacksProvider.fromJson);
    expectInRegistry(
        'z:1:SharedCallback.consume', ZacConsumeSharedCallback.fromJson);
  });

  // testWidgets('Provide and Consume SharedCallback', (tester) async {
  //   await testWidgetBuilder(tester, );
  // });
}
