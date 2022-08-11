import 'dart:convert';

import 'package:zac/src/zac/any_value.dart';

import 'package:freezed_annotation/freezed_annotation.dart';
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
  }) = _ZacWidgetBuilderBuilderIsolate;

  @FreezedUnionValue(ZacWidgetBuilderBuilder.unionValueIsolateString)
  factory ZacWidgetBuilderBuilder.isolateString({
    FlutterKey? key,
    required ZacString data,
  }) = _ZacWidgetBuilderBuilderIsolateString;

  @override
  Widget buildWidget(ZacBuildContext context) {
    return map(
      (obj) => ZacWidgetBuilder(
        zacWidget: obj.data,
        key: obj.key?.buildKey(context),
      ),
      map: (obj) => ZacWidgetBuilderFromMap(
        zacMap: obj.data,
        key: obj.key?.buildKey(context),
      ),
      isolate: (obj) => ZacWidgetBuilderFromMapInIsolate(
        zacMap: obj.data,
        key: obj.key?.buildKey(context),
      ),
      isolateString: (obj) => ZacWidgetBuilderFromMapInIsolateFromString(
        zacString: obj.data,
        key: obj.key?.buildKey(context),
      ),
    );
  }
}

class ZacWidgetBuilder extends HookConsumerWidget {
  const ZacWidgetBuilder({required this.zacWidget, Key? key}) : super(key: key);

  final ZacWidget zacWidget;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ZacUpdateContext(
      builder: (context) => zacWidget.buildWidget(context),
    );
  }
}

class ZacWidgetBuilderFromMap extends HookConsumerWidget {
  const ZacWidgetBuilderFromMap({required this.zacMap, Key? key})
      : super(key: key);

  final ZacMap zacMap;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final zacContext = useZacBuildContext(ref);
    final map = zacMap.getValue(zacContext);
    final zacWidget =
        useMemoized(() => ConverterHelper.convertToType<ZacWidget>(map));
    return ZacWidgetBuilder(zacWidget: zacWidget);
  }
}

class ZacWidgetBuilderFromMapInIsolateFromString extends HookConsumerWidget {
  const ZacWidgetBuilderFromMapInIsolateFromString(
      {required this.zacString, Key? key})
      : super(key: key);

  final ZacString zacString;

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
        loadingState.value =
            AsyncValue.error(error ?? '', stackTrace: stackTrace);
      });
      return () => mounted = false;
    }, [data]);

    return loadingState.value.map(
      data: (obj) =>
          ZacWidgetBuilderFromMapInIsolate(zacMap: ZacMap(obj.value)),
      error: (obj) => const SizedBox.shrink(),
      loading: (obj) => const SizedBox.shrink(),
    );
  }
}

class ZacWidgetBuilderFromMapInIsolate extends HookConsumerWidget {
  const ZacWidgetBuilderFromMapInIsolate({required this.zacMap, Key? key})
      : super(key: key);

  static Future<ZacWidget> _isolateConvert(List<Object?> data) async {
    allConverters = data[1] as Map<String, Convert>;
    return ConverterHelper.convertToType<ZacWidget>(
        data[0] as Map<String, dynamic>);
  }

  final ZacMap zacMap;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final loadingState =
        useState<AsyncValue<ZacWidget>>(const AsyncValue.loading());
    final zacContext = useZacBuildContext(ref);
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
        loadingState.value =
            AsyncValue.error(error ?? '', stackTrace: stackTrace);
      });

      return () => mounted = false;
    }, [map, allConverters]);

    return ZacUpdateContext(
      builder: (context) {
        return loadingState.value.map(
          data: (value) => value.value.buildWidget(context),
          error: (value) => const SizedBox.shrink(),
          loading: (value) => const SizedBox.shrink(),
        );
      },
    );
  }
}
