import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';

import '../helper.dart';

void main() {
  testWidgets('FlutterTextInputType', (tester) async {
    for (var ele in [
      ['datetime', TextInputType.datetime],
      ['emailAddress', TextInputType.emailAddress],
      ['multiline', TextInputType.multiline],
      ['name', TextInputType.name],
      ['number', TextInputType.number],
      ['phone', TextInputType.phone],
      ['streetAddress', TextInputType.streetAddress],
      ['text', TextInputType.text],
      ['url', TextInputType.url],
      ['visiblePassword', TextInputType.visiblePassword],
    ]) {
      await testBuilder<TextInputType>(
        tester,
        'f:1:TextInputType.${ele[0]}',
        matcher: (matcher) => matcher.having(
            (p0) => p0, 'TextInputType.${ele[0]}', equals(ele[1])),
      );
    }
  });

  testWidgets('FlutterTextInputAction', (tester) async {
    for (var ele in [
      ['continueAction', TextInputAction.continueAction],
      ['done', TextInputAction.done],
      ['emergencyCall', TextInputAction.emergencyCall],
      ['go', TextInputAction.go],
      ['join', TextInputAction.join],
      ['newline', TextInputAction.newline],
      ['next', TextInputAction.next],
      ['none', TextInputAction.none],
      ['previous', TextInputAction.previous],
      ['route', TextInputAction.route],
      ['search', TextInputAction.search],
      ['send', TextInputAction.send],
      ['unspecified', TextInputAction.unspecified],
    ]) {
      await testBuilder<TextInputAction>(
        tester,
        'f:1:TextInputAction.${ele[0]}',
        matcher: (matcher) => matcher.having(
            (p0) => p0, 'TextInputAction.${ele[0]}', equals(ele[1])),
      );
    }
  });

  testWidgets('FlutterTextCapitalization', (tester) async {
    for (var ele in [
      ['characters', TextCapitalization.characters],
      ['none', TextCapitalization.none],
      ['sentences', TextCapitalization.sentences],
      ['words', TextCapitalization.words],
    ]) {
      await testBuilder<TextCapitalization>(
        tester,
        'f:1:TextCapitalization.${ele[0]}',
        matcher: (matcher) => matcher.having(
            (p0) => p0, 'TextCapitalization.${ele[0]}', equals(ele[1])),
      );
    }
  });

  testWidgets('FlutterSmartDashesType', (tester) async {
    for (var ele in [
      ['disabled', SmartDashesType.disabled],
      ['enabled', SmartDashesType.enabled],
    ]) {
      await testBuilder<SmartDashesType>(
        tester,
        'f:1:SmartDashesType.${ele[0]}',
        matcher: (matcher) => matcher.having(
            (p0) => p0, 'SmartDashesType.${ele[0]}', equals(ele[1])),
      );
    }
  });

  testWidgets('FlutterSmartQuotesType', (tester) async {
    for (var ele in [
      ['disabled', SmartQuotesType.disabled],
      ['enabled', SmartQuotesType.enabled],
    ]) {
      await testBuilder<SmartQuotesType>(
        tester,
        'f:1:SmartQuotesType.${ele[0]}',
        matcher: (matcher) => matcher.having(
            (p0) => p0, 'SmartQuotesType.${ele[0]}', equals(ele[1])),
      );
    }
  });
}
