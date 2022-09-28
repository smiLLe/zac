import 'package:zac/src/zac/any_value.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:zac/src/zac/update_context.dart';
import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:zac/src/base.dart';
import 'package:zac/src/flutter/dart_ui.dart';
import 'package:zac/src/flutter/foundation.dart';
import 'package:zac/src/flutter/painting.dart';

part 'fitted_box.freezed.dart';
part 'fitted_box.g.dart';

@defaultConverterFreezed
class FlutterFittedBox with _$FlutterFittedBox implements ZacWidget {
  const FlutterFittedBox._();

  static const String unionValue = 'f:1:FittedBox';

  factory FlutterFittedBox.fromJson(Map<String, dynamic> json) =>
      _$FlutterFittedBoxFromJson(json);

  @FreezedUnionValue(FlutterFittedBox.unionValue)
  factory FlutterFittedBox({
    FlutterKey? key,
    FlutterBoxFit? fit,
    FlutterAlignmentGeometry? alignment,
    FlutterClip? clipBehavior,
    ZacWidget? child,
  }) = _FlutterFittedBox;

  @override
  FittedBox buildWidget(
      BuildContext context, WidgetRef ref, ZacBuildContext zacContext) {
    return FittedBox(
      key: key?.buildKey(context, ref, zacContext),
      fit: fit?.build(context, ref, zacContext) ?? BoxFit.contain,
      alignment: alignment?.build(context, ref, zacContext) ?? Alignment.center,
      clipBehavior: clipBehavior?.build(context, ref, zacContext) ?? Clip.none,
      child: child?.buildWidget(context, ref, zacContext),
    );
  }
}
