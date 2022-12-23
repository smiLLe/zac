import 'package:zac/src/base.dart';
import 'package:zac/src/flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:zac/src/zac/context.dart';
import 'package:zac/src/zac/zac_builder.dart';
import 'package:zac/src/zac/zac_value.dart';

part 'constrained_box.freezed.dart';
part 'constrained_box.g.dart';

@freezedZacBuilder
@ZacGenerate(order: zacGenerateOrderFlutterWidget)
class FlutterConstrainedBox
    with _$FlutterConstrainedBox
    implements ZacBuilder<ConstrainedBox> {
  const FlutterConstrainedBox._();

  static const String unionValue = 'f:1:ConstrainedBox';

  factory FlutterConstrainedBox.fromJson(Map<String, dynamic> json) =>
      _$FlutterConstrainedBoxFromJson(json);

  @FreezedUnionValue(FlutterConstrainedBox.unionValue)
  factory FlutterConstrainedBox({
    ZacValue<Key?>? key,
    required ZacValue<BoxConstraints> constraints,
    ZacValue<Widget?>? child,
  }) = _FlutterConstrainedBox;

  ConstrainedBox _buildWidget(ZacContext zacContext) {
    return ConstrainedBox(
      key: key?.build(zacContext),
      constraints: constraints.build(zacContext),
      child: child?.build(zacContext),
    );
  }

  @override
  ConstrainedBox build(ZacContext zacContext) {
    return _buildWidget(zacContext);
  }
}
