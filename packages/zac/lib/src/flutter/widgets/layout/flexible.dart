import 'package:zac/src/zac/interactions.dart';
import 'package:zac/src/zac/any_value.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zac/src/zac/misc.dart';
import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:zac/src/base.dart';
import 'package:zac/src/flutter/foundation.dart';
import 'package:zac/src/flutter/rendering.dart';

part 'flexible.freezed.dart';
part 'flexible.g.dart';

@defaultConverterFreezed
class FlutterFlexible with _$FlutterFlexible implements FlutterWidget {
  const FlutterFlexible._();

  static const String unionValue = 'f:1:Flexible';

  factory FlutterFlexible.fromJson(Map<String, dynamic> json) =>
      _$FlutterFlexibleFromJson(json);

  @FreezedUnionValue(FlutterFlexible.unionValue)
  factory FlutterFlexible({
    FlutterKey? key,
    ZacInt? flex,
    FlutterFlexFit? fit,
    required FlutterWidget child,
  }) = _FlutterFlexible;

  @override
  Flexible buildWidget(
      BuildContext context, WidgetRef ref, ZacInteractionLifetime lifetime) {
    final zacRef = ZacRef.widget(ref);
    return Flexible(
      key: key?.buildKey(context, ref, lifetime),
      child: child.buildWidget(context, ref, lifetime),
      flex: flex?.getValue(zacRef) ?? 1,
      fit: fit?.build(context, ref, lifetime) ?? FlexFit.loose,
    );
  }
}
