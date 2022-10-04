import 'package:flutter/widgets.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:zac/src/base.dart';
import 'package:zac/src/flutter/foundation.dart';
import 'package:zac/src/zac/any_value.dart';
import 'package:zac/src/zac/interactions.dart';
import 'package:zac/src/zac/misc.dart';
import 'package:zac/src/zac/update_widget.dart';
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

  static Object? getFilled(
      SharedValueConsumeType type, ZacRef zacRef, SharedValueFamily family) {
    final error = '''
Could not find a $SharedValue for family: "$family".
Provide a $SharedValue via "${SharedValueProviderBuilder.unionValue}".
See "$SharedValueProviderBuilder" for more info.
''';
    return type.map<Object?>(
      watch: (obj) {
        if (null == obj.select || true == obj.select?.isEmpty) {
          return zacRef.when(
            widget: (ref) =>
                _extractData(ref.watch(SharedValue.provider(family)), error),
            adProvider: (ref) =>
                _extractData(ref.watch(SharedValue.provider(family)), error),
          );
        }

        return zacRef.when(
          widget: (ref) => ref.watch(SharedValue.provider(family).select(
              (sharedValue) => obj.select!.transformValues(
                  ZacTransformValue(_extractData(sharedValue, error)),
                  zacRef))),
          adProvider: (ref) => ref.watch(SharedValue.provider(family).select(
              (sharedValue) => obj.select!.transformValues(
                  ZacTransformValue(_extractData(sharedValue, error)),
                  zacRef))),
        );
      },
      read: (_) => zacRef.when(
        widget: (ref) =>
            _extractData(ref.read(SharedValue.provider(family)), error),
        adProvider: (ref) =>
            _extractData(ref.read(SharedValue.provider(family)), error),
      ),
    );
  }

  static void update(
    ZacRef zacRef,
    SharedValueFamily family,
    Object? Function(Object? current) update,
  ) {
    zacRef
        .when<StateController<SharedValue>>(
      widget: (ref) => ref.read(SharedValue.provider(family).notifier),
      adProvider: (ref) => ref.read(SharedValue.provider(family).notifier),
    )
        .update((sharedValue) {
      return SharedValue(update(_extractData(sharedValue, '''
It was not possible to update the $SharedValue "$family",
because the $SharedValue did not exist until now.
Consider providing a $SharedValue via "${SharedValueProviderBuilder.unionValue}"
in your Widget tree before trying to update the $SharedValue.''')));
    });
  }

  static void listenAndExecuteActions(
      BuildContext context,
      WidgetRef ref,
      ZacInteractionLifetime lifetime,
      SharedValueFamily family,
      ZacInteractions interactions) {
    ref.listen<SharedValue>(SharedValue.provider(family), (previous, next) {
      interactions.execute(
        context,
        ref,
        lifetime,
        prefillBag: (bag) => bag..setActionPayload(_extractData(next, '''
It was not possible to listen for $SharedValue($family) changes and execute interactions,
because the $SharedValue did not exist until now.
Consider providing a $SharedValue via "${SharedValueProviderBuilder.unionValue}"
in your Widget tree before trying to update the $SharedValue.''')),
      );
    });
  }
}

@defaultConverterFreezed
class UpdateSharedValueInteractions
    with _$UpdateSharedValueInteractions
    implements ZacInteraction {
  const UpdateSharedValueInteractions._();

  static const String unionValue = 'z:1:Interaction:SharedValue.update';
  static const String unionValueReplaceWith =
      'z:1:Interaction:SharedValue.replaceWith';

  factory UpdateSharedValueInteractions.fromJson(Map<String, dynamic> json) =>
      _$UpdateSharedValueInteractionsFromJson(json);

  @FreezedUnionValue(UpdateSharedValueInteractions.unionValue)
  factory UpdateSharedValueInteractions({
    required SharedValueFamily family,
    required List<ZacTransformer> transformer,
  }) = _SharedValueInteractionUpdate;

  @FreezedUnionValue(UpdateSharedValueInteractions.unionValueReplaceWith)
  factory UpdateSharedValueInteractions.replaceWith({
    required SharedValueFamily family,
    required Object value,
    List<ZacTransformer>? transformer,
  }) = _SharedValueInteractionReplaceWith;

  @override
  void execute(BuildContext context, WidgetRef ref,
          ZacInteractionLifetime lifetime, ContextBag bag) =>
      SharedValue.update(
        ZacRef.widget(ref),
        family,
        (current) => map(
          (obj) {
            assert(obj.transformer.isNotEmpty);

            return obj.transformer.transformValues(
              ZacTransformValue(current),
              ZacRef.widget(ref),
              prefillBag: (bag) => bag..addEntries(bag.entries),
            );
          },
          replaceWith: (obj) {
            return null == obj.transformer || true == obj.transformer!.isEmpty
                ? obj.value
                : obj.transformer!.transformValues(
                    ZacTransformValue(obj.value),
                    ZacRef.widget(ref),
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
    implements FlutterWidget {
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
    required FlutterWidget child,
  }) = _SharedValueProviderBuilder;

  @override
  SharedValueProvider buildWidget(
      BuildContext context, WidgetRef ref, ZacInteractionLifetime lifetime) {
    return SharedValueProvider(
      key: key?.buildKey(context, ref, lifetime),
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
          BuildContext context, WidgetRef ref, ZacInteractionLifetime lifetime)
      builder;
  final List<ZacTransformer>? transformer;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final provideValue = useMemoized(
      () {
        return SharedValue(null == transformer || true == transformer!.isEmpty
            ? value
            : transformer!.transformValues(
                ZacTransformValue(value),
                ZacRef.widget(ref),
              ));
      },
      [value, family, transformer],
    );
    return ProviderScope(
      overrides: [
        SharedValue.provider(family).overrideWithProvider(
            AutoDisposeStateProvider<SharedValue>((_) => provideValue)),
      ],
      child: ZacUpdateWidget(builder: builder),
    );
  }
}
