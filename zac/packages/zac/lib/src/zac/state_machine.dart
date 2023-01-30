import 'package:flutter/widgets.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:zac/src/base.dart';
import 'package:zac/src/flutter/widgets/builder.dart';
import 'package:zac/src/zac/action.dart';
import 'package:zac/src/zac/context.dart';
import 'package:zac/src/zac/zac_builder.dart';
import 'package:endlich_core/endlich_core.dart';

part 'state_machine.freezed.dart';
part 'state_machine.g.dart';

@freezedZacBuilder
class ZacStateMachineTransition with _$ZacStateMachineTransition {
  factory ZacStateMachineTransition.fromJson(Map<String, dynamic> json) =>
      _$ZacStateMachineTransitionFromJson(json);

  @FreezedUnionValue('z:1:StateMachine:Transition')
  factory ZacStateMachineTransition({
    required String event,
    required String target,
  }) = _ZacStateMachineTransition;
}

@freezedZacBuilder
class ZacStateMachineStateConfig with _$ZacStateMachineStateConfig {
  ZacStateMachineStateConfig._();

  factory ZacStateMachineStateConfig.fromJson(Map<String, dynamic> json) =>
      _$ZacStateMachineStateConfigFromJson(json);

  @FreezedUnionValue('z:1:StateMachine:StateConfig')
  factory ZacStateMachineStateConfig({
    @Default(<ZacStateMachineTransition>[]) List<ZacStateMachineTransition> on,
    ZacBuilder<Widget>? widget,
  }) = _ZacStateMachineStateConfig;
}

@freezedZacBuilder
class ZacStateMachineConfig with _$ZacStateMachineConfig {
  ZacStateMachineConfig._();

  factory ZacStateMachineConfig.fromJson(Map<String, dynamic> json) =>
      _$ZacStateMachineConfigFromJson(json);

  @FreezedUnionValue('z:1:StateMachine')
  factory ZacStateMachineConfig({
    required Map<String, ZacStateMachineStateConfig> states,
    required String initialState,
    ZacBuilder<Widget>? initialWidget,
  }) = _ZacStateMachineConfig;

  late final Idle idle = () {
    final endlichStateConfigs = states.map((stateName, stateConfig) {
      return MapEntry(
          stateName,
          StateConfig(
            on: [
              ...stateConfig.on.map((transition) {
                return Transition(
                  event: transition.event,
                  target: transition.target,
                );
              })
            ],
          ));
    });

    final startingWidget = initialWidget ?? states[initialState]?.widget;
    if (null == startingWidget) {
      throw StateError('''
Could not create a $ZacStateMachine because there was no configured widget to
start the machine.
Either set the initialWidget in $ZacStateMachine
or configure a widget for state "$initialState".''');
    }

    return Idle(
      statesConfig: endlichStateConfigs.map(
        (stateName, stateConfig) {
          return MapEntry(
            stateName,
            stateConfig.copyWith.call(
              /// Add Transition actions to validate and set a Widget into context
              on: [
                ...stateConfig.on.map(
                  (transition) => transition.copyWith.call(
                    actions: [
                      /// set the correct widget as context during transition
                      (context, state, event, payload) {
                        final targetWidget = states[transition.target]?.widget;
                        assert(payload is ZacBuilder<Widget>?);

                        final widget = payload ?? targetWidget;
                        if (null == widget) {
                          throw StateError('''
Invalid transition in $ZacStateMachine from state "${state.name}"
to state "${transition.target}" on event "$event".
There was no configured widget for state "${transition.target}" and the payload
was null. 
Either configure a default widget for state "${transition.target}" or set a 
payload of type ${ZacBuilder<Widget>} for event "$event".''');
                        }

                        return widget;
                      }
                    ],
                  ),
                )
              ],
            ),
          );
        },
      ),
      initialState: CurrentState(
        name: initialState,
        context: startingWidget,
      ),
    );
  }();
}

@freezed
class ZacStateMachine with _$ZacStateMachine {
  ZacStateMachine._();

  static final provider = Provider.autoDispose.family<ZacStateMachine, String>(
    (_, family) {
      throw StateError(
          'Could not find a $ZacStateMachine for family "$family".');
    },
    name: '$ZacStateMachine',
  );

