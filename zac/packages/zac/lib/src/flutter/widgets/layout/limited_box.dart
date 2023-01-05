import 'package:zac/src/zac/context.dart';
import 'package:zac/src/zac/zac_builder.dart';
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

  LimitedBox _buildWidget(BuildContext context, ZacContext zacContext) {
    return LimitedBox(
      key: key?.build(context, zacContext),
      maxHeight: maxHeight?.build(context, zacContext) ?? double.infinity,
      maxWidth: maxWidth?.build(context, zacContext) ?? double.infinity,
      child: child?.build(context, zacContext),
    );
  }

  @override
  LimitedBox build(BuildContext context, ZacContext zacContext) {
    return _buildWidget(context, zacContext);
  }
}
