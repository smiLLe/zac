import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:zac/src/base.dart';
import 'package:zac/src/flutter/rendering.dart';
import 'package:zac/src/zac/context.dart';
import 'package:zac/src/zac/zac_builder.dart';
import 'package:zac/src/zac/zac_value.dart';

part 'decorated_box.freezed.dart';
part 'decorated_box.g.dart';

@freezedZacBuilder
@ZacGenerate(order: zacGenerateOrderFlutterWidget)
class FlutterDecoratedBox
    with _$FlutterDecoratedBox
    implements ZacBuild<DecoratedBox> {
  const FlutterDecoratedBox._();

  static const String unionValue = 'f:1:DecoratedBox';

  factory FlutterDecoratedBox.fromJson(Map<String, dynamic> json) =>
      _$FlutterDecoratedBoxFromJson(json);

  @FreezedUnionValue(FlutterDecoratedBox.unionValue)
  factory FlutterDecoratedBox({
    ZacValue<Key?>? key,
    ZacValue<Widget?>? child,
    required ZacValue<Decoration> decoration,
    FlutterDecorationPosition? position,
  }) = _FlutterDecoratedBox;

  DecoratedBox _buildWidget(ZacContext zacContext) {
    return DecoratedBox(
      key: key?.build(zacContext),
      decoration: decoration.build(zacContext),
      position: position?.build(zacContext) ?? DecorationPosition.background,
      child: child?.build(zacContext),
    );
  }

  @override
  DecoratedBox build(ZacContext zacContext) {
    return _buildWidget(zacContext);
  }
}
