import 'package:zac/zac.dart';
import 'package:flutter/widgets.dart';

part 'scroll_controller.freezed.dart';

@ZacGenerate(order: zacGenerateOrderFlutterAbstractsB)
abstract class FlutterScrollController {
  ScrollController getScrollController(ZacContext zacContext);
}

/// This class is not meant to be used as a Builder and cannot be converted.
/// Instead an application must create this class in their code and should
/// manually provide it as a [SharedValue] so that it can be consumed
/// by a [ZacValue]<[ZacScrollController]>
@nonConverterFreezed
class ZacScrollController
    with _$ZacScrollController
    implements FlutterScrollController {
  ZacScrollController._();

  factory ZacScrollController(ScrollController controller) =
      _ZacScrollController;

  @override
  ScrollController getScrollController(ZacContext zacContext) {
    return controller;
  }
}
