import 'package:zac/src/flutter/painting.dart';
import 'package:zac/src/zac/action.dart';
import 'package:zac/src/zac/any_value.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zac/src/zac/misc.dart';
import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:zac/src/base.dart';
import 'package:zac/src/flutter/foundation.dart';

part 'overflow_box.freezed.dart';
part 'overflow_box.g.dart';

@defaultConverterFreezed
class FlutterOverflowBox with _$FlutterOverflowBox implements ZacWidget {
  const FlutterOverflowBox._();

  static const String unionValue = 'f:1:OverflowBox';

  factory FlutterOverflowBox.fromJson(Map<String, dynamic> json) =>
      _$FlutterOverflowBoxFromJson(json);

  @FreezedUnionValue(FlutterOverflowBox.unionValue)
  factory FlutterOverflowBox({
    FlutterKey? key,
    FlutterAlignmentGeometry? alignment,
    ZacDouble? minWidth,
    ZacDouble? maxWidth,
    ZacDouble? minHeight,
    ZacDouble? maxHeight,
    ZacWidget? child,
  }) = _FlutterOverflowBox;

  @override
  OverflowBox buildWidget(
      BuildContext context, WidgetRef ref, ZacActionHelper helper) {
    final zacRef = ZacRef.widget(ref);
    return OverflowBox(
      key: key?.buildKey(context, ref, helper),
      alignment: alignment?.build(context, ref, helper) ?? Alignment.center,
      minWidth: minWidth?.getValue(zacRef),
      maxWidth: maxWidth?.getValue(zacRef),
      minHeight: minHeight?.getValue(zacRef),
      maxHeight: maxHeight?.getValue(zacRef),
      child: child?.buildWidget(context, ref, helper),
    );
  }
}
