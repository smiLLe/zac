import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:zac/src/zac/registry.dart';
import 'package:zac/src/zac/zac_builder.dart';

part 'base.freezed.dart';
part 'base.g.dart';

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

@freezedZacBuilder
class ZacBuilderOr with _$ZacBuilderOr {
  static const union = 'z:1:BuilderOr';
  static const unionBuiltIn = 'z:1:BuilderOr.builtin';

  factory ZacBuilderOr.fromJson(Object data) {
    return data.maybeBuilder<ZacBuilderOr>(
      cb: (converterName, map) {
        if (converterName == ZacBuilderOr.union ||
            converterName == ZacBuilderOr.unionBuiltIn) {
          return _$ZacBuilderOrFromJson(map);
        }

        return _$ZacBuilderOrFromJson(<String, dynamic>{
          'builder': ZacBuilderOr.union,
          'value': map,
        });
      },
      orElse: () {
        return _$ZacBuilderOrFromJson(<String, dynamic>{
          'builder': ZacBuilderOr.unionBuiltIn,
          'value': data,
        });
      },
    );
  }

  @FreezedUnionValue(ZacBuilderOr.union)
  factory ZacBuilderOr(ZacBuilder<Object> value) = _ZacBuilderOr;

  @FreezedUnionValue(ZacBuilderOr.unionBuiltIn)
  factory ZacBuilderOr.builtIn(Object? value) = _ZacBuilderOrBuiltIn;
}
