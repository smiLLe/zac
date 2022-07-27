import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:zac/src/converter.dart';
import 'package:zac/src/base.dart';
import 'package:zac/src/flutter/widgets/interaction/scroll_physics/scroll_physics.dart';

import '../../models.dart';

void main() {
  test('FlutterScrollPhysics()', () {
    final config = FakeZacContext();
    expect(
        FlutterScrollPhysics.fromJson(<String, dynamic>{
          converterKey: 'f:1:AlwaysScrollableScrollPhysics',
        }).build(config),
        isA<AlwaysScrollableScrollPhysics>());

    expect(
        FlutterScrollPhysics.fromJson(<String, dynamic>{
          converterKey: 'f:1:BouncingScrollPhysics',
        }).build(config),
        isA<BouncingScrollPhysics>());

    expect(
        FlutterScrollPhysics.fromJson(<String, dynamic>{
          converterKey: 'f:1:ClampingScrollPhysics',
        }).build(config),
        isA<ClampingScrollPhysics>());
  });
}
