import 'package:zac/src/zac/interactions.dart';
import 'package:zac/src/zac/zac_values.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zac/src/zac/misc.dart';
import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:zac/src/base.dart';
import 'package:zac/src/flutter/foundation.dart';

part 'center.freezed.dart';
part 'center.g.dart';

@defaultConverterFreezed
class FlutterCenter with _$FlutterCenter implements FlutterWidget {
  const FlutterCenter._();

  static const String unionValue = 'f:1:Center';

  factory FlutterCenter.fromJson(Map<String, dynamic> json) =>
      _$FlutterCenterFromJson(json);

  @FreezedUnionValue(FlutterCenter.unionValue)
  factory FlutterCenter({
    FlutterKey? key,
    ZacDouble? widthFactor,
    ZacDouble? heightFactor,
    FlutterWidget? child,
  }) = _FlutterCenter;

  @override
  Center buildWidget(
      BuildContext context, WidgetRef ref, ZacInteractionLifetime lifetime) {
    final zacRef = ZacRef.widget(ref);
    return Center(
      key: key?.buildKey(context, ref, lifetime),
      widthFactor: widthFactor?.getValue(zacRef),
      heightFactor: heightFactor?.getValue(zacRef),
      child: child?.buildWidget(context, ref, lifetime),
    );
  }
}
