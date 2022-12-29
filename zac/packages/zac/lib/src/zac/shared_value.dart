import 'package:flutter/widgets.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:zac/src/base.dart';
import 'package:zac/src/zac/action.dart';
import 'package:zac/src/zac/context.dart';
import 'package:zac/src/zac/update_widget.dart';
import 'package:zac/src/zac/transformers.dart';
import 'package:zac/src/zac/zac_build.dart';

part 'shared_value.freezed.dart';
part 'shared_value.g.dart';

class AccessEmptySharedValueError extends StateError {
  AccessEmptySharedValueError(super.message);
}

typedef SharedValueFamily = Object;
typedef SharedValueType = Object?;

abstract class SharedValue {
  static final provider =
      StateProvider.family.autoDispose<SharedValueType, SharedValueFamily>(
    (_, family) => throw AccessEmptySharedValueError('''
Could not find a $SharedValue for family: "$family".
Provide a $SharedValue via "${SharedValueProviderBuilder.unionValue}".
See "$SharedValueProviderBuilder" for more info.
'''),
    name: 'Zac SharedValue',
  );

  static T getTyped<T>({
    required ZacContext zacContext,
    required ZacTransformers? select,
    required ZacTransformers? transformer,
    required SharedValueConsumeType consumeType,
    required SharedValueFamily family,
  }) {
    final value = SharedValue.get(
      zacContext: zacContext,
      consumeType: consumeType,
      family: family,
    );

    if (null == value && true != transformer?.transformers.isNotEmpty) {
      throw StateError('$SharedValue must not be null');
    }

    return TransformObjectHelper.simple<T>(
      fromValue: value,
      zacContext: zacContext,
      transformer: transformer,
    );
  }

  static T? getTypedOrNull<T>({
    required ZacContext zacContext,
    required ZacTransformers? select,
    required ZacTransformers? transformer,
    required SharedValueConsumeType consumeType,
    required SharedValueFamily family,
  }) {
    final value = SharedValue.get(
      zacContext: zacContext,
      consumeType: consumeType,
      family: family,
    );

    if (null == value && true != transformer?.transformers.isNotEmpty) {
      return null;
    }

    return TransformObjectHelper.simpleOrNull<T>(
      fromValue: value,
      zacContext: zacContext,
      transformer: transformer,
    );
  }

  static List<T> getTypedList<T>({
    required ZacContext zacContext,
    required ZacTransformers? select,
    required ZacTransformers? transformer,
    required ZacTransformers? itemTransformer,
    required SharedValueConsumeType consumeType,
    required SharedValueFamily family,
  }) {
    final value = SharedValue.getList(
      zacContext: zacContext,
      select: select,
      consumeType: consumeType,
      family: family,
    );

    if (null == value && true != transformer?.transformers.isNotEmpty) {
      throw StateError('$SharedValue must not be null');
    }

    return TransformObjectHelper.list<T>(
      fromValue: value!,
      zacContext: zacContext,
      transformer: transformer,
      itemTransformer: itemTransformer,
    );
  }

  static List<T>? getTypedListOrNull<T>({
    required ZacContext zacContext,
    required ZacTransformers? select,
    required ZacTransformers? transformer,
    required ZacTransformers? itemTransformer,
    required SharedValueConsumeType consumeType,
    required SharedValueFamily family,
  }) {
    final value = SharedValue.getList(
      zacContext: zacContext,
      select: select,
      consumeType: consumeType,
      family: family,
    );

    if (null == value && true != transformer?.transformers.isNotEmpty) {
      return null;
    }

    return TransformObjectHelper.listOrNull<T>(
      fromValue: value,
      zacContext: zacContext,
      transformer: transformer,
      itemTransformer: itemTransformer,
    );
  }

