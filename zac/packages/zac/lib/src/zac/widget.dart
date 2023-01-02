import 'dart:convert';

import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:zac/src/flutter/all.dart';
import 'package:zac/src/zac/context.dart';
import 'package:zac/src/zac/zac_builder.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:zac/src/zac/update_widget.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:zac/src/base.dart';
import 'package:zac/src/builder.dart';

part 'widget.freezed.dart';
part 'widget.g.dart';

@freezedZacBuilder
class ZacWidgetBuilder with _$ZacWidgetBuilder implements ZacBuilder<Widget> {
  const ZacWidgetBuilder._();

  static const String unionValue = 'z:1:Widget';
  static const String unionValueIsolate = 'z:1:Widget.isolate';

  factory ZacWidgetBuilder.fromJson(Map<String, dynamic> json) =>
      _$ZacWidgetBuilderFromJson(json);

  @FreezedUnionValue(ZacWidgetBuilder.unionValue)
  factory ZacWidgetBuilder({
    ZacBuilder<Key?>? key,
    required Object data,
  }) = _ZacWidgetBuilder;

  @FreezedUnionValue(ZacWidgetBuilder.unionValueIsolate)
  factory ZacWidgetBuilder.isolate({
    ZacBuilder<Key?>? key,
    required Object data,
    ZacBuilder<Widget?>? errorChild,
  }) = _ZacWidgetBuilderIsolate;

  Widget _buildWidget(ZacContext zacContext) {
    return map(
      (obj) => ZacWidget(
        data: obj.data,
        key: obj.key?.build(zacContext),
      ),
      isolate: (obj) => ZacWidgetIsolated(
        data: obj.data,
        key: obj.key?.build(zacContext),
        errorChild: obj.errorChild,
      ),
    );
  }

  @override
  Widget build(ZacContext zacContext) {
    return _buildWidget(zacContext);
  }
}

class ZacWidget extends HookWidget {
  const ZacWidget({required this.data, Key? key})
      : assert(data is String ||
            data is Map<String, dynamic> ||
            data is ZacBuilder<Widget>),
        super(key: key);

  final Object data;

  @override
  Widget build(
    BuildContext context,
  ) {
    final zacBuilder = useMemoized<ZacBuilder<Widget>>(() {
      if (data is ZacBuilder<Widget>) return data as ZacBuilder<Widget>;

      late Map<String, dynamic> map;
      final obj = data;
      if (obj is String) {
        final dynamic json = jsonDecode(obj);
        if (json is! Map<String, dynamic>) {
          throw StateError(
              'Could not convert String to ${Map<String, dynamic>} in $ZacWidget. $json');
        }
        map = json;
      } else if (obj is Map<String, dynamic>) {
        map = obj;
      } else {
        throw StateError(
            'Data is not String or ${Map<String, dynamic>} in $ZacWidget. $data');
      }

      return ZacBuilder<Widget>.fromJson(map);
    }, [data]);

    return ZacUpdateContext(
      builder: zacBuilder.build,
    );
  }
}

class ZacWidgetIsolated extends StatelessWidget {
  const ZacWidgetIsolated({required this.data, this.errorChild, Key? key})
      : assert(data is String || data is Map<String, dynamic>),
        super(key: key);

  final Object? data;
  final ZacBuilder<Widget?>? errorChild;

  static AutoDisposeFutureProvider<ZacBuilder<Widget>> provider =
      FutureProvider.autoDispose<ZacBuilder<Widget>>(
    (_) {
      throw StateError('');
    },
    name: 'Zac Isolated Widget',
  );

  static Future<Map<String, dynamic>> _parseJson(String encodedJson) async {
    final dynamic result = jsonDecode(encodedJson);
    if (result is! Map<String, dynamic>) {
      throw StateError(
          'Could not convert String to ${Map<String, dynamic>} in $ZacWidgetIsolated. $encodedJson');
    }
    return result;
  }

  static Future<ZacBuilder<Widget>> _convert(Map<String, dynamic> json) async {
    return ZacBuilder<Widget>.fromJson(json);
  }

  @override
  Widget build(BuildContext context) {
    return ProviderScope(
      overrides: [
        provider.overrideWith((ref) async {
          late Map<String, dynamic> map;
          if (data is String) {
            map = await compute(
              _parseJson,
              data as String,
              debugLabel: '$ZacWidgetIsolated.parseJson',
            );
          } else if (data is Map<String, dynamic>) {
            map = data as Map<String, dynamic>;
          } else {
            throw StateError(
                'Data is not String or ${Map<String, dynamic>} in $ZacWidgetIsolated. $data');
          }
          final builder = compute(
            _convert,
            map,
            debugLabel: '$ZacWidgetIsolated.convertFlutterWidget',
          );

          return builder;
        })
      ],
      child: Consumer(
        builder: (context, ref, _) {
          final val = ref.watch(provider);
          return val.map<Widget>(
            data: (obj) => ZacUpdateContext(
              builder: obj.value.build,
            ),
            error: (obj) {
              return ZacUpdateContext(builder: (zacContext) {
                Widget? error = errorChild?.build(zacContext);
                assert(() {
                  if (null != errorChild) return true;
                  error = FlutterContainer(
                    decoration: FlutterBoxDecoration(
                      border: FlutterBorder.all(
                        color: FlutterColor.fromRGBO(
                          r: 244,
                          g: 67,
                          b: 54,
                          opacity: ZacBuilder<double>.fromJson(1.0),
                        ),
                        width: ZacBuilder<double>.fromJson(3.0),
                      ),
                    ),
                    padding:
                        FlutterEdgeInsets.all(ZacBuilder<double>.fromJson(8.0)),
                    child: FlutterText(
                      ZacBuilder<String>.fromJson(
                          'ERROR IN $ZacWidgetIsolated:\n${obj.error}'),
                    ),
                  ).build(zacContext);
                  return true;
                }(), '');
                return error ?? const SizedBox.shrink();
              });
            },
            loading: (obj) => const SizedBox.shrink(),
          );
        },
      ),
    );
  }
}
