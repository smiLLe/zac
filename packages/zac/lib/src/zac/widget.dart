import 'dart:convert';

import 'package:zac/src/zac/context.dart';
import 'package:zac/src/zac/zac_values.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
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
    required ZacValue<FlutterWidget> data,
  }) = _ZacWidgetBuilder;

  @FreezedUnionValue(ZacWidgetBuilder.unionValueMap)
  factory ZacWidgetBuilder.map({
    FlutterKey? key,
    required ZacValue<Map> data,
  }) = _ZacWidgetBuilderMap;

  @FreezedUnionValue(ZacWidgetBuilder.unionValueIsolate)
  factory ZacWidgetBuilder.isolate({
    FlutterKey? key,
    required ZacValue<Map> data,
    FlutterWidget? errorChild,
    bool? debugRethrowError,
  }) = _ZacWidgetBuilderIsolate;

  @FreezedUnionValue(ZacWidgetBuilder.unionValueIsolateString)
  factory ZacWidgetBuilder.isolateString({
    FlutterKey? key,
    required ZacValue<String> data,
    FlutterWidget? errorChild,
    bool? debugRethrowError,
  }) = _ZacWidgetBuilderIsolateString;

  @override
  Widget buildWidget(ZacContext zacContext) {
    return map(
      (obj) => ZacWidget(
        widget: obj.data.getValue(zacContext),
        key: obj.key?.buildKey(zacContext),
      ),
      map: (obj) => ZacWidgetFromMa(
        zacMap: obj.data,
        key: obj.key?.buildKey(zacContext),
      ),
      isolate: (obj) => ZacWidgetFromMapInIsolate(
        zacMap: obj.data,
        key: obj.key?.buildKey(zacContext),
        errorChild: obj.errorChild,
        debugRethrowError: obj.debugRethrowError ?? true,
      ),
      isolateString: (obj) => ZacWidgetFromMapInIsolateFromString(
        zacString: obj.data,
        key: obj.key?.buildKey(zacContext),
        errorChild: obj.errorChild,
        debugRethrowError: obj.debugRethrowError ?? true,
      ),
    );
  }
}

class ZacWidget extends HookConsumerWidget {
  const ZacWidget({required this.widget, Key? key}) : super(key: key);

  static const String provideErrorFamily = 'ZacWidget.error';

  final FlutterWidget widget;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final zacContext = useZacContext(ref);
    return widget.buildWidget(zacContext);
  }
}

class ZacWidgetFromMa extends HookConsumerWidget {
  const ZacWidgetFromMa({required this.zacMap, Key? key}) : super(key: key);

  final ZacValue<Map> zacMap;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final zacContext = useZacContext(ref);
    final map = zacMap.getValue(zacContext);
    final zacWidget = useMemoized(
        () => ConverterHelper.convertToType<FlutterWidget>(map), [map]);
    return ZacWidget(widget: zacWidget);
  }
}

class ZacWidgetFromMapInIsolateFromString extends HookConsumerWidget {
  const ZacWidgetFromMapInIsolateFromString({
    required this.zacString,
    required this.errorChild,
    required this.debugRethrowError,
    Key? key,
  }) : super(key: key);

  final ZacValue<String> zacString;
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
    final zacContext = useZacContext(ref);
    final loadingState =
        useState<AsyncValue<Map<String, dynamic>>>(const AsyncValue.loading());
    final data = zacString.getValue(zacContext);
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
        loadingState.value = AsyncValue.error(error ?? '', stackTrace);
      });
      return () => mounted = false;
    }, [data]);

    return loadingState.value.map(
      data: (obj) => ZacWidgetFromMapInIsolate(
        zacMap: ZacValue<Map>.fromJson(obj.value),
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

  final ZacValue<Map> zacMap;
  final FlutterWidget? errorChild;
  final bool debugRethrowError;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final zacContext = useZacContext(ref);
    final loadingState =
        useState<AsyncValue<FlutterWidget>>(const AsyncValue.loading());
    final map = zacMap.getValue(zacContext);
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
        loadingState.value = AsyncValue.error(error ?? '', stackTrace);
      });

      return () => mounted = false;
    }, [map, allConverters]);

    return ZacUpdateContext(
      builder: (zacContext) {
        return loadingState.value.map(
          data: (obj) => obj.value.buildWidget(zacContext),
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
      autoCreate: false,
      family: ZacWidget.provideErrorFamily,
      valueBuilder: (_, __) => error,
      childBuilder: (zacContext) {
        Widget err = const SizedBox.shrink();
        assert(() {
          if (null == child) {
            err = const _DebugErrorBox();
          }
          return true;
        }(), '');
        if (null != child) {
          err = child!.buildWidget(zacContext);
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
    final zacContext = useZacContext(ref);
    final val = SharedValue.get(const SharedValueConsumeType.watch(),
        zacContext, ZacWidget.provideErrorFamily);

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
