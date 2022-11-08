import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:zac/src/base.dart';
import 'package:zac/src/converter.dart';
import 'package:zac/src/zac/action.dart';
import 'package:zac/src/zac/context.dart';
import 'package:zac/src/zac/shared_value.dart';
import 'package:zac/src/zac/transformers.dart';

part 'zac_value.freezed.dart';
part 'zac_value.g.dart';

Type _typeOf<T>() => T;

bool _isConverterButNotZacValue(Object data) {
  if (!ConverterHelper.isConverter(data)) return false;
  data as Map<String, dynamic>;
  return !_isZacValueConverter(data) &&
      !_isZacValueListConverter(data) &&
      !_isZacValueMapConverter(data);
}

bool _isZacValueConverter(Object? data) {
  if (!ConverterHelper.isConverter(data)) return false;
  data as Map<String, dynamic>;
  return [ZacValue.unionValue, ZacValue.unionValueConsume]
      .contains(data['converter']);
}

bool _isZacValueListConverter(Object data) {
  if (!ConverterHelper.isConverter(data)) return false;
  data as Map<String, dynamic>;
  return [ZacValueList.unionValue, ZacValueList.unionValueConsume]
      .contains(data['converter']);
}

bool _isZacValueMapConverter(Object data) {
  if (!ConverterHelper.isConverter(data)) return false;
  data as Map<String, dynamic>;
  return [ZacValueMap.unionValue, ZacValueMap.unionValueConsume]
      .contains(data['converter']);
}

@defaultConverterFreezed
class ZacValue<T> with _$ZacValue<T> {
  const ZacValue._();

  static const String unionValue = 'z:1:ZacValue';
  static const String unionValueConsume = 'z:1:ZacValue.consume';

  @FreezedUnionValue(ZacValue.unionValue)
  factory ZacValue({
    required Object? data,
    ZacTransformers? transformer,
  }) = _ZacValue<T>;

  @FreezedUnionValue(ZacValue.unionValueConsume)
  factory ZacValue.consume({
    required SharedValueFamily family,
    ZacTransformers? transformer,
    ZacTransformers? select,
    ZacValueConsumeType? forceConsume,
  }) = _ZacValueConsume<T>;

  factory ZacValue.fromJson(Object data) {
    late Map<String, dynamic> json;
    if (data is num ||
        data is String ||
        data is bool ||
        _isConverterButNotZacValue(data)) {
      json = <String, dynamic>{
        'converter': ZacValue.unionValue,
        'data': data,
      };
    } else if (_isZacValueConverter(data)) {
      json = data as Map<String, dynamic>;
    } else {
      throw StateError('Unsupported data type in ${ZacValue<T>}: $data');
    }

    if (json[converterKey] == ZacValue.unionValue) {
      json['data'] = _mapValue<T>(data: json['data']);
    }

    return _$ZacValueFromJson<T>(json);
  }

  T getValue(ZacContext zacContext,
      {ZacValueConsumeType prefered = const ZacValueConsumeType.watch()}) {
    var value = map<Object?>(
      (obj) => obj.data,
      consume: (obj) => _consumeValue(
        zacContext: zacContext,
        consumeType: (obj.forceConsume ?? prefered),
        family: obj.family,
        select: obj.select,
      ),
    );

    if (value is T && true != transformer?.transformers.isNotEmpty) {
      return value;
    }

    value =
        transformer?.transform(ZacTransformValue(value), zacContext, null) ??
            value;

    if (value is! T) {
      final transformerErr =
          transformer?.transformers.map((e) => e.runtimeType) ?? [];

      throw StateError('''
It was not possible to return a value of "$T" in ${ZacValue<T>}.
The value is of type "${value.runtimeType}".
${transformerErr.isEmpty ? 'No transformer were used.' : 'Following transformer were used: ${transformerErr.join(' > ')}.'}
The value: $value
''');
    }

    return value;
  }
}

@defaultConverterFreezed
class ZacValueMap<T> with _$ZacValueMap<T> {
  const ZacValueMap._();

  static const String unionValue = 'z:1:ZacValueMap';
  static const String unionValueConsume = 'z:1:ZacValueMap.consume';

