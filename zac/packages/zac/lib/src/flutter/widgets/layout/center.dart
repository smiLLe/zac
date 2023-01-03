import 'package:zac/src/zac/context.dart';
import 'package:zac/src/zac/zac_builder.dart';
import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:zac/src/base.dart';

part 'center.freezed.dart';
part 'center.g.dart';

@freezedZacBuilder
class FlutterCenter with _$FlutterCenter implements ZacBuilder<Center> {
  const FlutterCenter._();

  static const String unionValue = 'f:1:Center';

  factory FlutterCenter.fromJson(Map<String, dynamic> json) =>
      _$FlutterCenterFromJson(json);

  @FreezedUnionValue(FlutterCenter.unionValue)
  factory FlutterCenter({
    ZacBuilder<Key?>? key,
    ZacBuilder<double?>? widthFactor,
    ZacBuilder<double?>? heightFactor,
    ZacBuilder<Widget?>? child,
  }) = _FlutterCenter;

  Center _buildWidget(ZacContext zacContext) {
    return Center(
      key: key?.build(zacContext),
      widthFactor: widthFactor?.build(zacContext),
      heightFactor: heightFactor?.build(zacContext),
      child: child?.build(zacContext),
    );
  }

  @override
  Center build(ZacContext zacContext) {
    return _buildWidget(zacContext);
  }
}
