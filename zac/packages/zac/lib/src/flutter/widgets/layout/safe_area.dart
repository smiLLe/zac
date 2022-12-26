import 'package:zac/src/flutter/painting.dart';
import 'package:zac/src/zac/context.dart';
import 'package:zac/src/zac/zac_builder.dart';
import 'package:zac/src/zac/zac_value.dart';
import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:zac/src/base.dart';

part 'safe_area.freezed.dart';
part 'safe_area.g.dart';

@freezedZacBuilder
@ZacGenerate(order: zacGenerateOrderFlutterWidget)
class FlutterSafeArea with _$FlutterSafeArea implements ZacBuild<SafeArea> {
  const FlutterSafeArea._();

  static const String unionValue = 'f:1:SafeArea';

  factory FlutterSafeArea.fromJson(Map<String, dynamic> json) =>
      _$FlutterSafeAreaFromJson(json);

  @FreezedUnionValue(FlutterSafeArea.unionValue)
  factory FlutterSafeArea({
    ZacValue<Key?>? key,
    ZacValue<bool?>? left,
    ZacValue<bool?>? top,
    ZacValue<bool?>? right,
    ZacValue<bool?>? bottom,
    ZacValue<EdgeInsets?>? minimum,
    ZacValue<bool?>? maintainBottomViewPadding,
    required ZacValue<Widget> child,
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
