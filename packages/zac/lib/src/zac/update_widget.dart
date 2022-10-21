import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:zac/src/base.dart';
import 'package:zac/src/flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:zac/src/zac/context.dart';

part 'update_widget.freezed.dart';
part 'update_widget.g.dart';

@defaultConverterFreezed
class ZacUpdateContextBuilder
    with _$ZacUpdateContextBuilder
    implements FlutterWidget {
  const ZacUpdateContextBuilder._();

  static const String unionValue = 'z:1:UpdateContext';

  factory ZacUpdateContextBuilder.fromJson(Map<String, dynamic> json) =>
      _$ZacUpdateContextBuilderFromJson(json);

  @FreezedUnionValue(ZacUpdateContextBuilder.unionValue)
  factory ZacUpdateContextBuilder({
    FlutterKey? key,
    required FlutterWidget child,
  }) = _ZacUpdateContextBuilder;

  @override
  ZacUpdateContext buildWidget(ZacContext zacContext) {
    return ZacUpdateContext(
      builder: (zacContext) => child.buildWidget(zacContext),
      key: key?.buildKey(zacContext),
    );
  }
}

class ZacUpdateContext extends HookConsumerWidget {
  const ZacUpdateContext({required this.builder, Key? key}) : super(key: key);

  final Widget Function(ZacContext zacContext) builder;

  @override
  Widget build(
    BuildContext context,
    WidgetRef ref,
  ) {
    final zacContext = useZacContext(ref);
    return builder(zacContext);
  }
}
