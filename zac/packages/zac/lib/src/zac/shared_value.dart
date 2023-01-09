import 'package:flutter/widgets.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:zac/src/base.dart';
import 'package:zac/src/flutter/all.dart';
import 'package:zac/src/zac/action.dart';
import 'package:zac/src/zac/context.dart';
import 'package:zac/src/zac/transformers.dart';
import 'package:zac/src/zac/zac_builder.dart';

part 'shared_value.freezed.dart';
part 'shared_value.g.dart';

class AccessEmptySharedValueError extends StateError {
  AccessEmptySharedValueError(super.message);
}

typedef SharedValueFamily = String;
typedef SharedValueType = Object?;

abstract class SharedValue {
  static final provider =
      StateProvider.family.autoDispose<SharedValueType, SharedValueFamily>(
    (_, family) => throw AccessEmptySharedValueError('''
Could not find a $SharedValue for family: "$family".
Provide a $SharedValue via "$SharedValueProviderBuilder".
See "$SharedValueProviderBuilder" for more info.
'''),
    name: 'Zac SharedValue',
  );

  static SharedValueType get({
    required BuildContext context,
    required ZacContext zacContext,
    required SharedValueConsumeType consumeType,
    required SharedValueFamily family,
  }) {
    final consumedValue = consumeType.map<Object?>(
      read: (_) =>
          context.widgetRef.read<Object?>(SharedValue.provider(family)),
      watch: (obj) => null != obj.select
          ? context.widgetRef
              .watch<Object?>(SharedValue.provider(family).select((value) {
              return obj.select!.build(context, zacContext).transform(
                  ZacTransformValue(value), context, zacContext, null);
            }))
          : context.widgetRef.watch<Object?>(SharedValue.provider(family)),
    );

    return consumedValue is ZacBuilder<Object>
        ? consumedValue.build(context, zacContext)
        : consumedValue;
  }

  static void update(
    BuildContext context,
    ZacContext zacContext,
    SharedValueFamily family,
    SharedValueType Function(SharedValueType current) update,
  ) {
    /// Read the value first in order to trigger the custom exception.
    /// Otherwise the .update() below will throw a StateError by riverpod.
    /// This happens since riverpod 2.0 release
    if (!context.widgetRef.exists(SharedValue.provider(family))) {
      context.widgetRef.read(SharedValue.provider(family));
    }

    context.widgetRef
        .read(SharedValue.provider(family).notifier)
        .update(update);
  }
}

