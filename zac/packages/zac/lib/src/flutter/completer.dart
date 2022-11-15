import 'dart:async';

import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:zac/src/base.dart';
import 'package:zac/src/converter.dart';
import 'package:zac/src/zac/action.dart';
import 'package:zac/src/zac/context.dart';
import 'package:zac/src/zac/shared_value.dart';
import 'package:zac/src/zac/zac_value.dart';

part 'completer.freezed.dart';
part 'completer.g.dart';

abstract class DartCompleter<T> {
  Completer<T> getCompleter();
}

@ZacGenerate(order: zacGenerateOrderFlutterAbstractsB)
abstract class DartCompleterVoid implements DartCompleter<void> {
  factory DartCompleterVoid.fromJson(Map<String, dynamic> json) {
    return ConverterHelper.convertToType<DartCompleterVoid>(json);
  }
}

@freezedZacBuilder
@ZacGenerate(order: zacGenerateOrderZacWidget)
class DartCompleterVoidBuilder
    with _$DartCompleterVoidBuilder
    implements DartCompleterVoid {
  DartCompleterVoidBuilder._();

  static const String unionValue = 'd:1:Completer<void>';

  factory DartCompleterVoidBuilder.fromJson(Map<String, dynamic> json) =>
      _$DartCompleterVoidBuilderFromJson(json);

  @FreezedUnionValue(DartCompleterVoidBuilder.unionValue)
  factory DartCompleterVoidBuilder() = _DartCompleterVoidBuilder;

  late final Completer<void> _c = Completer<void>();

  @override
  Completer<void> getCompleter() => _c;
}

@freezedZacBuilder
@ZacGenerate(order: zacGenerateOrderZacWidget)
class ZacCompleterProviderBuilder
    with _$ZacCompleterProviderBuilder
    implements FlutterWidget {
  ZacCompleterProviderBuilder._();

  static const String unionValue = 'z:1:CompleterProvider.void';

  factory ZacCompleterProviderBuilder.fromJson(Map<String, dynamic> json) =>
      _$ZacCompleterProviderBuilderFromJson(json);

  @FreezedUnionValue(ZacCompleterProviderBuilder.unionValue)
  factory ZacCompleterProviderBuilder.asVoid({
    required ZacValue<FlutterWidget> child,
    required SharedValueFamily family,
  }) = _ZacCompleterProviderBuilderVoid;

  @override
  Widget buildWidget(ZacContext zacContext) {
    return map(
      asVoid: (value) => ZacCompleterProvider<void>(
        childBuilder: (zacContext) =>
            value.child.getValue(zacContext).buildWidget(zacContext),
        completerBuilder: () => DartCompleterVoidBuilder(),
        disposeComplete: (completer) => completer.complete(null),
        family: family,
      ),
    );
  }
}

class ZacCompleterProvider<T> extends StatelessWidget {
  const ZacCompleterProvider({
    required this.completerBuilder,
    required this.disposeComplete,
    required this.childBuilder,
    required this.family,
    Key? key,
  }) : super(key: key);

  final Widget Function(ZacContext zacContext) childBuilder;
  final SharedValueFamily family;

  /// Always return a new Completer instance when this function is called
  final DartCompleter<T> Function() completerBuilder;

  /// Must call .complete() or .completeError(). This is only called when the
  /// provider is going to be disposed and is meant to "cleanUp" the Completer
  /// and its attached Future.
  final Function(Completer<T> completer) disposeComplete;

  @override
  Widget build(BuildContext context) {
    return SharedValueProvider(
      childBuilder: childBuilder,
      valueBuilder: (ref, zacContext) {
        final dartCompleter = completerBuilder();
        final completer = dartCompleter.getCompleter();
        ref.onDispose(() {
          if (completer.isCompleted) return;
          disposeComplete(completer);
          assert(completer.isCompleted,
              '${Completer<T>} was not completed in disposeComplete callback');
        });
        return dartCompleter;
      },
      family: family,
      autoCreate: true,
    );
  }
}

@freezedZacBuilder
@ZacGenerate(order: zacGenerateOrderZacWidget)
class ZacCompleterActions with _$ZacCompleterActions implements ZacAction {
  ZacCompleterActions._();

  static const String unionValueCompleteVoid =
      'z:1:CompleterAction.completeVoid';

  factory ZacCompleterActions.fromJson(Map<String, dynamic> json) =>
      _$ZacCompleterActionsFromJson(json);

  @FreezedUnionValue(ZacCompleterActions.unionValueCompleteVoid)
  factory ZacCompleterActions.completeVoid({
    required ZacValueConsumeOnly<DartCompleter<dynamic>> completer,
  }) = _ZacCompleterActionsVoid;

  @override
  void execute(ZacActionPayload payload, ZacContext zacContext) {
    map(
      completeVoid: (obj) {
        final completer = obj.completer.getValue(zacContext).getCompleter();
        if (completer.isCompleted) return;
        completer.complete();
      },
    );
  }
}
