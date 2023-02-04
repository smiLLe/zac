import 'dart:typed_data';

import 'package:flutter/widgets.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:zac/src/base.dart';
import 'package:zac/src/flutter/widgets/builder.dart';
import 'package:zac/src/zac/context.dart';
import 'package:zac/src/zac/shared_state.dart';
import 'package:zac/src/zac/transformers.dart';
import 'package:zac/src/zac/zac_builder.dart';

part 'callback.freezed.dart';
part 'callback.g.dart';

typedef ZacProviderCallback = void Function(
    BuildContext context, ZacContext zacContext);

@freezed
class ZacCallbackExecute with _$ZacCallbackExecute {
  static final provider =
      Provider.autoDispose.family<ZacProviderCallback, String>((ref, family) {
    throw UnimplementedError('');
  }, name: 'Zac Callback');

  factory ZacCallbackExecute(
    void Function(BuildContext context, ZacContext zacContext, Ref<Object?> ref)
        execute,
  ) = _ZacCallback;
}

@freezedZacBuilder
class ZacCallbacksProvider
    with _$ZacCallbacksProvider
    implements ZacBuilder<Widget> {
  ZacCallbacksProvider._();
  factory ZacCallbacksProvider.fromJson(Map<String, dynamic> json) =>
      _$ZacCallbacksProviderFromJson(json);

  @FreezedUnionValue('z:1:Callbacks.provide')
  factory ZacCallbacksProvider({
    required Map<String, ZacBuilder<ZacCallbackExecute>> callbacks,
    required ZacBuilder<Widget> child,
  }) = _ZacCallbacksProvider;

  @override
  Widget build(BuildContext context, ZacContext zacContext) {
    return ZacCallbacksProviderWidget(
      buildChild: child.build,
      callbacks: callbacks.entries.fold<Map<String, ZacCallbackExecute>>(
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

  final Map<String, ZacCallbackExecute> callbacks;
  final Widget Function(BuildContext context, ZacContext zacContext) buildChild;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ZacSharedStateProviderWidget(
      states: callbacks.entries.fold<Map<String, Object?>>(
        {},
        (previousValue, entry) => {
          ...previousValue,
          '${entry.key}.arg1': null,
          '${entry.key}.arg2': null,
          '${entry.key}.arg3': null,
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

  final Map<String, ZacCallbackExecute> callbacks;
  final Widget Function(BuildContext context, ZacContext zacContext) buildChild;

  static void _autoCreateListener(
      ZacProviderCallback? prev, ZacProviderCallback next) {}

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final overrides = useMemoized<List<Override>>(() {
      return [
        ...callbacks.entries.map(
          (entry) => ZacCallbackExecute.provider(entry.key).overrideWith(
            (ref) {
              return (BuildContext context, ZacContext zacContext) =>
                  entry.value.execute(context, zacContext, ref);
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
            context.widgetRef.listen<ZacProviderCallback>(
              ZacCallbackExecute.provider(key),
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
class ZacCallbacks with _$ZacCallbacks {
  ZacCallbacks._();

  factory ZacCallbacks.fromJson(Map<String, dynamic> json) =>
      _$ZacCallbacksFromJson(json);

  @FreezedUnionValue('z:1:Callbacks.consume')
  factory ZacCallbacks({
    required List<String> families,
  }) = _ZacCallbacks;

  void Function() noParam(BuildContext context, ZacContext zacContext) {
    return () {
      if (!context.mounted) return;
      for (var family in families) {
        if (!context.mounted) {
          break;
        }

        context.widgetRef.invalidate(ZacCallbackExecute.provider(family));
        if (!context.mounted) {
          break;
        }

        context.widgetRef
            .read(ZacCallbackExecute.provider(family))
            .call(context, zacContext.copyWith.call(buildIn: BuildIn.action));
      }
    };
  }

  void Function(Object? param) oneParam(
      BuildContext context, ZacContext zacContext) {
    return (Object? param) {
      if (!context.mounted) return;
      for (var family in families) {
        if (!context.mounted) {
          break;
        }

        context.widgetRef
            .read(SharedState.provider('$family.arg1'))
            .update((p0) {
          return param;
        });
        if (!context.mounted) {
          break;
        }

        context.widgetRef.invalidate(ZacCallbackExecute.provider(family));
        if (!context.mounted) {
          break;
        }

        context.widgetRef
            .read(ZacCallbackExecute.provider(family))
            .call(context, zacContext.copyWith.call(buildIn: BuildIn.action));
      }
    };
  }

  void Function(Object? param, Object? param2) twoParams(
      BuildContext context, ZacContext zacContext) {
    return (Object? param, Object? param2) {
      if (!context.mounted) return;
      for (var family in families) {
        if (!context.mounted) {
          break;
        }

        context.widgetRef
            .read(SharedState.provider('$family.arg1'))
            .update((p0) {
          return param;
        });
        if (!context.mounted) {
          break;
        }

        context.widgetRef
            .read(SharedState.provider('$family.arg2'))
            .update((p0) {
          return param2;
        });
        if (!context.mounted) {
          break;
        }

        context.widgetRef.invalidate(ZacCallbackExecute.provider(family));
        if (!context.mounted) {
          break;
        }

        context.widgetRef
            .read(ZacCallbackExecute.provider(family))
            .call(context, zacContext.copyWith.call(buildIn: BuildIn.action));
      }
    };
  }

  void Function(Object? param, Object? param2, Object? param3) threeParams(
      BuildContext context, ZacContext zacContext) {
    return (Object? param, Object? param2, Object? param3) {
      if (!context.mounted) return;
      for (var family in families) {
        if (!context.mounted) {
          break;
        }

        context.widgetRef
            .read(SharedState.provider('$family.arg1'))
            .update((p0) {
          return param;
        });
        if (!context.mounted) {
          break;
        }

        context.widgetRef
            .read(SharedState.provider('$family.arg2'))
            .update((p0) {
          return param2;
        });
        if (!context.mounted) {
          break;
        }

        context.widgetRef
            .read(SharedState.provider('$family.arg3'))
            .update((p0) {
          return param3;
        });
        if (!context.mounted) {
          break;
        }

        context.widgetRef.invalidate(ZacCallbackExecute.provider(family));
        if (!context.mounted) {
          break;
        }

        context.widgetRef
            .read(ZacCallbackExecute.provider(family))
            .call(context, zacContext.copyWith.call(buildIn: BuildIn.action));
      }
    };
  }
}
