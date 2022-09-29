import 'dart:convert';

import 'package:zac/src/zac/action.dart';
import 'package:zac/src/zac/any_value.dart';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:zac/src/zac/misc.dart';
import 'package:zac/src/zac/shared_value.dart';
import 'package:zac/src/zac/update_context.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:zac/src/base.dart';
import 'package:zac/src/converter.dart';
import 'package:zac/src/flutter/foundation.dart';

part 'widget_builder.freezed.dart';
part 'widget_builder.g.dart';

@defaultConverterFreezed
class ZacWidgetBuilderBuilder
    with _$ZacWidgetBuilderBuilder
    implements ZacWidget {
  const ZacWidgetBuilderBuilder._();

  static const String unionValue = 'z:1:WidgetBuilder';
  static const String unionValueMap = 'z:1:WidgetBuilder.map';
  static const String unionValueIsolate = 'z:1:WidgetBuilder.isolate';
  static const String unionValueIsolateString =
      'z:1:WidgetBuilder.isolateString';

  factory ZacWidgetBuilderBuilder.fromJson(Map<String, dynamic> json) =>
      _$ZacWidgetBuilderBuilderFromJson(json);

  @FreezedUnionValue(ZacWidgetBuilderBuilder.unionValue)
  factory ZacWidgetBuilderBuilder({
    FlutterKey? key,
    required ZacWidget data,
  }) = _ZacWidgetBuilderBuilder;

  @FreezedUnionValue(ZacWidgetBuilderBuilder.unionValueMap)
  factory ZacWidgetBuilderBuilder.map({
    FlutterKey? key,
    required ZacMap data,
  }) = _ZacWidgetBuilderBuilderMap;

  @FreezedUnionValue(ZacWidgetBuilderBuilder.unionValueIsolate)
  factory ZacWidgetBuilderBuilder.isolate({
    FlutterKey? key,
    required ZacMap data,
    ZacWidget? errorChild,
    bool? debugRethrowError,
  }) = _ZacWidgetBuilderBuilderIsolate;

  @FreezedUnionValue(ZacWidgetBuilderBuilder.unionValueIsolateString)
  factory ZacWidgetBuilderBuilder.isolateString({
    FlutterKey? key,
    required ZacString data,
    ZacWidget? errorChild,
    bool? debugRethrowError,
  }) = _ZacWidgetBuilderBuilderIsolateString;

  @override
  Widget buildWidget(
      BuildContext context, WidgetRef ref, ZacActionHelper helper) {
    return map(
      (obj) => ZacWidgetBuilder(
        zacWidget: obj.data,
        key: obj.key?.buildKey(context, ref, helper),
      ),
      map: (obj) => ZacWidgetBuilderFromMap(
        zacMap: obj.data,
        key: obj.key?.buildKey(context, ref, helper),
      ),
      isolate: (obj) => ZacWidgetBuilderFromMapInIsolate(
        zacMap: obj.data,
        key: obj.key?.buildKey(context, ref, helper),
        errorChild: obj.errorChild,
        debugRethrowError: obj.debugRethrowError ?? true,
      ),
      isolateString: (obj) => ZacWidgetBuilderFromMapInIsolateFromString(
        zacString: obj.data,
        key: obj.key?.buildKey(context, ref, helper),
        errorChild: obj.errorChild,
        debugRethrowError: obj.debugRethrowError ?? true,
      ),
    );
  }
}

class ZacWidgetBuilder extends HookConsumerWidget {
  const ZacWidgetBuilder({required this.zacWidget, Key? key}) : super(key: key);

  static const String provideErrorFamily = 'ZacWidgetBuilder.error';

  final ZacWidget zacWidget;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final helper = useZacActionHelper();
    return zacWidget.buildWidget(context, ref, helper);
  }
}

class ZacWidgetBuilderFromMap extends HookConsumerWidget {
  const ZacWidgetBuilderFromMap({required this.zacMap, Key? key})
      : super(key: key);

  final ZacMap zacMap;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final map = zacMap.getValue(ZacRef.widget(ref));
    final zacWidget =
        useMemoized(() => ConverterHelper.convertToType<ZacWidget>(map), [map]);
    return ZacWidgetBuilder(zacWidget: zacWidget);
  }
}

class ZacWidgetBuilderFromMapInIsolateFromString extends HookConsumerWidget {
  const ZacWidgetBuilderFromMapInIsolateFromString({
    required this.zacString,
    required this.errorChild,
    required this.debugRethrowError,
    Key? key,
  }) : super(key: key);

  final ZacString zacString;
  final ZacWidget? errorChild;
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
    final zacContext = useZacBuildContext(ref);
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
      data: (obj) => ZacWidgetBuilderFromMapInIsolate(
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

class ZacWidgetBuilderFromMapInIsolate extends HookConsumerWidget {
  const ZacWidgetBuilderFromMapInIsolate({
    required this.zacMap,
    required this.errorChild,
    required this.debugRethrowError,
    Key? key,
  }) : super(key: key);

  static Future<ZacWidget> _isolateConvert(List<Object?> data) async {
    allConverters = data[1] as Map<String, Convert>;
    return ConverterHelper.convertToType<ZacWidget>(
        data[0] as Map<String, dynamic>);
  }

  final ZacMap zacMap;
  final ZacWidget? errorChild;
  final bool debugRethrowError;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final loadingState =
        useState<AsyncValue<ZacWidget>>(const AsyncValue.loading());
    final zacContext = useZacBuildContext(ref);
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

    return ZacUpdateContext(
      builder: (context, ref, helper) {
        return loadingState.value.map(
          data: (obj) => obj.value.buildWidget(context, ref, helper),
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
  final ZacWidget? child;

  @override
  Widget build(BuildContext context) {
    return SharedValueProvider(
      family: ZacWidgetBuilder.provideErrorFamily,
      value: error,
      builder: (context, ref, zacContext) {
        Widget err = const SizedBox.shrink();
        assert(() {
          if (null == child) {
            err = const _DebugErrorBox();
          }
          return true;
        }(), '');
        if (null != child) {
          err = child!.buildWidget(context, ref, zacContext);
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
    final zacContext = useZacBuildContext(ref);
    final val = SharedValue.getFilled(const SharedValueConsumeType.watch(),
        ZacRef.widget(ref), ZacWidgetBuilder.provideErrorFamily);

    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.red,
          width: 3.0,
        ),
      ),
      padding: const EdgeInsets.all(8.0),
      child: Text('ERROR IN $ZacWidgetBuilder:\n$val'),
    );
  }
}
