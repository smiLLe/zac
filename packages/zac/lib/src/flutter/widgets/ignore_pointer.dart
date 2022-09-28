import 'package:zac/src/zac/any_value.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zac/src/zac/misc.dart';
import 'package:zac/src/zac/update_context.dart';
import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:zac/src/base.dart';
import 'package:zac/src/flutter/foundation.dart';

part 'ignore_pointer.freezed.dart';
part 'ignore_pointer.g.dart';

@defaultConverterFreezed
class FlutterIgnorePointer with _$FlutterIgnorePointer implements ZacWidget {
  const FlutterIgnorePointer._();

  static const String unionValue = 'f:1:IgnorePointer';

  factory FlutterIgnorePointer.fromJson(Map<String, dynamic> json) =>
      _$FlutterIgnorePointerFromJson(json);

  @FreezedUnionValue(FlutterIgnorePointer.unionValue)
  factory FlutterIgnorePointer({
    FlutterKey? key,
    ZacBool? ignoring,
    ZacBool? ignoringSemantics,
    ZacWidget? child,
  }) = _FlutterIgnorePointer;

  @override
  IgnorePointer buildWidget(
      BuildContext context, WidgetRef ref, ZacBuildContext zacContext) {
    final zacRef = ZacRef.widget(ref);
    return IgnorePointer(
      key: key?.buildKey(context, ref, zacContext),
      ignoring: ignoring?.getValue(zacRef) ?? true,
      ignoringSemantics: ignoringSemantics?.getValue(zacRef),
      child: child?.buildWidget(context, ref, zacContext),
    );
  }
}