  @FreezedUnionValue(ZacValueMap.unionValue)
  factory ZacValueMap({
    required Map<String, Object?> data,
    ZacTransformers? transformer,
  }) = _ZacValueMap<T>;

  @FreezedUnionValue(ZacValueMap.unionValueConsume)
  factory ZacValueMap.consume({
    required SharedValueFamily family,
    ZacTransformers? transformer,
    ZacTransformers? select,
    ZacValueConsumeType? forceConsume,
  }) = _ZacValueMapConsume<T>;

  factory ZacValueMap.fromJson(Object data) {
    if (!_isZacValueMapConverter(data)) {
      throw StateError('Unsupported data type in ${ZacValueMap<T>}: $data');
    }
    data as Map<String, dynamic>;

    if (data[converterKey] == ZacValueMap.unionValue) {
      data['data'] =
          (data['data'] as Map<String, dynamic>).map<String, Object?>(
        (key, Object? value) {
          if (_isZacValueConverter(value)) {
            return MapEntry<String, Object?>(
                key, ZacValue<T>.fromJson(value as Map<String, dynamic>));
          }
          return MapEntry<String, Object?>(key, _mapValue<T>(data: value));
        },
      );
    }

    return _$ZacValueMapFromJson<T>(data);
  }

  Map<String, T> getValue(ZacContext zacContext,
      {ZacValueConsumeType prefered = const ZacValueConsumeType.watch()}) {
    var value = map<Object?>(
      (obj) => obj.data.map((key, value) {
        if (value is ZacValue<T>) {
          return MapEntry(key, value.getValue(zacContext, prefered: prefered));
        }
        return MapEntry(key, value);
      }),
      consume: (obj) => _consumeValue(
        zacContext: zacContext,
        consumeType: (obj.forceConsume ?? prefered),
        family: obj.family,
        select: obj.select,
      ),
    );

    if (value is Map<String, T> &&
        true != transformer?.transformers.isNotEmpty) {
      return value;
    }

    value =
        transformer?.transform(ZacTransformValue(value), zacContext, null) ??
            value;

    if (value is! Map) {
      final transformerErr =
          transformer?.transformers.map((e) => e.runtimeType) ?? [];
      throw StateError('''
It was not possible to return a map in ${ZacValueMap<T>}.
The value is of type "${value.runtimeType}".
${transformerErr.isEmpty ? 'No transformer were used.' : 'Following transformer were used: ${transformerErr.join(' > ')}.'}
The value: $value
''');
    }

    return Map<String, T>.from(value);
  }
}

extension ZacValueListFlutterWidget on ZacValueList<FlutterWidget> {
  List<Widget> getWidgets(ZacContext zacContext) {
    return getValue(zacContext).map((e) => e.buildWidget(zacContext)).toList();
  }
}

@defaultConverterFreezed
class ZacValueList<T> with _$ZacValueList<T> {
  const ZacValueList._();

  static const String unionValue = 'z:1:ZacValueList';
  static const String unionValueConsume = 'z:1:ZacValueList.consume';

  @FreezedUnionValue(ZacValueList.unionValue)
  factory ZacValueList({
    required List<Object?> data,
    ZacTransformers? transformer,
  }) = _ZacValueList<T>;

  @FreezedUnionValue(ZacValueList.unionValueConsume)
  factory ZacValueList.consume({
    required SharedValueFamily family,
    ZacTransformers? transformer,
    ZacTransformers? select,
    ZacValueConsumeType? forceConsume,
  }) = _ZacValueListConsume<T>;

  factory ZacValueList.fromJson(Object data) {
    if (!_isZacValueListConverter(data)) {
      throw StateError('Unsupported data type in ${ZacValueList<T>}: $data');
    }
    data as Map<String, dynamic>;

    if (data[converterKey] == ZacValueList.unionValue) {
      data['data'] = (data['data'] as List<Object?>).map<Object?>(
        (Object? value) {
          if (_isZacValueConverter(value)) {
            return ZacValue<T>.fromJson(value as Map<String, dynamic>);
          }
          return _mapValue<T>(data: value);
        },
      ).toList(growable: false);
    }

    return _$ZacValueListFromJson<T>(data);
  }

