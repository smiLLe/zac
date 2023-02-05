import 'package:collection/collection.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:zac/src/base.dart';
import 'package:zac/src/flutter/widgets/builder.dart';
import 'package:zac/src/zac/context.dart';
import 'package:zac/src/zac/shared_state.dart';
import 'package:zac/src/zac/zac_builder.dart';

part 'callback.freezed.dart';
part 'callback.g.dart';

typedef CallbackParamType = Object?;
const CallbackParamType argDefaultValue = null;

typedef ZacExecuteCallback = void Function(
    BuildContext context,
    ZacContext zacContext,
    CallbackParamType arg1,
    CallbackParamType arg2,
    CallbackParamType arg3);

abstract class ZacGetExecuteCallback {
  ZacExecuteCallback getExecuteCallback();
}

extension ExecuteCallbacksHelper on List<ZacGetExecuteCallback> {
  void Function() noParam(BuildContext context, ZacContext zacContext) {
    return () {
      for (var item in this) {
        if (!context.mounted) return;
        item.getExecuteCallback().call(context, zacContext, argDefaultValue,
            argDefaultValue, argDefaultValue);
      }
    };
  }

  void Function(CallbackParamType arg) oneParam(
      BuildContext context, ZacContext zacContext) {
    return (CallbackParamType arg) {
      for (var item in this) {
        if (!context.mounted) return;
        item
            .getExecuteCallback()
            .call(context, zacContext, arg, argDefaultValue, argDefaultValue);
      }
    };
  }

  void Function(CallbackParamType arg, CallbackParamType arg2) twoParam(
      BuildContext context, ZacContext zacContext) {
    return (CallbackParamType arg, CallbackParamType arg2) {
      for (var item in this) {
        if (!context.mounted) return;
        item
            .getExecuteCallback()
            .call(context, zacContext, arg, arg2, argDefaultValue);
      }
    };
  }

  void Function(
          CallbackParamType arg, CallbackParamType arg2, CallbackParamType arg3)
      threeParam(BuildContext context, ZacContext zacContext) {
    return (CallbackParamType arg, CallbackParamType arg2,
        CallbackParamType arg3) {
      for (var item in this) {
        if (!context.mounted) return;
        item.getExecuteCallback().call(context, zacContext, arg, arg2, arg3);
      }
    };
  }
}

@freezed
class ZacCallback with _$ZacCallback implements ZacGetExecuteCallback {
  ZacCallback._();

  static final provider = Provider.autoDispose
      .family<_ZacSharedCallbackProvided, String>((ref, family) {
    throw UnimplementedError('');
  }, name: 'Zac Callback');

  /// Will return the Arguments provider name
  static String providerArgName(String family, int number) =>
      '$family.arg$number';

  factory ZacCallback(
    void Function(
            BuildContext context,
            ZacContext zacContext,
            CallbackParamType arg,
            CallbackParamType arg2,
            CallbackParamType arg3)
        execute,
  ) = _ZacCallback;

  factory ZacCallback.shared(
    void Function(
            BuildContext context,
            ZacContext zacContext,
            Ref<Object?> ref,
            CallbackParamType arg,
            CallbackParamType arg2,
            CallbackParamType arg3)
        execute,
  ) = ZacSharedCallback;

  /// !! DON'T USE !!
  /// Must never be called by other libraries but Zac.
  /// Use the default factory instead.
  factory ZacCallback.provided(
    void Function(
            BuildContext context,
            ZacContext zacContext,
            Ref<Object?> ref,
            CallbackParamType arg,
            CallbackParamType arg2,
            CallbackParamType arg3)
        execute,
    Ref<Object?> ref,
    String family,
  ) = _ZacSharedCallbackProvided;

  late final ZacExecuteCallback _executeCallback = map(
    (obj) => obj.execute,
    provided: (obj) => (BuildContext context,
        ZacContext zacContext,
        CallbackParamType arg1,
        CallbackParamType arg2,
        CallbackParamType arg3) {
      if (!context.mounted) return;

      [arg1, arg2, arg3].forEachIndexed((index, arg) {
        final provider =
            SharedState.provider(providerArgName(obj.family, index + 1));
        context.widgetRef
          ..invalidate(provider)
          ..read(provider).update((_) => arg);
      });

      final provider = ZacCallback.provider(obj.family);

      context.widgetRef.invalidate(provider);
      if (!context.mounted) {
        return;
      }

      final sharedCb = context.widgetRef.read(provider);
      sharedCb.execute(
          context,
          zacContext.copyWith.call(buildIn: BuildIn.action),
          sharedCb.ref,
          arg1,
          arg2,
          arg3);
    },
    shared: (obj) => throw StateError(
        '.getExecuteCallback() must not be called while in $ZacSharedCallback'),
  );

