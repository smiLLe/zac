import 'package:zac/src/zac/any_value.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zac/src/zac/update_context.dart';
import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:zac/src/base.dart';
import 'package:zac/src/flutter/foundation.dart';
import 'package:zac/src/flutter/rendering.dart';

part 'flexible.freezed.dart';
part 'flexible.g.dart';

@defaultConverterFreezed
class FlutterFlexible with _$FlutterFlexible implements ZacWidget {
  const FlutterFlexible._();

  static const String unionValue = 'f:1:Flexible';

  factory FlutterFlexible.fromJson(Map<String, dynamic> json) =>
      _$FlutterFlexibleFromJson(json);

  @FreezedUnionValue(FlutterFlexible.unionValue)
  factory FlutterFlexible({
    FlutterKey? key,
    ZacInt? flex,
    FlutterFlexFit? fit,
    required ZacWidget child,
  }) = _FlutterFlexible;

  @override
  Flexible buildWidget(
      BuildContext context, WidgetRef ref, ZacBuildContext zacContext) {
    return Flexible(
      key: key?.buildKey(context, ref, zacContext),
      child: child.buildWidget(context, ref, zacContext),
      flex: flex?.getValue(zacContext) ?? 1,
      fit: fit?.build(context, ref, zacContext) ?? FlexFit.loose,
    );
  }
}
