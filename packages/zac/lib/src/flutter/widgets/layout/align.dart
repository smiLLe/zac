import 'package:zac/src/flutter/painting.dart';
import 'package:zac/src/zac/action.dart';
import 'package:zac/src/zac/any_value.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zac/src/zac/misc.dart';
import 'package:zac/src/base.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:zac/src/flutter/foundation.dart';

part 'align.freezed.dart';
part 'align.g.dart';

@defaultConverterFreezed
class FlutterAlign with _$FlutterAlign implements ZacWidget {
  const FlutterAlign._();

  static const String unionValue = 'f:1:Align';

  factory FlutterAlign.fromJson(Map<String, dynamic> json) =>
      _$FlutterAlignFromJson(json);

  @FreezedUnionValue(FlutterAlign.unionValue)
  factory FlutterAlign({
    FlutterKey? key,
    FlutterAlignmentGeometry? alignment,
    ZacDouble? widthFactor,
    ZacDouble? heightFactor,
    // @ZacWidgetNullableConverter() ZacWidget? child,
    ZacWidget? child,
  }) = _FlutterAlign;

  @override
  Align buildWidget(
      BuildContext context, WidgetRef ref, ZacActionHelper helper) {
    final zacRef = ZacRef.widget(ref);
    return Align(
      key: key?.buildKey(context, ref, helper),
      alignment: alignment?.build(context, ref, helper) ?? Alignment.center,
      widthFactor: widthFactor?.getValue(zacRef),
      heightFactor: heightFactor?.getValue(zacRef),
      // child: child?.buildWidget(context, ref, helper),
      child: child?.buildWidget(context, ref, helper),
    );
  }
}
