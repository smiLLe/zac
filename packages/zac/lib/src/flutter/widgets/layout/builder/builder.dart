import 'package:zac/src/zac/any_value/any_value.dart';

import 'package:zac/src/zac/context/widget_context.dart';
import 'package:zac/src/base.dart';
import 'package:zac/src/flutter/mixed/keys/keys.dart';
import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'builder.freezed.dart';
part 'builder.g.dart';

@defaultConverterFreezed
class FlutterBuilder with _$FlutterBuilder implements ZacWidget {
  const FlutterBuilder._();

  static const String unionValue = 'f:1:Builder';

  factory FlutterBuilder.fromJson(Map<String, dynamic> json) =>
      _$FlutterBuilderFromJson(json);

  @FreezedUnionValue(FlutterBuilder.unionValue)
  factory FlutterBuilder({
    FlutterKey? key,
    required ZacWidget child,
  }) = _FlutterBuilder;

  @override
  Builder buildWidget(ZacBuildContext context) {
    return Builder(
      key: key?.build(context),
      builder: (_) {
        return UpdateContextBuilder(
          builder: (context) => child.buildWidget(context),
        );
      },
    );
  }
}
