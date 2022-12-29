import 'package:zac/src/base.dart';
import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:zac/src/zac/context.dart';
import 'package:zac/src/zac/zac_build.dart';

part 'constrained_box.freezed.dart';
part 'constrained_box.g.dart';

@freezedZacBuilder
class FlutterConstrainedBox
    with _$FlutterConstrainedBox
    implements ZacBuilder<ConstrainedBox> {
  const FlutterConstrainedBox._();

  static const String unionValue = 'f:1:ConstrainedBox';

  factory FlutterConstrainedBox.fromJson(Map<String, dynamic> json) =>
      _$FlutterConstrainedBoxFromJson(json);

  @FreezedUnionValue(FlutterConstrainedBox.unionValue)
  factory FlutterConstrainedBox({
    ZacBuilder<Key?>? key,
    required ZacBuilder<BoxConstraints> constraints,
    ZacBuilder<Widget?>? child,
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
