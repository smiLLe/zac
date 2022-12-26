import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:zac/src/base.dart';
import 'package:zac/src/flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:zac/src/zac/context.dart';
import 'package:zac/src/zac/zac_build.dart';
import 'package:zac/src/zac/zac_value.dart';

part 'update_widget.freezed.dart';
part 'update_widget.g.dart';

@freezedZacBuilder
@ZacGenerate(order: zacGenerateOrderZacWidget)
class ZacUpdateContextBuilder
    with _$ZacUpdateContextBuilder
    implements ZacBuild<ZacUpdateContext> {
  const ZacUpdateContextBuilder._();

  static const String unionValue = 'z:1:UpdateContext';

  factory ZacUpdateContextBuilder.fromJson(Map<String, dynamic> json) =>
      _$ZacUpdateContextBuilderFromJson(json);

  @FreezedUnionValue(ZacUpdateContextBuilder.unionValue)
  factory ZacUpdateContextBuilder({
    ZacValue<Key?>? key,
    required ZacValue<Widget> child,
  }) = _ZacUpdateContextBuilder;

  ZacUpdateContext _buildWidget(ZacContext zacContext) {
    return ZacUpdateContext(
      builder: child.build,
      key: key?.build(zacContext),
    );
  }

  @override
  ZacUpdateContext build(ZacContext zacContext) {
    return _buildWidget(zacContext);
  }
}

class ZacUpdateContext extends HookConsumerWidget {
  const ZacUpdateContext({required this.builder, Key? key}) : super(key: key);

  final Widget Function(ZacContext zacContext) builder;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final zacContext = useZacContext(ref);
    return builder(zacContext);
  }
}