  static SharedValueType get({
    required ZacContext zacContext,
    required SharedValueConsumeType consumeType,
    required SharedValueFamily family,
  }) {
    final consumedValue = consumeType.map<Object?>(
      read: (_) => zacContext.ref.read<Object?>(SharedValue.provider(family)),
      watch: (obj) => null != obj.select
          ? zacContext.ref
              .watch<Object?>(SharedValue.provider(family).select((value) {
              return obj.select!
                  .transform(ZacTransformValue(value), zacContext, null);
            }))
          : zacContext.ref.watch<Object?>(SharedValue.provider(family)),
    );

    return consumedValue is ZacBuilder<Object>
        ? consumedValue.build(zacContext)
        : consumedValue;
  }

  static List<Object>? getList({
    required ZacContext zacContext,
    required ZacTransformers? select,
    required SharedValueConsumeType consumeType,
    required SharedValueFamily family,
  }) {
    final consumedValue = consumeType.map<Object?>(
      read: (_) {
        final value =
            zacContext.ref.read<Object?>(SharedValue.provider(family));
        if (value is ZacBuilder) {
          return value;
        }
        return select?.transform(ZacTransformValue(value), zacContext,
                const ZacActionPayload()) ??
            value;
      },
      watch: (_) {
        return zacContext.ref
            .watch<Object?>(SharedValue.provider(family).select((value) {
          if (value is ZacBuilder) {
            return value;
          }
          return select?.transform(ZacTransformValue(value), zacContext,
                  const ZacActionPayload()) ??
              value;
        }));
      },
    );

    if (consumedValue is! List) {
      throw StateError('Unexpected $SharedValue: $consumedValue');
    }

    return [
      ...consumedValue.map((dynamic e) {
        return e is ZacBuilder<Object> ? e.build(zacContext) : e as Object;
      })
    ];
  }

  static void update(
    ZacContext zacContext,
    SharedValueFamily family,
    SharedValueType Function(SharedValueType current) update,
  ) {
    assert(() {
      /// Read the value first in order to trigger the custom exception.
      /// Otherwise the .update() below will throw a StateError by riverpod.
      /// This happens since riverpod 2.0 release
      zacContext.ref.read(SharedValue.provider(family));
      return true;
    }(), '');

    zacContext.ref.read(SharedValue.provider(family).notifier).update(update);
  }

  static void listenAndExecuteActions(
      ZacContext zacContext, SharedValueFamily family, ZacActions actions) {
    zacContext.ref.listen<SharedValueType>(SharedValue.provider(family),
        (previous, next) {
      actions.execute(ZacActionPayload.param2(next, previous), zacContext);
    });
  }
}

@freezedZacBuilder
class SharedValueActions with _$SharedValueActions implements ZacAction {
  const SharedValueActions._();

  static const String unionValue = 'z:1:SharedValue.update';
  static const String unionValueInvalidate = 'z:1:SharedValue.invalidate';

  factory SharedValueActions.fromJson(Map<String, dynamic> json) =>
      _$SharedValueActionsFromJson(json);

  @FreezedUnionValue(SharedValueActions.unionValue)
  factory SharedValueActions.update({
    required SharedValueFamily family,
    ZacTransformers? transformer,
    @Default(false) bool? ifNoPayloadTakeCurrent,
  }) = _SharedValueActionsUpdate;

  @FreezedUnionValue(SharedValueActions.unionValueInvalidate)
  factory SharedValueActions.invalidate({
    required SharedValueFamily family,
  }) = _SharedValueActionsRefresh;

  SharedValueType _updateTransformItems(Object? value, ZacActionPayload payload,
      ZacContext zacContext, _SharedValueActionsUpdate obj) {
    return obj.transformer
            ?.transform(ZacTransformValue(value), zacContext, payload) ??
        value;
  }

