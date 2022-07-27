import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:zac/src/converter.dart';
import 'package:zac/src/flutter/mixed/keys/keys.dart';

import 'models.dart';

void main() {
  test('FlutterKey', () {
    final config = FakeWidgetConfig();
    expect(
        FlutterKey.fromJson(<String, dynamic>{
          converterKey: FlutterValueKey.unionValue,
          'value': 'test_key',
        }).build(config),
        const ValueKey<String>('test_key'));
  });

  test('FlutterLocalKey', () {
    final config = FakeWidgetConfig();
    expect(
        FlutterLocalKey.fromJson(<String, dynamic>{
          converterKey: FlutterValueKey.unionValue,
          'value': 'test_key',
        }).build(config),
        const ValueKey<String>('test_key'));
  });

  test('FlutterValueKey', () {
    final config = FakeWidgetConfig();
    expect(
        FlutterValueKey.fromJson(<String, dynamic>{
          converterKey: FlutterValueKey.unionValue,
          'value': 'test_key',
        }).build(config),
        const ValueKey<String>('test_key'));
  });
}
