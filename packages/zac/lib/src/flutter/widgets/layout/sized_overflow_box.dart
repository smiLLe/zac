import 'package:zac/src/flutter/painting.dart';
import 'package:zac/src/zac/any_value.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zac/src/zac/update_context.dart';
import 'package:zac/src/base.dart';
import 'package:zac/src/flutter/dart_ui.dart';
import 'package:zac/src/flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'sized_overflow_box.freezed.dart';
part 'sized_overflow_box.g.dart';

@defaultConverterFreezed
class FlutterSizedOverflowBox
    with _$FlutterSizedOverflowBox
    implements ZacWidget {
  const FlutterSizedOverflowBox._();

  static const String unionValue = 'f:1:SizedOverflowBox';

  factory FlutterSizedOverflowBox.fromJson(Map<String, dynamic> json) =>
      _$FlutterSizedOverflowBoxFromJson(json);

  @FreezedUnionValue(FlutterSizedOverflowBox.unionValue)
  factory FlutterSizedOverflowBox({
    FlutterKey? key,
    required FlutterSize size,
    FlutterAlignmentGeometry? alignment,
    ZacWidget? child,
  }) = _FlutterSizedOverflowBox;

  @override
  SizedOverflowBox buildWidget(
      BuildContext context, WidgetRef ref, ZacBuildContext zacContext) {
    return SizedOverflowBox(
      key: key?.buildKey(context, ref, zacContext),
      size: size.build(context, ref, zacContext),
      alignment: alignment?.build(context, ref, zacContext) ?? Alignment.center,
      child: child?.buildWidget(context, ref, zacContext),
    );
  }
}