  @override
  void execute(ZacActionPayload payload, ZacContext zacContext) {
    map(
      update: (obj) {
        SharedValue.update(zacContext, obj.family, (current) {
          return payload.map(
            (_) => true == obj.ifNoPayloadTakeCurrent
                ? _updateTransformItems(current, payload, zacContext, obj)
                : null,
            param: (pl) =>
                _updateTransformItems(pl.value, payload, zacContext, obj),
            param2: (pl) {
              return <Object?>[
                _updateTransformItems(pl.first, payload, zacContext, obj),
                _updateTransformItems(pl.second, payload, zacContext, obj)
              ];
            },
          );
        });
      },
      invalidate: (obj) {
        zacContext.ref.invalidate(SharedValue.provider(family));
      },
    );
  }
}

@freezedZacBuilder
class SharedValueConsumeType with _$SharedValueConsumeType {
  static const String unionValue = 'z:1:SharedValueConsume.watch';
  static const String unionValueRead = 'z:1:SharedValueConsume.read';

  factory SharedValueConsumeType.fromJson(Map<String, dynamic> json) =>
      _$SharedValueConsumeTypeFromJson(json);

  @FreezedUnionValue(SharedValueConsumeType.unionValue)
  const factory SharedValueConsumeType.watch({
    ZacTransformers? select,
  }) = _SharedValueConsumeTypeWatch;

  @FreezedUnionValue(SharedValueConsumeType.unionValueRead)
  const factory SharedValueConsumeType.read() = _SharedValueConsumeTypeRead;
}

@freezedZacBuilder
class SharedValueProviderBuilder
    with _$SharedValueProviderBuilder
    implements ZacBuilder<Widget> {
  SharedValueProviderBuilder._();
  static const String unionValue = 'z:1:SharedValue.provide';

  factory SharedValueProviderBuilder.fromJson(Map<String, dynamic> json) =>
      _$SharedValueProviderBuilderFromJson(json);

  @FreezedUnionValue(SharedValueProviderBuilder.unionValue)
  factory SharedValueProviderBuilder({
    ZacBuilder<Key?>? key,
    required SharedValueType value,
    ZacTransformers? transformer,
    required SharedValueFamily family,
    required ZacBuilder<Widget> child,
    @Default(true) bool autoCreate,
  }) = _SharedValueProviderBuilder;

  SharedValueType valueBuilder(
      AutoDisposeStateProviderRef<SharedValueType> ref, ZacContext zacContext) {
    if (null == transformer || true == transformer!.transformers.isEmpty) {
      return value;
    } else {
      return transformer!.transform(ZacTransformValue(value), zacContext, null);
    }
  }

  Widget _childBuilder(ZacContext zacContext) => child.build(zacContext);

  SharedValueProvider _buildWidget(ZacContext zacContext) {
    return SharedValueProvider(
      key: key?.build(zacContext),
      valueBuilder: valueBuilder,
      family: family,
      childBuilder: _childBuilder,
      autoCreate: autoCreate,
    );
  }

  @override
  SharedValueProvider build(ZacContext zacContext) {
    return _buildWidget(zacContext);
  }
}

class SharedValueProvider extends HookConsumerWidget {
  const SharedValueProvider({
    required this.childBuilder,
    required this.valueBuilder,
    required this.family,
    this.autoCreate = true,
    super.key,
  });

  final Widget Function(ZacContext zacContext) childBuilder;
  final SharedValueFamily family;
  final SharedValueType Function(
      AutoDisposeStateProviderRef<SharedValueType> ref,
      ZacContext zacContext) valueBuilder;
  final bool autoCreate;

  static void _autoCreateListener(
      SharedValueType? prev, SharedValueType next) {}

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final parentContainer = ProviderScope.containerOf(context);
    final zacContext = useZacContext(ref);
    final override = useMemoized(() {
      return SharedValue.provider(family).overrideWith(
        (ref) => valueBuilder(ref, zacContext),
      );
    }, [valueBuilder, zacContext]);

    final container = useMemoized(() {
      return ProviderContainer(
        parent: parentContainer,
        overrides: [override],
      );
    }, [parentContainer, override]);

    useEffect(() {
      return container.dispose;
    }, [container]);