  List<T> getValue(ZacContext zacContext,
      {ZacValueConsumeType prefered = const ZacValueConsumeType.watch()}) {
    var value = map<Object?>(
      (obj) => obj.data.map((item) {
        if (item is ZacValue<T>) {
          return item.getValue(zacContext, prefered: prefered);
        }
        return item;
      }),
      consume: (obj) => _consumeValue(
        zacContext: zacContext,
        consumeType: (obj.forceConsume ?? prefered),
        family: obj.family,
        select: obj.select,
      ),
    );

    if (value is List<T> && true != transformer?.transformers.isNotEmpty) {
      return value;
    }

    value =
        transformer?.transform(ZacTransformValue(value), zacContext, null) ??
            value;

    if (value is! List) {
      final transformerErr =
          transformer?.transformers.map((e) => e.runtimeType) ?? [];
      throw StateError('''
It was not possible to return a list in ${ZacValueList<T>}.
The value is of type "${value.runtimeType}".
${transformerErr.isEmpty ? 'No transformer were used.' : 'Following transformer were used: ${transformerErr.join(' > ')}.'}
The value: $value
''');
    }

    return List<T>.from(value);
  }
}

Object? _consumeValue({
  required ZacContext zacContext,
  required ZacTransformers? select,
  required ZacValueConsumeType consumeType,
  required SharedValueFamily family,
}) {
  return consumeType.map<SharedValueType>(
    read: (_) {
      if (null == select) {
        return zacContext.ref
            .read<SharedValueType>(SharedValue.provider(family));
      } else {
        return select.transform(
            ZacTransformValue(zacContext.ref
                .read<SharedValueType>(SharedValue.provider(family))),
            zacContext,
            null);
      }
    },
    watch: (_) {
      if (null == select) {
        return zacContext.ref
            .watch<SharedValueType>(SharedValue.provider(family));
      } else {
        return zacContext.ref.watch<SharedValueType>(
            SharedValue.provider(family).select((value) =>
                select.transform(ZacTransformValue(value), zacContext, null)));
      }
    },
  );
}

// abstract class ZacGetValue {
//   Object? getValue(
//     ZacContext zacContext, {
//     ZacValueConsumeType prefered = const ZacValueConsumeType.watch(),
//   });
// }

@defaultConverterFreezed
@ZacGenerate(order: zacGenerateOrderFirst)
class ZacValueConsumeType with _$ZacValueConsumeType {
  const ZacValueConsumeType._();

  static const String unionValue = 'z:1:ZacValueConsume.watch';
  static const String unionValueRead = 'z:1:ZacValueConsume.read';

  factory ZacValueConsumeType.fromJson(Map<String, dynamic> json) =>
      _$ZacValueConsumeTypeFromJson(json);

  @FreezedUnionValue(ZacValueConsumeType.unionValueRead)
  const factory ZacValueConsumeType.read() = _ZacValueConsumeTypeRead;

  @FreezedUnionValue(ZacValueConsumeType.unionValue)
  const factory ZacValueConsumeType.watch() = _ZacValueConsumeTypeWatch;
}

// extension _XZacValue<T> on _ZacValue<T> {
//   bool get valueIsTValue => value is T;
// }

// @defaultConverterFreezed
// class ZacValue<T> with _$ZacValue<T> implements ZacGetValue {
//   const ZacValue._();

//   static const String unionValue = 'z:1:ZacValue';
//   static const String unionValueConsume = 'z:1:ZacValue.consume';

//   factory ZacValue.fromJson(Object? data) {
//     late Map<String, dynamic> json;
//     if (ConverterHelper.isConverter(data) &&
//         [ZacValue.unionValue, ZacValue.unionValueConsume]
//             .contains((data as Map<String, dynamic>)[converterKey] as String)) {
//       json = data;
//     } else {
//       json = <String, dynamic>{
//         'converter': ZacValue.unionValue,
//         'value': data,
//       };
//     }

//     if (json[converterKey] == ZacValue.unionValue) {
//       json['value'] = _mapValue<T>(data: json['value']);
//     }

//     final zacValue = _$ZacValueFromJson<T>(json);

