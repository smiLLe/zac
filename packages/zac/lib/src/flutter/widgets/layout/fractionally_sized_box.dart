import 'package:zac/src/flutter/painting.dart';
import 'package:zac/src/zac/any_value.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zac/src/zac/update_context.dart';
import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:zac/src/base.dart';
import 'package:zac/src/flutter/foundation.dart';

part 'fractionally_sized_box.freezed.dart';
part 'fractionally_sized_box.g.dart';

@defaultConverterFreezed
class FlutterFractionallySizedBox
    with _$FlutterFractionallySizedBox
    implements ZacWidget {
  const FlutterFractionallySizedBox._();

  static const String unionValue = 'f:1:FractionallySizedBox';

  factory FlutterFractionallySizedBox.fromJson(Map<String, dynamic> json) =>
      _$FlutterFractionallySizedBoxFromJson(json);

  @FreezedUnionValue(FlutterFractionallySizedBox.unionValue)
  factory FlutterFractionallySizedBox({
    FlutterKey? key,
    ZacWidget? child,
    FlutterAlignmentGeometry? alignment,
    ZacDouble? widthFactor,
    ZacDouble? heightFactor,
  }) = _FlutterFractionallySizedBox;

  @override
  FractionallySizedBox buildWidget(
      BuildContext context, WidgetRef ref, ZacBuildContext zacContext) {
    return FractionallySizedBox(
      key: key?.buildKey(context, ref, zacContext),
      child: child?.buildWidget(context, ref, zacContext),
      heightFactor: heightFactor?.getValue(zacContext),
      widthFactor: widthFactor?.getValue(zacContext),
      alignment: alignment?.build(context, ref, zacContext) ?? Alignment.center,
    );
  }
}
