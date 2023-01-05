import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:zac/src/zac/context.dart';
import 'package:zac/src/base.dart';
import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:zac/src/zac/zac_builder.dart';

part 'builder.freezed.dart';
part 'builder.g.dart';

@freezedZacBuilder
class FlutterBuilder with _$FlutterBuilder implements ZacBuilder<Widget> {
  const FlutterBuilder._();

  factory FlutterBuilder.fromJson(Map<String, dynamic> json) =>
      _$FlutterBuilderFromJson(json);

  @FreezedUnionValue('f:1:Builder')
  factory FlutterBuilder({
    ZacBuilder<Key?>? key,
    required ZacBuilder<Widget> child,
  }) = _FlutterBuilder;

  @override
  Widget build(BuildContext context, ZacContext zacContext) {
    return ZacFlutterBuilder(
      key: key?.build(context, zacContext),
      builder: child.build,
    );
  }
}

class ZacFlutterBuilder extends HookConsumerWidget {
  const ZacFlutterBuilder({
    super.key,
    required this.builder,
  });

  final Widget Function(BuildContext context, ZacContext zacContext) builder;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final zacContext = useZacContext();
    return builder(context, zacContext);
  }
}
