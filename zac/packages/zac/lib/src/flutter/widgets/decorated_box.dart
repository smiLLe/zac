import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:zac/src/base.dart';
import 'package:zac/src/zac/context.dart';
import 'package:zac/src/zac/zac_builder.dart';

part 'decorated_box.freezed.dart';
part 'decorated_box.g.dart';

@freezedZacBuilder
class FlutterDecoratedBox
    with _$FlutterDecoratedBox
    implements ZacBuilder<DecoratedBox> {
  const FlutterDecoratedBox._();

  static const String unionValue = 'f:1:DecoratedBox';

  factory FlutterDecoratedBox.fromJson(Map<String, dynamic> json) =>
      _$FlutterDecoratedBoxFromJson(json);

  @FreezedUnionValue(FlutterDecoratedBox.unionValue)
  factory FlutterDecoratedBox({
    ZacBuilder<Key?>? key,
    ZacBuilder<Widget?>? child,
    required ZacBuilder<Decoration> decoration,
    ZacBuilder<DecorationPosition?>? position,
  }) = _FlutterDecoratedBox;

  DecoratedBox _buildWidget(BuildContext context, ZacContext zacContext) {
    return DecoratedBox(
      key: key?.build(context, zacContext),
      decoration: decoration.build(context, zacContext),
      position:
          position?.build(context, zacContext) ?? DecorationPosition.background,
      child: child?.build(context, zacContext),
    );
  }

  @override
  DecoratedBox build(BuildContext context, ZacContext zacContext) {
    return _buildWidget(context, zacContext);
  }
}
