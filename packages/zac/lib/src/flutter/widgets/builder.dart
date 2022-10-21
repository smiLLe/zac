import 'package:zac/src/zac/context.dart';

import 'package:zac/src/zac/update_widget.dart';
import 'package:zac/src/base.dart';
import 'package:zac/src/flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'builder.freezed.dart';
part 'builder.g.dart';

@defaultConverterFreezed
class FlutterBuilder with _$FlutterBuilder implements FlutterWidget {
  const FlutterBuilder._();

  static const String unionValue = 'f:1:Builder';

  factory FlutterBuilder.fromJson(Map<String, dynamic> json) =>
      _$FlutterBuilderFromJson(json);

  @FreezedUnionValue(FlutterBuilder.unionValue)
  factory FlutterBuilder({
    FlutterKey? key,
    required FlutterWidget child,
  }) = _FlutterBuilder;

  @override
  Builder buildWidget(ZacContext zacContext) {
    return Builder(
      key: key?.buildKey(zacContext),
      builder: (_) {
        return ZacUpdateContext(
          builder: child.buildWidget,
        );
      },
    );
  }
}
