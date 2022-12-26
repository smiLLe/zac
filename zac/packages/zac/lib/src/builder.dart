import 'package:zac/src/generated_builder.dart';

typedef Convert = Object Function(Map<String, dynamic> data);
Map<String, Convert> allBuilder = {
  ...generatedBuilder,
};

const builderKey = 'builder';

class ConverterError extends StateError {
  ConverterError(super.message);
}

abstract class ConverterHelper {
  static T ifRegisteredBuilder<T extends Object?>(
    Object? data, {
    required T Function(Map<String, dynamic> map, String converterName) cb,
    required T Function() orElse,
  }) {
    if (!isConverter(data)) {
      return orElse();
    }
    final name = (data as Map<String, dynamic>)[builderKey] as String;
    if (!hasExistingConverter(name)) {
      return orElse();
    }

    return cb(data, name);
  }

  static void ifRegisteredBuilderCb(
    Object? data, {
    void Function(Map<String, dynamic> map, String converterName)? cb,
    void Function()? orElse,
  }) {
    if (!isConverter(data)) {
      return orElse?.call();
    }
    final name = (data as Map<String, dynamic>)[builderKey] as String;
    if (!hasExistingConverter(name)) {
      return orElse?.call();
    }

    return cb?.call(data, name);
  }

  static bool isConverter(Object? data) {
    if (data is! Map<String, dynamic>) return false;
    return data.containsKey(builderKey) &&
        data[builderKey] is String &&
        (data[builderKey] as String).isNotEmpty;
  }

  static bool hasExistingConverter(String name) {
    return allBuilder.containsKey(name);
  }

  static Map<String, dynamic> validateConverter<T>(Object? data) {
    if (!isConverter(data)) {
      throw ConverterError('''
Could not convert ${data.runtimeType} to $T.
It is either no Map<String, dynamic> or it has an invalid/missing "$builderKey" key/value.
Data: "$data"''');
    }

    final rt = (data as Map<String, dynamic>)[builderKey] as String;

    if (!hasExistingConverter(rt)) {
      throw ConverterError('''
Error while trying to convert data to $T.
There is no registered Converter found for "$rt".''');
    }

    return data;
  }

  static T convertToType<T>(Object? data) {
    final converterMap = validateConverter<T>(data);
    final rt = converterMap[builderKey] as String;

    final dynamic converted = allBuilder[rt]!(converterMap);
    if (converted is! T) {
      throw ConverterError('''
An unexpected Builder was returned after convertion of "$rt"
Expected Builder type: $T
Actual Builder: "${converted.runtimeType}"
$converted''');
    }

    return converted;
  }
}
