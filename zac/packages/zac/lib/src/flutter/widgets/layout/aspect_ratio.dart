import 'package:zac/src/zac/context.dart';
import 'package:zac/src/zac/zac_build.dart';
import 'package:zac/src/zac/zac_value.dart';
import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:zac/src/base.dart';

part 'aspect_ratio.freezed.dart';
part 'aspect_ratio.g.dart';

@freezedZacBuilder
class FlutterAspectRatio
    with _$FlutterAspectRatio
    implements ZacBuild<AspectRatio> {
  const FlutterAspectRatio._();

  static const String unionValue = 'f:1:AspectRatio';

  factory FlutterAspectRatio.fromJson(Map<String, dynamic> json) =>
      _$FlutterAspectRatioFromJson(json);

  @FreezedUnionValue(FlutterAspectRatio.unionValue)
  factory FlutterAspectRatio({
    ZacValue<Key?>? key,
    required ZacValue<double> aspectRatio,
    ZacValue<Widget?>? child,
  }) = _FlutterAspectRatio;

  AspectRatio _buildWidget(ZacContext zacContext) {
    return AspectRatio(
      aspectRatio: aspectRatio.getValue(zacContext),
      key: key?.getValue(zacContext),
      child: child?.getValue(zacContext),
    );
  }

  @override
  AspectRatio build(ZacContext zacContext) {
    return _buildWidget(zacContext);
  }
}
