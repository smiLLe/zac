import 'package:zac/src/flutter/painting.dart';
import 'package:zac/src/zac/interactions.dart';
import 'package:zac/src/zac/zac_values.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:zac/src/base.dart';
import 'package:zac/src/flutter/foundation.dart';
import 'package:zac/src/flutter/rendering.dart';

part 'decorated_box.freezed.dart';
part 'decorated_box.g.dart';

@defaultConverterFreezed
class FlutterDecoratedBox with _$FlutterDecoratedBox implements FlutterWidget {
  const FlutterDecoratedBox._();

  static const String unionValue = 'f:1:DecoratedBox';

  factory FlutterDecoratedBox.fromJson(Map<String, dynamic> json) =>
      _$FlutterDecoratedBoxFromJson(json);

  @FreezedUnionValue(FlutterDecoratedBox.unionValue)
  factory FlutterDecoratedBox({
    FlutterKey? key,
    FlutterWidget? child,
    required FlutterDecoration decoration,
    FlutterDecorationPosition? position,
  }) = _FlutterDecoratedBox;

  @override
  DecoratedBox buildWidget(
      BuildContext context, WidgetRef ref, ZacInteractionLifetime lifetime) {
    return DecoratedBox(
      key: key?.buildKey(context, ref, lifetime),
      child: child?.buildWidget(context, ref, lifetime),
      decoration: decoration.build(context, ref, lifetime),
      position: position?.build(context, ref, lifetime) ??
          DecorationPosition.background,
    );
  }
}
