import 'package:zac/src/flutter/services.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:zac/src/converter.dart';

import 'models.dart';

void main() {
  test('FlutterTextInputType', () {
    final config = FakeZacContext();
    expect(
        FlutterTextInputType.fromJson(
                <String, dynamic>{'_converter': 'f:1:TextInputType.datetime'})
            .build(config),
        TextInputType.datetime);

    expect(
        FlutterTextInputType.fromJson(<String, dynamic>{
          '_converter': 'f:1:TextInputType.emailAddress'
        }).build(config),
        TextInputType.emailAddress);

    expect(
        FlutterTextInputType.fromJson(
                <String, dynamic>{'_converter': 'f:1:TextInputType.multiline'})
            .build(config),
        TextInputType.multiline);

    expect(
        FlutterTextInputType.fromJson(
                <String, dynamic>{'_converter': 'f:1:TextInputType.name'})
            .build(config),
        TextInputType.name);

    expect(
        FlutterTextInputType.fromJson(
                <String, dynamic>{'_converter': 'f:1:TextInputType.number'})
            .build(config),
        TextInputType.number);

    expect(
        FlutterTextInputType.fromJson(
                <String, dynamic>{'_converter': 'f:1:TextInputType.phone'})
            .build(config),
        TextInputType.phone);

    expect(
        FlutterTextInputType.fromJson(<String, dynamic>{
          '_converter': 'f:1:TextInputType.streetAddress'
        }).build(config),
        TextInputType.streetAddress);

    expect(
        FlutterTextInputType.fromJson(
                <String, dynamic>{'_converter': 'f:1:TextInputType.text'})
            .build(config),
        TextInputType.text);

    expect(
        FlutterTextInputType.fromJson(
                <String, dynamic>{'_converter': 'f:1:TextInputType.url'})
            .build(config),
        TextInputType.url);

    expect(
        FlutterTextInputType.fromJson(<String, dynamic>{
          '_converter': 'f:1:TextInputType.visiblePassword'
        }).build(config),
        TextInputType.visiblePassword);
  });

  test('FlutterTextInputAction', () {
    final config = FakeZacContext();
    expect(
        FlutterTextInputAction.fromJson(<String, dynamic>{
          '_converter': 'f:1:TextInputAction.continueAction'
        }).build(config),
        TextInputAction.continueAction);
    expect(
        FlutterTextInputAction.fromJson(
                <String, dynamic>{'_converter': 'f:1:TextInputAction.done'})
            .build(config),
        TextInputAction.done);
    expect(
        FlutterTextInputAction.fromJson(<String, dynamic>{
          '_converter': 'f:1:TextInputAction.emergencyCall'
        }).build(config),
        TextInputAction.emergencyCall);
    expect(
        FlutterTextInputAction.fromJson(
                <String, dynamic>{'_converter': 'f:1:TextInputAction.go'})
            .build(config),
        TextInputAction.go);
    expect(
        FlutterTextInputAction.fromJson(
                <String, dynamic>{'_converter': 'f:1:TextInputAction.join'})
            .build(config),
        TextInputAction.join);
    expect(
        FlutterTextInputAction.fromJson(
                <String, dynamic>{'_converter': 'f:1:TextInputAction.newline'})
            .build(config),
        TextInputAction.newline);
    expect(
        FlutterTextInputAction.fromJson(
                <String, dynamic>{'_converter': 'f:1:TextInputAction.next'})
            .build(config),
        TextInputAction.next);
    expect(
        FlutterTextInputAction.fromJson(
                <String, dynamic>{'_converter': 'f:1:TextInputAction.none'})
            .build(config),
        TextInputAction.none);
    expect(
        FlutterTextInputAction.fromJson(
                <String, dynamic>{'_converter': 'f:1:TextInputAction.previous'})
            .build(config),
        TextInputAction.previous);
    expect(
        FlutterTextInputAction.fromJson(
                <String, dynamic>{'_converter': 'f:1:TextInputAction.route'})
            .build(config),
        TextInputAction.route);
    expect(
        FlutterTextInputAction.fromJson(
                <String, dynamic>{'_converter': 'f:1:TextInputAction.search'})
            .build(config),
        TextInputAction.search);
    expect(
        FlutterTextInputAction.fromJson(
                <String, dynamic>{'_converter': 'f:1:TextInputAction.send'})
            .build(config),
        TextInputAction.send);
    expect(
        FlutterTextInputAction.fromJson(<String, dynamic>{
          '_converter': 'f:1:TextInputAction.unspecified'
        }).build(config),
        TextInputAction.unspecified);
  });

  test('FlutterTextCapitalization', () {
    final config = FakeZacContext();
    expect(
        FlutterTextCapitalization.fromJson(<String, dynamic>{
          '_converter': 'f:1:TextCapitalization.characters'
        }).build(config),
        TextCapitalization.characters);

    expect(
        FlutterTextCapitalization.fromJson(
                <String, dynamic>{'_converter': 'f:1:TextCapitalization.none'})
            .build(config),
        TextCapitalization.none);
    expect(
        FlutterTextCapitalization.fromJson(<String, dynamic>{
          '_converter': 'f:1:TextCapitalization.sentences'
        }).build(config),
        TextCapitalization.sentences);
    expect(
        FlutterTextCapitalization.fromJson(
                <String, dynamic>{'_converter': 'f:1:TextCapitalization.words'})
            .build(config),
        TextCapitalization.words);
  });

  test('FlutterSmartDashesType', () {
    final config = FakeZacContext();
    expect(
        FlutterSmartDashesType.fromJson(
                <String, dynamic>{'_converter': 'f:1:SmartDashesType.disabled'})
            .build(config),
        SmartDashesType.disabled);

    expect(
        FlutterSmartDashesType.fromJson(
                <String, dynamic>{'_converter': 'f:1:SmartDashesType.enabled'})
            .build(config),
        SmartDashesType.enabled);
  });

  test('FlutterSmartQuotesType', () {
    final config = FakeZacContext();
    expect(
        FlutterSmartQuotesType.fromJson(
                <String, dynamic>{'_converter': 'f:1:SmartQuotesType.disabled'})
            .build(config),
        SmartQuotesType.disabled);

    expect(
        FlutterSmartQuotesType.fromJson(
                <String, dynamic>{'_converter': 'f:1:SmartQuotesType.enabled'})
            .build(config),
        SmartQuotesType.enabled);
  });
}
