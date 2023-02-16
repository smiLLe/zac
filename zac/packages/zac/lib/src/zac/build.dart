import 'dart:convert';
import 'dart:isolate';

import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:zac/src/zac/context.dart';
import 'package:zac/src/zac/zac_builder.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:zac/src/base.dart';

part 'build.freezed.dart';
part 'build.g.dart';

@freezedZacBuilder
class ZacBuild with _$ZacBuild implements ZacBuilder<Widget> {
  const ZacBuild._();

  static const String unionValue = 'z:1:Build.fromJsonString';
  static const String unionValueMap = 'z:1:Build.fromBuilderMap';
  static const String unionValueFromBuilder = 'z:1:Build.fromBuilder';
  static const String unionValueIsolate = 'z:1:Build:Isolate.fromJsonString';
  static const String unionValueIsolateMap = 'z:1:Build:Isolate.fromBuilderMap';

  factory ZacBuild.fromJson(Map<String, dynamic> json) =>
      _$ZacBuildFromJson(json);

  @FreezedUnionValue(ZacBuild.unionValue)
  factory ZacBuild.fromJsonString({
    ZacBuilder<Key?>? key,
    required String jsonString,
  }) = _ZacBuildFromString;

  @FreezedUnionValue(ZacBuild.unionValueMap)
  factory ZacBuild.fromBuilderMap({
    ZacBuilder<Key?>? key,
    required Map<String, dynamic> builderMap,
  }) = _ZacBuildFromBuilderMap;

  @FreezedUnionValue(ZacBuild.unionValueFromBuilder)
  factory ZacBuild.fromBuilder({
    ZacBuilder<Key?>? key,
    required ZacBuilder<Widget> builderWidget,
  }) = _ZacBuildFromBuilder;

  @FreezedUnionValue(ZacBuild.unionValueIsolate)
  factory ZacBuild.isolateFromJsonString({
    ZacBuilder<Key?>? key,
    required String jsonString,
    ZacBuilder<Widget>? errorChild,
  }) = _ZacBuildIsolateFromString;

  @FreezedUnionValue(ZacBuild.unionValueIsolateMap)
  factory ZacBuild.isolateFromBuilderMap({
    ZacBuilder<Key?>? key,
    required Map<String, dynamic> builderMap,
    ZacBuilder<Widget>? errorChild,
  }) = _ZacBuildIsolateBuilderMap;

  Widget _buildWidget(BuildContext context, ZacContext zacContext) {
    return map(
      fromJsonString: (obj) => ZacBuildWidget.fromJsonString(
        json: obj.jsonString,
        key: obj.key?.build(context, zacContext),
      ),
      fromBuilderMap: (obj) => ZacBuildWidget.fromBuilderMap(
        map: obj.builderMap,
        key: obj.key?.build(context, zacContext),
      ),
      fromBuilder: (obj) => ZacBuildWidget.fromBuilder(
        builder: obj.builderWidget,
        key: obj.key?.build(context, zacContext),
      ),
      isolateFromJsonString: (obj) => ZacBuildIsolatedWidget.fromJsonString(
        json: obj.jsonString,
        key: obj.key?.build(context, zacContext),
        // errorChild: obj.errorChild,
      ),
      isolateFromBuilderMap: (obj) => ZacBuildIsolatedWidget.fromBuilderMap(
        map: obj.builderMap,
        key: obj.key?.build(context, zacContext),
        // errorChild: obj.errorChild,
      ),
    );
  }

  @override
  Widget build(BuildContext context, ZacContext zacContext) {
    return _buildWidget(context, zacContext);
  }
}

class ZacBuildWidget extends HookConsumerWidget {
  const ZacBuildWidget({required this.data, super.key})
      : assert(data is String ||
            data is Map<String, dynamic> ||
            data is ZacBuilder<Widget>);

  const ZacBuildWidget.fromJsonString({required String json, Key? key})
      : this(data: json, key: key);

  const ZacBuildWidget.fromBuilderMap(
      {required Map<String, dynamic> map, Key? key})
      : this(data: map, key: key);

