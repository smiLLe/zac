import 'package:zac/zac.dart';
import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

part 'shared_value.freezed.dart';
part 'shared_value.g.dart';

Type _typeOf<T>() => T;

@defaultConverterFreezed
class SharedValue with _$SharedValue {
  const SharedValue._();

  factory SharedValue(Object data) = FilledSharedValue;
  factory SharedValue.empty() = EmptySharedValue;

  static final provider = StateProvider.family.autoDispose<SharedValue, String>(
    (ref, fam) => SharedValue.empty(),
    name: 'AnyWidget SharedValue',
  );

  static Object getFilled(
      SharedValueConsumeType type, ZacBuildContext context, String name) {
    return type
        .map(
            watch: (_) => context.ref.watch(provider(name)),
            read: (_) => context.ref.read(provider(name)))
        .map(
          (value) => value.data,
          empty: (_) => throw StateError('''
Could not find a ${_typeOf<SharedValue>()} for name: "$name".
Provide a ${_typeOf<SharedValue>()} via "${SharedValueProviderBuilder.unionValue}".
See "${_typeOf<SharedValueProviderBuilder>()}" for more info.
'''),
        );
  }

  static void update(ZacBuildContext context, Object value, String name,
      {Object Function(Object current)? reduce}) {
    final notifier = context.ref.read(SharedValue.provider(name).notifier);
    notifier.state = SharedValue(reduce?.call(getFilled(
          const SharedValueConsumeType.read(),
          context,
          name,
        )) ??
        value);
  }

  static Object transform(
      List<SharedValueTransformer> transformer,
      Object value,
      ZacBuildContext context,
      SharedValueInteractionType interaction) {
    if (value is List) {
      return value
          .cast<Object>()
          .map((Object e) => transformer.transformSharedValues(e, interaction))
          .toList();
    }

    if (!ConverterHelper.isConverter(value)) {
      return (value as Map<String, dynamic>).cast<String, Object>().map((key,
              value) =>
          MapEntry(key, transformer.transformSharedValues(value, interaction)));
    }

    return transformer.transformSharedValues(value, interaction);
  }
}

@nonConverterFreezed
class SharedValueInteractionType with _$SharedValueInteractionType {
  const SharedValueInteractionType._();

  factory SharedValueInteractionType.action({
    required ZacBuildContext context,
    required ActionPayload payload,
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

abstract class SharedValueTransformer {
  factory SharedValueTransformer.fromJson(Map<String, dynamic> json) =>
      ConverterHelper.convertToType<SharedValueTransformer>(json);

  Object transform(Object value, SharedValueInteractionType interaction);
}

extension SharedValueTransformerOnList on List<SharedValueTransformer> {
  Object transformSharedValues(
          Object value, SharedValueInteractionType interaction) =>
      fold<Object>(
          value,
          (previousValue, element) =>
              element.transform(previousValue, interaction));
}

@defaultConverterFreezed
class BuiltInTransformer
    with _$BuiltInTransformer
    implements SharedValueTransformer {
  const BuiltInTransformer._();

  static const String unionValue = 'z:1:SharedValue:Transform:convert';
  static const String unionValueIntAdd = 'z:1:SharedValue:Transform:Int.add';

  factory BuiltInTransformer.fromJson(Map<String, dynamic> json) =>
      _$BuiltInTransformerFromJson(json);

  @FreezedUnionValue(BuiltInTransformer.unionValue)
  factory BuiltInTransformer.convert() = _Convert;

  @FreezedUnionValue(BuiltInTransformer.unionValueIntAdd)
  factory BuiltInTransformer.intAdd({required int amount}) = _IntAdd;

  @override
  Object transform(Object value, SharedValueInteractionType interaction) {
    return map(
        convert: (obj) => ConverterHelper.convertToType<Object>(value),
        intAdd: (obj) {
          assert(value is int, 'value is no int in $unionValueIntAdd');
          return (value as int) + obj.amount;
        });
  }
}

@defaultConverterFreezed
class UpdateSharedValue with _$UpdateSharedValue implements AnyAction {
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
      SharedValue.update(
        context,
        null == transformer || true == transformer!.isEmpty
            ? value
            : SharedValue.transform(
                transformer!,
                value,
                context,
                SharedValueInteractionType.action(
                  context: context,
                  payload: payload,
                )),
        name,
      );
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
    required Object value,
    List<SharedValueTransformer>? transformer,
    required String name,
    required ZacWidget child,
  }) = _SharedValueProviderBuilder;

  @override
  SharedValueProvider buildWidget(ZacBuildContext context) {
    return SharedValueProvider(
      key: key?.build(context),
      transformer: transformer,
      value: value,
      name: name,
      child: child,
    );
  }
}

class SharedValueProvider extends StatelessWidget {
  const SharedValueProvider({
    required this.value,
    this.transformer,
    required this.name,
    required this.child,
    Key? key,
  }) : super(key: key);

  final Object value;
  final String name;
  final ZacWidget child;
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
                  : SharedValue.transform(transformer!, value, context,
                      SharedValueInteractionType.provide(context: context))))),
        ],
        child: UpdateContextBuilder(
          builder: (context) => child.buildWidget(context),
        ),
      ),
    );
  }
}
