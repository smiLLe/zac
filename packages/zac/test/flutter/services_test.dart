import 'package:zac/src/flutter/services.dart';
import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';

import '../helper.dart';
import 'models.dart';

void main() {
  test('FlutterTextInputType', () {
    fakeBuild<TextInputType>(
      FlutterTextInputType.fromJson(
          <String, dynamic>{'converter': 'f:1:TextInputType.datetime'}).build,
      (matcher) => matcher.having(
          (p0) => p0, 'TextInputType.datetime', equals(TextInputType.datetime)),
    );
    fakeBuild<TextInputType>(
      FlutterTextInputType.fromJson(
              <String, dynamic>{'converter': 'f:1:TextInputType.emailAddress'})
          .build,
      (matcher) => matcher.having((p0) => p0, 'TextInputType.emailAddress',
          equals(TextInputType.emailAddress)),
    );

    fakeBuild<TextInputType>(
      FlutterTextInputType.fromJson(
          <String, dynamic>{'converter': 'f:1:TextInputType.multiline'}).build,
      (matcher) => matcher.having((p0) => p0, 'TextInputType.multiline',
          equals(TextInputType.multiline)),
    );

    fakeBuild<TextInputType>(
      FlutterTextInputType.fromJson(
          <String, dynamic>{'converter': 'f:1:TextInputType.name'}).build,
      (matcher) => matcher.having(
          (p0) => p0, 'TextInputType.name', equals(TextInputType.name)),
    );

    fakeBuild<TextInputType>(
      FlutterTextInputType.fromJson(
          <String, dynamic>{'converter': 'f:1:TextInputType.number'}).build,
      (matcher) => matcher.having(
          (p0) => p0, 'TextInputType.number', equals(TextInputType.number)),
    );

    fakeBuild<TextInputType>(
      FlutterTextInputType.fromJson(
          <String, dynamic>{'converter': 'f:1:TextInputType.phone'}).build,
      (matcher) => matcher.having(
          (p0) => p0, 'TextInputType.phone', equals(TextInputType.phone)),
    );

    fakeBuild<TextInputType>(
      FlutterTextInputType.fromJson(
              <String, dynamic>{'converter': 'f:1:TextInputType.streetAddress'})
          .build,
      (matcher) => matcher.having((p0) => p0, 'TextInputType.streetAddress',
          equals(TextInputType.streetAddress)),
    );

    fakeBuild<TextInputType>(
      FlutterTextInputType.fromJson(
          <String, dynamic>{'converter': 'f:1:TextInputType.text'}).build,
      (matcher) => matcher.having(
          (p0) => p0, 'TextInputType.text', equals(TextInputType.text)),
    );

    fakeBuild<TextInputType>(
      FlutterTextInputType.fromJson(
          <String, dynamic>{'converter': 'f:1:TextInputType.url'}).build,
      (matcher) => matcher.having(
          (p0) => p0, 'TextInputType.url', equals(TextInputType.url)),
    );

    fakeBuild<TextInputType>(
      FlutterTextInputType.fromJson(<String, dynamic>{
        'converter': 'f:1:TextInputType.visiblePassword'
      }).build,
      (matcher) => matcher.having((p0) => p0, 'TextInputType.visiblePassword',
          equals(TextInputType.visiblePassword)),
    );
  });

  test('FlutterTextInputAction', () {
    fakeBuild<TextInputAction>(
      FlutterTextInputAction.fromJson(<String, dynamic>{
        'converter': 'f:1:TextInputAction.continueAction'
      }).build,
      (matcher) => matcher.having((p0) => p0, 'TextInputAction.continueAction',
          equals(TextInputAction.continueAction)),
    );
    fakeBuild<TextInputAction>(
      FlutterTextInputAction.fromJson(
          <String, dynamic>{'converter': 'f:1:TextInputAction.done'}).build,
      (matcher) => matcher.having(
          (p0) => p0, 'TextInputAction.done', equals(TextInputAction.done)),
    );
    fakeBuild<TextInputAction>(
      FlutterTextInputAction.fromJson(<String, dynamic>{
        'converter': 'f:1:TextInputAction.emergencyCall'
      }).build,
      (matcher) => matcher.having((p0) => p0, 'TextInputAction.emergencyCall',
          equals(TextInputAction.emergencyCall)),
    );
    fakeBuild<TextInputAction>(
      FlutterTextInputAction.fromJson(
          <String, dynamic>{'converter': 'f:1:TextInputAction.go'}).build,
      (matcher) => matcher.having(
          (p0) => p0, 'TextInputAction.go', equals(TextInputAction.go)),
    );
    fakeBuild<TextInputAction>(
      FlutterTextInputAction.fromJson(
          <String, dynamic>{'converter': 'f:1:TextInputAction.join'}).build,
      (matcher) => matcher.having(
          (p0) => p0, 'TextInputAction.join', equals(TextInputAction.join)),
    );
    fakeBuild<TextInputAction>(
      FlutterTextInputAction.fromJson(
          <String, dynamic>{'converter': 'f:1:TextInputAction.newline'}).build,
      (matcher) => matcher.having((p0) => p0, 'TextInputAction.newline',
          equals(TextInputAction.newline)),
    );
    fakeBuild<TextInputAction>(
      FlutterTextInputAction.fromJson(
          <String, dynamic>{'converter': 'f:1:TextInputAction.next'}).build,
      (matcher) => matcher.having(
          (p0) => p0, 'TextInputAction.next', equals(TextInputAction.next)),
    );
    fakeBuild<TextInputAction>(
      FlutterTextInputAction.fromJson(
          <String, dynamic>{'converter': 'f:1:TextInputAction.none'}).build,
      (matcher) => matcher.having(
          (p0) => p0, 'TextInputAction.none', equals(TextInputAction.none)),
    );
    fakeBuild<TextInputAction>(
      FlutterTextInputAction.fromJson(
          <String, dynamic>{'converter': 'f:1:TextInputAction.previous'}).build,
      (matcher) => matcher.having((p0) => p0, 'TextInputAction.previous',
          equals(TextInputAction.previous)),
    );
    fakeBuild<TextInputAction>(
      FlutterTextInputAction.fromJson(
          <String, dynamic>{'converter': 'f:1:TextInputAction.route'}).build,
      (matcher) => matcher.having(
          (p0) => p0, 'TextInputAction.route', equals(TextInputAction.route)),
    );
    fakeBuild<TextInputAction>(
      FlutterTextInputAction.fromJson(
          <String, dynamic>{'converter': 'f:1:TextInputAction.search'}).build,
      (matcher) => matcher.having(
          (p0) => p0, 'TextInputAction.search', equals(TextInputAction.search)),
    );
    fakeBuild<TextInputAction>(
      FlutterTextInputAction.fromJson(
          <String, dynamic>{'converter': 'f:1:TextInputAction.send'}).build,
      (matcher) => matcher.having(
          (p0) => p0, 'TextInputAction.send', equals(TextInputAction.send)),
    );
    fakeBuild<TextInputAction>(
      FlutterTextInputAction.fromJson(
              <String, dynamic>{'converter': 'f:1:TextInputAction.unspecified'})
          .build,
      (matcher) => matcher.having((p0) => p0, 'TextInputAction.unspecified',
          equals(TextInputAction.unspecified)),
    );
  });

  test('FlutterTextCapitalization', () {
    fakeBuild<TextCapitalization>(
      FlutterTextCapitalization.fromJson(<String, dynamic>{
        'converter': 'f:1:TextCapitalization.characters'
      }).build,
      (matcher) => matcher.having((p0) => p0, 'TextCapitalization.characters',
          equals(TextCapitalization.characters)),
    );
    fakeBuild<TextCapitalization>(
      FlutterTextCapitalization.fromJson(
          <String, dynamic>{'converter': 'f:1:TextCapitalization.none'}).build,
      (matcher) => matcher.having((p0) => p0, 'TextCapitalization.none',
          equals(TextCapitalization.none)),
    );

    fakeBuild<TextCapitalization>(
      FlutterTextCapitalization.fromJson(<String, dynamic>{
        'converter': 'f:1:TextCapitalization.sentences'
      }).build,
      (matcher) => matcher.having((p0) => p0, 'TextCapitalization.sentences',
          equals(TextCapitalization.sentences)),
    );
    fakeBuild<TextCapitalization>(
      FlutterTextCapitalization.fromJson(
          <String, dynamic>{'converter': 'f:1:TextCapitalization.words'}).build,
      (matcher) => matcher.having((p0) => p0, 'TextCapitalization.words',
          equals(TextCapitalization.words)),
    );
  });

  test('FlutterSmartDashesType', () {
    fakeBuild<SmartDashesType>(
      FlutterSmartDashesType.fromJson(
          <String, dynamic>{'converter': 'f:1:SmartDashesType.disabled'}).build,
      (matcher) => matcher.having((p0) => p0, 'SmartDashesType.disabled',
          equals(SmartDashesType.disabled)),
    );
    fakeBuild<SmartDashesType>(
      FlutterSmartDashesType.fromJson(
          <String, dynamic>{'converter': 'f:1:SmartDashesType.enabled'}).build,
      (matcher) => matcher.having((p0) => p0, 'SmartDashesType.disabled',
          equals(SmartDashesType.enabled)),
    );
  });

  test('FlutterSmartQuotesType', () {
    fakeBuild<SmartQuotesType>(
      FlutterSmartQuotesType.fromJson(
          <String, dynamic>{'converter': 'f:1:SmartQuotesType.disabled'}).build,
      (matcher) => matcher.having((p0) => p0, 'SmartQuotesType.disabled',
          equals(SmartQuotesType.disabled)),
    );
    fakeBuild<SmartQuotesType>(
      FlutterSmartQuotesType.fromJson(
          <String, dynamic>{'converter': 'f:1:SmartQuotesType.enabled'}).build,
      (matcher) => matcher.having((p0) => p0, 'SmartQuotesType.enabled',
          equals(SmartQuotesType.enabled)),
    );
  });
}
