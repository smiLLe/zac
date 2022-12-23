import 'package:flutter/widgets.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:zac/src/base.dart';
import 'package:zac/src/flutter/foundation.dart';
import 'package:zac/src/zac/action.dart';

import 'package:zac/src/zac/context.dart';
import 'package:zac/src/zac/update_widget.dart';
import 'package:zac/src/zac/transformers.dart';
import 'package:zac/src/zac/zac_builder.dart';
import 'package:zac/src/zac/zac_value.dart';

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
      select: select,
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
      select: select,
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
@ZacGenerate()
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
@ZacGenerate(order: zacGenerateOrderZacWidget)
class SharedValueConsumeType with _$SharedValueConsumeType {
  static const String unionValue = 'z:1:SharedValueConsume.watch';
  static const String unionValueRead = 'z:1:SharedValueConsume.read';

  factory SharedValueConsumeType.fromJson(Map<String, dynamic> json) =>
      _$SharedValueConsumeTypeFromJson(json);

  @FreezedUnionValue(SharedValueConsumeType.unionValue)
  const factory SharedValueConsumeType.watch() = _SharedValueConsumeTypeWatch;

  @FreezedUnionValue(SharedValueConsumeType.unionValueRead)
  const factory SharedValueConsumeType.read() = _SharedValueConsumeTypeRead;
}

@freezedZacBuilder
@ZacGenerate(order: zacGenerateOrderZacWidget)
class SharedValueProviderBuilder
    with _$SharedValueProviderBuilder
    implements ZacBuilder<Widget> {
  SharedValueProviderBuilder._();
  static const String unionValue = 'z:1:SharedValue.provide';

  factory SharedValueProviderBuilder.fromJson(Map<String, dynamic> json) =>
      _$SharedValueProviderBuilderFromJson(json);

  @FreezedUnionValue(SharedValueProviderBuilder.unionValue)
  factory SharedValueProviderBuilder({
    ZacValue<Key?>? key,
    required SharedValueType value,
    ZacTransformers? transformer,
    required SharedValueFamily family,
    required ZacValue<Widget> child,
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
