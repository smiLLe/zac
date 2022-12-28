import 'package:zac/src/zac/context.dart';
import 'package:zac/src/zac/zac_build.dart';
import 'package:zac/src/zac/zac_value.dart';
import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:zac/src/base.dart';

part 'limited_box.freezed.dart';
part 'limited_box.g.dart';

@freezedZacBuilder
class FlutterLimitedBox
    with _$FlutterLimitedBox
    implements ZacBuilder<LimitedBox> {
  const FlutterLimitedBox._();

  static const String unionValue = 'f:1:LimitedBox';

  factory FlutterLimitedBox.fromJson(Map<String, dynamic> json) =>
      _$FlutterLimitedBoxFromJson(json);

  @FreezedUnionValue(FlutterLimitedBox.unionValue)
  factory FlutterLimitedBox({
    ZacBuilder<Key?>? key,
    ZacBuilder<double?>? maxWidth,
    ZacBuilder<double?>? maxHeight,
    ZacBuilder<Widget?>? child,
  }) = _FlutterLimitedBox;

  LimitedBox _buildWidget(ZacContext zacContext) {
    return LimitedBox(
      key: key?.build(zacContext),
      maxHeight: maxHeight?.build(zacContext) ?? double.infinity,
      maxWidth: maxWidth?.build(zacContext) ?? double.infinity,
      child: child?.build(zacContext),
    );
  }

  @override
  LimitedBox build(ZacContext zacContext) {
    return _buildWidget(zacContext);
  }
}
