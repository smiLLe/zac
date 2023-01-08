import 'package:flutter/src/widgets/framework.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:zac/zac.dart';
import 'package:json_path/json_path.dart';

part 'zac_json_path.freezed.dart';
part 'zac_json_path.g.dart';

@freezedZacBuilder
class ZacJsonPathTransformer
    with _$ZacJsonPathTransformer
    implements ZacBuilder<ZacTransform> {
  ZacJsonPathTransformer._();
  static const String unionValue = 'json_path:1:Transformer:JsonPath';

  factory ZacJsonPathTransformer.fromJson(Map<String, dynamic> json) =>
      _$ZacJsonPathTransformerFromJson(json);

  @FreezedUnionValue(ZacJsonPathTransformer.unionValue)
  factory ZacJsonPathTransformer({
    required String expression,
    // Map<String, MatchPredicate>? filters
  }) = _ZacJsonPathTransformer;

  late final ZacTransform _transform = ZacTransform(
      (ZacTransformValue transformValue, BuildContext context,
          ZacContext zacContext, ZacActionPayload? payload) {
    return JsonPath(expression).readValues(transformValue.value);
  });

  @override
  ZacTransform build(BuildContext context, ZacContext zacContext) => _transform;
}
