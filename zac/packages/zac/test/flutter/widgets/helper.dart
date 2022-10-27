import 'package:flutter/widgets.dart';
import 'package:flutter_test/flutter_test.dart';

extension XTypeMatcher<T extends Widget> on TypeMatcher<T> {
  TypeMatcher<T> havingValueKey(String key) {
    return having(
        (p0) => p0.key,
        '$T.key',
        isA<ValueKey>()
            .having((p0) => p0.value, 'ValueKey.value', equals(key)));
  }
}