// //     if (zacValue is _ZacValue<T> &&
// //         (zacValue.value is Map ||
// //             zacValue.value is List ||
// //             zacValue.value is Set) &&
// //         true != zacValue.transformer?.transformers.isNotEmpty) {
// //       throw StateError('''
// // $ZacValue does not support type ${json['value'].runtimeType}.
// // Consider using a $ZacValueList or $ZacValueMap.''');
// //     }

// //     if (zacValue is _ZacValue<T> &&
// //         !zacValue.valueIsTValue &&
// //         true != zacValue.transformer?.transformers.isNotEmpty) {
// //       throw StateError('''
// // It was not possible to create "${_typeOf<ZacValue<T>>()}" from "${json[converterKey]}".
// // The value was expected to be of type "$T" but instead it was "${zacValue.value.runtimeType}".
// // Either set the value to "$T" or add a transformer.
// // $json''');
// //     }

//     return zacValue;
//   }

//   @FreezedUnionValue(ZacValue.unionValue)
//   factory ZacValue({
//     required Object? value,
//     ZacTransformers? transformer,
//   }) = _ZacValue<T>;

//   @FreezedUnionValue(ZacValue.unionValueConsume)
//   factory ZacValue.consume({
//     required SharedValueFamily family,
//     ZacTransformers? transformer,
//     ZacTransformers? select,
//     ZacValueConsumeType? forceConsume,
//   }) = _ZacValueConsume<T>;

//   T _getSimple(ZacContext zacContext, _ZacValue<T> simple,
//       ZacValueConsumeType prefered) {
//     if (true == transformer?.transformers.isNotEmpty) {
//       final transformed = transformer!
//           .transform(ZacTransformValue(simple.value), zacContext, null);

//       if (transformed is! T) {
//         throw StateError('''
// It was not possible to return a value of type $T in ${_typeOf<ZacValue<T>>()}.
// Instead the returned value was of runtimeType ${transformed.runtimeType}.
// Value: $transformed''');
//       }
//       return transformed;
//     }

//     if (simple.value is! T) {
//       throw StateError('''
// The ${_typeOf<_ZacValueConsume<T>>()} does not hold a value of $T.
// Instead it holds a ${simple.value.runtimeType}.''');
//     }

//     return simple.value as T;
//   }

//   T _getShared(ZacContext zacContext, _ZacValueConsume<T> consume,
//       ZacValueConsumeType prefered) {
//     final consumedValue =
//         (consume.forceConsume ?? prefered).map<SharedValueType>(
//       read: (_) {
//         if (null == consume.select) {
//           return zacContext.ref
//               .read<SharedValueType>(SharedValue.provider(consume.family));
//         } else {
//           return consume.select!.transform(
//               ZacTransformValue(zacContext.ref
//                   .read<SharedValueType>(SharedValue.provider(consume.family))),
//               zacContext,
//               null);
//         }
//       },
//       watch: (_) {
//         if (null == consume.select) {
//           return zacContext.ref
//               .watch<SharedValueType>(SharedValue.provider(consume.family));
//         } else {
//           return zacContext.ref.watch<SharedValueType>(
//               SharedValue.provider(consume.family).select((value) => consume
//                   .select!
//                   .transform(ZacTransformValue(value), zacContext, null)));
//         }
//       },
//     );

//     if (consumedValue is T &&
//         (null == transformer || true == transformer?.transformers.isEmpty)) {
//       return consumedValue;
//     }

//     if (null == transformer || true == transformer?.transformers.isEmpty) {
//       throw StateError('''
// It was not possible to return a "${_typeOf<ZacValue<T>>()}" for family "${consume.family}".
// The consumed $SharedValue was of runtimeType: "${consumedValue.runtimeType}".
// It was expected to return a type of: "$T".

// This error was created because there are no transformers to use.
// Add a transformer in order to transform the $SharedValue into a type of: "$T".

// The consumed $SharedValue: $consumedValue
// ''');
//     }

//     final transformedValue = transformer!
//         .transform(ZacTransformValue(consumedValue), zacContext, null);

