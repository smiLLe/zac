import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

const builderKey = 'builder';
const freezedZacBuilder = Freezed(
  fromJson: true,
  toJson: false,
  map: FreezedMapOptions(map: true, mapOrNull: false, maybeMap: false),
  when: FreezedWhenOptions(when: false, whenOrNull: false, maybeWhen: false),
  copyWith: false,
  unionKey: builderKey,
);

const freezedZacDefaults = Freezed(
  fromJson: false,
  toJson: false,
  map: FreezedMapOptions(map: true, mapOrNull: false, maybeMap: false),
  when: FreezedWhenOptions(when: false, whenOrNull: false, maybeWhen: false),
  copyWith: false,
);

extension ZacBuildContextExtensions on BuildContext {
  /// Temporary fix until the following issue is merged into stable branch
  /// https://github.com/flutter/flutter/pull/111619
  bool get isMounted {
    try {
      (this as Element).widget;
      return true;
    } on TypeError catch (_) {
      return false;
    }
  }

  WidgetRef get widgetRef {
    if (this is! WidgetRef) {
      throw StateError('''
It was not possible to call context.widgetRef because the context
is not a Riverpod WidgetRef.''');
    }
    return this as WidgetRef;
  }
}
