import 'package:zac/src/zac/any_value.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zac/src/zac/misc.dart';
import 'package:zac/src/zac/update_context.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:zac/src/base.dart';
import 'package:zac/src/flutter/dart_ui.dart';
import 'package:zac/src/flutter/foundation.dart';

part 'divider.freezed.dart';
part 'divider.g.dart';

@defaultConverterFreezed
class FlutterDivider with _$FlutterDivider implements ZacWidget {
  const FlutterDivider._();

  static const String unionValue = 'f:1:Divider';

  factory FlutterDivider.fromJson(Map<String, dynamic> json) =>
      _$FlutterDividerFromJson(json);

  @FreezedUnionValue(FlutterDivider.unionValue)
  factory FlutterDivider({
    FlutterKey? key,
    ZacDouble? height,
    ZacDouble? thickness,
    ZacDouble? indent,
    ZacDouble? endIndent,
    FlutterColor? color,
  }) = _FlutterDivider;

  @override
  Divider buildWidget(
      BuildContext context, WidgetRef ref, ZacBuildContext zacContext) {
    final zacRef = ZacRef.widget(ref);
    return Divider(
      key: key?.buildKey(context, ref, zacContext),
      height: height?.getValue(zacRef),
      thickness: thickness?.getValue(zacRef),
      indent: indent?.getValue(zacRef),
      endIndent: endIndent?.getValue(zacRef),
      color: color?.build(context, ref, zacContext),
    );
  }
}
