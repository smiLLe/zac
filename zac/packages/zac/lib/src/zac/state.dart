import 'package:flutter/widgets.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:zac/src/base.dart';
import 'package:zac/src/flutter/widgets/builder.dart';
import 'package:zac/src/zac/action.dart';
import 'package:zac/src/zac/context.dart';
import 'package:zac/src/zac/registry.dart';
import 'package:zac/src/zac/transformers.dart';
import 'package:zac/src/zac/zac_builder.dart';

part 'state.freezed.dart';
part 'state.g.dart';

typedef ZacStateValue = Object?;
typedef ZacStateFamily = String;
typedef ZacStateUpdateReducer = ZacStateValue Function(ZacStateValue current);
typedef ZacStateUpdate = void Function(ZacStateUpdateReducer reduce);

@freezed
class ZacState with _$ZacState {
  static final provider =
      Provider.family<ZacStateProvided, ZacStateFamily>((ref, family) {
    throw UnimplementedError();
  });

  factory ZacState(
    ZacStateFamily family,
    ZacStateValue Function(ProviderRef<Object?> ref) create,
  ) = ZacStateCreate;

  /// DO NOT USE
  /// Must only be used by Zac
  @internal
  factory ZacState.provided(
    ZacStateFamily family,
    ZacStateValue value,
    ZacStateUpdate update,
  ) = ZacStateProvided;
}

@freezedZacBuilder
class ZacStateProvide with _$ZacStateProvide implements ZacBuilder<ZacState> {
  ZacStateProvide._();
  factory ZacStateProvide.fromJson(Map<String, dynamic> json) =>
      _$ZacStateProvideFromJson(json);

  @FreezedUnionValue('z:1:State.provide')
  factory ZacStateProvide({
    required ZacStateFamily family,
    Object? value,
    @Default(true) bool mayConvertToBuilder,
    @Default(false) bool mayBuildBuilder,
  }) = _ZacStateProvide;

  @override
  ZacState build(BuildContext context, ZacContext zacContext) {
    return ZacState(
      family,
      (_) => map(
        (obj) {
          final val = obj.value;
          if (null == val) return null;

          return obj.mayConvertToBuilder
              ? val.maybeBuilder(
                  cb: (converterName, map) {
                    final builder = ZacRegistry()
                        .createBuilder<Object?>(converterName, map);

                    return mayBuildBuilder
                        ? builder.build(context, zacContext)
                        : builder;
                  },
                  orElse: () => val,
                )
              : val;
        },
      ),
    );
  }
}

@freezedZacBuilder
class ZacStatesProvider with _$ZacStatesProvider implements ZacBuilder<Widget> {
  ZacStatesProvider._();
  factory ZacStatesProvider.fromJson(Map<String, dynamic> json) =>
      _$ZacStatesProviderFromJson(json);

  @FreezedUnionValue('z:1:States.provide')
  factory ZacStatesProvider({
    required List<ZacBuilder<ZacState>> states,
    required ZacBuilder<Widget> child,
  }) = _ZacStatesProvider;

  @override
  Widget build(BuildContext context, ZacContext zacContext) {
    return ZacStatesProviderWidget(builder: this);
  }
}

class ZacStatesProviderWidget extends HookConsumerWidget {
  const ZacStatesProviderWidget({
    required this.builder,
    super.key,
  });

  final ZacStatesProvider builder;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final zacContext = useZacContext(ref);
    final overrides = useMemoized<List<Override>>(() {
      return [
        ...builder.states.map((state) {
          assert(state.build(context, zacContext) is ZacStateCreate);
          return state.build(context, zacContext) as ZacStateCreate;
        }).map(
          (state) => ZacState.provider(state.family).overrideWith(
            (ref) => ZacStateProvided(
              state.family,
              state.create(ref),
              (reduce) {
                ref.state = ref.state.copyWith.call(
                  value: reduce(ref.state.value),
                );
              },
            ),
          ),
        )
      ];
    }, [builder]);

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
      child: ZacFlutterBuilder(builder: builder.child.build),
    );
  }
}

@freezedZacBuilder
class ZacStateConsume<T> with _$ZacStateConsume<T> implements ZacBuilder<T> {
  ZacStateConsume._();

  static const String union = 'z:1:State.consume';

  static ZacStateValue consumeValue({
    required BuildContext context,
    required ZacContext zacContext,
    required ZacStateFamily family,
  }) {
    return zacContext.consume.map<ZacStateValue>(
      (obj) {
        return obj.ref.watch(ZacState.provider(family)).value;
      },
      manual: (obj) {
        return obj.container.read(ZacState.provider(family)).value;
      },
    );

    // return consume.map<ZacStateValue>(
    //   read: (_) => context.widgetRef
    //       .read<ZacStateProvided>(ZacState.provider(family))
    //       .value,
    //   watch: (obj) => null != obj.select
    //       ? context.widgetRef.watch<ZacStateValue>(
    //           ZacState.provider(family).select<ZacStateValue>((state) {
    //           return obj.select!.build(context, zacContext).transform(
    //               ZacTransformValue(state.value), context, zacContext);
    //         }))
    //       : context.widgetRef
    //           .watch<ZacStateProvided>(ZacState.provider(family))
    //           .value,
    // );
  }

