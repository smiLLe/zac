import 'package:zac/src/zac/interactions.dart';
import 'package:zac/src/zac/zac_values.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zac/src/zac/misc.dart';
import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:zac/src/base.dart';
import 'package:zac/src/flutter/foundation.dart';

part 'limited_box.freezed.dart';
part 'limited_box.g.dart';

@defaultConverterFreezed
class FlutterLimitedBox with _$FlutterLimitedBox implements FlutterWidget {
  const FlutterLimitedBox._();

  static const String unionValue = 'f:1:LimitedBox';

  factory FlutterLimitedBox.fromJson(Map<String, dynamic> json) =>
      _$FlutterLimitedBoxFromJson(json);

  @FreezedUnionValue(FlutterLimitedBox.unionValue)
  factory FlutterLimitedBox({
    FlutterKey? key,
    ZacDouble? maxWidth,
    ZacDouble? maxHeight,
    FlutterWidget? child,
  }) = _FlutterLimitedBox;

  @override
  LimitedBox buildWidget(
      BuildContext context, WidgetRef ref, ZacInteractionLifetime lifetime) {
    final zacRef = ZacRef.widget(ref);
    return LimitedBox(
      key: key?.buildKey(context, ref, lifetime),
      child: child?.buildWidget(context, ref, lifetime),
      maxHeight: maxHeight?.getValue(zacRef) ?? double.infinity,
      maxWidth: maxWidth?.getValue(zacRef) ?? double.infinity,
    );
  }
}
