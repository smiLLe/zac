import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:zac/src/base.dart';
import 'package:zac/src/zac/context.dart';
import 'package:zac/src/zac/zac_build.dart';
import 'package:zac/src/zac/zac_value.dart';

part 'decorated_box.freezed.dart';
part 'decorated_box.g.dart';

@freezedZacBuilder
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
    ZacValue<DecorationPosition?>? position,
  }) = _FlutterDecoratedBox;

  DecoratedBox _buildWidget(ZacContext zacContext) {
    return DecoratedBox(
      key: key?.getValue(zacContext),
      decoration: decoration.getValue(zacContext),
      position: position?.getValue(zacContext) ?? DecorationPosition.background,
      child: child?.getValue(zacContext),
    );
  }

  @override
  DecoratedBox build(ZacContext zacContext) {
    return _buildWidget(zacContext);
  }
}
