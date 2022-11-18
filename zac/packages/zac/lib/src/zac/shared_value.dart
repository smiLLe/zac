import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:zac/src/base.dart';
import 'package:zac/src/flutter/foundation.dart';
import 'package:zac/src/zac/action.dart';

import 'package:zac/src/zac/context.dart';
import 'package:zac/src/zac/update_widget.dart';
import 'package:zac/src/zac/transformers.dart';

part 'shared_value.freezed.dart';
part 'shared_value.g.dart';

mixin SharedValueConsume<T> {
  SharedValueFamily get family;
  ZacTransformers? get transformer;
  ZacTransformers? get select;
  SharedValueConsumeType? get forceConsume;
  T getSharedValue(ZacContext zacContext,
      {SharedValueConsumeType prefered =
          const SharedValueConsumeType.watch()}) {
    final value = SharedValue.getTyped<T>(
      zacContext: zacContext,
      consumeType: (forceConsume ?? prefered),
      family: family,
      select: select,
      transformer: transformer,
    );

    return value;
  }
}

mixin SharedValueConsumeList<T> {
  SharedValueFamily get family;
  ZacTransformers? get transformer;
  ZacTransformers? get itemTransformer;
  ZacTransformers? get select;
  SharedValueConsumeType? get forceConsume;

  List<T> getSharedValue(ZacContext zacContext,
      {SharedValueConsumeType prefered =
          const SharedValueConsumeType.watch()}) {
    var list = SharedValue.getTyped<List<dynamic>>(
      zacContext: zacContext,
      consumeType: (forceConsume ?? prefered),
      family: family,
      select: select,
      transformer: transformer,
    );

    if (list is List<T>) return list;

    Object? transformed;

    if (null != itemTransformer) {
      transformed = list
          .map((dynamic e) => itemTransformer!.transform(
              ZacTransformValue(e), zacContext, const ZacActionPayload()))
          .toList();
    }

    if (list is List<T>) return list;

    transformed = transformer?.transform(ZacTransformValue(transformed),
            zacContext, const ZacActionPayload()) ??
        transformer;

    if (transformed is List<T>) return transformed;

    if (transformed is! List) {
      throw StateError('');
    }

    return List<T>.from(transformed);
  }
}

class AccessEmptySharedValueError extends StateError {
  AccessEmptySharedValueError(super.message);
}

typedef SharedValueFamily = Object;
typedef SharedValueType = Object?;

abstract class SharedValue {
  static final provider =
      StateProvider.family.autoDispose<SharedValueType, SharedValueFamily>(
    (_, family) => throw AccessEmptySharedValueError('''
Could not find a $SharedValue for family: "$family".
Provide a $SharedValue via "${SharedValueProviderBuilder.unionValue}".
See "$SharedValueProviderBuilder" for more info.
'''),
    name: 'Zac SharedValue',
  );

  static T getTyped<T>({
    required ZacContext zacContext,
    required ZacTransformers? select,
    required ZacTransformers? transformer,
    required SharedValueConsumeType consumeType,
    required SharedValueFamily family,
  }) {
    final value = SharedValue.get(
      zacContext: zacContext,
      select: select,
      consumeType: consumeType,
      family: family,
    );

    if (value is T && true != transformer?.transformers.isNotEmpty) {
      return value;
    }

    final transformedValue =
        transformer?.transform(ZacTransformValue(value), zacContext, null) ??
            value;

    if (transformedValue is! T) {
      final transformerErr =
          transformer?.transformers.map((e) => e.runtimeType) ?? [];

      throw StateError('''
It was not possible to get a $SharedValue of type $T from family "$family".
The value is of type "${transformedValue.runtimeType}".
${transformerErr.isEmpty ? 'No transformer were used.' : 'Following transformer were used: ${transformerErr.join(' > ')}.'}
The value: $transformedValue''');
    }

    return transformedValue;
  }

  static SharedValueType get({
    required ZacContext zacContext,
    required ZacTransformers? select,
    required SharedValueConsumeType consumeType,
    required SharedValueFamily family,
  }) {
    return consumeType.map<SharedValueType>(
      read: (_) {
        if (null == select) {
          return zacContext.ref
              .read<SharedValueType>(SharedValue.provider(family));
        } else {
          return select.transform(
              ZacTransformValue(zacContext.ref
                  .read<SharedValueType>(SharedValue.provider(family))),
              zacContext,
              null);
        }
      },
      watch: (_) {
        if (null == select) {
          return zacContext.ref
              .watch<SharedValueType>(SharedValue.provider(family));
        } else {
          return zacContext.ref.watch<SharedValueType>(
              SharedValue.provider(family).select((value) => select.transform(
                  ZacTransformValue(value), zacContext, null)));
        }
      },
    );
  }

  static void update(
    ZacContext zacContext,
    SharedValueFamily family,
    SharedValueType Function(SharedValueType current) update,
  ) {
    assert(() {
      /// Read the value first in order to trigger the custom exception.
      /// Otherwise the .update() below will throw a StateError by riverpod.
      /// This happens since riverpod 2.0 release
      zacContext.ref.read(SharedValue.provider(family));
      return true;
    }(), '');

    zacContext.ref.read(SharedValue.provider(family).notifier).update(update);
  }

  static void listenAndExecuteActions(
      ZacContext zacContext, SharedValueFamily family, ZacActions actions) {
    zacContext.ref.listen<SharedValueType>(SharedValue.provider(family),
        (previous, next) {
      actions.execute(ZacActionPayload.param2(next, previous), zacContext);
    });
  }
}

