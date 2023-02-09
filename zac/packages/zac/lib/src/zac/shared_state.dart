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

part 'shared_state.freezed.dart';
part 'shared_state.g.dart';

typedef SharedStateFamily = String;
typedef SharedStateType = Object?;
typedef ZacSharedStateUpdateReducer = SharedStateType Function(
    SharedStateType current);
typedef ZacSharedStateUpdate = void Function(
    ZacSharedStateUpdateReducer reduce);

@freezedZacDefaults
class SharedState with _$SharedState {
  static final provider = Provider.family<SharedState, SharedStateFamily>(
    (_, family) => throw StateError('''
Could not find a $SharedState for family "$family".'''),
    name: 'Zac $SharedState',
  );

  static SharedStateType consume({
    required BuildContext context,
    required ZacContext zacContext,
    required SharedStateFamily family,
  }) {
    final consumedValue = zacContext.consume.map(
      (obj) {
        return obj.ref.watch(SharedState.provider(family)).value;
      },
      manual: (obj) {
        return obj.container.read(SharedState.provider(family)).value;
      },
    );

    // final consumedValue = consume.map<SharedStateType>(
    //   read: (_) => context.widgetRef
    //       .read<SharedState>(SharedState.provider(family))
    //       .value,
    //   watch: (obj) => null != obj.select
    //       ? context.widgetRef.watch<SharedStateType>(
    //           SharedState.provider(family).select<SharedStateType>((state) {
    //           return obj.select!.build(context, zacContext).transform(
    //               ZacTransformValue(state.value), context, zacContext);
    //         }))
    //       : context.widgetRef
    //           .watch<SharedState>(SharedState.provider(family))
    //           .value,
    // );

    return consumedValue is ZacBuilder<Object>
        ? consumedValue.build(context, zacContext)
        : consumedValue;
  }

  factory SharedState({
    required SharedStateFamily family,
    required SharedStateType value,
    required void Function(SharedStateType Function(SharedStateType current) cb)
        update,
  }) = _SharedStateFamily;
}

@freezed
class ZacSharedState with _$ZacSharedState {
  static final provider =
      Provider.family<ZacSharedStateProvided, SharedStateFamily>((ref, family) {
    throw UnimplementedError();
  });

  factory ZacSharedState(
    SharedStateFamily family,
    SharedStateType Function(ProviderRef<Object?> ref) create,
  ) = ZacSharedStateCreate;

  factory ZacSharedState.provided(
    SharedStateFamily family,
    SharedStateType value,
    ZacSharedStateUpdate udpate,
  ) = ZacSharedStateProvided;
}

@freezedZacBuilder
class SharedStateConsumeType with _$SharedStateConsumeType {
  static const String unionValue = 'z:1:SharedState.watch';
  static const String unionValueRead = 'z:1:SharedState.read';

  factory SharedStateConsumeType.fromJson(Map<String, dynamic> json) =>
      _$SharedStateConsumeTypeFromJson(json);

  @FreezedUnionValue(SharedStateConsumeType.unionValue)
  const factory SharedStateConsumeType.watch({
    ZacBuilder<List<ZacTransform>>? select,
  }) = _Watch;

  @FreezedUnionValue(SharedStateConsumeType.unionValueRead)
  const factory SharedStateConsumeType.read() = _Read;
}

@freezedZacBuilder
class ZacSharedStateProvide with _$ZacSharedStateProvide {
  static const String unionValue = 'z:1:SharedStateType:Value';
  static const String unionValueBuilder = 'z:1:SharedStateType:Builder';
  static const String unionValueNull = 'z:1:SharedStateType:Null';

  factory ZacSharedStateProvide.fromJson(Map<String, dynamic> json) =>
      _$ZacSharedStateProvideFromJson(json);

  @FreezedUnionValue(ZacSharedStateProvide.unionValue)
  factory ZacSharedStateProvide.value(Object value) =
      _ZacSharedStateProvideValue;

  @FreezedUnionValue(ZacSharedStateProvide.unionValueBuilder)
  factory ZacSharedStateProvide.builder(ZacBuilder<Object> value) =
      _ZacSharedStateProvideBuilder;

  @FreezedUnionValue(ZacSharedStateProvide.unionValueNull)
  factory ZacSharedStateProvide.n() = _ZacSharedStateProvideNull;
}

@freezedZacBuilder
class ZacSharedStateProvider
    with _$ZacSharedStateProvider
    implements ZacBuilder<Widget> {
  ZacSharedStateProvider._();
  factory ZacSharedStateProvider.fromJson(Map<String, dynamic> json) =>
      _$ZacSharedStateProviderFromJson(json);

  @FreezedUnionValue('z:1:SharedStates.provide')
  factory ZacSharedStateProvider({
    required Map<SharedStateFamily, ZacSharedStateProvide> states,
    required ZacBuilder<Widget> child,
  }) = _ZacSharedStateProvider;

  late final Map<String, Object?> sharedStates = states.map(
    (key, value) {
      return MapEntry<String, Object?>(
        key,
        value.map(
          value: (obj) => obj.value,
          builder: (obj) => obj.value,
          n: (_) => null,
        ),
      );
    },
  );

  @override
  Widget build(BuildContext context, ZacContext zacContext) {
    return ZacSharedStateProviderWidget(
      buildChild: child.build,
      states: sharedStates,
    );
  }
}

