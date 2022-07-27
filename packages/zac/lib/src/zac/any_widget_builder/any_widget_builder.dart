import 'dart:convert';

import 'package:zac/src/zac/any_value/any_value.dart';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:zac/src/zac/context/any_widget_context.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:zac/src/base.dart';
import 'package:zac/src/converter.dart';
import 'package:zac/src/flutter/mixed/keys/keys.dart';

part 'any_widget_builder.freezed.dart';
part 'any_widget_builder.g.dart';

@defaultConverterFreezed
class AnyWidgetBuilderBuilder
    with _$AnyWidgetBuilderBuilder
    implements ZacWidget {
  const AnyWidgetBuilderBuilder._();

  static const String unionValue = 'z:1:AnyWidgetBuilder';
  static const String unionValueIsolate = 'z:1:AnyWidgetBuilder.isolate';
  static const String unionValueIsolateString =
      'z:1:AnyWidgetBuilder.isolateString';

  factory AnyWidgetBuilderBuilder.fromJson(Map<String, dynamic> json) =>
      _$AnyWidgetBuilderBuilderFromJson(json);

  @FreezedUnionValue(AnyWidgetBuilderBuilder.unionValue)
  factory AnyWidgetBuilderBuilder({
    FlutterKey? key,
    required ZacMap data,
  }) = _AnyWidgetBuilderBuilder;

  @FreezedUnionValue(AnyWidgetBuilderBuilder.unionValueIsolate)
  factory AnyWidgetBuilderBuilder.isolate({
    FlutterKey? key,
    required ZacMap data,
  }) = _AnyWidgetBuilderBuilderIsolate;

  @FreezedUnionValue(AnyWidgetBuilderBuilder.unionValueIsolateString)
  factory AnyWidgetBuilderBuilder.isolateString({
    FlutterKey? key,
    required ZacString data,
  }) = _AnyWidgetBuilderBuilderIsolateString;

  @override
  Widget buildWidget(ZacBuildContext context) {
    return map(
      (obj) => AnyWidgetBuilderFromMap(
        anyMap: obj.data,
        key: obj.key?.build(context),
      ),
      isolate: (obj) => AnyWidgetBuilderFromMapInIsolate(
        anyMap: obj.data,
        key: obj.key?.build(context),
      ),
      isolateString: (obj) => AnyWidgetBuilderFromMapInIsolateFromString(
        anyString: obj.data,
        key: obj.key?.build(context),
      ),
    );
  }
}

class AnyWidgetBuilder extends HookConsumerWidget {
  const AnyWidgetBuilder({required this.anyWidget, Key? key}) : super(key: key);

  final ZacWidget anyWidget;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return UpdateContextBuilder(
      builder: (context) => anyWidget.buildWidget(context),
    );
  }
}

class AnyWidgetBuilderFromMap extends HookConsumerWidget {
  const AnyWidgetBuilderFromMap({required this.anyMap, Key? key})
      : super(key: key);

  final ZacMap anyMap;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // globalRuntimeConverter = ref.watch(AWProviders.widgetsConverter);
    final awContext = useAnyWidgetContext(ref);
    final map = anyMap.getValue(awContext);
    final anyWidget =
        useMemoized(() => ConverterHelper.convertToType<ZacWidget>(map));
    return AnyWidgetBuilder(anyWidget: anyWidget);
  }
}

class AnyWidgetBuilderFromMapInIsolateFromString extends HookConsumerWidget {
  const AnyWidgetBuilderFromMapInIsolateFromString(
      {required this.anyString, Key? key})
      : super(key: key);

  final ZacString anyString;

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
    final awContext = useAnyWidgetContext(ref);
    final data = anyString.getValue(awContext);
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
          AnyWidgetBuilderFromMapInIsolate(anyMap: ZacMap(obj.value)),
      error: (obj) => const SizedBox.shrink(),
      loading: (obj) => const SizedBox.shrink(),
    );
  }
}

class AnyWidgetBuilderFromMapInIsolate extends HookConsumerWidget {
  const AnyWidgetBuilderFromMapInIsolate({required this.anyMap, Key? key})
      : super(key: key);

  static Future<ZacWidget> _isolateConvert(List<Object?> data) async {
    allConverters = data[1] as Map<String, Convert>;
    return ConverterHelper.convertToType<ZacWidget>(
        data[0] as Map<String, dynamic>);
    // return const AnyWidgetConverter().fromJson(data[0] as Map<String, dynamic>);
  }

  final ZacMap anyMap;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // final converters = ref.watch(AWProviders.widgetsConverter);
    final loadingState =
        useState<AsyncValue<ZacWidget>>(const AsyncValue.loading());
    final awContext = useAnyWidgetContext(ref);
    final map = anyMap.getValue(awContext);
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

    return UpdateContextBuilder(
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