  const ZacBuildWidget.fromBuilder(
      {required ZacBuilder<Widget> builder, Key? key})
      : this(data: builder, key: key);

  final Object data;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final zacContext = useZacContext(ref);
    final zacBuilder = useMemoized<ZacBuilder<Widget>>(() {
      if (data is ZacBuilder<Widget>) return data as ZacBuilder<Widget>;

      late Map<String, dynamic> map;
      final obj = data;
      if (obj is String) {
        final dynamic json = jsonDecode(obj);
        if (json is! Map<String, dynamic>) {
          throw StateError(
              'Could not convert String to ${Map<String, dynamic>} in $ZacBuildWidget. $json');
        }
        map = json;
      } else if (obj is Map<String, dynamic>) {
        map = obj;
      } else {
        throw StateError(
            'Data is not String or ${Map<String, dynamic>} in $ZacBuildWidget. $data');
      }

      return ZacBuilder<Widget>.fromJson(map);
    }, [data]);

    return zacBuilder.build(context, zacContext);
  }
}

class ZacBuildIsolatedWidget extends HookConsumerWidget {
  const ZacBuildIsolatedWidget({required this.data, this.errorChild, Key? key})
      : assert(data is String || data is Map<String, dynamic>),
        super(key: key);

  const ZacBuildIsolatedWidget.fromJsonString(
      {required String json, ZacBuilder<Widget>? errorChild, Key? key})
      : this(data: json, errorChild: errorChild, key: key);

  const ZacBuildIsolatedWidget.fromBuilderMap(
      {required Map<String, dynamic> map,
      ZacBuilder<Widget>? errorChild,
      Key? key})
      : this(data: map, errorChild: errorChild, key: key);

  final Object? data;
  final ZacBuilder<Widget>? errorChild;

  static AutoDisposeFutureProvider<ZacBuilder<Widget>> provider =
      FutureProvider.autoDispose<ZacBuilder<Widget>>(
    (_) {
      throw StateError('');
    },
    name: 'Zac Isolated Widget',
  );

  static Map<String, dynamic> _parseJson(String encodedJson) {
    final dynamic result = jsonDecode(encodedJson);
    if (result is! Map<String, dynamic>) {
      throw StateError(
          'Could not convert String to ${Map<String, dynamic>} in $ZacBuildIsolatedWidget. $encodedJson');
    }
    return result;
  }

  static ZacBuilder<Widget> _convert(Map<String, dynamic> json) {
    return ZacBuilder<Widget>.fromJson(json);
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ProviderScope(
      overrides: [
        provider.overrideWith((ref) async {
          late Map<String, dynamic> map;
          if (data is String) {
            map = await Isolate.run(
              () => _parseJson(data as String),
              debugName: '$ZacBuildIsolatedWidget.parseJson',
            );
          } else if (data is Map<String, dynamic>) {
            map = data as Map<String, dynamic>;
          } else {
            throw StateError(
                'Data is not String or ${Map<String, dynamic>} in $ZacBuildIsolatedWidget. $data');
          }
          final builder = await Isolate.run(() => _convert(map),
              debugName: '$ZacBuildIsolatedWidget.convertFlutterWidget');

          return builder;
        })
      ],
      child: HookConsumer(
        builder: (context, ref, ___) {
          final zacContext = useZacContext(ref);
          return ref.watch(provider).map<Widget>(
                data: (obj) => obj.value.build(context, zacContext),
                error: (obj) {
                  Widget error = errorChild?.build(context, zacContext) ??
                      const SizedBox.shrink();

                  assert(() {
                    FlutterError.reportError(
                      FlutterErrorDetails(
                        exception: obj.error,
                        stack: obj.stackTrace,
                        library: 'package:zac',
                        context: ErrorDescription(
                          '$ZacBuildIsolatedWidget could not create a ${ZacBuilder<Widget>}',
                        ),
                      ),
                    );
                    return true;
                  }(), '');
                  return error;
                },
                loading: (obj) => const SizedBox.shrink(),
              );
        },
      ),
    );
  }
}
