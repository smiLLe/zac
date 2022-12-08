import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:riverpod/riverpod.dart';
import 'package:zac/src/base.dart';
import 'package:zac/src/converter.dart';
import 'package:zac/src/zac/context.dart';
import 'package:zac/src/zac/shared_value.dart';
import 'package:zac/src/zac/transformers.dart';

part 'zac_builder.freezed.dart';

typedef ZacSharedBuilder = ZacBuilder<Object>;

abstract class ZacBuilder<T> {
  static final provider =
      StateProvider.family.autoDispose<ZacSharedBuilder, String>(
    (_, family) => throw StateError('''
Could not find a $ZacBuilder for family: $family
Provide the $ZacBuilder first.'''),
    name: 'Zac SharedBuilder',
  );

  static T cons<T>({
    required ZacContext zacContext,
    required SharedValueConsumeType consumeType,
    required SharedValueFamily family,
    required ZacTransformers? transformer,
  }) {
    final consumedValue = consumeType.map<Object?>(
      read: (_) {
        return zacContext.ref.read<Object?>(SharedValue.provider(family));
      },
      watch: (_) {
        return zacContext.ref.watch<Object?>(SharedValue.provider(family));
      },
    );

    final value = consumedValue is ZacBuilder<Object>
        ? consumedValue.build(zacContext,
            onConsume: ZacBuilderConsume(type: consumeType))
        : consumedValue;

    if (value is T && true != transformer?.transformers.isNotEmpty) {
      return value;
    }

    if (null == transformer || transformer.transformers.isEmpty) {
      throw StateError('''
It was not possible to return a value of type $T because there were no transformer.
The value of type ${value.runtimeType} was expected to be transformed.
$value''');
    }

    final Object? transformedValue =
        transformer.transform(ZacTransformValue(value), zacContext, null);

    if (transformedValue is! T) {
      final transformerErr = transformer.transformers.map((e) => e.runtimeType);

      throw StateError('''
It was not possible to return a value of type $T after transformers were applied.
Type of value before transformation: ${value.runtimeType}
Type of value after transformation: ${transformedValue.runtimeType}
${transformerErr.isEmpty ? 'No transformer were used.' : 'Following transformer were used: ${transformerErr.join(' > ')}.'}
Value before: $value
Value after: $transformedValue''');
    }

    return transformedValue;
  }

  static T _consume<T>({
    required ZacContext zacContext,
    required SharedValueConsumeType consumeType,
    required String family,
    required ZacTransformers? transformer,
  }) {
    final builder = consumeType.map<ZacSharedBuilder>(
      read: (_) {
        return zacContext.ref
            .read<ZacSharedBuilder>(ZacBuilder.provider(family));
      },
      watch: (_) {
        return zacContext.ref
            .watch<ZacSharedBuilder>(ZacBuilder.provider(family));
      },
    );

    final value = builder.build(zacContext,
        onConsume: ZacBuilderConsume(type: consumeType));

    if (value is T && true != transformer?.transformers.isNotEmpty) {
      return value as T;
    }

    if (null == transformer || transformer.transformers.isEmpty) {
      throw StateError('''
It was not possible to return a value of type $T because there were no transformer.
The value of type ${value.runtimeType} was expected to be transformed.
$value''');
    }

    final Object? transformedValue =
        transformer.transform(ZacTransformValue(value), zacContext, null);

    if (transformedValue is! T) {
      final transformerErr = transformer.transformers.map((e) => e.runtimeType);

      throw StateError('''
It was not possible to return a value of type $T after transformers were applied.
Type of value before transformation: ${value.runtimeType}
Type of value after transformation: ${transformedValue.runtimeType}
${transformerErr.isEmpty ? 'No transformer were used.' : 'Following transformer were used: ${transformerErr.join(' > ')}.'}
Value before: $value
Value after: $transformedValue''');
    }

    return transformedValue;
  }

  static T? _consumeOrNull<T>({
    required ZacContext zacContext,
    required SharedValueConsumeType consumeType,
    required String family,
    required ZacTransformers? transformer,
  }) {
    final builder = consumeType.map<ZacSharedBuilder?>(
      read: (_) {
        return zacContext.ref
            .read<ZacSharedBuilder?>(ZacBuilder.provider(family));
      },
      watch: (_) {
        return zacContext.ref
            .watch<ZacSharedBuilder?>(ZacBuilder.provider(family));
      },
    );
    if (null == builder) return null;

    final value = builder.build(zacContext,
        onConsume: ZacBuilderConsume(type: consumeType));

    if (value is T && true != transformer?.transformers.isNotEmpty) {
      return value as T;
    }

    if (null == transformer || transformer.transformers.isEmpty) {
      throw StateError('''
It was not possible to return a value of type $T? because there were no transformer.
The value of type ${value.runtimeType} was expected to be transformed.
$value''');
    }

    final Object? transformedValue =
        transformer.transform(ZacTransformValue(value), zacContext, null);

    if (transformedValue is! T?) {
      final transformerErr = transformer.transformers.map((e) => e.runtimeType);

      throw StateError('''
It was not possible to return a value of type $T? after transformers were applied.
Type of value before transformation: ${value.runtimeType}
Type of value after transformation: ${transformedValue.runtimeType}
${transformerErr.isEmpty ? 'No transformer were used.' : 'Following transformer were used: ${transformerErr.join(' > ')}.'}
Value before: $value
Value after: $transformedValue''');
    }

    return transformedValue;
  }

  factory ZacBuilder.fromJson(Map<String, dynamic> json) {
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