//     if (transformedValue is! T) {
//       final alltransformerTypers =
//           transformer!.transformers.map((e) => e.runtimeType);
//       throw StateError('''
// Unexpected type found after trying to transform a consumed $SharedValue to "${_typeOf<ZacValue<T>>()}" for family "${consume.family}".
// The consumed $SharedValue was of runtimeType: "${consumedValue.runtimeType}".
// The $SharedValue after transformation was of runtimeType: "${transformedValue.runtimeType}".
// The expected type was: "$T".
// The following transformer were used:
// ${alltransformerTypers.join(' > ')}

// The transformed value:
// $transformedValue

// The consumed $SharedValue:
// $consumedValue
// ''');
//     }

//     return transformedValue;
//   }

//   @override
//   T getValue(
//     ZacContext zacContext, {
//     ZacValueConsumeType prefered = const ZacValueConsumeType.watch(),
//   }) {
//     return map<T>(
//       (obj) => _getSimple(zacContext, obj, prefered),
//       consume: (obj) => _getShared(zacContext, obj, prefered),
//     );
//   }
// }

// @defaultConverterFreezed
// class ZacValueList<T> with _$ZacValueList<T> implements ZacGetValue {
//   const ZacValueList._();

//   static const String unionValue = 'z:1:ZacValueList';
//   static const String unionValueConsume = 'z:1:ZacValueList.consume';

//   factory ZacValueList.fromJson(Object? data) {
//     late Map<String, dynamic> json;

//     if (data is List) {
//       json = <String, dynamic>{
//         'converter': ZacValueList.unionValue,
//         'values': List<Object?>.from(data),
//       };
//     } else if (ConverterHelper.isConverter(data) &&
//         [ZacValueList.unionValue, ZacValueList.unionValueConsume]
//             .contains((data as Map<String, dynamic>)[converterKey] as String)) {
//       json = data;

//       if (json[converterKey] == ZacValueList.unionValue) {
//         if (json['values'] is! List) {
//           throw StateError(
//               'The values property in ${_typeOf<ZacValueList<T>>()} was no List: $json');
//         }
//         json['values'] = List<Object?>.from(json['values'] as List);
//       }
//     } else {
//       throw StateError(
//           'Unsupported type in ${_typeOf<ZacValueList<T>>()}. $data');
//     }

//     if (json[converterKey] == ZacValueList.unionValue) {
//       json['values'] =
//           (json['values'] as List<Object?>).map<Object?>((Object? item) {
//         /// allow ZacValue
//         if (ConverterHelper.isConverter(item) &&
//             [ZacValue.unionValue, ZacValue.unionValueConsume].contains(
//                 (item as Map<String, dynamic>)[converterKey] as String)) {
//           return ZacValue<T>.fromJson(item);
//         }

//         return _mapValue<T>(data: item);
//       }).toList();
//     }

//     final zacValueList = _$ZacValueListFromJson<T>(json);
//     assert(() {
//       if (zacValueList is! _ZacValueList<T> ||
//           true == zacValueList.transformer?.transformers.isNotEmpty) {
//         return true;
//       }

//       final zacValues = zacValueList.values.whereType<ZacValue<T>>();
//       final typeValues = zacValueList.values.whereType<T>();

//       if (zacValueList.values.length !=
//           (zacValues.length + typeValues.length)) {
//         throw AssertionError('''
// It was not possible to create a "${_typeOf<ZacValueList<T>>()}" from "${json[converterKey]}".
// Not all values were of the expected  type "$T" or "${_typeOf<ZacValue<T>>()}".
// No transformers were used.
// $json''');
//       }
//       return true;
//     }(), '');

//     return zacValueList;
//   }

//   @FreezedUnionValue(ZacValueList.unionValue)
//   factory ZacValueList({
//     required List<Object?> values,
//     ZacTransformers? transformer,
//   }) = _ZacValueList<T>;

//   @FreezedUnionValue(ZacValueList.unionValueConsume)
//   factory ZacValueList.consume({
//     required SharedValueFamily family,
//     ZacTransformers? transformer,
//     ZacTransformers? select,
//     ZacValueConsumeType? forceConsume,
//   }) = _ZacValueListConsume<T>;

//   List<Object?> _expectList(Object? obj) {
//     if (obj is! List) {
//       throw StateError('''
// It was not possible to return a "${_typeOf<ZacValueList<T>>()}" because the consumed value was no List.
// Instead it was: $obj
// ''');
//     }

