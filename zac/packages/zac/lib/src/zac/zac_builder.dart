import 'package:zac/src/zac/registry.dart';
import 'package:zac/src/zac/context.dart';
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

    return ZacRegistry.ifBuilderLikeMap<ZacBuilder<T>>(
      data,
      cb: (map, converterName) => ZacRegistry().when<T>(
        name: converterName,
        noType: (builder) => builder.call(map),
        withType: (builder) => builder.call<T>(map),
      ),
      orElse: () => ZacValue<T>.fromJson(data),
    );
  }

  T build(ZacContext zacContext);
}

abstract class ZacListBuilder<T extends Object?, X extends List<T>?>
    implements ZacBuilder<X> {
  factory ZacListBuilder.fromJson(Object data) {
    return ZacRegistry.ifBuilderLikeMap<ZacListBuilder<T, X>>(
      data,
      cb: (map, converterName) {
        final builder =
            ZacRegistry().getRegisteredList(converterName).call<T, X>(map);

        return builder;
      },
      orElse: () {
        if (data is! List) {
          throw StateError(
              'Unsupported type in ${ZacListBuilder<T, X>}: $data');
        }

        return ZacValueList<T, X>.fromJson(data);
      },
    );
  }
}

abstract class ZacMapBuilder<T extends Object?, X extends Map<String, T>?>
    implements ZacBuilder<X> {
  factory ZacMapBuilder.fromJson(Object data) {
    return ZacRegistry.ifBuilderLikeMap<ZacMapBuilder<T, X>>(
      data,
      cb: (map, converterName) {
        final builder =
            ZacRegistry().getRegisteredMap(converterName).call<T, X>(map);

        return builder;
      },
      orElse: () {
        if (data is! Map) {
          throw StateError('Unsupported type in ${ZacMapBuilder<T, X>}: $data');
        }

        return ZacValueMap<T, X>.fromJson(data);
      },
    );
  }
}
