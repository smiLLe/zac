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

  SafeArea _buildWidget(ZacContext zacContext) {
    return SafeArea(
      key: key?.build(zacContext),
      left: left?.build(zacContext) ?? true,
      top: top?.build(zacContext) ?? true,
      right: right?.build(zacContext) ?? true,
      bottom: bottom?.build(zacContext) ?? true,
      minimum: minimum?.build(zacContext) ?? EdgeInsets.zero,
      maintainBottomViewPadding:
          maintainBottomViewPadding?.build(zacContext) ?? false,
      child: child.build(zacContext),
    );
  }

  @override
  SafeArea build(ZacContext zacContext) {
    return _buildWidget(zacContext);
  }
}
