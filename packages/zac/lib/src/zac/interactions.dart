import 'package:zac/src/zac/any_value.dart';
import 'package:zac/src/zac/misc.dart';
import 'package:zac/src/zac/shared_value.dart';
import 'package:zac/src/zac/widget_builder.dart';
import 'package:zac/src/base.dart';
import 'package:zac/src/converter.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

part 'interactions.freezed.dart';
part 'interactions.g.dart';

abstract class ZacInteraction {
  factory ZacInteraction.fromJson(Map<String, dynamic> data) {
    return ConverterHelper.convertToType<ZacInteraction>(data);
  }

  void execute(BuildContext context, WidgetRef ref,
      ZacInteractionLifetime lifetime, ContextBag bag);
}

@defaultConverterFreezed
class ZacInteractions with _$ZacInteractions {
  const ZacInteractions._();

  static const String unionValue = 'z:1:Interactions';

  factory ZacInteractions.fromJson(Object data) {
    /// allow a single action or the default implementation
    if (ConverterHelper.isConverter(data)) {
      if ((data as Map<String, dynamic>)[converterKey] as String !=
          ZacInteractions.unionValue) {
        return ZacInteractions([ZacInteraction.fromJson(data)]);
      }
      return _$ZacInteractionsFromJson(data);
    }

    /// allow a list of interactions
    else if (data is List) {
      return ZacInteractions(data
          .cast<Map<String, dynamic>>()
          .map(ZacInteraction.fromJson)
          .toList());
    }

    throw Exception(
        'It was not possible to convert to $ZacInteractions from data: $data ');
  }

  @FreezedUnionValue(ZacInteractions.unionValue)
  factory ZacInteractions(List<ZacInteraction> interactions) = _ZacInteractions;

  void Function() createCb({
    required BuildContext context,
    required WidgetRef ref,
    required ZacInteractionLifetime lifetime,
  }) {
    return () => execute(context, ref, lifetime);
  }

  void Function(T data) createCbParam1<T extends Object?>({
    required BuildContext context,
    required WidgetRef ref,
    required ZacInteractionLifetime lifetime,
  }) {
    return (T data) => execute(context, ref, lifetime,
        prefillBag: (bag) => bag..addKeyValue(kBagActionPayload, data));
  }

  void execute(
    BuildContext context,
    WidgetRef ref,
    ZacInteractionLifetime lifetime, {
    void Function(ContextBag bag)? prefillBag,
  }) async {
    if (!lifetime.isMounted()) return;
    final bag = ContextBag();
    prefillBag?.call(bag);

    for (var action in interactions) {
      if (!lifetime.isMounted()) {
        return;
      }
      action.execute(context, ref, lifetime, bag);
    }
    bag.clear();
  }
}

@defaultConverterFreezed
class ZacExecuteActionsBuilder
    with _$ZacExecuteActionsBuilder
    implements ZacWidget {
  const ZacExecuteActionsBuilder._();

  static const String unionValue = 'z:1:ExecuteActions.once';
  static const String unionValueListen = 'z:1:ExecuteActions.listen';

  factory ZacExecuteActionsBuilder.fromJson(Map<String, dynamic> json) =>
      _$ZacExecuteActionsBuilderFromJson(json);

  @FreezedUnionValue(ZacExecuteActionsBuilder.unionValue)
  factory ZacExecuteActionsBuilder.once({
    required ZacInteractions interactions,
    ZacWidget? child,
  }) = _ZacExecuteActionsBuilderOnce;

  @FreezedUnionValue(ZacExecuteActionsBuilder.unionValueListen)
  factory ZacExecuteActionsBuilder.listen({
    required ZacInteractions interactions,
    required SharedValueFamily family,
    ZacWidget? child,
  }) = _ZacExecuteActionsBuilderListen;

  @override
  Widget buildWidget(
      BuildContext context, WidgetRef ref, ZacInteractionLifetime lifetime) {
    return map(
      once: (obj) => ZacExecuteActionsOnce(
        interactions: obj.interactions,
        child: obj.child,
      ),
      listen: (obj) => ZacExecuteActionsListen(
        interactions: obj.interactions,
        family: obj.family,
        child: obj.child,
      ),
    );
  }
}

class ZacExecuteActionsListen extends HookConsumerWidget {
  const ZacExecuteActionsListen(
      {required this.interactions, required this.family, this.child, Key? key})
      : super(key: key);

  final ZacInteractions interactions;
  final SharedValueFamily family;
  final ZacWidget? child;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final helper = useZacInteractionLifetime();
    SharedValue.listenAndExecuteActions(
        context, ref, helper, family, interactions);

    return null != child
        ? ZacWidgetBuilder(zacWidget: child!)
        : const SizedBox.shrink();
  }
}

class ZacExecuteActionsOnce extends HookConsumerWidget {
  const ZacExecuteActionsOnce(
      {required this.interactions, required this.child, Key? key})
      : super(key: key);

  final ZacInteractions interactions;
  final ZacWidget? child;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final lifetime = useZacInteractionLifetime();
    final doneState = useState(false);
    useEffect(() {
      var mounted = true;
      doneState.value = false;
      SchedulerBinding.instance.addPostFrameCallback((_) {
        if (!mounted) return;
        interactions.execute(context, ref, lifetime);
        if (!mounted) return;
        doneState.value = true;
      });
      return () => mounted = false;
    }, [interactions]);

    if (null == child || !doneState.value) return const SizedBox.shrink();

    return ZacWidgetBuilder(
      zacWidget: child!,
    );
  }
}

ZacInteractionLifetime useZacInteractionLifetime() {
  final isMounted = useIsMounted();
  final unmountCallbacks = useRef(<void Function()>[]);
  final addCb = useMemoized(
    () => (void Function() cb) => unmountCallbacks.value.add(cb),
    [unmountCallbacks.value],
  );
  useEffect(
    () => () {
      for (var cb in unmountCallbacks.value.reversed) {
        cb();
      }
      unmountCallbacks.value.clear();
    },
    [unmountCallbacks.value],
  );
  return ZacInteractionLifetime(
    isMounted: isMounted,
    onUnmount: addCb,
  );
}

@freezed
class ZacInteractionLifetime with _$ZacInteractionLifetime {
  factory ZacInteractionLifetime({
    required bool Function() isMounted,
    required void Function(void Function() cb) onUnmount,
  }) = _ZacInteractionLifetime;
}