@freezedZacBuilder
@ZacGenerate()
class SharedValueActions with _$SharedValueActions implements ZacAction {
  const SharedValueActions._();

  static const String unionValue = 'z:1:SharedValue.update';
  static const String unionValueInvalidate = 'z:1:SharedValue.invalidate';

  factory SharedValueActions.fromJson(Map<String, dynamic> json) =>
      _$SharedValueActionsFromJson(json);

  @FreezedUnionValue(SharedValueActions.unionValue)
  factory SharedValueActions.update({
    required SharedValueFamily family,
    ZacTransformers? transformer,
    @Default(false) bool? ifNoPayloadTakeCurrent,
  }) = _SharedValueActionsUpdate;

  @FreezedUnionValue(SharedValueActions.unionValueInvalidate)
  factory SharedValueActions.invalidate({
    required SharedValueFamily family,
  }) = _SharedValueActionsRefresh;

  SharedValueType _updateTransformItems(Object? value, ZacActionPayload payload,
      ZacContext zacContext, _SharedValueActionsUpdate obj) {
    return obj.transformer
            ?.transform(ZacTransformValue(value), zacContext, payload) ??
        value;
  }

  @override
  void execute(ZacActionPayload payload, ZacContext zacContext) {
    map(
      update: (obj) {
        SharedValue.update(zacContext, obj.family, (current) {
          return payload.map(
            (_) => true == obj.ifNoPayloadTakeCurrent
                ? _updateTransformItems(current, payload, zacContext, obj)
                : null,
            param: (pl) =>
                _updateTransformItems(pl.value, payload, zacContext, obj),
            param2: (pl) {
              return <Object?>[
                _updateTransformItems(pl.first, payload, zacContext, obj),
                _updateTransformItems(pl.second, payload, zacContext, obj)
              ];
            },
          );
        });
      },
      invalidate: (obj) {
        zacContext.ref.invalidate(SharedValue.provider(family));
      },
    );
  }
}

@freezedZacBuilder
@ZacGenerate(order: zacGenerateOrderZacWidget)
class SharedValueConsumeType with _$SharedValueConsumeType {
  static const String unionValue = 'z:1:SharedValueConsume.watch';
  static const String unionValueRead = 'z:1:SharedValueConsume.read';

  factory SharedValueConsumeType.fromJson(Map<String, dynamic> json) =>
      _$SharedValueConsumeTypeFromJson(json);

  @FreezedUnionValue(SharedValueConsumeType.unionValue)
  const factory SharedValueConsumeType.watch() = _SharedValueConsumeTypeWatch;

  @FreezedUnionValue(SharedValueConsumeType.unionValueRead)
  const factory SharedValueConsumeType.read() = _SharedValueConsumeTypeRead;
}

@freezedZacBuilder
@ZacGenerate(order: zacGenerateOrderZacWidget)
class SharedValueProviderBuilder
    with _$SharedValueProviderBuilder
    implements FlutterWidget {
  SharedValueProviderBuilder._();
  static const String unionValue = 'z:1:SharedValue.provide';

  factory SharedValueProviderBuilder.fromJson(Map<String, dynamic> json) =>
      _$SharedValueProviderBuilderFromJson(json);

  @FreezedUnionValue(SharedValueProviderBuilder.unionValue)
  factory SharedValueProviderBuilder({
    FlutterKey? key,
    required SharedValueType value,
    ZacTransformers? transformer,
    required SharedValueFamily family,
    required FlutterWidget child,
    @Default(true) bool autoCreate,
  }) = _SharedValueProviderBuilder;

  SharedValueType valueBuilder(
      AutoDisposeStateProviderRef<SharedValueType> ref, ZacContext zacContext) {
    if (null == transformer || true == transformer!.transformers.isEmpty) {
      return value;
    } else {
      return transformer!.transform(ZacTransformValue(value), zacContext, null);
    }
  }

  @override
  SharedValueProvider buildWidget(ZacContext zacContext) {
    return SharedValueProvider(
      key: key?.buildKey(zacContext),
      valueBuilder: valueBuilder,
      family: family,
      childBuilder: child.buildWidget,
      autoCreate: autoCreate,
    );
  }
}

class SharedValueProvider extends StatelessWidget {
  const SharedValueProvider({
    required this.childBuilder,
    required this.valueBuilder,
    required this.family,
    required this.autoCreate,
    super.key,
  });

  final Widget Function(ZacContext zacContext) childBuilder;
  final SharedValueFamily family;
  final SharedValueType Function(
      AutoDisposeStateProviderRef<SharedValueType> ref,
      ZacContext zacContext) valueBuilder;
  final bool autoCreate;

  static void _autoCreateListener(
      SharedValueType? prev, SharedValueType next) {}

  @override
  Widget build(BuildContext context) {
    return ZacUpdateContext(
      builder: (zacContext) => ProviderScope(
        overrides: [
          SharedValue.provider(family).overrideWith(
            (ref) => valueBuilder(ref, zacContext),
          ),
        ],
        child: ZacUpdateContext(
          builder: !autoCreate
              ? childBuilder
              : (zacContext) {
                  /// immediately create the AutoDispose Provider and its value
                  /// and keep it alive as long as possible
                  zacContext.ref.listen<SharedValueType>(
                    SharedValue.provider(family),
                    _autoCreateListener,
                  );
                  return childBuilder(zacContext);
                },
        ),
      ),
    );
  }
}
