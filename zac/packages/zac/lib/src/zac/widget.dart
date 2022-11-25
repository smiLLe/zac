import 'dart:convert';

import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:zac/src/flutter/all.dart';
import 'package:zac/src/zac/context.dart';
import 'package:zac/src/zac/zac_builder.dart';
import 'package:zac/src/zac/zac_value.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:zac/src/zac/update_widget.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:zac/src/base.dart';
import 'package:zac/src/converter.dart';

part 'widget.freezed.dart';
part 'widget.g.dart';

@freezedZacBuilder
@ZacGenerate(order: zacGenerateOrderZacWidget)
class ZacWidgetBuilder with _$ZacWidgetBuilder implements FlutterWidget {
  const ZacWidgetBuilder._();

  static const String unionValue = 'z:1:Widget';
  static const String unionValueIsolate = 'z:1:Widget.isolate';

  factory ZacWidgetBuilder.fromJson(Map<String, dynamic> json) =>
      _$ZacWidgetBuilderFromJson(json);

  @FreezedUnionValue(ZacWidgetBuilder.unionValue)
  factory ZacWidgetBuilder({
    FlutterKey? key,
    required Object data,
  }) = _ZacWidgetBuilder;

  @FreezedUnionValue(ZacWidgetBuilder.unionValueIsolate)
  factory ZacWidgetBuilder.isolate({
    FlutterKey? key,
    required Object data,
    FlutterWidget? errorChild,
  }) = _ZacWidgetBuilderIsolate;

  Widget _buildWidget(ZacContext zacContext) {
    return map(
      (obj) => ZacWidget(
        data: obj.data,
        key: obj.key?.buildOrNull(zacContext),
      ),
      isolate: (obj) => ZacWidgetIsolated(
        data: obj.data,
        key: obj.key?.buildOrNull(zacContext),
        errorChild: obj.errorChild,
      ),
    );
  }

  @override
  Widget build(ZacContext zacContext,
      {ZacBuilderConsume onConsume = const ZacBuilderConsume()}) {
    return _buildWidget(zacContext);
  }

  @override
  Widget? buildOrNull(ZacContext zacContext,
      {ZacBuilderConsume onConsume = const ZacBuilderConsume()}) {
    return _buildWidget(zacContext);
  }
}

class ZacWidget extends HookWidget {
  const ZacWidget({required this.data, Key? key})
      : assert(data is String ||
            data is Map<String, dynamic> ||
            data is FlutterWidget),
        super(key: key);

  final Object data;

  @override
  Widget build(
    BuildContext context,
  ) {
    final flutterWidget = useMemoized(() {
      if (data is FlutterWidget) return data as FlutterWidget;

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

      return ConverterHelper.convertToType<FlutterWidget>(map);
    }, [data]);

    return ZacUpdateContext(
      builder: flutterWidget.build,
    );
  }
}

class ZacWidgetIsolated extends StatelessWidget {
  const ZacWidgetIsolated({required this.data, this.errorChild, Key? key})
      : assert(data is String || data is Map<String, dynamic>),
        super(key: key);

  final Object? data;
  final FlutterWidget? errorChild;

  static AutoDisposeFutureProvider<FlutterWidget> provider =
      FutureProvider.autoDispose<FlutterWidget>(
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

  static Future<FlutterWidget> _convert(List<Object?> data) async {
    allConverter = data[1] as Map<String, Convert>;
    return ConverterHelper.convertToType<FlutterWidget>(
        data[0] as Map<String, dynamic>);
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
          return compute(
            _convert,
            [map, allConverter],
            debugLabel: '$ZacWidgetIsolated.convertFlutterWidget',
          );
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
                FlutterWidget error =
                    errorChild ?? const FlutterSizedBox.shrink();
                assert(() {
                  if (null != errorChild) return true;
                  error = FlutterContainer(
                    decoration: FlutterBoxDecoration(
                      border: FlutterBorder.all(
                        color: FlutterColor.fromRGBO(
                          r: 244,
                          g: 67,
                          b: 54,
                          opacity: ZacDouble.fromJson(1.0),
                        ),
                        width: ZacDouble.fromJson(3.0),
                      ),
                    ),
                    padding: FlutterEdgeInsets.all(ZacDouble.fromJson(8.0)),
                    child: FlutterText(ZacString.fromJson(
                        'ERROR IN $ZacWidgetIsolated:\n${obj.error}')),
                  );
                  return true;
                }(), '');
                return error.build(zacContext);
              });
            },
            loading: (obj) => const SizedBox.shrink(),
          );
        },
      ),
    );
  }
}