@freezedZacBuilder
class SharedValueActions
    with _$SharedValueActions
    implements ZacBuilder<ZacAction> {
  SharedValueActions._();

  factory SharedValueActions.fromJson(Map<String, dynamic> json) =>
      _$SharedValueActionsFromJson(json);

  /// Build the value and set the result as SharedValue
  @FreezedUnionValue('z:1:SharedValue.update')
  factory SharedValueActions.update({
    required ZacBuilder<Object> value,
    required SharedValueFamily family,
  }) = _SharedValueActionsUpdate;

  /// Takes the current [Sharedvalue] from [family], pass it into the
  /// [transformer] and update it afterwards
  @FreezedUnionValue('z:1:SharedValue.transformCurrentValue')
  factory SharedValueActions.transformCurrentValue({
    required SharedValueFamily family,
    required ZacListBuilder<ZacTransform, List<ZacTransform>> transformer,
  }) = _SharedValueActionsTransformCurrentValue;

  /// Takes the [ZacAction] payload and pass it to [transformer].
  /// After that it will update the [SharedValue].
  /// Consider using [ZacActionPayloadTransformer] in [transformer].
  @FreezedUnionValue('z:1:SharedValue.updateFromPayload')
  factory SharedValueActions.updateFromPayload({
    required SharedValueFamily family,
    required ZacListBuilder<ZacTransform, List<ZacTransform>> transformer,
  }) = _SharedValueActionsUpdateFromPayload;

  /// Will set Null as [SharedValue]
  @FreezedUnionValue('z:1:null.updateShared')
  factory SharedValueActions.updateWithNull({
    required SharedValueFamily family,
  }) = _SharedValueActionsUpdateWIthNull;

  /// Will set [ZacBuilder<Widget>] as [SharedValue]
  @FreezedUnionValue('z:1:Widget.updateShared')
  factory SharedValueActions.updateWithWidget({
    required ZacBuilder<Widget> value,
    required SharedValueFamily family,
  }) = _SharedValueActionsUpdateWithWidget;

  /// Will set a List of [ZacBuilder<Widget>] as [SharedValue]
  @FreezedUnionValue('z:1:List<Widget>.updateShared')
  factory SharedValueActions.updateWithWidgets({
    required ZacListBuilder<Widget, List<Widget>> value,
    required SharedValueFamily family,
  }) = _SharedValueActionsUpdateWithWidgets;

  /// Will set any ZacBuilder as [SharedValue]
  @FreezedUnionValue('z:1:ZacBuilder<Object>.updateShared')
  factory SharedValueActions.updateWithBuilder({
    required ZacBuilder<Object> value,
    required SharedValueFamily family,
  }) = _SharedValueActionsUpdateWithBuilder;

  @FreezedUnionValue('z:1:SharedValue.invalidate')
  factory SharedValueActions.invalidate({
    required SharedValueFamily family,
  }) = _SharedValueActionsRefresh;

  late final ZacAction _action = ZacAction(
      (ZacActionPayload payload, BuildContext context, ZacContext zacContext) {
    map(
      updateWithBuilder: (obj) =>
          SharedValue.update(context, zacContext, obj.family, (_) => obj.value),
      updateWithWidgets: (obj) =>
          SharedValue.update(context, zacContext, obj.family, (_) => obj.value),
      updateWithWidget: (obj) =>
          SharedValue.update(context, zacContext, obj.family, (_) => obj.value),
      updateWithNull: (obj) =>
          SharedValue.update(context, zacContext, obj.family, (_) => null),
      update: (obj) {
        SharedValue.update(context, zacContext, obj.family,
            (_) => obj.value.build(context, zacContext));
      },
      transformCurrentValue: (obj) {
        SharedValue.update(context, zacContext, obj.family, (current) {
          final nextValue = obj.transformer
              .build(context, zacContext)
              .transform(
                  ZacTransformValue(current), context, zacContext, payload);
          return nextValue;
        });
      },
      updateFromPayload: (obj) {
        SharedValue.update(context, zacContext, obj.family, (current) {
          return obj.transformer.build(context, zacContext).transform(
              ZacTransformValue(payload), context, zacContext, payload);
        });
      },
      invalidate: (obj) {
        context.widgetRef.invalidate(SharedValue.provider(family));
      },
    );
  });

  @override
  ZacAction build(BuildContext context, ZacContext zacContext) => _action;
}

@freezedZacBuilder
class SharedValueConsumeType with _$SharedValueConsumeType {
  static const String unionValue = 'z:1:SharedValueConsume.watch';
  static const String unionValueRead = 'z:1:SharedValueConsume.read';

  factory SharedValueConsumeType.fromJson(Map<String, dynamic> json) =>
      _$SharedValueConsumeTypeFromJson(json);

  @FreezedUnionValue(SharedValueConsumeType.unionValue)
  const factory SharedValueConsumeType.watch({
    ZacListBuilder<ZacTransform, List<ZacTransform>>? select,
  }) = _SharedValueConsumeTypeWatch;

  @FreezedUnionValue(SharedValueConsumeType.unionValueRead)
  const factory SharedValueConsumeType.read() = _SharedValueConsumeTypeRead;
}

