import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:zac/src/base.dart';
import 'package:zac/src/zac/registry.dart';
import 'package:zac/src/zac/action.dart';
import 'package:zac/src/zac/context.dart';
import 'package:zac/src/zac/zac_builder.dart';

part 'zac_value.freezed.dart';
part 'zac_value.g.dart';

bool isType<T, Y>() => T == Y;

class _Converter<T> implements JsonConverter<T, Object?> {
  const _Converter();

  @override
  T fromJson(Object? data) {
    if (isType<T, Object>() || isType<T, Object?>()) {
      return data as T;
    } else if ((isType<T, int>() || isType<T, int?>()) && data is num) {
      return data.toInt() as T;
    } else if ((isType<T, double>() || isType<T, double?>()) && data is num) {
      return data.toDouble() as T;
    } else if ((isType<T, num>() || isType<T, num?>()) && data is num) {
      return data as T;
    } else if ((isType<T, String>() || isType<T, String?>()) &&
        data is String) {
      return data as T;
    } else if ((isType<T, bool>() || isType<T, bool?>()) && data is bool) {
      return data as T;
    } else if ((isType<T, DateTime>() || isType<T, DateTime?>()) &&
        data is String) {
      return DateTime.parse(data) as T;
    } else if (data is T) {
      return data;
    }

    throw StateError('''
It was not possible to convert data in ${ZacValue<T>}.fromJson().
The given data is not supported:
$data''');
  }

  @override
  Object? toJson(T object) => throw UnimplementedError();
}

@freezedZacBuilder
class ZacValue<T extends Object?> with _$ZacValue<T> implements ZacBuilder<T> {
  const ZacValue._();

  static const String union = 'z:1:ZacValue';

  static ZacValue<T> fromRegister<T extends Object?>(Map<String, dynamic> map) {
    return ZacValue<T>.fromJson(map);
  }

  factory ZacValue.fromJson(Object data) {
    return ZacRegistry.ifBuilderLikeMap<ZacValue<T>>(
      data,
      cb: (map, converterName) {
        assert(converterName == ZacValue.union);
        return _$ZacValueFromJson<T>(map);
      },
      orElse: () => _$ZacValueFromJson<T>(<String, dynamic>{
        'builder': ZacValue.union,
        'value': data,
      }),
    );
  }

  @FreezedUnionValue(ZacValue.union)
  factory ZacValue(@_Converter() T value) = _ZacValue<T>;

  @override
  T build(BuildContext context, ZacContext zacContext) => value;
}

@freezedZacBuilder
class ZacValueList<T extends Object?, X extends List<T>?>
    with _$ZacValueList<T, X>
    implements ZacListBuilder<T, X> {
  const ZacValueList._();

  static const String union = 'z:1:ZacValueList';

  /// freezed generates a code like this
  ///   factory _$ZacValueList.fromJson(Map<String, dynamic> json) =>
  ///   _$ZacValueListFromJson(json);
  ///
  /// _$ZacValueList is missing <T,X>
  /// it should be: _$ZacValueList<T,X>(json)
  ///
  /// This will result in X being a Never type
  factory ZacValueList._freezedFix(ZacValueList<T, Object?> zV) {
    return ZacValueList<T, X>(zV.items);
  }

  static ZacValueList<T, X> fromRegister<T extends Object?, X extends List<T>?>(
      Map<String, dynamic> map) {
    return ZacValueList<T, X>.fromJson(map);
  }

  factory ZacValueList.fromJson(Object data) {
    return ZacRegistry.ifBuilderLikeMap<ZacValueList<T, X>>(
      data,
      cb: (map, converterName) {
        assert(converterName == ZacValueList.union);
        return ZacValueList<T, X>._freezedFix(
            _$ZacValueListFromJson<T, X>(map));
      },
      orElse: () {
        if (data is! List) {
          throw StateError('Unsupported type in ${ZacValueList<T, X>}: $data');
        }

        return ZacValueList<T, X>._freezedFix(
            _$ZacValueListFromJson<T, X>(<String, dynamic>{
          'builder': ZacValueList.union,
          'items': data,
        }));
      },
    );
  }

  @FreezedUnionValue(ZacValueList.union)
  factory ZacValueList(List<ZacBuilder<T>> items) = _ZacValueListSimple<T, X>;

  @override
  X build(BuildContext context, ZacContext zacContext) {
    return <T>[
      for (var item in items) item.build(context, zacContext),
    ] as X;
  }
}

@freezedZacBuilder
class ZacValueMap<T extends Object?, X extends Map<String, T>?>
    with _$ZacValueMap<T, X>
    implements ZacMapBuilder<T, X> {
  const ZacValueMap._();

  static const String union = 'z:1:ZacValueMap';

  static ZacValueMap<T, X>
      fromRegister<T extends Object?, X extends Map<String, T>?>(
          Map<String, dynamic> map) {
    return ZacValueMap<T, X>.fromJson(map);
  }

  /// freezed generates a code like this
  ///   factory _$ZacValueMap.fromJson(Map<String, dynamic> json) =>
  ///   _$$_ZacValueMapFromJson(json);
  ///
  /// ZacValueMap is missing <T,X>
  /// it should be: _ZacValueMap<T,X>(json)
  ///
  /// This will result in X being a Never type
  factory ZacValueMap._freezedFix(ZacValueMap<T, Object?> zV) {
    return ZacValueMap<T, X>(zV.items);
  }

  factory ZacValueMap.fromJson(Object data) {
    return ZacRegistry.ifBuilderLikeMap<ZacValueMap<T, X>>(
      data,
      cb: (map, converterName) {
        assert(ZacValueMap.union == converterName);
        return ZacValueMap<T, X>._freezedFix(_$ZacValueMapFromJson<T, X>(map));
      },
      orElse: () {
        if (data is! Map) {
          throw StateError('Unsupported type in ${ZacValueMap<T, X>}: $data');
        }

        return ZacValueMap<T, X>._freezedFix(
            _$ZacValueMapFromJson<T, X>(<String, dynamic>{
          'builder': ZacValueMap.union,
          'items': data,
        }));
      },
    );
  }

  @FreezedUnionValue(ZacValueMap.union)
  factory ZacValueMap(Map<String, ZacBuilder<T>> items) = _ZacValueMap<T, X>;

  @override
  X build(BuildContext context, ZacContext zacContext) {
    return <String, T>{
      for (var entry in items.entries)
        entry.key: entry.value.build(context, zacContext),
    } as X;
  }
}

@freezedZacBuilder
class ZacValueActions with _$ZacValueActions implements ZacBuilder<ZacAction> {
  ZacValueActions._();

  static const String unionValue = 'z:1:ZacValue.asActionPayload';

  factory ZacValueActions.fromJson(Map<String, dynamic> json) =>
      _$ZacValueActionsFromJson(json);

  @FreezedUnionValue(ZacValueActions.unionValue)
  factory ZacValueActions.asPayload({
    required ZacBuilder<Object?> value,
    required ZacListBuilder<ZacAction, List<ZacAction>> actions,
  }) = _ZacValueActionsAsPayload;

  late final ZacAction _action = ZacAction(
      (ZacActionPayload payload, BuildContext context, ZacContext zacContext) {
    map(
      asPayload: (obj) {
        final val = obj.value.build(context, zacContext);
        obj.actions
            .build(context, zacContext)
            .execute(ZacActionPayload.param(val), context, zacContext);
      },
    );
  });

  @override
  ZacAction build(BuildContext context, ZacContext zacContext) => _action;
}