  static ZacStateMachine _create({
    required AutoDisposeProviderRef<ZacStateMachine> ref,
    required Idle idle,
    required String family,
  }) {
    int sessionId = 0;
    void Function(String event, ZacBuilder<Widget>? payload) getSend({
      required bool strict,
      required int sId,
    }) {
      return (event, payload) {
        if (sId != sessionId) {
          if (!strict) return;
          throw StateError('''
It was no longer possible to send event "$event" to $ZacStateMachine.
It is no longer possible to transition away from the current $ZacStateMachine 
because there was already a transition.''');
        }

        final nextRunning = ref.state.running.transition(
          event: event,
          strict: strict,
          payload: payload,
        );

        if (nextRunning == ref.state.running) return;
        final nextSession = ++sessionId;

        ref.state = ref.state.copyWith.call(
          running: nextRunning,
          send: getSend(strict: true, sId: nextSession),
          trySend: getSend(strict: false, sId: nextSession),
          isActive: () => nextSession == sessionId,
        );
      };
    }

    ref.onDispose(() {
      sessionId = -1;
    });

    return ZacStateMachine(
      family: family,
      initial: idle,
      running: idle.start(),
      send: getSend(strict: true, sId: sessionId),
      trySend: getSend(strict: false, sId: sessionId),
      isActive: () => sessionId == 0,
    );
  }

  factory ZacStateMachine({
    required String family,
    required Idle initial,
    required Running running,
    required void Function(String event, ZacBuilder<Widget>? context) send,
    required void Function(String event, ZacBuilder<Widget>? context) trySend,
    required bool Function() isActive,
  }) = _ZacStateMachine;

  String get stateName => running.state.name;

  ZacBuilder<Widget> get widget {
    assert(running.state.context is ZacBuilder<Widget>);
    return running.state.context as ZacBuilder<Widget>;
  }
}

@freezedZacBuilder
class ZacStateMachineProvider
    with _$ZacStateMachineProvider
    implements ZacBuilder<Widget> {
  ZacStateMachineProvider._();

  factory ZacStateMachineProvider.fromJson(Map<String, dynamic> json) =>
      _$ZacStateMachineProviderFromJson(json);

  @FreezedUnionValue('z:1:StateMachines.provide')
  factory ZacStateMachineProvider({
    required Map<String, ZacStateMachineConfig> machines,
    required ZacBuilder<Widget> child,
  }) = _ZacStateMachineProvider;

  @override
  Widget build(BuildContext context, ZacContext zacContext) {
    return ZacStateMachineProviderWidget(
      machines: machines,
      buildChild: child.build,
    );
  }
}

class ZacStateMachineProviderWidget extends HookWidget {
  const ZacStateMachineProviderWidget(
      {required this.buildChild, required this.machines, super.key});

  final Widget Function(BuildContext context, ZacContext zacContext) buildChild;
  final Map<String, ZacStateMachineConfig> machines;

