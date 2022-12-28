import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:zac/src/base.dart';
import 'package:zac/src/builder.dart';
import 'package:zac/src/zac/context.dart';
import 'package:zac/src/zac/shared_value.dart';
import 'package:zac/src/zac/transformers.dart';
import 'package:zac/src/zac/zac_value.dart';

part 'zac_build.freezed.dart';
part 'zac_build.g.dart';

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
      orElse: () => ZacValueSimple<T>.fromJson(data),
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

@freezedZacBuilder
class ConsumeSharedValue<T>
    with _$ConsumeSharedValue<T>
    implements ZacBuilder<T> {
  const ConsumeSharedValue._();

  static const String union = 'z:1:SharedValue.consume';

  factory ConsumeSharedValue.fromJson(Map<String, dynamic> data) =>
      _$ConsumeSharedValueFromJson<T>(data);

  @FreezedUnionValue(ConsumeSharedValue.union)
  factory ConsumeSharedValue({
    required SharedValueFamily family,
    ZacTransformers? transformer,
    SharedValueConsumeType? forceConsume,
  }) = _ConsumeSharedValue<T>;

  @override
  T build(ZacContext zacContext) {
    final value = SharedValue.get(
      zacContext: zacContext,
      consumeType: forceConsume ?? const SharedValueConsumeType.watch(),
      family: family,
    );

    if (null == value) {
      if (null is T && true != transformer?.transformers.isNotEmpty) {
        return null as T;
      } else if (null is! T && true != transformer?.transformers.isNotEmpty) {
        throw StateError('''
It was not possible to return a $SharedValue of type $T from ${ConsumeSharedValue<T>}.build()
because the value is null and there are no transformers added.
Value: $value''');
      }
    }

    if (value is T && true != transformer?.transformers.isNotEmpty) {
      return value;
    }

    final thisTransformer = transformer;

    if (null == thisTransformer || thisTransformer.transformers.isEmpty) {
      throw StateError('''
It was not possible to return a $SharedValue of type $T from ${ConsumeSharedValue<T>}.build()
because there were no transformer.
The value of type ${value.runtimeType} was expected to be transformed.
$value''');
    }

    final transformedVal =
        thisTransformer.transform(ZacTransformValue(value), zacContext, null);
    if (transformedVal is! T) {
      final transformerErr =
          thisTransformer.transformers.map((e) => e.runtimeType);

      throw StateError('''
It was not possible to return a $SharedValue of type $T from ${ConsumeSharedValue<T>}
after transformers were applied.
Type of value before transformation: ${value.runtimeType}
Type of value after transformation: ${transformedVal.runtimeType}
${transformerErr.isEmpty ? 'No transformer were used.' : 'Following transformer were used: ${transformerErr.join(' > ')}.'}
Value before: $value
Value after: $transformedVal''');
    }

    return transformedVal;
  }
}

@freezedZacBuilder
class ConsumeSharedValueList<T extends Object?, X extends List<T>?>
    with _$ConsumeSharedValueList<T, X>
    implements ZacListBuilder<T, X> {
  const ConsumeSharedValueList._();

  static const String union = 'z:1:SharedValueList.consume';

  /// freezed generates a code like this
  ///   factory _$ConsumeSharedValueList.fromJson(Map<String, dynamic> json) =>
  ///   _$ConsumeSharedValueList(json);
  ///
  /// _$ConsumeSharedValueList is missing <T,X>
  /// it should be: _$ConsumeSharedValueList<T,X>(json)
  ///
  /// This will result in X being a Never type
  factory ConsumeSharedValueList._freezedFix(
      ConsumeSharedValueList<T, Object?> zV) {
    return ConsumeSharedValueList<T, X>(
      family: zV.family,
      forceConsume: zV.forceConsume,
      itemTransformer: zV.itemTransformer,
      transformer: zV.transformer,
    );
  }

  factory ConsumeSharedValueList.fromJson(Map<String, dynamic> data) {
    final zV = _$ConsumeSharedValueListFromJson<T, X>(data);
    return ConsumeSharedValueList._freezedFix(zV);
  }

  @FreezedUnionValue(ConsumeSharedValueList.union)
  factory ConsumeSharedValueList({
    required SharedValueFamily family,
    ZacTransformers? transformer,
    ZacTransformers? itemTransformer,
    SharedValueConsumeType? forceConsume,
  }) = _ConsumeSharedValueList<T, X>;

  T _transformItem({
    required Object? value,
    required ZacContext zacContext,
    required ZacTransformers? transformer,
  }) {
    if (null == value) {
      if (null is T && true != transformer?.transformers.isNotEmpty) {
        return null as T;
      } else if (null is! T && true != transformer?.transformers.isNotEmpty) {
        throw StateError('''
It was not possible to return a $SharedValue of type $T from ${ConsumeSharedValueList<T, X>}.build()
because the value is null and there are no transformers added.
Value: $value''');
      }
    }

    if (value is T && true != transformer?.transformers.isNotEmpty) {
      return value;
    }

    if (null == transformer || transformer.transformers.isEmpty) {
      throw StateError('''
It was not possible to return a $SharedValue of type $T from ${ConsumeSharedValueList<T, X>}.build()
because there were no transformer.
The value of type ${value.runtimeType} was expected to be transformed.
$value''');
    }

    final transformedVal =
        transformer.transform(ZacTransformValue(value), zacContext, null);

    if (transformedVal is! T) {
      final transformerErr = transformer.transformers.map((e) => e.runtimeType);

      throw StateError('''
It was not possible to return a $SharedValue of type $T from ${ConsumeSharedValueList<T, X>} 
after transformers were applied.
Type of value before transformation: ${value.runtimeType}
Type of value after transformation: ${transformedVal.runtimeType}
${transformerErr.isEmpty ? 'No transformer were used.' : 'Following transformer were used: ${transformerErr.join(' > ')}.'}
Value before: $value
Value after: $transformedVal''');
    }

    return transformedVal;
  }

  @override
  X build(ZacContext zacContext) {
    final consumedValue = SharedValue.get(
      zacContext: zacContext,
      consumeType: forceConsume ?? const SharedValueConsumeType.watch(),
      family: family,
    );

    if (consumedValue is! List) {
      throw StateError(
          'Unexpected $SharedValue in ${ConsumeSharedValueList<T, X>}: $consumedValue');
    }

    final list = [
      ...consumedValue.map<T>((dynamic e) {
        final value =
            e is ZacBuilder<Object?> ? e.build(zacContext) : e as Object?;
        return _transformItem(
          value: value,
          zacContext: zacContext,
          transformer: itemTransformer,
        );
      })
    ];

    final transformedList =
        transformer?.transform(ZacTransformValue(list), zacContext, null) ??
            list;

    if (transformedList is X) {
      return transformedList as X;
    }

    if (transformedList is! List) {
      throw StateError('''
Unexpected value after transformation in ${ConsumeSharedValueList<T, X>}.
A ${List<T>} is expected but the data is: $transformedList''');
    }

    return List<T>.from(transformedList) as X;
  }
}
