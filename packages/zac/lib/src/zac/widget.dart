import 'dart:convert';

import 'package:zac/src/zac/any_value.dart';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:zac/src/zac/interactions.dart';
import 'package:zac/src/zac/misc.dart';
import 'package:zac/src/zac/shared_value.dart';
import 'package:zac/src/zac/update_widget.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:zac/src/base.dart';
import 'package:zac/src/converter.dart';
import 'package:zac/src/flutter/foundation.dart';

part 'widget.freezed.dart';
part 'widget.g.dart';

@defaultConverterFreezed
class ZacWidgetBuilder with _$ZacWidgetBuilder implements FlutterWidget {
  const ZacWidgetBuilder._();

  static const String unionValue = 'z:1:Widget';
  static const String unionValueMap = 'z:1:Widget.map';
  static const String unionValueIsolate = 'z:1:Widget.isolate';
  static const String unionValueIsolateString = 'z:1:Widget.isolateString';

  factory ZacWidgetBuilder.fromJson(Map<String, dynamic> json) =>
      _$ZacWidgetBuilderFromJson(json);

  @FreezedUnionValue(ZacWidgetBuilder.unionValue)
  factory ZacWidgetBuilder({
    FlutterKey? key,
    required FlutterWidget data,
  }) = _ZacWidgetBuilder;

  @FreezedUnionValue(ZacWidgetBuilder.unionValueMap)
  factory ZacWidgetBuilder.map({
    FlutterKey? key,
    required ZacMap data,
  }) = _ZacWidgetBuilderMap;

  @FreezedUnionValue(ZacWidgetBuilder.unionValueIsolate)
  factory ZacWidgetBuilder.isolate({
    FlutterKey? key,
    required ZacMap data,
    FlutterWidget? errorChild,
    bool? debugRethrowError,
  }) = _ZacWidgetBuilderIsolate;

  @FreezedUnionValue(ZacWidgetBuilder.unionValueIsolateString)
  factory ZacWidgetBuilder.isolateString({
    FlutterKey? key,
    required ZacString data,
    FlutterWidget? errorChild,
    bool? debugRethrowError,
  }) = _ZacWidgetBuilderIsolateString;

  @override
  Widget buildWidget(
      BuildContext context, WidgetRef ref, ZacInteractionLifetime lifetime) {
    return map(
      (obj) => ZacWidget(
        zacWidget: obj.data,
        key: obj.key?.buildKey(context, ref, lifetime),
      ),
      map: (obj) => ZacWidgetFromMa(
        zacMap: obj.data,
        key: obj.key?.buildKey(context, ref, lifetime),
      ),
      isolate: (obj) => ZacWidgetFromMapInIsolate(
        zacMap: obj.data,
        key: obj.key?.buildKey(context, ref, lifetime),
        errorChild: obj.errorChild,
        debugRethrowError: obj.debugRethrowError ?? true,
      ),
      isolateString: (obj) => ZacWidgetFromMapInIsolateFromString(
        zacString: obj.data,
        key: obj.key?.buildKey(context, ref, lifetime),
        errorChild: obj.errorChild,
        debugRethrowError: obj.debugRethrowError ?? true,
      ),
    );
  }
}

class ZacWidget extends HookConsumerWidget {
  const ZacWidget({required this.zacWidget, Key? key}) : super(key: key);

  static const String provideErrorFamily = 'ZacWidgetBuilder.error';

  final FlutterWidget zacWidget;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final lifetime = useZacInteractionLifetime();
    return zacWidget.buildWidget(context, ref, lifetime);
  }
}

class ZacWidgetFromMa extends HookConsumerWidget {
  const ZacWidgetFromMa({required this.zacMap, Key? key}) : super(key: key);

  final ZacMap zacMap;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final map = zacMap.getValue(ZacRef.widget(ref));
    final zacWidget = useMemoized(
        () => ConverterHelper.convertToType<FlutterWidget>(map), [map]);
    return ZacWidget(zacWidget: zacWidget);
  }
}

class ZacWidgetFromMapInIsolateFromString extends HookConsumerWidget {
  const ZacWidgetFromMapInIsolateFromString({
    required this.zacString,
    required this.errorChild,
    required this.debugRethrowError,
    Key? key,
  }) : super(key: key);

  final ZacString zacString;
  final FlutterWidget? errorChild;
  final bool debugRethrowError;

