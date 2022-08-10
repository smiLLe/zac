import 'package:flutter/widgets.dart';
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

@defaultConverterFreezed
class SharedValue with _$SharedValue {
  const SharedValue._();

  factory SharedValue(Object? data) = FilledSharedValue;
  const factory SharedValue.empty() = EmptySharedValue;

  static final provider = StateProvider.family.autoDispose<SharedValue, String>(
    (_, __) => const SharedValue.empty(),
    name: 'Zac SharedValue',
  );

  static Object? _extract(SharedValue sharedValue, String ifEmptyMessage) =>
      sharedValue.map(
        (obj) => obj.data,
        empty: (_) => throw AccessEmptySharedValueError(ifEmptyMessage),
      );

  static Object? getFilled(
      SharedValueConsumeType type, ZacBuildContext context, String name) {
    final error = '''
Could not find a $SharedValue for name: "$name".
Provide a $SharedValue via "${SharedValueProviderBuilder.unionValue}".
See "$SharedValueProviderBuilder" for more info.
''';
    return type.map<Object?>(
      watch: (obj) {
        if (null == obj.select || true == obj.select?.isEmpty) {
          return _extract(context.ref.watch(SharedValue.provider(name)), error);
        }

        return context.ref.watch(SharedValue.provider(name).select(
            (sharedValue) => obj.select!.transformSharedValues(
                _extract(sharedValue, error),
                ZacSharedValueInteractionType.consume(context: context))));
      },
      read: (_) => _extract(context.ref.read(provider(name)), error),
    );
  }

  static void update(
    ZacBuildContext context,
    String name,
    Object? Function(Object? current) update,
  ) {
    context.ref.read(SharedValue.provider(name).notifier).update((sharedValue) {
      return SharedValue(update(_extract(sharedValue, '''
It was not possible to update the $SharedValue "$name",
because the $SharedValue did not exist until now.
Consider providing a $SharedValue via "${SharedValueProviderBuilder.unionValue}"
in your Widget tree before trying to update the $SharedValue.''')));
    });
  }

  static Object? transform(List<SharedValueTransformer> transformer,
      Object? value, SharedValueInteractionType interaction) {
    return transformer.transformSharedValues(value, interaction);
  }
}

abstract class SharedValueInteractionType {}

extension WhenZacSharedValueInteractionType on SharedValueInteractionType {
  T? whenZac<T extends Object?>(
      T? Function(ZacSharedValueInteractionType obj) cb,
      {T? Function(SharedValueInteractionType obj)? orElse}) {
    if (this is ZacSharedValueInteractionType) {
      return cb(this as ZacSharedValueInteractionType);
    }

    return orElse?.call(this);
  }
}

@nonConverterFreezed
class ZacSharedValueInteractionType
    with _$ZacSharedValueInteractionType
    implements SharedValueInteractionType {
  const ZacSharedValueInteractionType._();

  factory ZacSharedValueInteractionType.action({
    required ZacBuildContext context,
    required ActionPayload payload,
    required Object? current,
  }) = ZacSharedValueInteractionTypeAction;

  factory ZacSharedValueInteractionType.consume({
    required ZacBuildContext context,
  }) = ZacSharedValueInteractionTypeConsume;

  factory ZacSharedValueInteractionType.provide({
    required ZacBuildContext context,
  }) = ZacSharedValueInteractionTypeProvide;
}

@defaultConverterFreezed
class UpdateSharedValue with _$UpdateSharedValue implements ZacAction {
  const UpdateSharedValue._();

  static const String unionValue = 'z:1:SharedValue.update';

  factory UpdateSharedValue.fromJson(Map<String, dynamic> json) =>
      _$UpdateSharedValueFromJson(json);

  @FreezedUnionValue(UpdateSharedValue.unionValue)
  factory UpdateSharedValue({
    required String name,
    required Object value,
    List<SharedValueTransformer>? transformer,
  }) = _UpdateSharedValue;

  @override
  void execute(ZacBuildContext context, ActionPayload payload) =>
      SharedValue.update(context, name, (current) {
        return null == transformer || true == transformer!.isEmpty
            ? value
            : SharedValue.transform(
                transformer!,
                value,
                ZacSharedValueInteractionType.action(
                  context: context,
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
    List<SharedValueTransformer>? select,
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
    List<SharedValueTransformer>? transformer,
    required String name,
    required ZacWidget child,
  }) = _SharedValueProviderBuilder;

  @override
  SharedValueProvider buildWidget(ZacBuildContext context) {
    return SharedValueProvider(
      key: key?.buildKey(context),
      transformer: transformer,
      value: value,
      name: name,
      builder: child.buildWidget,
    );
  }
}

class SharedValueProvider extends StatelessWidget {
  const SharedValueProvider({
    required this.value,
    this.transformer,
    required this.name,
    required this.builder,
    Key? key,
  }) : super(key: key);

  final Object? value;
  final String name;
  final Widget Function(ZacBuildContext context) builder;
  final List<SharedValueTransformer>? transformer;

  @override
  Widget build(BuildContext context) {
    return ZacUpdateContext(
      builder: (context) => ProviderScope(
        overrides: [
          SharedValue.provider(name).overrideWithValue(
              StateController<SharedValue>(SharedValue(
                  null == transformer || true == transformer!.isEmpty
                      ? value
                      : SharedValue.transform(
                          transformer!,
                          value,
                          ZacSharedValueInteractionType.provide(
                              context: context))))),
        ],
        child: ZacUpdateContext(builder: builder),
      ),
    );
  }
}
