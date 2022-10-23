import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:zac/src/flutter/foundation.dart';

import '../helper.dart';
import 'models.dart';

void main() {
  test('FlutterKey', () {
    fakeBuild<ValueKey>(
      FlutterKey.fromJson(<String, dynamic>{
        'converter': FlutterValueKey.unionValue,
        'value': 'test_key',
      }).buildKey,
      (matcher) => matcher.having(
          (p0) => p0, 'ValueKey', equals(const ValueKey<String>('test_key'))),
    );
  });

  test('FlutterLocalKey', () {
    fakeBuild<ValueKey>(
      FlutterLocalKey.fromJson(<String, dynamic>{
        'converter': FlutterValueKey.unionValue,
        'value': 'test_key',
      }).buildKey,
      (matcher) => matcher.having(
          (p0) => p0, 'ValueKey', equals(const ValueKey<String>('test_key'))),
    );
  });

  test('FlutterValueKey', () {
    fakeBuild<ValueKey>(
      FlutterValueKey.fromJson(<String, dynamic>{
        'converter': FlutterValueKey.unionValue,
        'value': 'test_key',
      }).buildKey,
      (matcher) => matcher.having(
          (p0) => p0, 'ValueKey', equals(const ValueKey<String>('test_key'))),
    );
  });
}