  static ZacStateConsume<T> fromRegister<T extends Object?>(
      Map<String, dynamic> map) {
    return ZacStateConsume<T>.fromJson(map);
  }

  factory ZacStateConsume.fromJson(Map<String, dynamic> json) =>
      _$ZacStateConsumeFromJson<T>(json);

  @FreezedUnionValue(ZacStateConsume.union)
  factory ZacStateConsume({
    required ZacStateFamily family,
    @Default(true) bool mayBuildBuilder,
    ZacBuilder<List<ZacTransform>?>? transformer,
  }) = _ZacStateConsume<T>;

  @override
  T build(BuildContext context, ZacContext zacContext) {
    final consumedValue = ZacStateConsume.consumeValue(
      context: context,
      zacContext: zacContext,
      family: family,
    );

    final buildTransformer = transformer?.build(context, zacContext);

    if (null == consumedValue) {
      if (null is T && true != buildTransformer?.isNotEmpty) {
        return null as T;
      } else if (null is! T && true != buildTransformer?.isNotEmpty) {
        throw StateError('''
It was not possible to return a $ZacState of type $T from ${ZacStateConsume<T>}.build()
because the value is null and there are no transformers added.
Value: $consumedValue''');
      }
    }

    if (mayBuildBuilder && consumedValue is ZacBuilder<T>) {
      return consumedValue.build(context, zacContext);
    }

    final value = mayBuildBuilder && consumedValue is ZacBuilder<Object>
        ? (consumedValue).build(context, zacContext)
        : consumedValue;

    if (value is T && true != buildTransformer?.isNotEmpty) {
      return value;
    }

    if (null == buildTransformer || buildTransformer.isEmpty) {
      throw StateError('''
It was not possible to return a $ZacState of type $T from ${ZacStateConsume<T>}.build()
because there were no transformer.
The value of type ${value.runtimeType} was expected to be transformed.
Value: $value''');
    }

    final transformedVal =
        buildTransformer.transform(context, zacContext, value);
    if (transformedVal is! T) {
      final transformerErr = buildTransformer.map((e) => e.runtimeType);

      throw StateError('''
It was not possible to return a $ZacState of type $T from ${ZacStateConsume<T>}.build()
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
class ZacStateActions with _$ZacStateActions implements ZacBuilder<ZacAction> {
  ZacStateActions._();

  factory ZacStateActions.fromJson(Map<String, dynamic> json) =>
      _$ZacStateActionsFromJson(json);

  @FreezedUnionValue('z:1:State.update')
  factory ZacStateActions.update({
    required String family,
    required ZacBuilder<Object?> withValue,
  }) = _ZacStateActionsUpdate;

  late final ZacAction _action =
      ZacAction((BuildContext context, ZacContext zacContext) {
    map(
      update: (obj) {
        final val = withValue.build(context, zacContext);
        zacContext.consume
            .map(
              (obj) => obj.ref.read(ZacState.provider(family)),
              manual: (obj) => obj.container.read(ZacState.provider(family)),
            )
            .update((_) => val);
      },
    );
  });

  @override
  ZacAction build(BuildContext context, ZacContext zacContext) => _action;
}

/// This is useful for showing modals or other imperative logic.
@freezedZacBuilder
class ZacOnStateChange with _$ZacOnStateChange implements ZacBuilder<Widget> {
  ZacOnStateChange._();

  factory ZacOnStateChange.fromJson(Map<String, dynamic> json) =>
      _$ZacOnStateChangeFromJson(json);

  @FreezedUnionValue('z:1:State:OnChange.executeActions')
  factory ZacOnStateChange.executeActions({
    required ZacBuilder<List<ZacAction>> actions,
    required ZacStateFamily family,
    ZacBuilder<Widget>? child,
  }) = _ZacOnStateChangeExecActions;

  @override
  Widget build(BuildContext context, ZacContext zacContext) {
    return ZacOnStateChangeWidget(builder: this);
  }
}

class ZacOnStateChangeWidget extends HookConsumerWidget {
  const ZacOnStateChangeWidget({required this.builder, super.key});

  final ZacOnStateChange builder;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final zacContext = useZacContext(ref);
    final actions = builder.actions.build(context, zacContext);
    ref.listen<ZacStateProvided>(
      ZacState.provider(builder.family),
      (previous, next) => actions.callbackTwoParams(context, zacContext)(
          next.value, previous?.value),
    );

    return builder.child?.build(context, zacContext) ?? const SizedBox.shrink();
  }
}
