import 'package:zac/src/zac/context.dart';

import 'package:zac/src/zac/update_widget.dart';
import 'package:zac/src/base.dart';
import 'package:zac/src/flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:zac/src/zac/zac_builder.dart';
import 'package:zac/src/zac/zac_value.dart';

part 'builder.freezed.dart';
part 'builder.g.dart';

@freezedZacBuilder
@ZacGenerate(order: zacGenerateOrderFlutterWidget)
class FlutterBuilder with _$FlutterBuilder implements ZacBuild<Builder> {
  const FlutterBuilder._();

  static const String unionValue = 'f:1:Builder';

  factory FlutterBuilder.fromJson(Map<String, dynamic> json) =>
      _$FlutterBuilderFromJson(json);

  @FreezedUnionValue(FlutterBuilder.unionValue)
  factory FlutterBuilder({
    ZacValue<Key?>? key,
    required ZacValue<Widget> child,
  }) = _FlutterBuilder;

  Widget _builder(ZacContext zacContext) => child.build(zacContext);

  Builder _buildWidget(ZacContext zacContext) {
    return Builder(
      key: key?.build(zacContext),
      builder: (_) {
        return ZacUpdateContext(
          builder: _builder,
        );
      },
    );
  }

  @override
  Builder build(ZacContext zacContext) {
    return _buildWidget(zacContext);
  }
}
