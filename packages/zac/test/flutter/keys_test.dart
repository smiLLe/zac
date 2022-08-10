import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:zac/src/converter.dart';
import 'package:zac/src/flutter/foundation.dart';

import 'models.dart';

void main() {
  test('FlutterKey', () {
    final config = FakeZacContext();
    expect(
        FlutterKey.fromJson(<String, dynamic>{
          converterKey: FlutterValueKey.unionValue,
          'value': 'test_key',
        }).buildKey(config),
        const ValueKey<String>('test_key'));
  });

  test('FlutterLocalKey', () {
    final config = FakeZacContext();
    expect(
        FlutterLocalKey.fromJson(<String, dynamic>{
          converterKey: FlutterValueKey.unionValue,
          'value': 'test_key',
        }).buildKey(config),
        const ValueKey<String>('test_key'));
  });

  test('FlutterValueKey', () {
    final config = FakeZacContext();
    expect(
        FlutterValueKey.fromJson(<String, dynamic>{
          converterKey: FlutterValueKey.unionValue,
          'value': 'test_key',
        }).buildKey(config),
        const ValueKey<String>('test_key'));
  });
}
