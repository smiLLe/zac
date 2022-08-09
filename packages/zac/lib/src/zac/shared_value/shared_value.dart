import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:zac/src/base.dart';
import 'package:zac/src/flutter/foundation/foundation.dart';
import 'package:zac/src/zac/actions/action.dart';
import 'package:zac/src/zac/any_value/any_value.dart';
import 'package:zac/src/zac/context/widget_context.dart';
import 'package:zac/src/zac/shared_value/transformers.dart';

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

  static Object? getFilled(
      SharedValueConsumeType type, ZacBuildContext context, String name) {
    return type
        .map(
            watch: (_) => context.ref.watch(provider(name)),
            read: (_) => context.ref.read(provider(name)))
        .map(
          (value) => value.data,
          empty: (_) => throw AccessEmptySharedValueError('''
Could not find a $SharedValue for name: "$name".
Provide a $SharedValue via "${SharedValueProviderBuilder.unionValue}".
See "$SharedValueProviderBuilder" for more info.
'''),
        );
  }

  static void update(
    ZacBuildContext context,
    String name,
    Object? Function(Object? current) update,
  ) {
    context.ref
        .read(SharedValue.provider(name).notifier)
        .update((state) => state.map(
              (obj) => SharedValue(update(obj.data)),
              empty: (_) => throw AccessEmptySharedValueError('''
It was not possible to update the $SharedValue "$name",
because the $SharedValue did not exist until now.
Consider providing a $SharedValue via "${SharedValueProviderBuilder.unionValue}"
in your Widget tree before trying to update the $SharedValue.
'''),
            ));
  }

  static Object? transform(List<SharedValueTransformer> transformer,
      Object? value, SharedValueInteractionType interaction) {
    return transformer.transformSharedValues(value, interaction);
  }
}

@nonConverterFreezed
class SharedValueInteractionType with _$SharedValueInteractionType {
  const SharedValueInteractionType._();

  factory SharedValueInteractionType.action({
    required ZacBuildContext context,
    required ActionPayload payload,
    required Object? current,
  }) = _SharedValueInteractionTypeAction;

  factory SharedValueInteractionType.consume({
    required ZacBuildContext context,
  }) = _SharedValueInteractionTypeConsume;

  factory SharedValueInteractionType.provide({
    required ZacBuildContext context,
  }) = _SharedValueInteractionTypeProvide;

  factory SharedValueInteractionType.other({Object? data}) =
      _SharedValueInteractionTypeOther;
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
                SharedValueInteractionType.action(
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
  const factory SharedValueConsumeType.watch() = _SharedValueConsumeTypeWatch;

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
    return UpdateContextBuilder(
      builder: (context) => ProviderScope(
        overrides: [
          SharedValue.provider(name).overrideWithValue(
              StateController<SharedValue>(SharedValue(null == transformer ||
                      true == transformer!.isEmpty
                  ? value
                  : SharedValue.transform(transformer!, value,
                      SharedValueInteractionType.provide(context: context))))),
        ],
        child: UpdateContextBuilder(builder: builder),
      ),
    );
  }
}