  @override
  ZacExecuteCallback getExecuteCallback() => _executeCallback;
}

@freezedZacBuilder
class ZacCallbacksProvider
    with _$ZacCallbacksProvider
    implements ZacBuilder<Widget> {
  ZacCallbacksProvider._();
  factory ZacCallbacksProvider.fromJson(Map<String, dynamic> json) =>
      _$ZacCallbacksProviderFromJson(json);

  @FreezedUnionValue('z:1:SharedCallbacks.provide')
  factory ZacCallbacksProvider({
    required Map<String, ZacBuilder<ZacSharedCallback>> callbacks,
    required ZacBuilder<Widget> child,
  }) = _ZacCallbacksProvider;

  @override
  Widget build(BuildContext context, ZacContext zacContext) {
    return ZacCallbacksProviderWidget(
      buildChild: child.build,
      callbacks: callbacks.entries.fold<Map<String, ZacSharedCallback>>(
        {},
        (previousValue, entry) => {
          ...previousValue,
          entry.key: entry.value.build(context, zacContext)
        },
      ),
    );
  }
}

class ZacCallbacksProviderWidget extends HookConsumerWidget {
  const ZacCallbacksProviderWidget({
    required this.callbacks,
    required this.buildChild,
    super.key,
  });

  final Map<String, ZacSharedCallback> callbacks;
  final Widget Function(BuildContext context, ZacContext zacContext) buildChild;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ZacSharedStateProviderWidget(
      states: callbacks.entries.fold<Map<String, CallbackParamType>>(
        {},
        (previousValue, entry) => {
          ...previousValue,
          ZacCallback.providerArgName(entry.key, 1): argDefaultValue,
          ZacCallback.providerArgName(entry.key, 2): argDefaultValue,
          ZacCallback.providerArgName(entry.key, 3): argDefaultValue,
        },
      ),
      buildChild: (_, __) => _ZacCallbacksProviderWidget(
        callbacks: callbacks,
        buildChild: buildChild,
      ),
    );
  }
}

class _ZacCallbacksProviderWidget extends HookConsumerWidget {
  const _ZacCallbacksProviderWidget({
    required this.callbacks,
    required this.buildChild,
  });

  final Map<String, ZacSharedCallback> callbacks;
  final Widget Function(BuildContext context, ZacContext zacContext) buildChild;

  static void _autoCreateListener(
      _ZacSharedCallbackProvided? prev, _ZacSharedCallbackProvided next) {}

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final overrides = useMemoized<List<Override>>(() {
      return [
        ...callbacks.entries.map(
          (entry) => ZacCallback.provider(entry.key).overrideWith(
            (ref) {
              return _ZacSharedCallbackProvided(
                entry.value.execute,
                ref,
                entry.key,
              );
            },
          ),
        )
      ];
    }, [callbacks]);

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
      child: ZacFlutterBuilder(
        builder: (context, zacContext) {
          for (var key in callbacks.keys) {
            /// immediately create the AutoDispose Provider and its value
            /// and keep it alive as long as possible
            context.widgetRef.listen<_ZacSharedCallbackProvided>(
              ZacCallback.provider(key),
              _autoCreateListener,
            );
          }
          return buildChild(context, zacContext);
        },
      ),
    );
  }
}

@freezedZacBuilder
class ZacConsumeSharedCallback
    with _$ZacConsumeSharedCallback
    implements ZacBuilder<ZacCallback> {
  ZacConsumeSharedCallback._();

  factory ZacConsumeSharedCallback.fromJson(Map<String, dynamic> json) =>
      _$ZacConsumeSharedCallbackFromJson(json);

  @FreezedUnionValue('z:1:SharedCallback.consume')
  factory ZacConsumeSharedCallback({
    required String family,
  }) = _ZacConsumeSharedCallback;

  @override
  ZacCallback build(BuildContext context, ZacContext zacContext) {
    return context.widgetRef.read(ZacCallback.provider(family));
  }
}