  @override
  Widget build(BuildContext context) {
    final overrides = useMemoized<List<Override>>(() {
      return [
        ...machines.entries.map((entry) {
          return ZacStateMachine.provider(entry.key).overrideWith((ref) {
            return ZacStateMachine._create(
              ref: ref,
              idle: entry.value.idle,
              family: entry.key,
            );
          });
        })
      ];
    }, [machines]);

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
class ZacStateMachineBuild
    with _$ZacStateMachineBuild
    implements ZacBuilder<ZacStateMachineBuildWidget> {
  ZacStateMachineBuild._();
  factory ZacStateMachineBuild.fromJson(Map<String, dynamic> json) =>
      _$ZacStateMachineBuildFromJson(json);

  @FreezedUnionValue('z:1:StateMachine:Build')
  factory ZacStateMachineBuild({
    required String family,
  }) = _ZacStateMachineBuild;

  @override
  ZacStateMachineBuildWidget build(
      BuildContext context, ZacContext zacContext) {
    return ZacStateMachineBuildWidget(
      family: family,
    );
  }
}

class ZacStateMachineBuildWidget extends HookConsumerWidget {
  const ZacStateMachineBuildWidget({required this.family, super.key});

  final String family;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final stateMachineWidget = ref.watch(
        ZacStateMachine.provider(family).select((machine) => machine.widget));
    final zacContext = useZacContext();
    return stateMachineWidget.build(context, zacContext);
  }
}

@freezedZacBuilder
class ZacStateMachineActions
    with _$ZacStateMachineActions
    implements ZacBuilder<ZacAction> {
  ZacStateMachineActions._();

  factory ZacStateMachineActions.fromJson(Map<String, dynamic> json) =>
      _$ZacStateMachineActionsFromJson(json);

  @FreezedUnionValue('z:1:StateMachine:Action.send')
  factory ZacStateMachineActions.send({
    required String family,
    required String event,
  }) = _ZacStateMachineActionsSend;

  @FreezedUnionValue('z:1:StateMachine:Action.trySend')
  factory ZacStateMachineActions.trySend({
    required String family,
    required String event,
  }) = _ZacStateMachineActionsTrySend;

  late final ZacAction _action = ZacAction(
      (ZacActionPayload payload, BuildContext context, ZacContext zacContext) {
    map(
      send: (obj) {
        final widget = payload.params is ZacBuilder<Widget>?
            ? payload.params as ZacBuilder<Widget>?
            : null;
        context.widgetRef
            .read(ZacStateMachine.provider(obj.family))
            .send(obj.event, widget);
      },
      trySend: (obj) {
        final widget = payload.params is ZacBuilder<Widget>?
            ? payload.params as ZacBuilder<Widget>?
            : null;

        context.widgetRef
            .read(ZacStateMachine.provider(obj.family))
            .trySend(obj.event, widget);
      },
    );
  });

  @override
  ZacAction build(BuildContext context, ZacContext zacContext) => _action;
}

// @freezedZacBuilder
// class ZacCurrentStateBuilder
//     with _$ZacCurrentStateBuilder
//     implements ZacBuilder<CurrentState> {
//   ZacCurrentStateBuilder._();

//   factory ZacCurrentStateBuilder.fromJson(Map<String, dynamic> json) =>
//       _$ZacCurrentStateBuilderFromJson(json);

//   @FreezedUnionValue('z:1:StateMachine:State')
//   factory ZacCurrentStateBuilder({
//     required String name,
//     required ZacBuilder<Widget> widget,
//   }) = _ZacCurrentStateBuilder;

//   @override
//   CurrentState build(BuildContext context, ZacContext zacContext) {
//     return CurrentState(
//       name: name,
//       context: widget,
//     );
//   }
// }

// @freezedZacBuilder
// class ZacStateMachineBuilder
//     with _$ZacStateMachineBuilder
//     implements ZacBuilder<Idle> {
//   ZacStateMachineBuilder._();

//   factory ZacStateMachineBuilder.fromJson(Map<String, dynamic> json) =>
//       _$ZacStateMachineBuilderFromJson(json);

//   factory ZacStateMachineBuilder({
//     required Map<String, ZacStateConfigBuilder> states,
//     required ZacCurrentStateBuilder initialState,
//   }) = _ZacStateMachine;

//   @override
//   Idle build(BuildContext context, ZacContext zacContext) {
//     return Idle(
//       statesConfig: Map<String, StateConfig>.fromIterable(
//           states.entries.map<MapEntry<String, StateConfig>>((e) {
//         return MapEntry<String, StateConfig>(
//           e.key,
//           e.value.build(context, zacContext),
//         );
//       })),
//       initialState: initialState.build(context, zacContext),
//     );
//   }
// }

// @freezed
// class ZacStateMachine with _$ZacSharedStateMachine {
//   static final provider =
//       Provider.autoDispose.family<ZacStateMachine, String>((ref, family) {});

//   factory ZacStateMachine({
//     required String family,
//     required Running running,
//     required void Function(String event, SharedValueType context) send,
//     required void Function(String event, SharedValueType context) trySend,
//     required bool Function() isActive,
//   }) = _ZacStateMachine;
// }

// @freezedZacBuilder
// class ZacStateMachineProvider
//     with _$ZacStateMachineProvider
//     implements ZacBuilder<Widget> {
//   factory ZacStateMachineProvider.fromJson(Map<String, dynamic> json) =>
//       _$ZacStateMachineProviderFromJson(json);

//   @FreezedUnionValue('z:1:StateMachine.provide')
//   factory ZacStateMachineProvider() = _ZacStateMachineProvider;
// }

// class ZacStateMachineProviderWidget extends HookWidget {
//   const ZacStateMachineProviderWidget({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return const Placeholder();
//   }
// }

// @freezedZacBuilder
// class ZacStateMachineProviderBuilder
//     with _$ZacStateMachineProviderBuilder
//     implements ZacBuilder<Widget> {
//   const ZacStateMachineProviderBuilder._();
//   static const String unionValue = 'z:1:StateMachine.provide';

//   factory ZacStateMachineProviderBuilder.fromJson(Map<String, dynamic> json) =>
//       _$ZacStateMachineProviderBuilderFromJson(json);

//   @FreezedUnionValue(ZacStateMachineProviderBuilder.unionValue)
//   factory ZacStateMachineProviderBuilder({
//     ZacBuilder<Key?>? key,
//     required ZacBuilder<String> family,
//     required ZacStateMachineBuilder machine,
//     ZacCurrentStateBuilder? startWith,
//     required ZacBuilder<Widget> child,
//   }) = _ZacStateMachineProviderBuilder;

//   ZacStateMachine _createMachine(
//       AutoDisposeStateProviderRef<SharedValueType> ref,
//       BuildContext context,
//       ZacContext zacContext) {
//     int sessionId = 0;

//     void Function(String event, SharedValueType? context) getSend({
//       required bool strict,
//       required int sId,
//     }) {
//       return (event, context) {
//         if (sId != sessionId) {
//           if (!strict) return;
//           throw StateError('''
// No longer possible to send event "$event" to $ZacStateMachine.
// It is no longer possible to transition away from the current $ZacStateMachine 
// because there was already a transition.''');
//         }

//         ref.controller.update((sharedMachine) {
//           assert(sharedMachine is ZacStateMachine);
//           sharedMachine as ZacStateMachine;
//           final nextRunning = sharedMachine.running.transition(
//             event: event,
//             strict: strict,
//             payload: null,
//           );

//           if (nextRunning == sharedMachine.running) return sharedMachine;

//           final nextSession = ++sessionId;
//           return ZacStateMachine(
//             running: nextRunning,
//             send: getSend(strict: true, sId: sessionId),
//             trySend: getSend(strict: false, sId: sessionId),
//             isActive: () => nextSession == sessionId,
//           );
//         });
//       };
//     }

//     ref.onDispose(() {
//       sessionId = -1;
//     });

//     final idle = machine.build(context, zacContext);
//     return ZacStateMachine(
//       running: idle.startWith(
//           startWith?.build(context, zacContext) ?? idle.initialState),
//       send: getSend(strict: true, sId: sessionId),
//       trySend: getSend(strict: false, sId: sessionId),
//       isActive: () => sessionId == 0,
//     );
//   }

//   Widget _buildWidget(BuildContext context, ZacContext zacContext) {
//     return SharedValueProvider(
//       key: key?.build(context, zacContext),
//       family: family.build(context, zacContext),
//       autoCreate: true,
//       childBuilder: child.build,
//       valueBuilder: _createMachine,
//     );
//   }

//   @override
//   Widget build(BuildContext context, ZacContext zacContext) {
//     return _buildWidget(context, zacContext);
//   }
// }

// @freezedZacBuilder
// class ZacStateMachineBuildStateBuilder
//     with _$ZacStateMachineBuildStateBuilder
//     implements ZacBuilder<Widget> {
//   const ZacStateMachineBuildStateBuilder._();
//   static const String unionValue = 'z:1:StateMachine:BuildState';

//   factory ZacStateMachineBuildStateBuilder.fromJson(
//           Map<String, dynamic> json) =>
//       _$ZacStateMachineBuildStateBuilderFromJson(json);

//   @FreezedUnionValue(ZacStateMachineBuildStateBuilder.unionValue)
//   factory ZacStateMachineBuildStateBuilder({
//     ZacBuilder<Key?>? key,
//     required ZacBuilder<String> family,
//     required List<String> states,
//     ZacBuilder<Widget?>? unmappedStateWidget,
//   }) = _ZacStateMachineBuildStateBuilder;

//   ZacStateMachineBuildState _buildWidget(
//       BuildContext context, ZacContext zacContext) {
//     return ZacStateMachineBuildState(
//       key: key?.build(context, zacContext),
//       family: family.build(context, zacContext),
//       states: states,
//       unmappedStateWidget: (zacContext) =>
//           unmappedStateWidget?.build(context, zacContext) ??
//           const SizedBox.shrink(),
//     );
//   }

//   @override
//   ZacStateMachineBuildState build(BuildContext context, ZacContext zacContext) {
//     return _buildWidget(context, zacContext);
//   }
// }

// class ZacStateMachineBuildState extends HookConsumerWidget {
//   const ZacStateMachineBuildState(
//       {required this.family,
//       required this.states,
//       required this.unmappedStateWidget,
//       super.key});

//   final String family;
//   final List<String> states;
//   final Widget Function(ZacContext zacContext) unmappedStateWidget;

//   @override
//   Widget build(BuildContext context, WidgetRef ref) {
//     final zacContext = useZacContext();
//     final machine = SharedValue.get(
//       context: context,
//       zacContext: zacContext,
//       consumeType: const SharedValueConsumeType.watch(),
//       family: family,
//     ) as ZacStateMachineBuilder;

//     /// check if mapped states actually exist in the StateMachine
//     assert(() {
//       for (var searchForState in states) {
//         var found = false;
//         for (var state in machine.states.keys) {
//           found = state == searchForState;
//           if (found) break;
//         }
//         if (!found) {
//           throw StateError('''
// It is not possible to build a widget for state "$searchForState".
// "$searchForState" does not exist in $ZacStateMachineBuilder of family "$family".
// All possible states are "${machine.states.keys.join(', ')}".
// ''');
//         }
//       }
//       return true;
//     }(), '');

//     if (states.contains(machine.state)) {
//       return machine.getWidget(context, zacContext).build(context, zacContext);
//     }
//     return unmappedStateWidget(zacContext);
//   }
// }

// @freezedZacBuilder
// class ZacStateMachineActions
//     with _$ZacStateMachineActions
//     implements ZacBuilder<ZacAction> {
//   ZacStateMachineActions._();

//   static const String unionValue = 'z:1:StateMachine:Action.send';
//   static const String unionValueTrySend = 'z:1:StateMachine:Action.trySend';

//   factory ZacStateMachineActions.fromJson(Map<String, dynamic> json) =>
//       _$ZacStateMachineActionsFromJson(json);

//   @FreezedUnionValue(ZacStateMachineActions.unionValue)
//   factory ZacStateMachineActions.send({
//     required SharedValueFamily family,
//     required ZacBuilder<String> event,
//   }) = _ZacStateMachineActionsSend;

//   @FreezedUnionValue(ZacStateMachineActions.unionValueTrySend)
//   factory ZacStateMachineActions.trySend({
//     required SharedValueFamily family,
//     required ZacBuilder<String> event,
//   }) = _ZacStateMachineActionsTrySend;

//   late final ZacAction _action = ZacAction(
//       (ZacActionPayload payload, BuildContext context, ZacContext zacContext) {
//     map(
//       send: (obj) {
//         final machine = SharedValue.get(
//           context: context,
//           zacContext: zacContext,
//           consumeType: const SharedValueConsumeType.read(),
//           family: obj.family,
//         ) as ZacStateMachineBuilder;
//         machine.send(obj.event.build(context, zacContext), payload.params);
//       },
//       trySend: (obj) {
//         final machine = SharedValue.get(
//           context: context,
//           zacContext: zacContext,
//           consumeType: const SharedValueConsumeType.read(),
//           family: obj.family,
//         ) as ZacStateMachineBuilder;
//         machine.trySend(obj.event.build(context, zacContext), payload.params);
//       },
//     );
//   });

//   @override
//   ZacAction build(BuildContext context, ZacContext zacContext) => _action;
// }

// @freezedZacBuilder
// class ZacStateMachineTransformer
//     with _$ZacStateMachineTransformer
//     implements ZacBuilder<ZacTransform> {
//   ZacStateMachineTransformer._();

//   static const String unionValue = 'z:1:StateMachine:Transformer.pickState';
//   static const String unionValuePickContext =
//       'z:1:StateMachine:Transformer.pickContext';

//   factory ZacStateMachineTransformer.fromJson(Map<String, dynamic> json) =>
//       _$ZacStateMachineTransformerFromJson(json);

//   @FreezedUnionValue(ZacStateMachineTransformer.unionValue)
//   factory ZacStateMachineTransformer.pickState() =
//       _ZacStateMachineTransformerPickState;

//   @FreezedUnionValue(ZacStateMachineTransformer.unionValuePickContext)
//   factory ZacStateMachineTransformer.pickContext() =
//       _ZacStateMachineTransformerPickContext;

//   late final ZacTransform _transform = ZacTransform(
//       (ZacTransformValue transformValue, BuildContext context,
//           ZacContext zacContext, ZacActionPayload? payload) {
//     final value = transformValue.value;
//     if (value is! ZacStateMachineBuilder) {
//       throw StateError('''
// The $ZacStateMachineTransformer expected a transformer value of $ZacStateMachineBuilder
// but instead got: $value''');
//     }

//     return map(
//       pickState: (_) => value.state,
//       pickContext: (_) => value.context,
//     );
//   });

//   @override
//   ZacTransform build(BuildContext context, ZacContext zacContext) => _transform;
// }
