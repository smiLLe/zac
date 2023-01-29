import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:zac/src/base.dart';
import 'package:zac/src/zac/context.dart';
import 'package:zac/src/zac/zac_builder.dart';

part 'scroll_controller.freezed.dart';
part 'scroll_controller.g.dart';

@freezedZacBuilder
class FlutterScrollController
    with _$FlutterScrollController
    implements ZacBuilder<ScrollController> {
  FlutterScrollController._();

  factory FlutterScrollController.fromJson(Map<String, dynamic> json) =>
      _$FlutterScrollControllerFromJson(json);

  @FreezedUnionValue('f:1:ScrollController')
  factory FlutterScrollController({
    double? initialScrollOffset,
    bool? keepScrollOffset,
    String? debugLabel,
  }) = _FlutterScrollController;

  late final ScrollController _scrollController = ScrollController(
    debugLabel: debugLabel,
    keepScrollOffset: keepScrollOffset ?? true,
    initialScrollOffset: initialScrollOffset ?? 0.0,
  );

  @override
  ScrollController build(BuildContext context, ZacContext zacContext) =>
      _scrollController;
}