    return ZacUpdateContext(
      builder: (zacContext) {
        return UncontrolledProviderScope(
          container: container,
          child: ZacUpdateContext(
            builder: !autoCreate
                ? childBuilder
                : (zacContext) {
                    /// immediately create the AutoDispose Provider and its value
                    /// and keep it alive as long as possible
                    zacContext.ref.listen<SharedValueType>(
                      SharedValue.provider(family),
                      _autoCreateListener,
                    );
                    return childBuilder(zacContext);
                  },
          ),
        );
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

@freezedZacBuilder
class ConsumeSharedValueMap<T extends Object?, X extends Map<String, T>?>
    with _$ConsumeSharedValueMap<T, X>
    implements ZacMapBuilder<T, X> {
  const ConsumeSharedValueMap._();

  static const String union = 'z:1:SharedValueMap.consume';

  /// freezed generates a code like this
  ///   factory _$ConsumeSharedValueMap.fromJson(Map<String, dynamic> json) =>
  ///   _$ConsumeSharedValueMap(json);
  ///
  /// _$ConsumeSharedValueMap is missing <T,X>
  /// it should be: _$ConsumeSharedValueMap<T,X>(json)
  ///
  /// This will result in X being a Never type
  factory ConsumeSharedValueMap._freezedFix(
      ConsumeSharedValueMap<T, Object?> zV) {
    return ConsumeSharedValueMap<T, X>(
      family: zV.family,
      forceConsume: zV.forceConsume,
      itemTransformer: zV.itemTransformer,
      transformer: zV.transformer,
    );
  }

  factory ConsumeSharedValueMap.fromJson(Map<String, dynamic> data) {
    final zV = _$ConsumeSharedValueMapFromJson<T, X>(data);
    return ConsumeSharedValueMap._freezedFix(zV);
  }

  @FreezedUnionValue(ConsumeSharedValueMap.union)
  factory ConsumeSharedValueMap({
    required SharedValueFamily family,
    ZacTransformers? transformer,
    ZacTransformers? itemTransformer,
    SharedValueConsumeType? forceConsume,
  }) = _ConsumeSharedValueMap<T, X>;

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
It was not possible to return a $SharedValue of type $T from ${ConsumeSharedValueMap<T, X>}.build()
because the value is null and there are no transformers added.
Value: $value''');
      }
    }

    if (value is T && true != transformer?.transformers.isNotEmpty) {
      return value;
    }

    if (null == transformer || transformer.transformers.isEmpty) {
      throw StateError('''
It was not possible to return a $SharedValue of type $T from ${ConsumeSharedValueMap<T, X>}.build()
because there were no transformer.
The value of type ${value.runtimeType} was expected to be transformed.
$value''');
    }

    final transformedVal =
        transformer.transform(ZacTransformValue(value), zacContext, null);

    if (transformedVal is! T) {
      final transformerErr = transformer.transformers.map((e) => e.runtimeType);

      throw StateError('''
It was not possible to return a $SharedValue of type $T from ${ConsumeSharedValueMap<T, X>}
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
    if (consumedValue is! Map) {
      throw StateError(
          'Unexpected $SharedValue in ${ConsumeSharedValueMap<T, X>}: $consumedValue');
    }
    final map = <Object?, Object?>{
      for (var entry in consumedValue.entries)
        entry.key: _transformItem(
          value: entry.value is ZacBuilder<Object?>
              ? (entry.value as ZacBuilder<Object?>).build(zacContext)
              : entry.value,
          zacContext: zacContext,
          transformer: itemTransformer,
        )
    };

    final transformedMap =
        transformer?.transform(ZacTransformValue(map), zacContext, null) ?? map;

    if (transformedMap is X) {
      return transformedMap as X;
    }

    if (transformedMap is! Map) {
      throw StateError('''
Unexpected value after transformation in ${ConsumeSharedValueMap<T, X>}.
A $X is expected but the data is: $transformedMap''');
    }

    return Map<String, T>.from(transformedMap) as X;
  }
}
