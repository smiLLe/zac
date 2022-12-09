import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:zac/src/base.dart';
import 'package:zac/src/converter.dart';
import 'package:zac/src/zac/context.dart';
import 'package:zac/src/zac/shared_value.dart';

part 'zac_builder.freezed.dart';

typedef ZacSharedBuilder = ZacBuilder<Object>;

abstract class ZacBuilder<T> {
  factory ZacBuilder.fromJson(Map<String, dynamic> json) {
    assert(() {
      /// Check if item can be converted
      ConverterHelper.ifRegisteredBuilderCb(
        json,
        orElse: () {
          throw StateError('''
It was not possible to create an instance of ${ZacBuilder<T>} from JSON.
The data could not be converted as no valid converter was found
or the given JSON was of an unsupported type.
This will fail on production.
The data: $json''');
        },
      );

      final builder = ConverterHelper.convertToType<Object?>(json);
      if (builder is! ZacBuilder<T>) {
        throw StateError('''
It was not possible to create ${ZacBuilder<T>} because the created builder
was not an instance of ${ZacBuilder<T>}.
This will fail on production.
The builder: $builder''');
      }
      return true;
    }());
    return ConverterHelper.convertToType<ZacBuilder<T>>(json);
  }

  T build(ZacContext zacContext,
      {ZacBuilderConsume onConsume = const ZacBuilderConsume()});

  /// Implementations may allow a SharedValue to return null
  T? buildOrNull(ZacContext zacContext,
      {ZacBuilderConsume onConsume = const ZacBuilderConsume()});
}

@freezedZacDefaults
class ZacBuilderConsume with _$ZacBuilderConsume {
  const factory ZacBuilderConsume({
    @Default(SharedValueConsumeType.watch()) SharedValueConsumeType type,
  }) = _ZacBuilderConsume;
}

extension ConsumeZacBuilder<T> on ConsumeSharedValue<T> {
  T buildConsume(ZacContext zacContext, ZacBuilderConsume onConsume) {
    return consumeValue(zacContext, type: onConsume.type);
  }

  T? buildConsumeOrNull(ZacContext zacContext, ZacBuilderConsume onConsume) {
    return consumeValueOrNull(zacContext, type: onConsume.type);
  }
}

extension ConsumeListZacBuilder<T> on ConsumeSharedValueList<T> {
  List<T> buildConsume(ZacContext zacContext, ZacBuilderConsume onConsume) {
    return consumeValue(zacContext, type: onConsume.type);
  }

  List<T>? buildConsumeOrNull(
      ZacContext zacContext, ZacBuilderConsume onConsume) {
    return consumeValueOrNull(zacContext, type: onConsume.type);
  }
}
