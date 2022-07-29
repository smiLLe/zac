import 'package:zac/src/zac/any_value/any_value.dart';

import 'package:zac/src/zac/context/widget_context.dart';
import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:zac/src/base.dart';
import 'package:zac/src/flutter/foundation/foundation.dart';

part 'center.freezed.dart';
part 'center.g.dart';

@defaultConverterFreezed
class FlutterCenter with _$FlutterCenter implements ZacWidget {
  const FlutterCenter._();

  static const String unionValue = 'f:1:Center';

  factory FlutterCenter.fromJson(Map<String, dynamic> json) =>
      _$FlutterCenterFromJson(json);

  @FreezedUnionValue(FlutterCenter.unionValue)
  factory FlutterCenter({
    FlutterKey? key,
    ZacDouble? widthFactor,
    ZacDouble? heightFactor,
    ZacWidget? child,
  }) = _FlutterCenter;

  @override
  Center buildWidget(ZacBuildContext context) {
    return Center(
      key: key?.buildKey(context),
      widthFactor: widthFactor?.getValue(context),
      heightFactor: heightFactor?.getValue(context),
      child: child?.buildWidget(context),
    );
  }
}
