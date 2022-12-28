import 'package:zac/src/builder.dart';
import 'package:zac/src/zac/context.dart';
import 'package:zac/src/zac/shared_value.dart';
import 'package:zac/src/zac/zac_value.dart';

abstract class ZacBuilder<T> {
  factory ZacBuilder.fromJson(Object data) {
//     assert(() {
//       /// Check if item can be converted
//       ConverterHelper.ifRegisteredBuilderCb(
//         data,
//         orElse: () {
//           throw StateError('''
// It was not possible to create an instance of ${ZacBuilder<T>} from JSON.
// The data could not be converted as no valid converter was found
// or the given JSON was of an unsupported type.
// This will fail on production.
// The data: $data''');
//         },
//       );

//       final builder = ConverterHelper.convertToType<Object?>(data);
//       if (builder is! ZacBuilder<T>) {
//         throw StateError('''
// It was not possible to create ${ZacBuilder<T>} because the created builder
// was of a different type.
// This will fail on production.
// Created builder: $builder''');
//       }
//       return true;
//     }());

    return ConverterHelper.ifRegisteredBuilder<ZacBuilder<T>>(
      data,
      cb: (map, converterName) {
        switch (converterName) {
          case ConsumeSharedValue.union:
            return ConsumeSharedValue<T>.fromJson(map);
          default:
            return ConverterHelper.convertToType<ZacBuilder<T>>(map);
        }
      },
      orElse: () => ZacValue<T>.fromJson(data),
    );
  }

  T build(ZacContext zacContext);
}

abstract class ZacListBuilder<T extends Object?, X extends List<T>?>
    implements ZacBuilder<X> {
  factory ZacListBuilder.fromJson(Object data) {
    return ConverterHelper.ifRegisteredBuilder<ZacListBuilder<T, X>>(
      data,
      cb: (map, converterName) {
        switch (converterName) {
          case ConsumeSharedValueList.union:
            return ConsumeSharedValueList<T, X>.fromJson(map);
          default:
            return ConverterHelper.convertToType<ZacListBuilder<T, X>>(map);
        }
      },
      orElse: () {
        if (data is! List) {
          throw StateError(
              'Unsupported type in ${ZacListBuilder<T, X>}: $data');
        }

        return ZacValueListSimple<T, X>.fromJson(data);
      },
    );
  }
}
