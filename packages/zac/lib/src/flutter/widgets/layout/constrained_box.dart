import 'package:zac/src/zac/interactions.dart';
import 'package:zac/src/zac/any_value.dart';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zac/src/zac/update_context.dart';
import 'package:zac/src/base.dart';
import 'package:zac/src/flutter/foundation.dart';
import 'package:zac/src/flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'constrained_box.freezed.dart';
part 'constrained_box.g.dart';

@defaultConverterFreezed
class FlutterConstrainedBox with _$FlutterConstrainedBox implements ZacWidget {
  const FlutterConstrainedBox._();

  static const String unionValue = 'f:1:ConstrainedBox';

  factory FlutterConstrainedBox.fromJson(Map<String, dynamic> json) =>
      _$FlutterConstrainedBoxFromJson(json);

  @FreezedUnionValue(FlutterConstrainedBox.unionValue)
  factory FlutterConstrainedBox({
    FlutterKey? key,
    required FlutterBoxConstraints constraints,
    ZacWidget? child,
  }) = _FlutterConstrainedBox;

  @override
  ConstrainedBox buildWidget(
      BuildContext context, WidgetRef ref, ZacInteractionLifetime lifetime) {
    return ConstrainedBox(
      key: key?.buildKey(context, ref, lifetime),
      constraints: constraints.build(context, ref, lifetime),
      child: child?.buildWidget(context, ref, lifetime),
    );
  }
}
