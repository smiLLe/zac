import 'package:zac/src/zac/any_value/any_value.dart';

import 'package:zac/src/zac/context/widget_context.dart';
import 'package:zac/src/base.dart';
import 'package:zac/src/flutter/foundation/foundation.dart';
import 'package:zac/src/flutter/rendering/rendering.dart';
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
  ConstrainedBox buildWidget(ZacBuildContext context) {
    return ConstrainedBox(
      key: key?.build(context),
      constraints: constraints.build(context),
      child: child?.buildWidget(context),
    );
  }
}
