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
was of a different type.
This will fail on production.
Created builder: $builder''');
      }
      return true;
    }());
    return ConverterHelper.convertToType<ZacBuilder<T>>(json);
  }

  T build(ZacContext zacContext);
}

@freezedZacDefaults
class ZacBuilderConsume with _$ZacBuilderConsume {
  const factory ZacBuilderConsume({
    @Default(SharedValueConsumeType.watch()) SharedValueConsumeType type,
  }) = _ZacBuilderConsume;
}