//     return obj;
//   }

//   List<Object?> _mapValues(Iterable<Object?> values, ZacContext zacContext,
//       ZacValueConsumeType prefered) {
//     return values.map((e) {
//       if (e is! ZacGetValue) return e;
//       return e.getValue(zacContext, prefered: prefered);
//     }).toList();
//   }

//   List<T> _getSimple(ZacContext zacContext, _ZacValueList<T> simple,
//       {required ZacValueConsumeType prefered}) {
//     var list = _mapValues(simple.values, zacContext, prefered);

//     list = _expectList(
//         transformer?.transform(ZacTransformValue(list), zacContext, null) ??
//             list);

//     assert(() {
//       for (var element in list) {
//         if (element is T) continue;
//         final alltransformerTypers =
//             transformer?.transformers.map((e) => e.runtimeType);
//         final transformerError = null == alltransformerTypers ||
//                 alltransformerTypers.isEmpty
//             ? 'No transformers were used on the List.'
//             : 'Transformers used on List: "${alltransformerTypers.join(' > ')}"';
//         throw AssertionError('''
// It was not possible to return a $SharedValue in "${_typeOf<ZacValueList<T>>()}".
// At least one element (${element.runtimeType}) in the List was not of type $T.
// $transformerError
// The element: $element''');
//       }
//       return true;
//     }(), '');

//     return List<T>.from(list);
//   }

//   List<T> _getShared(ZacContext zacContext, _ZacValueListConsume<T> consume,
//       ZacValueConsumeType prefered) {
//     var list =
//         _expectList((consume.forceConsume ?? prefered).map<SharedValueType>(
//       read: (_) {
//         if (null == consume.select) {
//           return zacContext.ref
//               .read<SharedValueType>(SharedValue.provider(consume.family));
//         } else {
//           return consume.select!.transform(
//               ZacTransformValue(zacContext.ref
//                   .read<SharedValueType>(SharedValue.provider(consume.family))),
//               zacContext,
//               null);
//         }
//       },
//       watch: (_) {
//         if (null == consume.select) {
//           return zacContext.ref
//               .watch<SharedValueType>(SharedValue.provider(consume.family));
//         } else {
//           return zacContext.ref.watch<SharedValueType>(
//               SharedValue.provider(consume.family).select((value) => consume
//                   .select!
//                   .transform(ZacTransformValue(value), zacContext, null)));
//         }
//       },
//     ));

//     list = _mapValues(list, zacContext, prefered);

//     list = _expectList(
//         transformer?.transform(ZacTransformValue(list), zacContext, null) ??
//             list);

//     assert(() {
//       for (var element in list) {
//         if (element is T) continue;
//         final alltransformerTypers =
//             transformer?.transformers.map((e) => e.runtimeType);
//         final transformerError = null == alltransformerTypers ||
//                 alltransformerTypers.isEmpty
//             ? 'No transformers were used on the List.'
//             : 'Transformers used on List: "${alltransformerTypers.join(' > ')}"';
//         throw AssertionError('''
// It was not possible to return a $SharedValue in "${_typeOf<ZacValueList<T>>()}" for family "${consume.family}".
// At least one element (${element.runtimeType}) in the List was not of type $T.
// $transformerError
// The element: $element''');
//       }
//       return true;
//     }(), '');

//     return List<T>.from(list);
//   }

//   @override
//   List<T> getValue(
//     ZacContext zacContext, {
//     ZacValueConsumeType prefered = const ZacValueConsumeType.watch(),
//   }) {
//     return map<List<T>>(
//       (obj) => _getSimple(zacContext, obj, prefered: prefered),
//       consume: (obj) => _getShared(zacContext, obj, prefered),
//     );
//   }
// }

// @defaultConverterFreezed
// class ZacValueMap<T> with _$ZacValueMap<T> implements ZacGetValue {
//   const ZacValueMap._();

//   static const String unionValue = 'z:1:ZacValueMap';
//   static const String unionValueConsume = 'z:1:ZacValueMap.consume';

//   factory ZacValueMap.fromJson(Object? data) {
//     late Map<String, dynamic> json;

