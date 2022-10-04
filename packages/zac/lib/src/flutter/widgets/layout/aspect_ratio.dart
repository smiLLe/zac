import 'package:zac/src/zac/interactions.dart';
import 'package:zac/src/zac/any_value.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zac/src/zac/misc.dart';
import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:zac/src/base.dart';
import 'package:zac/src/flutter/foundation.dart';

part 'aspect_ratio.freezed.dart';
part 'aspect_ratio.g.dart';

@defaultConverterFreezed
class FlutterAspectRatio with _$FlutterAspectRatio implements FlutterWidget {
  const FlutterAspectRatio._();

  static const String unionValue = 'f:1:AspectRatio';

  factory FlutterAspectRatio.fromJson(Map<String, dynamic> json) =>
      _$FlutterAspectRatioFromJson(json);

  @FreezedUnionValue(FlutterAspectRatio.unionValue)
  factory FlutterAspectRatio({
    FlutterKey? key,
    required ZacDouble aspectRatio,
    FlutterWidget? child,
  }) = _FlutterAspectRatio;

  @override
  AspectRatio buildWidget(
      BuildContext context, WidgetRef ref, ZacInteractionLifetime lifetime) {
    final zacRef = ZacRef.widget(ref);
    return AspectRatio(
      aspectRatio: aspectRatio.getValue(zacRef),
      key: key?.buildKey(context, ref, lifetime),
      child: child?.buildWidget(context, ref, lifetime),
    );
  }
}