@freezedZacBuilder
class SharedValueProviderBuilder
    with _$SharedValueProviderBuilder
    implements ZacBuilder<Widget> {
  SharedValueProviderBuilder._();

  factory SharedValueProviderBuilder.fromJson(Map<String, dynamic> json) =>
      _$SharedValueProviderBuilderFromJson(json);

  @FreezedUnionValue('z:1:int.provide')
  factory SharedValueProviderBuilder.provideInt({
    ZacBuilder<Key?>? key,
    required int value,
    required String family,
    required ZacBuilder<Widget> child,
    @Default(true) bool autoCreate,
  }) = _ProvideInt;

  @FreezedUnionValue('z:1:double.provide')
  factory SharedValueProviderBuilder.provideDouble({
    ZacBuilder<Key?>? key,
    required double value,
    required String family,
    required ZacBuilder<Widget> child,
    @Default(true) bool autoCreate,
  }) = _ProvideDouble;

  @FreezedUnionValue('z:1:String.provide')
  factory SharedValueProviderBuilder.provideString({
    ZacBuilder<Key?>? key,
    required String value,
    required String family,
    required ZacBuilder<Widget> child,
    @Default(true) bool autoCreate,
  }) = _ProvideString;

  @FreezedUnionValue('z:1:bool.provide')
  factory SharedValueProviderBuilder.provideBool({
    ZacBuilder<Key?>? key,
    required bool value,
    required String family,
    required ZacBuilder<Widget> child,
    @Default(true) bool autoCreate,
  }) = _ProvideBool;

  @FreezedUnionValue('z:1:Object.provide')
  factory SharedValueProviderBuilder.provideObject({
    ZacBuilder<Key?>? key,
    required Object value,
    required String family,
    required ZacBuilder<Widget> child,
    ZacListBuilder<ZacTransform, List<ZacTransform>?>? transformer,
    @Default(true) bool autoCreate,
  }) = _ProvideObject;

  @FreezedUnionValue('z:1:null.provide')
  factory SharedValueProviderBuilder.provideNull({
    ZacBuilder<Key?>? key,
    required String family,
    required ZacBuilder<Widget> child,
    @Default(true) bool autoCreate,
  }) = _ProvideNull;

  @FreezedUnionValue('z:1:Widget.provide')
  factory SharedValueProviderBuilder.provideWidget({
    ZacBuilder<Key?>? key,
    required ZacBuilder<Widget> value,
    required String family,
    required ZacBuilder<Widget> child,
    @Default(true) bool autoCreate,
  }) = _ProvideWidget;

  @FreezedUnionValue('z:1:List<Widget>.provide')
  factory SharedValueProviderBuilder.provideWidgets({
    ZacBuilder<Key?>? key,
    required ZacListBuilder<Widget, List<Widget>> value,
    required String family,
    required ZacBuilder<Widget> child,
    @Default(true) bool autoCreate,
  }) = _ProvideWidgets;

  @FreezedUnionValue('z:1:Map<String, Widget>.provide')
  factory SharedValueProviderBuilder.provideWidgetsMap({
    ZacBuilder<Key?>? key,
    required ZacMapBuilder<Widget, Map<String, Widget>> value,
    required String family,
    required ZacBuilder<Widget> child,
    @Default(true) bool autoCreate,
  }) = _ProvideWidgetsMap;

  @FreezedUnionValue('z:1:ZacBuilder<Object>.provide')
  factory SharedValueProviderBuilder.provideAnyBuilder({
    ZacBuilder<Key?>? key,
    required ZacBuilder<Object> value,
    required String family,
    required ZacBuilder<Widget> child,
    @Default(true) bool autoCreate,
  }) = _ProvideAnyBuilder;

  SharedValueType valueBuilder(AutoDisposeStateProviderRef<SharedValueType> ref,
      BuildContext context, ZacContext zacContext) {
    return map<Object?>(
      provideNull: (_) => null,
      provideInt: (obj) => obj.value,
      provideDouble: (obj) => obj.value,
      provideBool: (obj) => obj.value,
      provideString: (obj) => obj.value,
      provideObject: (obj) =>
          obj.transformer?.build(context, zacContext)?.transform(
              ZacTransformValue(obj.value), context, zacContext, null) ??
          obj.value,
      provideWidget: (obj) => obj.value,
      provideWidgets: (obj) => obj.value,
      provideWidgetsMap: (obj) => obj.value,
      provideAnyBuilder: (obj) => obj.value,
    );
  }

  Widget _childBuilder(BuildContext context, ZacContext zacContext) =>
      child.build(context, zacContext);

  SharedValueProvider _buildWidget(
      BuildContext context, ZacContext zacContext) {
    return SharedValueProvider(
      key: key?.build(context, zacContext),
      valueBuilder: valueBuilder,
      family: family,
      childBuilder: _childBuilder,
      autoCreate: autoCreate,
    );
  }

  @override
  SharedValueProvider build(BuildContext context, ZacContext zacContext) {
    return _buildWidget(context, zacContext);
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

  final Widget Function(BuildContext context, ZacContext zacContext)
      childBuilder;
  final SharedValueFamily family;
  final SharedValueType Function(
    AutoDisposeStateProviderRef<SharedValueType> ref,
    BuildContext context,
    ZacContext zacContext,
  ) valueBuilder;
  final bool autoCreate;

  static void _autoCreateListener(
      SharedValueType? prev, SharedValueType next) {}

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final parentContainer = ProviderScope.containerOf(context);
    final zacContext = useZacContext();
    final override = useMemoized(() {
      return SharedValue.provider(family).overrideWith(
        (ref) => valueBuilder(ref, context, zacContext),
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

    return UncontrolledProviderScope(
      container: container,
      child: ZacFlutterBuilder(
        builder: !autoCreate
            ? childBuilder
            : (context, zacContext) {
                /// immediately create the AutoDispose Provider and its value
                /// and keep it alive as long as possible
                context.widgetRef.listen<SharedValueType>(
                  SharedValue.provider(family),
                  _autoCreateListener,
                );
                return childBuilder(context, zacContext);
              },
      ),
    );
  }
}

extension SharedValueOnBuildIn on BuildIn {
  SharedValueConsumeType get defaultConsumeType {
    switch (this) {
      case BuildIn.widget:
        return const SharedValueConsumeType.watch();
      case BuildIn.transformer:
      case BuildIn.action:
        return const SharedValueConsumeType.read();
    }
  }
}

@freezedZacBuilder
class ConsumeSharedValue<T>
    with _$ConsumeSharedValue<T>
    implements ZacBuilder<T> {
  const ConsumeSharedValue._();

  static const String union = 'z:1:SharedValue.consume';

  static ConsumeSharedValue<T> fromRegister<T extends Object?>(
      Map<String, dynamic> map) {
    return ConsumeSharedValue<T>.fromJson(map);
  }

  factory ConsumeSharedValue.fromJson(Map<String, dynamic> data) =>
      _$ConsumeSharedValueFromJson<T>(data);

  @FreezedUnionValue(ConsumeSharedValue.union)
  factory ConsumeSharedValue({
    required SharedValueFamily family,
    ZacListBuilder<ZacTransform, List<ZacTransform>?>? transformer,
    SharedValueConsumeType? forceConsume,
  }) = _ConsumeSharedValue<T>;

  @override
  T build(BuildContext context, ZacContext zacContext) {
    final value = SharedValue.get(
      context: context,
      zacContext: zacContext,
      consumeType: forceConsume ?? zacContext.buildIn.defaultConsumeType,
      family: family,
    );

    final buildTransformer = transformer?.build(context, zacContext);

    if (null == value) {
      if (null is T && true != buildTransformer?.isNotEmpty) {
        return null as T;
      } else if (null is! T && true != buildTransformer?.isNotEmpty) {
        throw StateError('''
It was not possible to return a $SharedValue of type $T from ${ConsumeSharedValue<T>}.build()
because the value is null and there are no transformers added.
Value: $value''');
      }
    }

    if (value is T && true != buildTransformer?.isNotEmpty) {
      return value;
    }

    if (null == buildTransformer || buildTransformer.isEmpty) {
      throw StateError('''
It was not possible to return a $SharedValue of type $T from ${ConsumeSharedValue<T>}.build()
because there were no transformer.
The value of type ${value.runtimeType} was expected to be transformed.
$value''');
    }

    final transformedVal = buildTransformer.transform(
        ZacTransformValue(value), context, zacContext, null);
    if (transformedVal is! T) {
      final transformerErr = buildTransformer.map((e) => e.runtimeType);

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

  static ConsumeSharedValueList<T, X>
      fromRegister<T extends Object?, X extends List<T>?>(
          Map<String, dynamic> map) {
    return ConsumeSharedValueList<T, X>.fromJson(map);
  }

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
    ZacListBuilder<ZacTransform, List<ZacTransform>?>? transformer,
    ZacListBuilder<ZacTransform, List<ZacTransform>?>? itemTransformer,
    SharedValueConsumeType? forceConsume,
  }) = _ConsumeSharedValueList<T, X>;

  T _transformItem({
    required Object? value,
    required BuildContext context,
    required ZacContext zacContext,
    required ZacListBuilder<ZacTransform, List<ZacTransform>?>? transformer,
  }) {
    final buildTransformer = transformer?.build(context, zacContext);
    if (null == value) {
      if (null is T && true != buildTransformer?.isNotEmpty) {
        return null as T;
      } else if (null is! T && true != buildTransformer?.isNotEmpty) {
        throw StateError('''
It was not possible to return a $SharedValue of type $T from ${ConsumeSharedValueList<T, X>}.build()
because the value is null and there are no transformers added.
Value: $value''');
      }
    }

    if (value is T && true != buildTransformer?.isNotEmpty) {
      return value;
    }

    if (null == buildTransformer || buildTransformer.isEmpty) {
      throw StateError('''
It was not possible to return a $SharedValue of type $T from ${ConsumeSharedValueList<T, X>}.build()
because there were no transformer.
The value of type ${value.runtimeType} was expected to be transformed.
$value''');
    }

    final transformedVal = buildTransformer.transform(
        ZacTransformValue(value), context, zacContext, null);

    if (transformedVal is! T) {
      final transformerErr = buildTransformer.map((e) => e.runtimeType);

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
  X build(BuildContext context, ZacContext zacContext) {
    final consumedValue = SharedValue.get(
      context: context,
      zacContext: zacContext,
      consumeType: forceConsume ?? zacContext.buildIn.defaultConsumeType,
      family: family,
    );

    if (consumedValue is! List) {
      throw StateError(
          'Unexpected $SharedValue in ${ConsumeSharedValueList<T, X>}: $consumedValue');
    }

    final list = [
      ...consumedValue.map<T>((dynamic e) {
        final value = e is ZacBuilder<Object?>
            ? e.build(context, zacContext)
            : e as Object?;
        return _transformItem(
          value: value,
          context: context,
          zacContext: zacContext,
          transformer: itemTransformer,
        );
      })
    ];

    final transformedList = transformer
            ?.build(context, zacContext)
            ?.transform(ZacTransformValue(list), context, zacContext, null) ??
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

  static ConsumeSharedValueMap<T, X>
      fromRegister<T extends Object?, X extends Map<String, T>?>(
          Map<String, dynamic> map) {
    return ConsumeSharedValueMap<T, X>.fromJson(map);
  }

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
    ZacListBuilder<ZacTransform, List<ZacTransform>?>? transformer,
    ZacListBuilder<ZacTransform, List<ZacTransform>?>? itemTransformer,
    SharedValueConsumeType? forceConsume,
  }) = _ConsumeSharedValueMap<T, X>;

  T _transformItem({
    required Object? value,
    required BuildContext context,
    required ZacContext zacContext,
    required ZacListBuilder<ZacTransform, List<ZacTransform>?>? transformer,
  }) {
    final buildTransformer = transformer?.build(context, zacContext);
    if (null == value) {
      if (null is T && true != buildTransformer?.isNotEmpty) {
        return null as T;
      } else if (null is! T && true != buildTransformer?.isNotEmpty) {
        throw StateError('''
It was not possible to return a $SharedValue of type $T from ${ConsumeSharedValueMap<T, X>}.build()
because the value is null and there are no transformers added.
Value: $value''');
      }
    }

    if (value is T && true != buildTransformer?.isNotEmpty) {
      return value;
    }

    if (null == buildTransformer || buildTransformer.isEmpty) {
      throw StateError('''
It was not possible to return a $SharedValue of type $T from ${ConsumeSharedValueMap<T, X>}.build()
because there were no transformer.
The value of type ${value.runtimeType} was expected to be transformed.
$value''');
    }

    final transformedVal = buildTransformer.transform(
        ZacTransformValue(value), context, zacContext, null);

    if (transformedVal is! T) {
      final transformerErr = buildTransformer.map((e) => e.runtimeType);

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
  X build(BuildContext context, ZacContext zacContext) {
    final consumedValue = SharedValue.get(
      context: context,
      zacContext: zacContext,
      consumeType: forceConsume ?? zacContext.buildIn.defaultConsumeType,
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
              ? (entry.value as ZacBuilder<Object?>).build(context, zacContext)
              : entry.value,
          context: context,
          zacContext: zacContext,
          transformer: itemTransformer,
        )
    };

    final transformedMap = transformer
            ?.build(context, zacContext)
            ?.transform(ZacTransformValue(map), context, zacContext, null) ??
        map;

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