//     if (data is Map && !ConverterHelper.isConverter(data)) {
//       json = <String, dynamic>{
//         'converter': ZacValueMap.unionValue,
//         'values': Map<String, Object?>.from(data),
//       };
//     } else if (ConverterHelper.isConverter(data) &&
//         [ZacValueMap.unionValue, ZacValueMap.unionValueConsume]
//             .contains((data as Map<String, dynamic>)[converterKey] as String)) {
//       json = data;

//       if (json[converterKey] == ZacValueMap.unionValue) {
//         if (json['values'] is! Map) {
//           throw StateError(
//               'The values property in ${_typeOf<ZacValueMap<T>>()} was no Map: $json');
//         }
//         json['values'] = Map<String, Object?>.from(json['values'] as Map);
//       }
//     } else {
//       throw StateError(
//           'Unsupported type in ${_typeOf<ZacValueMap<T>>()}. $data');
//     }

//     if (json[converterKey] == ZacValueMap.unionValue) {
//       json['values'] = (json['values'] as Map<String, Object?>)
//           .map<String, Object?>((String key, Object? value) {
//         /// allow ZacValue
//         if (ConverterHelper.isConverter(value) &&
//             [ZacValue.unionValue, ZacValue.unionValueConsume].contains(
//                 (value as Map<String, dynamic>)[converterKey] as String)) {
//           return MapEntry(key, ZacValue<T>.fromJson(value));
//         }

//         return MapEntry(key, _mapValue<T>(data: value));
//       });
//     }

//     final zacValueMap = _$ZacValueMapFromJson<T>(json);
//     assert(() {
//       if (zacValueMap is! _ZacValueMap<T> ||
//           true == zacValueMap.transformer?.transformers.isNotEmpty) {
//         return true;
//       }

//       final zacValues = zacValueMap.values.values.whereType<ZacValue<T>>();
//       final typeValues = zacValueMap.values.values.whereType<T>();

//       if (zacValueMap.values.length != (zacValues.length + typeValues.length)) {
//         throw AssertionError('''
// It was not possible to create a "${_typeOf<ZacValueMap<T>>()}" from "${json[converterKey]}".
// Not all values were of the expected  type "$T" or "${_typeOf<ZacValue<T>>()}".
// No transformers were used.
// $json''');
//       }
//       return true;
//     }(), '');

//     return zacValueMap;
//   }

//   @FreezedUnionValue(ZacValueMap.unionValue)
//   factory ZacValueMap({
//     required Map<String, Object?> values,
//     ZacTransformers? transformer,
//   }) = _ZacValueMap<T>;

//   @FreezedUnionValue(ZacValueMap.unionValueConsume)
//   factory ZacValueMap.consume({
//     required SharedValueFamily family,
//     ZacTransformers? transformer,
//     ZacTransformers? select,
//     ZacValueConsumeType? forceConsume,
//   }) = _ZacValueMapConsume<T>;

//   Map<String, Object?> _expectMap(Object? obj) {
//     if (obj is! Map<String, Object?>) {
//       throw StateError('''
// It was not possible to return a "${_typeOf<ZacValueMap<T>>()}" because the consumed value was no Map.
// Instead it was: $obj
// ''');
//     }

//     return obj;
//   }

//   Map<String, Object?> _mapValues(Map<String, dynamic> map,
//       ZacContext zacContext, ZacValueConsumeType prefered) {
//     return map.map((key, Object? value) {
//       if (value is! ZacGetValue) return MapEntry<String, Object?>(key, value);
//       return MapEntry<String, Object?>(
//           key, value.getValue(zacContext, prefered: prefered));
//     });
//   }

//   Map<String, T> _getSimple(ZacContext zacContext, _ZacValueMap<T> simple,
//       {required ZacValueConsumeType prefered}) {
//     var map = _mapValues(simple.values, zacContext, prefered);

//     map = _expectMap(
//         transformer?.transform(ZacTransformValue(map), zacContext, null) ??
//             map);

