import 'package:flutter/widgets.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:zac/src/base.dart';
import 'package:zac/src/flutter/foundation.dart';
import 'package:zac/src/zac/action.dart';
import 'package:zac/src/zac/any_value.dart';
import 'package:zac/src/zac/misc.dart';
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
                ZacTransformValue(_extractData(sharedValue, error)), context)));
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
      actions.execute(
        context,
        prefillBag: (bag) => bag..setActionPayload(_extractData(next, '''
It was not possible to listen for $SharedValue($family) changes and execute actions,
because the $SharedValue did not exist until now.
Consider providing a $SharedValue via "${SharedValueProviderBuilder.unionValue}"
in your Widget tree before trying to update the $SharedValue.''')),
      );
    });
  }
}

@defaultConverterFreezed
class UpdateSharedValueAction
    with _$UpdateSharedValueAction
    implements ZacAction {
  const UpdateSharedValueAction._();

  static const String unionValue = 'z:1:SharedValue.update';
  static const String unionValueReplaceWith = 'z:1:SharedValue.replaceWith';

  factory UpdateSharedValueAction.fromJson(Map<String, dynamic> json) =>
      _$UpdateSharedValueActionFromJson(json);

  @FreezedUnionValue(UpdateSharedValueAction.unionValue)
  factory UpdateSharedValueAction({
    required SharedValueFamily family,
    required List<ZacTransformer> transformer,
  }) = _SharedValueActionUpdate;

  @FreezedUnionValue(UpdateSharedValueAction.unionValueReplaceWith)
  factory UpdateSharedValueAction.replaceWith({
    required SharedValueFamily family,
    required Object value,
    List<ZacTransformer>? transformer,
  }) = _SharedValueActionReplaceWith;

  @override
  void execute(ZacBuildContext context, ContextBag bag) => SharedValue.update(
        context,
        family,
        (current) => map(
          (obj) {
            assert(obj.transformer.isNotEmpty);

            return obj.transformer.transformValues(
              ZacTransformValue(current),
              context,
              prefillBag: (bag) => bag..addEntries(bag.entries),
            );
          },
          replaceWith: (obj) {
            return null == obj.transformer || true == obj.transformer!.isEmpty
                ? obj.value
                : obj.transformer!.transformValues(
                    ZacTransformValue(obj.value),
                    context,
                    prefillBag: (bag) => bag
                      ..addEntries(bag.entries)
                      ..addAll(<String, dynamic>{
                        kBagSharedValueReplaceWith: obj.value,
                        kBagSharedValueCurrent: current,
                      }),
                  );
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
  SharedValueProvider buildWidget(
      BuildContext context, WidgetRef ref, ZacBuildContext zacContext) {
    return SharedValueProvider(
      key: key?.buildKey(context, ref, zacContext),
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
  final Widget Function(
      BuildContext context, WidgetRef ref, ZacBuildContext zacContext) builder;
  final List<ZacTransformer>? transformer;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final zacContext = useZacBuildContext(ref);
    final provideValue = useMemoized(
      () {
        return SharedValue(null == transformer || true == transformer!.isEmpty
            ? value
            : transformer!.transformValues(
                ZacTransformValue(value),
                zacContext,
              ));
      },
      [value, family, transformer],
    );
    return ProviderScope(
      overrides: [
        SharedValue.provider(family).overrideWithProvider(
            AutoDisposeStateProvider<SharedValue>((_) => provideValue)),
      ],
      child: ZacUpdateContext(
          builder: (ctx) => builder(ctx.context, ctx.ref, ctx)),
    );
  }
}
