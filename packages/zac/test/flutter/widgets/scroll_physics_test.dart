import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:zac/src/flutter/widgets/scroll_physics.dart';

import '../../helper.dart';
import '../models.dart';

void main() {
  test('FlutterScrollPhysics()', () {
    fakeBuild<AlwaysScrollableScrollPhysics>(
      FlutterScrollPhysics.fromJson(<String, dynamic>{
        '_converter': 'f:1:AlwaysScrollableScrollPhysics',
      }).build,
      (matcher) => matcher,
    );

    fakeBuild<BouncingScrollPhysics>(
      FlutterScrollPhysics.fromJson(<String, dynamic>{
        '_converter': 'f:1:BouncingScrollPhysics',
      }).build,
      (matcher) => matcher,
    );

    fakeBuild<ClampingScrollPhysics>(
      FlutterScrollPhysics.fromJson(<String, dynamic>{
        '_converter': 'f:1:ClampingScrollPhysics',
      }).build,
      (matcher) => matcher,
    );
  });
}
