import 'package:zac/src/base.dart';
import 'package:zac/src/flutter/foundation.dart';
import 'package:zac/src/flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:zac/src/zac/origin.dart';

part 'constrained_box.freezed.dart';
part 'constrained_box.g.dart';

@defaultConverterFreezed
class FlutterConstrainedBox
    with _$FlutterConstrainedBox
    implements FlutterWidget {
  const FlutterConstrainedBox._();

  static const String unionValue = 'f:1:ConstrainedBox';

  factory FlutterConstrainedBox.fromJson(Map<String, dynamic> json) =>
      _$FlutterConstrainedBoxFromJson(json);

  @FreezedUnionValue(FlutterConstrainedBox.unionValue)
  factory FlutterConstrainedBox({
    FlutterKey? key,
    required FlutterBoxConstraints constraints,
    FlutterWidget? child,
  }) = _FlutterConstrainedBox;

  @override
  ConstrainedBox buildWidget(ZacContext zacContext) {
    return ConstrainedBox(
      key: key?.buildKey(zacContext),
      constraints: constraints.build(zacContext),
      child: child?.buildWidget(zacContext),
    );
  }
}
