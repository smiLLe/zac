import 'package:zac/src/zac/any_value.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:zac/src/zac/update_context.dart';
import 'package:zac/src/base.dart';
import 'package:zac/src/flutter/foundation.dart';
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
  Builder buildWidget(
      BuildContext context, WidgetRef ref, ZacBuildContext zacContext) {
    return Builder(
      key: key?.buildKey(context, ref, zacContext),
      builder: (_) {
        return ZacUpdateContext(
          builder: (context) =>
              child.buildWidget(context.context, ref, context),
        );
      },
    );
  }
}
