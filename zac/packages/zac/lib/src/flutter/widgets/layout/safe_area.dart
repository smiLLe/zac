import 'package:zac/src/zac/context.dart';
import 'package:zac/src/zac/zac_builder.dart';
import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:zac/src/base.dart';

part 'safe_area.freezed.dart';
part 'safe_area.g.dart';

@freezedZacBuilder
class FlutterSafeArea with _$FlutterSafeArea implements ZacBuilder<SafeArea> {
  const FlutterSafeArea._();

  static const String unionValue = 'f:1:SafeArea';

  factory FlutterSafeArea.fromJson(Map<String, dynamic> json) =>
      _$FlutterSafeAreaFromJson(json);

  @FreezedUnionValue(FlutterSafeArea.unionValue)
  factory FlutterSafeArea({
    ZacBuilder<Key?>? key,
    ZacBuilder<bool?>? left,
    ZacBuilder<bool?>? top,
    ZacBuilder<bool?>? right,
    ZacBuilder<bool?>? bottom,
    ZacBuilder<EdgeInsets?>? minimum,
    ZacBuilder<bool?>? maintainBottomViewPadding,
    required ZacBuilder<Widget> child,
  }) = _FlutterSafeArea;

  SafeArea _buildWidget(BuildContext context, ZacContext zacContext) {
    return SafeArea(
      key: key?.build(context, zacContext),
      left: left?.build(context, zacContext) ?? true,
      top: top?.build(context, zacContext) ?? true,
      right: right?.build(context, zacContext) ?? true,
      bottom: bottom?.build(context, zacContext) ?? true,
      minimum: minimum?.build(context, zacContext) ?? EdgeInsets.zero,
      maintainBottomViewPadding:
          maintainBottomViewPadding?.build(context, zacContext) ?? false,
      child: child.build(context, zacContext),
    );
  }

  @override
  SafeArea build(BuildContext context, ZacContext zacContext) {
    return _buildWidget(context, zacContext);
  }
}