  static Future<Map<String, dynamic>> _parseJson(String encodedJson) async {
    final Object? data = jsonDecode(encodedJson);
    if (data is! Map<String, dynamic>) {
      throw Exception('');
    }

    return data;
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final loadingState =
        useState<AsyncValue<Map<String, dynamic>>>(const AsyncValue.loading());
    final data = zacString.getValue(ZacRef.widget(ref));
    useEffect(() {
      loadingState.value = const AsyncValue.loading();
      var mounted = true;
      compute(
        _parseJson,
        data,
        debugLabel: 'compute.data',
      ).then((value) {
        if (!mounted) return;
        loadingState.value = AsyncValue.data(value);
      }).onError((error, stackTrace) {
        if (!mounted) return;
        assert(() {
          if (!debugRethrowError) return true;
          Error.throwWithStackTrace(error ?? '', stackTrace);
        }(), '');
        loadingState.value =
            AsyncValue.error(error ?? '', stackTrace: stackTrace);
      });
      return () => mounted = false;
    }, [data]);

    return loadingState.value.map(
      data: (obj) => ZacWidgetFromMapInIsolate(
        zacMap: ZacMap(obj.value),
        errorChild: errorChild,
        debugRethrowError: debugRethrowError,
      ),
      error: (obj) => _ErrorProvide(
        error: obj.error,
        child: errorChild,
      ),
      loading: (obj) => const SizedBox.shrink(),
    );
  }
}

class ZacWidgetFromMapInIsolate extends HookConsumerWidget {
  const ZacWidgetFromMapInIsolate({
    required this.zacMap,
    required this.errorChild,
    required this.debugRethrowError,
    Key? key,
  }) : super(key: key);

  static Future<FlutterWidget> _isolateConvert(List<Object?> data) async {
    allConverters = data[1] as Map<String, Convert>;
    return ConverterHelper.convertToType<FlutterWidget>(
        data[0] as Map<String, dynamic>);
  }

  final ZacMap zacMap;
  final FlutterWidget? errorChild;
  final bool debugRethrowError;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final loadingState =
        useState<AsyncValue<FlutterWidget>>(const AsyncValue.loading());
    final map = zacMap.getValue(ZacRef.widget(ref));
    useEffect(() {
      loadingState.value = const AsyncValue.loading();
      var mounted = true;
      compute(
        _isolateConvert,
        [map, allConverters],
        debugLabel: 'compute.data',
      ).then((value) {
        if (!mounted) return;
        loadingState.value = AsyncValue.data(value);
      }).onError((error, stackTrace) {
        if (!mounted) return;
        assert(() {
          if (!debugRethrowError) return true;
          Error.throwWithStackTrace(error ?? '', stackTrace);
        }(), '');
        loadingState.value =
            AsyncValue.error(error ?? '', stackTrace: stackTrace);
      });

      return () => mounted = false;
    }, [map, allConverters]);

    return ZacUpdateWidget(
      builder: (context, ref, lifetime) {
        return loadingState.value.map(
          data: (obj) => obj.value.buildWidget(context, ref, lifetime),
          error: (obj) => _ErrorProvide(
            error: obj.error,
            child: errorChild,
          ),
          loading: (obj) => const SizedBox.shrink(),
        );
      },
    );
  }
}

class _ErrorProvide extends StatelessWidget {
  const _ErrorProvide({required this.error, required this.child, Key? key})
      : super(key: key);

  final Object error;
  final FlutterWidget? child;

  @override
  Widget build(BuildContext context) {
    return SharedValueProvider(
      family: ZacWidget.provideErrorFamily,
      value: error,
      builder: (context, ref, lifetime) {
        Widget err = const SizedBox.shrink();
        assert(() {
          if (null == child) {
            err = const _DebugErrorBox();
          }
          return true;
        }(), '');
        if (null != child) {
          err = child!.buildWidget(context, ref, lifetime);
        }

        return err;
      },
    );
  }
}

class _DebugErrorBox extends HookConsumerWidget {
  const _DebugErrorBox({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final val = SharedValue.getFilled(const SharedValueConsumeType.watch(),
        ZacRef.widget(ref), ZacWidget.provideErrorFamily);

    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.red,
          width: 3.0,
        ),
      ),
      padding: const EdgeInsets.all(8.0),
      child: Text('ERROR IN $ZacWidget:\n$val'),
    );
  }
}
