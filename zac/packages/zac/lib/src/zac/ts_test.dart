import 'package:zac/zac.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'ts_test.freezed.dart';
part 'ts_test.g.dart';

@defaultConverterFreezed
@TsClass(order: tsOrderLast + 1)
class TsTest with _$TsTest {
  const TsTest._();

  factory TsTest.fromJson(Map<String, dynamic> json) => _$TsTestFromJson(json);

  @FreezedUnionValue('f:1:BoxShape.circle')
  factory TsTest(
    int? reqButOpt,
    DateTime someDate, {
    required ZacValue<int> reqInt,
    ZacValue<int>? optionalInt,
    ZacValue<ZacValue<ZacValue<int>>>? deep1,
    required ZacValue<ZacValue<ZacValue<int>?>>? deep2,
  }) = _TsTest;
}