//     assert(() {
//       for (var element in map.values) {
//         if (element is T) continue;
//         final alltransformerTypers =
//             transformer?.transformers.map((e) => e.runtimeType);
//         final transformerError = null == alltransformerTypers ||
//                 alltransformerTypers.isEmpty
//             ? 'No transformers were used on the Map.'
//             : 'Transformers used on Map: "${alltransformerTypers.join(' > ')}"';
//         throw AssertionError('''
// It was not possible to return a $SharedValue in "${_typeOf<ZacValueMap<T>>()}".
// At least one element (${element.runtimeType}) in the Map was not of type $T.
// $transformerError
// The element: $element''');
//       }
//       return true;
//     }(), '');

//     return Map<String, T>.from(map);
//   }

//   Map<String, T> _getShared(ZacContext zacContext,
//       _ZacValueMapConsume<T> consume, ZacValueConsumeType prefered) {
//     var map =
//         _expectMap((consume.forceConsume ?? prefered).map<SharedValueType>(
//       read: (_) {
//         if (null == consume.select) {
//           return zacContext.ref
//               .read<SharedValueType>(SharedValue.provider(consume.family));
//         } else {
//           return consume.select!.transform(
//               ZacTransformValue(zacContext.ref
//                   .read<SharedValueType>(SharedValue.provider(consume.family))),
//               zacContext,
//               null);
//         }
//       },
//       watch: (_) {
//         if (null == consume.select) {
//           return zacContext.ref
//               .watch<SharedValueType>(SharedValue.provider(consume.family));
//         } else {
//           return zacContext.ref.watch<SharedValueType>(
//               SharedValue.provider(consume.family).select((value) => consume
//                   .select!
//                   .transform(ZacTransformValue(value), zacContext, null)));
//         }
//       },
//     ));

//     map = _mapValues(map, zacContext, prefered);

//     map = _expectMap(
//         transformer?.transform(ZacTransformValue(map), zacContext, null) ??
//             map);

//     assert(() {
//       for (var element in map.values) {
//         if (element is T) continue;
//         final alltransformerTypers =
//             transformer?.transformers.map((e) => e.runtimeType);
//         final transformerError = null == alltransformerTypers ||
//                 alltransformerTypers.isEmpty
//             ? 'No transformers were used on the Map.'
//             : 'Transformers used on Map: "${alltransformerTypers.join(' > ')}"';
//         throw AssertionError('''
// It was not possible to return a $SharedValue in "${_typeOf<ZacValueList<T>>()}" for family "${consume.family}".
// At least one element (${element.runtimeType}) in the Map was not of type $T.
// $transformerError
// The element: $element''');
//       }
//       return true;
//     }(), '');

//     return Map<String, T>.from(map);
//   }

//   @override
//   Map<String, T> getValue(
//     ZacContext zacContext, {
//     ZacValueConsumeType prefered = const ZacValueConsumeType.watch(),
//   }) {
//     return map<Map<String, T>>(
//       (obj) => _getSimple(zacContext, obj, prefered: prefered),
//       consume: (obj) => _getShared(zacContext, obj, prefered),
//     );
//   }
// }

Object? _mapValue<TValue>({required Object? data}) {
  if (TValue == DateTime && data is String) {
    return DateTime.parse(data) as TValue;
  } else if (TValue == int && data is double) {
    return data.toInt() as TValue;
  } else if (TValue == double && data is int) {
    return data.toDouble() as TValue;
  }

  /// actual ZacValueTypes
  else if (ConverterHelper.isConverter(data)) {
    return ConverterHelper.convertToType<TValue>(data);
  }

  return data;
}

@defaultConverterFreezed
@ZacGenerate()
class ZacValueActions with _$ZacValueActions implements ZacAction {
  const ZacValueActions._();

  static const String unionValue = 'z:1:ZacValue.asActionPayload';

  factory ZacValueActions.fromJson(Map<String, dynamic> json) =>
      _$ZacValueActionsFromJson(json);

  @FreezedUnionValue(ZacValueActions.unionValue)
  factory ZacValueActions.asPayload({
    required ZacValue<Object?> value,
    required ZacActions actions,
  }) = _ZacValueActionsAsPayload;

  @override
  void execute(ZacActionPayload payload, ZacContext zacContext) {
    map(
      asPayload: (obj) {
        final val = obj.value
            .getValue(zacContext, prefered: const ZacValueConsumeType.read());
        obj.actions.execute(ZacActionPayload.param(val), zacContext);
      },
    );
  }
}
