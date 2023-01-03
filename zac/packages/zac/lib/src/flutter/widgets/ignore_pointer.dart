import 'package:zac/src/zac/context.dart';
import 'package:zac/src/zac/zac_builder.dart';
import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:zac/src/base.dart';
part 'ignore_pointer.freezed.dart';
part 'ignore_pointer.g.dart';

@freezedZacBuilder
class FlutterIgnorePointer
    with _$FlutterIgnorePointer
    implements ZacBuilder<IgnorePointer> {
  const FlutterIgnorePointer._();

  static const String unionValue = 'f:1:IgnorePointer';

  factory FlutterIgnorePointer.fromJson(Map<String, dynamic> json) =>
      _$FlutterIgnorePointerFromJson(json);

  @FreezedUnionValue(FlutterIgnorePointer.unionValue)
  factory FlutterIgnorePointer({
    ZacBuilder<Key?>? key,
    ZacBuilder<bool?>? ignoring,
    ZacBuilder<bool?>? ignoringSemantics,
    ZacBuilder<Widget?>? child,
  }) = _FlutterIgnorePointer;

  IgnorePointer _buildWidget(ZacContext zacContext) {
    return IgnorePointer(
      key: key?.build(zacContext),
      ignoring: ignoring?.build(zacContext) ?? true,
      ignoringSemantics: ignoringSemantics?.build(zacContext),
      child: child?.build(zacContext),
    );
  }

  @override
  IgnorePointer build(ZacContext zacContext) {
    return _buildWidget(zacContext);
  }
}
