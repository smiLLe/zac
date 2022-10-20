import 'package:flutter/widgets.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:zac/src/base.dart';
import 'package:zac/src/flutter/foundation.dart';
import 'package:zac/src/zac/action.dart';
import 'package:zac/src/zac/misc.dart';
import 'package:zac/src/zac/context.dart';
import 'package:zac/src/zac/update_widget.dart';
import 'package:zac/src/zac/transformers.dart';
import 'package:zac/src/zac/zac_values.dart';

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

  static SharedValueType get(SharedValueConsumeType type, ZacContext zacContext,
      SharedValueFamily family) {
    return type.map<SharedValueType>(
      watch: (obj) {
        if (null == obj.select || true == obj.select?.transformers.isEmpty) {
          return zacContext.ref
              .watch<SharedValueType>(SharedValue.provider(family));
        }

        return zacContext.ref.watch(SharedValue.provider(family)
            .select<SharedValueType>((sharedValue) => obj.select!
                .transform(ZacTransformValue(sharedValue), zacContext, null)));
      },
      read: (_) =>
          zacContext.ref.read<SharedValueType>(SharedValue.provider(family)),
    );
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

@defaultConverterFreezed
class UpdateSharedValueInteractions
    with _$UpdateSharedValueInteractions
    implements ZacAction {
  const UpdateSharedValueInteractions._();

  static const String unionValue = 'z:1:SharedValue.update';
  static const String unionValueReplaceWith = 'z:1:SharedValue.replaceWith';

  factory UpdateSharedValueInteractions.fromJson(Map<String, dynamic> json) =>
      _$UpdateSharedValueInteractionsFromJson(json);

  @FreezedUnionValue(UpdateSharedValueInteractions.unionValue)
  factory UpdateSharedValueInteractions({
    required SharedValueFamily family,
    required ZacTransformers transformer,
  }) = _SharedValueInteractionUpdate;

  @FreezedUnionValue(UpdateSharedValueInteractions.unionValueReplaceWith)
  factory UpdateSharedValueInteractions.replaceWith({
    required SharedValueFamily family,
    required ZacObject value,
    ZacTransformers? transformer,
  }) = _SharedValueInteractionReplaceWith;

  @override
  void execute(ZacActionPayload payload, ZacContext zacContext) =>
      SharedValue.update(
        zacContext,
        family,
        (current) => map<SharedValueType>(
          (obj) {
            assert(obj.transformer.transformers.isNotEmpty);

            return obj.transformer
                .transform(ZacTransformValue(current), zacContext, payload);
          },
          replaceWith: (obj) {
            if (null == obj.transformer ||
                true == obj.transformer!.transformers.isEmpty) {
              return obj.value;
            } else {
              return obj.transformer!
                  .transform(ZacTransformValue(obj.value), zacContext, payload);
            }
          },
        ),
      );
}

@defaultConverterFreezed
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

@defaultConverterFreezed
class SharedValueProviderBuilder
    with _$SharedValueProviderBuilder
    implements FlutterWidget {
  const SharedValueProviderBuilder._();
  static const String unionValue = 'z:1:SharedValue.provide';

  factory SharedValueProviderBuilder.fromJson(Map<String, dynamic> json) =>
      _$SharedValueProviderBuilderFromJson(json);

  @FreezedUnionValue(SharedValueProviderBuilder.unionValue)
  factory SharedValueProviderBuilder({
    FlutterKey? key,
    required SharedValueType value,
    ZacTransformers? transformer,
    required SharedValueFamily family,
    required FlutterWidget child,
  }) = _SharedValueProviderBuilder;

  @override
  SharedValueProvider buildWidget(ZacContext zacContext) {
    return SharedValueProvider(
      key: key?.buildKey(zacContext),
      transformer: transformer,
      value: value,
      family: family,
      builder: child.buildWidget,
    );
  }
}

class SharedValueProvider extends HookConsumerWidget {
  const SharedValueProvider({
    required this.value,
    this.transformer,
    required this.family,
    required this.builder,
    Key? key,
  }) : super(key: key);

  final SharedValueType value;
  final SharedValueFamily family;
  final Widget Function(ZacContext zacContext) builder;
  final ZacTransformers? transformer;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final zacContext = useZacContext(ref);
    final provideValue = useMemoized(
      () {
        return null == transformer || true == transformer!.transformers.isEmpty
            ? value
            : transformer!
                .transform(ZacTransformValue(value), zacContext, null);
      },
      [value, family, transformer],
    );
    return ProviderScope(
      overrides: [
        SharedValue.provider(family).overrideWithProvider(
            AutoDisposeStateProvider<SharedValueType>((_) => provideValue)),
      ],
      child: ZacUpdateOrigin(builder: builder),
    );
  }
}
