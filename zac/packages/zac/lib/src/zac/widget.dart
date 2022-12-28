import 'dart:convert';

import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:zac/src/flutter/all.dart';
import 'package:zac/src/zac/context.dart';
import 'package:zac/src/zac/zac_build.dart';
import 'package:zac/src/zac/zac_value.dart';
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
class ZacWidgetBuilder with _$ZacWidgetBuilder implements ZacBuild<Widget> {
  const ZacWidgetBuilder._();

  static const String unionValue = 'z:1:Widget';
  static const String unionValueIsolate = 'z:1:Widget.isolate';

  factory ZacWidgetBuilder.fromJson(Map<String, dynamic> json) =>
      _$ZacWidgetBuilderFromJson(json);

  @FreezedUnionValue(ZacWidgetBuilder.unionValue)
  factory ZacWidgetBuilder({
    ZacValue<Key?>? key,
    required Object data,
  }) = _ZacWidgetBuilder;

  @FreezedUnionValue(ZacWidgetBuilder.unionValueIsolate)
  factory ZacWidgetBuilder.isolate({
    ZacValue<Key?>? key,
    required Object data,
    ZacValue<Widget?>? errorChild,
  }) = _ZacWidgetBuilderIsolate;

  Widget _buildWidget(ZacContext zacContext) {
    return map(
      (obj) => ZacWidget(
        data: obj.data,
        key: obj.key?.getValue(zacContext),
      ),
      isolate: (obj) => ZacWidgetIsolated(
        data: obj.data,
        key: obj.key?.getValue(zacContext),
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
            data is ZacBuild<Widget>),
        super(key: key);

  final Object data;

  @override
  Widget build(
    BuildContext context,
  ) {
    final zacBuilder = useMemoized<ZacBuild<Widget>>(() {
      if (data is ZacBuild<Widget>) return data as ZacBuild<Widget>;

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

      return ConverterHelper.convertToType<ZacBuild<Widget>>(map);
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
  final ZacValue<Widget?>? errorChild;

  static AutoDisposeFutureProvider<ZacBuild<Widget>> provider =
      FutureProvider.autoDispose<ZacBuild<Widget>>(
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

  static Future<ZacBuild<Widget>> _convert(List<Object?> data) async {
    allBuilder = data[1] as Map<String, Convert>;
    return ConverterHelper.convertToType<ZacBuild<Widget>>(
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
            [map, allBuilder],
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
                Widget? error = errorChild?.getValue(zacContext);
                assert(() {
                  if (null != errorChild) return true;
                  error = FlutterContainer(
                    decoration: FlutterBoxDecoration(
                      border: FlutterBorder.all(
                        color: FlutterColor.fromRGBO(
                          r: 244,
                          g: 67,
                          b: 54,
                          opacity: ZacValue<double>.fromJson(1.0),
                        ).toZacValue(),
                        width: ZacValue<double>.fromJson(3.0),
                      ).toZacValue(),
                    ).toZacValue(),
                    padding:
                        FlutterEdgeInsets.all(ZacValue<double>.fromJson(8.0))
                            .toZacValue(),
                    child: ZacValue<Widget>(FlutterText(
                      ZacValue<String>.fromJson(
                          'ERROR IN $ZacWidgetIsolated:\n${obj.error}'),
                    )),
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