class ZacSharedStateProviderWidget extends HookWidget {
  const ZacSharedStateProviderWidget(
      {required this.buildChild, required this.states, super.key});

  final Widget Function(BuildContext context, ZacContext zacContext) buildChild;
  final Map<String, Object?> states;

  void Function(SharedStateType Function(SharedStateType current) cb)
      _getUpdate(ProviderRef<SharedState> ref) {
    return (cb) {
      ref.state = SharedState(
        family: ref.state.family,
        value: cb(ref.state.value),
        update: _getUpdate(ref),
      );
    };
  }

  @override
  Widget build(BuildContext context) {
    final overrides = useMemoized<List<Override>>(() {
      return [
        ...states.entries.map(
          (entry) => SharedState.provider(entry.key).overrideWith(
            (ref) {
              /// TODO: Allow actions to be executed on dispose?
              /// It would f.e. allow a Completer to .complete()
              return SharedState(
                value: entry.value,
                family: entry.key,
                update: _getUpdate(ref),
              );
            },
          ),
        )
      ];
    }, [states]);

    final parentContainer = ProviderScope.containerOf(context);
    final container = useMemoized(() {
      return ProviderContainer(
        parent: parentContainer,
        overrides: overrides,
      );
    }, [parentContainer, overrides]);

    useEffect(() => container.dispose, [container]);

    return UncontrolledProviderScope(
      container: container,
      child: ZacFlutterBuilder(builder: buildChild),
    );
  }
}

@freezedZacBuilder
class SharedStateConsume<T>
    with _$SharedStateConsume<T>
    implements ZacBuilder<T> {
  SharedStateConsume._();

  static const String unionValue = 'z:1:SharedState.consume';

  factory SharedStateConsume.fromJson(Map<String, dynamic> json) =>
      _$SharedStateConsumeFromJson<T>(json);

  static SharedStateConsume<T> fromRegister<T extends Object?>(
      Map<String, dynamic> map) {
    return SharedStateConsume<T>.fromJson(map);
  }

  @FreezedUnionValue(SharedStateConsume.unionValue)
  factory SharedStateConsume({
    required SharedStateFamily family,
    SharedStateConsumeType? consume,
    ZacBuilder<List<ZacTransform>?>? transformer,
  }) = _SharedStateConsume<T>;

  @override
  T build(BuildContext context, ZacContext zacContext) {
    final value = SharedState.consume(
      context: context,
      zacContext: zacContext,
      family: family,
    );

    final buildTransformer = transformer?.build(context, zacContext);

    if (null == value) {
      if (null is T && true != buildTransformer?.isNotEmpty) {
        return null as T;
      } else if (null is! T && true != buildTransformer?.isNotEmpty) {
        throw StateError('''
It was not possible to return a $SharedState of type $T from ${SharedStateConsume<T>}.build()
because the value is null and there are no transformers added.
Value: $value''');
      }
    }

    if (value is T && true != buildTransformer?.isNotEmpty) {
      return value;
    }

    if (null == buildTransformer || buildTransformer.isEmpty) {
      throw StateError('''
It was not possible to return a $SharedState of type $T from ${SharedStateConsume<T>}.build()
because there were no transformer.
The value of type ${value.runtimeType} was expected to be transformed.
Value: $value''');
    }

    final transformedVal = buildTransformer.transform(
        ZacTransformValue(value), context, zacContext);
    if (transformedVal is! T) {
      final transformerErr = buildTransformer.map((e) => e.runtimeType);

      throw StateError('''
It was not possible to return a $SharedState of type $T from ${SharedStateConsume<T>}.build()
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
class SharedStateActions
    with _$SharedStateActions
    implements ZacBuilder<ZacAction> {
  SharedStateActions._();

  factory SharedStateActions.fromJson(Map<String, dynamic> json) =>
      _$SharedStateActionsFromJson(json);

  @FreezedUnionValue('z:1:SharedState.update')
  factory SharedStateActions.update({
    required Map<String, ZacSharedStateProvide> states,
  }) = _SharedStateActionsUpdate;

  /// Takes the current [SharedState] from [family], pass it into the
  /// [transformer] and update it afterwards
  @FreezedUnionValue('z:1:SharedState.transformCurrentValue')
  factory SharedStateActions.transformCurrentValue({
    required SharedStateFamily family,
    required ZacBuilder<List<ZacTransform>> transformer,
  }) = _SharedStateActionsTransformCurrentValue;

  late final ZacAction _action =
      ZacAction((BuildContext context, ZacContext zacContext) {
    map(
      update: (obj) {
        for (var entry in obj.states.entries) {
          context.widgetRef.read(SharedState.provider(entry.key)).update((_) {
            return entry.value.map(
              value: (obj) => obj.value,
              builder: (obj) => obj.value,
              n: (_) => null,
            );
          });
        }
      },
      transformCurrentValue: (obj) {
        context.widgetRef
            .read(SharedState.provider(obj.family))
            .update((current) {
          final nextValue = obj.transformer
              .build(context, zacContext)
              .transform(ZacTransformValue(current), context, zacContext);
          return nextValue;
        });
      },
    );
  });

  @override
  ZacAction build(BuildContext context, ZacContext zacContext) => _action;
}
