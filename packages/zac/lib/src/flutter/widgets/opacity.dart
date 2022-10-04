import 'package:zac/src/zac/interactions.dart';
import 'package:zac/src/zac/any_value.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zac/src/zac/misc.dart';
import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:zac/src/base.dart';
import 'package:zac/src/flutter/foundation.dart';

part 'opacity.freezed.dart';
part 'opacity.g.dart';

@defaultConverterFreezed
class FlutterOpacity with _$FlutterOpacity implements FlutterWidget {
  const FlutterOpacity._();

  static const String unionValue = 'f:1:Opacity';

  factory FlutterOpacity.fromJson(Map<String, dynamic> json) =>
      _$FlutterOpacityFromJson(json);

  @FreezedUnionValue(FlutterOpacity.unionValue)
  factory FlutterOpacity({
    FlutterKey? key,
    required ZacDouble opacity,
    ZacBool? alwaysIncludeSemantics,
    FlutterWidget? child,
  }) = _FlutterOpacity;

  @override
  Opacity buildWidget(
      BuildContext context, WidgetRef ref, ZacInteractionLifetime lifetime) {
    final zacRef = ZacRef.widget(ref);
    return Opacity(
      key: key?.buildKey(context, ref, lifetime),
      opacity: opacity.getValue(zacRef),
      alwaysIncludeSemantics: alwaysIncludeSemantics?.getValue(zacRef) ?? false,
      child: child?.buildWidget(context, ref, lifetime),
    );
  }
}
