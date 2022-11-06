import 'package:flutter/scheduler.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:zac/src/base.dart';
import 'package:zac/src/converter.dart';

import 'package:zac/src/zac/context.dart';
import 'package:zac/src/zac/shared_value.dart';
import 'package:zac/src/zac/widget.dart';

part 'action.freezed.dart';
part 'action.g.dart';

@TsClass(order: tsOrderFlutterAbstractsA)
abstract class ZacAction {
  factory ZacAction.fromJson(Map<String, dynamic> data) {
    return ConverterHelper.convertToType<ZacAction>(data);
  }

  void execute(ZacActionPayload payload, ZacContext zacContext);
}

@freezed
class ZacActionPayload with _$ZacActionPayload {
  const ZacActionPayload._();

  const factory ZacActionPayload() = _ZacActionPayloadNone;
  factory ZacActionPayload.param(Object? value) = _ZacActionPayloadParam;
  factory ZacActionPayload.param2(Object? first, Object? second) =
      _ZacActionPayloadParam2;

  Object? get params => map(
        (_) => null,
        param: (obj) => obj.value,
        param2: (obj) => [obj.first, obj.second],
      );
  List<Object?> get paramsAsList => map(
        (_) => [],
        param: (obj) => [obj.value],
        param2: (obj) => [obj.first, obj.second],
      );
}

@defaultConverterFreezed
@TsClass()
class ZacActions with _$ZacActions {
  const ZacActions._();

  static const String unionValue = 'z:1:Actions';

  factory ZacActions.fromJson(Object data) {
    /// allow a single action or the default implementation
    if (ConverterHelper.isConverter(data)) {
      if ((data as Map<String, dynamic>)[converterKey] as String !=
          ZacActions.unionValue) {
        return ZacActions([ZacAction.fromJson(data)]);
      }
      return _$ZacActionsFromJson(data);
    }

    /// allow a list of actions
    else if (data is List) {
      return ZacActions(
          data.cast<Map<String, dynamic>>().map(ZacAction.fromJson).toList());
    }

    throw Exception(
        'It was not possible to convert to $ZacActions from data: $data ');
  }

  @FreezedUnionValue(ZacActions.unionValue)
  const factory ZacActions(List<ZacAction> actions) = _ZacActions;

  void execute(ZacActionPayload payload, ZacContext zacContext) async {
    if (!zacContext.isMounted()) return;
    for (var action in actions) {
      if (!zacContext.isMounted()) {
        return;
      }
      action.execute(payload, zacContext);
    }
  }
}

extension Interactions on ZacActions {
  void Function() createCb(ZacContext zacContext) {
    return () => execute(const ZacActionPayload(), zacContext);
  }

  void Function(T data) createCbParam1<T extends Object?>(
      ZacContext zacContext) {
    return (T data) => execute(ZacActionPayload.param(data), zacContext);
  }
}

@defaultConverterFreezed
@TsClass(order: tsOrderZacWidget)
class ZacExecuteActionsBuilder
    with _$ZacExecuteActionsBuilder
    implements FlutterWidget {
  const ZacExecuteActionsBuilder._();

  static const String unionValue = 'z:1:ExecuteActions.once';
  static const String unionValueListen = 'z:1:ExecuteActions.listen';

  factory ZacExecuteActionsBuilder.fromJson(Map<String, dynamic> json) =>
      _$ZacExecuteActionsBuilderFromJson(json);

  @FreezedUnionValue(ZacExecuteActionsBuilder.unionValue)
  factory ZacExecuteActionsBuilder.once({
    required ZacActions actions,
    FlutterWidget? child,
  }) = _ZacExecuteActionsBuilderOnce;

  @FreezedUnionValue(ZacExecuteActionsBuilder.unionValueListen)
  factory ZacExecuteActionsBuilder.listen({
    required ZacActions actions,
    required SharedValueFamily family,
    FlutterWidget? child,
  }) = _ZacExecuteActionsBuilderListen;

  @override
  Widget buildWidget(ZacContext zacContext) {
    return map(
      once: (obj) => ZacExecuteActionsOnce(
        actions: obj.actions,
        child: obj.child,
      ),
      listen: (obj) => ZacExecuteActionsListen(
        actions: obj.actions,
        family: obj.family,
        child: obj.child,
      ),
    );
  }
}

class ZacExecuteActionsListen extends HookConsumerWidget {
  const ZacExecuteActionsListen(
      {required this.actions, required this.family, this.child, Key? key})
      : super(key: key);

  final ZacActions actions;
  final SharedValueFamily family;
  final FlutterWidget? child;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final zacContext = useZacContext(ref);
    SharedValue.listenAndExecuteActions(zacContext, family, actions);

    return null != child ? ZacWidget(widget: child!) : const SizedBox.shrink();
  }
}

class ZacExecuteActionsOnce extends HookConsumerWidget {
  const ZacExecuteActionsOnce(
      {required this.actions, required this.child, Key? key})
      : super(key: key);

  final ZacActions actions;
  final FlutterWidget? child;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final zacContext = useZacContext(ref);
    final doneState = useState(false);
    useEffect(() {
      var mounted = true;
      doneState.value = false;
      SchedulerBinding.instance.addPostFrameCallback((_) {
        if (!mounted) return;
        actions.execute(const ZacActionPayload(), zacContext);
        if (!mounted) return;
        doneState.value = true;
      });
      return () => mounted = false;
    }, [actions]);

    if (null == child || !doneState.value) return const SizedBox.shrink();

    return ZacWidget(
      widget: child!,
    );
  }
}
