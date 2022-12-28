import 'package:zac/src/zac/context.dart';
import 'package:zac/src/zac/zac_build.dart';
import 'package:zac/src/zac/zac_value.dart';
import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:zac/src/base.dart';

part 'center.freezed.dart';
part 'center.g.dart';

@freezedZacBuilder
class FlutterCenter with _$FlutterCenter implements ZacBuild<Center> {
  const FlutterCenter._();

  static const String unionValue = 'f:1:Center';

  factory FlutterCenter.fromJson(Map<String, dynamic> json) =>
      _$FlutterCenterFromJson(json);

  @FreezedUnionValue(FlutterCenter.unionValue)
  factory FlutterCenter({
    ZacValue<Key?>? key,
    ZacValue<double?>? widthFactor,
    ZacValue<double?>? heightFactor,
    ZacValue<Widget?>? child,
  }) = _FlutterCenter;

  Center _buildWidget(ZacContext zacContext) {
    return Center(
      key: key?.getValue(zacContext),
      widthFactor: widthFactor?.getValue(zacContext),
      heightFactor: heightFactor?.getValue(zacContext),
      child: child?.getValue(zacContext),
    );
  }

  @override
  Center build(ZacContext zacContext) {
    return _buildWidget(zacContext);
  }
}
