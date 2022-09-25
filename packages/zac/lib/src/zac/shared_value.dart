import 'package:flutter/widgets.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:zac/src/base.dart';
import 'package:zac/src/flutter/foundation.dart';
import 'package:zac/src/zac/action.dart';
import 'package:zac/src/zac/any_value.dart';
import 'package:zac/src/zac/update_context.dart';
import 'package:zac/src/zac/transformers.dart';

part 'shared_value.freezed.dart';
part 'shared_value.g.dart';

class AccessEmptySharedValueError extends StateError {
  AccessEmptySharedValueError(super.message);
}

typedef SharedValueFamily = Object;

@defaultConverterFreezed
class SharedValue with _$SharedValue {
  const SharedValue._();

  factory SharedValue(Object? data) = FilledSharedValue;
  const factory SharedValue.empty() = EmptySharedValue;

  static final provider =
      StateProvider.family.autoDispose<SharedValue, SharedValueFamily>(
    (_, __) => const SharedValue.empty(),
    name: 'Zac SharedValue',
  );

  static Object? _extractData(SharedValue sharedValue, String ifEmptyMessage) =>
      sharedValue.map(
        (obj) => obj.data,
        empty: (_) => throw AccessEmptySharedValueError(ifEmptyMessage),
      );

  static Object? getFilled(SharedValueConsumeType type, ZacBuildContext context,
      SharedValueFamily family) {
    final error = '''
Could not find a $SharedValue for family: "$family".
Provide a $SharedValue via "${SharedValueProviderBuilder.unionValue}".
See "$SharedValueProviderBuilder" for more info.
''';
    return type.map<Object?>(
      watch: (obj) {
        if (null == obj.select || true == obj.select?.isEmpty) {
          return _extractData(
              context.ref.watch(SharedValue.provider(family)), error);
        }

        return context.ref.watch(SharedValue.provider(family).select(
            (sharedValue) => obj.select!.transformValues(
                ZacTransformValue(_extractData(sharedValue, error)),
                context,
                SharedValueTransformerInteraction.consume())));
      },
      read: (_) => _extractData(context.ref.read(provider(family)), error),
    );
  }

  static void update(
    ZacBuildContext context,
    SharedValueFamily family,
    Object? Function(Object? current) update,
  ) {
    context.ref
        .read(SharedValue.provider(family).notifier)
        .update((sharedValue) {
      return SharedValue(update(_extractData(sharedValue, '''
It was not possible to update the $SharedValue "$family",
because the $SharedValue did not exist until now.
Consider providing a $SharedValue via "${SharedValueProviderBuilder.unionValue}"
in your Widget tree before trying to update the $SharedValue.''')));
    });
  }

  static void listenAndExecuteActions(
      ZacBuildContext context, SharedValueFamily family, ZacActions actions) {
    context.ref.listen<SharedValue>(SharedValue.provider(family),
        (previous, next) {
      actions.execute(context, ActionPayload(_extractData(next, '''
It was not possible to listen for $SharedValue($family) changes and execute actions,
because the $SharedValue did not exist until now.
Consider providing a $SharedValue via "${SharedValueProviderBuilder.unionValue}"
in your Widget tree before trying to update the $SharedValue.''')));
    });
  }
}

@nonConverterFreezed
class SharedValueTransformerInteraction
    with _$SharedValueTransformerInteraction
    implements ZacTransformerExtra {
  const SharedValueTransformerInteraction._();

  factory SharedValueTransformerInteraction.action({
    required ActionPayload payload,
    required Object? current,
  }) = SharedValueTransformerInteractionAction;

  factory SharedValueTransformerInteraction.consume() =
      SharedValueTransformerInteractionConsume;

  factory SharedValueTransformerInteraction.provide() =
      SharedValueTransformerInteractionProvide;
}

@defaultConverterFreezed
class UpdateSharedValueAction
    with _$UpdateSharedValueAction
    implements ZacAction {
  const UpdateSharedValueAction._();

  static const String unionValue = 'z:1:SharedValue.update';

  factory UpdateSharedValueAction.fromJson(Map<String, dynamic> json) =>
      _$UpdateSharedValueActionFromJson(json);

  @FreezedUnionValue(UpdateSharedValueAction.unionValue)
  factory UpdateSharedValueAction({
    required SharedValueFamily family,
    required Object value,
    List<ZacTransformer>? transformer,
  }) = _UpdateSharedValueAction;

  @override
  void execute(ZacBuildContext context, ActionPayload payload) =>
      SharedValue.update(context, family, (current) {
        return null == transformer || true == transformer!.isEmpty
            ? value
            : transformer!.transformValues(
                ZacTransformValue(value),
                context,
                SharedValueTransformerInteraction.action(
                  payload: payload,
                  current: current,
                ));
      });
}

@defaultConverterFreezed
class SharedValueConsumeType with _$SharedValueConsumeType {
  static const String unionValue = 'z:1:SharedValueConsume.watch';
  static const String unionValueRead = 'z:1:SharedValueConsume.read';

  factory SharedValueConsumeType.fromJson(Map<String, dynamic> json) =>
      _$SharedValueConsumeTypeFromJson(json);

  @FreezedUnionValue(SharedValueConsumeType.unionValue)
  const factory SharedValueConsumeType.watch({
    List<ZacTransformer>? select,
  }) = _SharedValueConsumeTypeWatch;

  @FreezedUnionValue(SharedValueConsumeType.unionValueRead)
  const factory SharedValueConsumeType.read() = _SharedValueConsumeTypeRead;
}

@defaultConverterFreezed
class SharedValueProviderBuilder
    with _$SharedValueProviderBuilder
    implements ZacWidget {
  const SharedValueProviderBuilder._();
  static const String unionValue = 'z:1:SharedValue.provide';

  factory SharedValueProviderBuilder.fromJson(Map<String, dynamic> json) =>
      _$SharedValueProviderBuilderFromJson(json);

  @FreezedUnionValue(SharedValueProviderBuilder.unionValue)
  factory SharedValueProviderBuilder({
    FlutterKey? key,
    required Object? value,
    List<ZacTransformer>? transformer,
    required SharedValueFamily family,
    required ZacWidget child,
  }) = _SharedValueProviderBuilder;

  @override
  SharedValueProvider buildWidget(ZacBuildContext context) {
    return SharedValueProvider(
      key: key?.buildKey(context),
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

  final Object? value;
  final SharedValueFamily family;
  final Widget Function(ZacBuildContext context) builder;
  final List<ZacTransformer>? transformer;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final zacContext = useZacBuildContext(ref);
    final provideValue = useMemoized(
      () {
        return SharedValue(null == transformer || true == transformer!.isEmpty
            ? value
            : transformer!.transformValues(ZacTransformValue(value), zacContext,
                SharedValueTransformerInteraction.provide()));
      },
      [value, family, transformer],
    );
    return ProviderScope(
      overrides: [
        SharedValue.provider(family).overrideWithProvider(
            AutoDisposeStateProvider<SharedValue>((_) => provideValue)),
      ],
      child: ZacUpdateContext(builder: builder),
    );
  }
}
