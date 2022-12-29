import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:zac/src/base.dart';
import 'package:zac/src/builder.dart';
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

  factory ZacValue.fromJson(Object data) {
    return ConverterHelper.ifRegisteredBuilder<ZacValue<T>>(
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
  T build(ZacContext zacContext) => value;
}

@freezedZacBuilder
class ZacValueListSimple<T extends Object?, X extends List<T>?>
    with _$ZacValueListSimple<T, X>
    implements ZacListBuilder<T, X> {
  const ZacValueListSimple._();

  static const String union = 'z:1:ZacValueList';

  /// freezed generates a code like this
  ///   factory _$ZacValueListSimple.fromJson(Map<String, dynamic> json) =>
  ///   _$ZacValueListSimple(json);
  ///
  /// _$ZacValueListSimple is missing <T,X>
  /// it should be: _$ZacValueListSimple<T,X>(json)
  ///
  /// This will result in X being a Never type
  factory ZacValueListSimple._freezedFix(ZacValueListSimple<T, Object?> zV) {
    return ZacValueListSimple<T, X>(zV.items);
  }

  factory ZacValueListSimple.fromJson(Object data) {
    return ConverterHelper.ifRegisteredBuilder<ZacValueListSimple<T, X>>(
      data,
      cb: (map, converterName) {
        assert(converterName == ZacValueListSimple.union);
        final zV = _$ZacValueListSimpleFromJson<T, X>(map);
        return ZacValueListSimple<T, X>._freezedFix(zV);
      },
      orElse: () {
        if (data is! List) {
          throw StateError(
              'Unsupported type in ${ZacValueListSimple<T, X>}: $data');
        }
        final zV = _$ZacValueListSimpleFromJson<T, X>(<String, dynamic>{
          'builder': ZacValueListSimple.union,
          'items': data,
        });
        return ZacValueListSimple<T, X>._freezedFix(zV);
      },
    );
  }

  @FreezedUnionValue(ZacValueListSimple.union)
  factory ZacValueListSimple(List<ZacBuilder<T>> items) =
      _ZacValueListSimple<T, X>;

  @override
  X build(ZacContext zacContext) {
    return <T>[
      for (var item in items) item.build(zacContext),
    ] as X;
  }
}

@freezedZacBuilder
class ZacValueMap<T extends Object?, X extends Map<String, T>?>
    with _$ZacValueMap<T, X>
    implements ZacMapBuilder<T, X> {
  const ZacValueMap._();

  static const String union = 'z:1:ZacValueMap';

  /// freezed generates a code like this
  ///   factory _$_ZacValueList.fromJson(Map<String, dynamic> json) =>
  ///   _$$_ZacValueListFromJson(json);
  ///
  /// _ZacValueListFromJson is missing <T,X>
  /// it should be: _ZacValueListFromJson<T,X>(json)
  ///
  /// This will result in X being a Never type
  factory ZacValueMap._freezedFix(ZacValueMap<T, Object?> zV) {
    return ZacValueMap<T, X>(zV.items);
  }

  factory ZacValueMap.fromJson(Object data) {
    return ConverterHelper.ifRegisteredBuilder<ZacValueMap<T, X>>(
      data,
      cb: (map, converterName) {
        assert(ZacValueMap.union == converterName);
        final zV = _$ZacValueMapFromJson<T, X>(map);
        return ZacValueMap<T, X>._freezedFix(zV);
      },
      orElse: () {
        if (data is! Map) {
          throw StateError('Unsupported type in ${ZacValueMap<T, X>}: $data');
        }

        final zV = _$ZacValueMapFromJson<T, X>(<String, dynamic>{
          'builder': ZacValueMap.union,
          'items': data,
        });
        return ZacValueMap<T, X>._freezedFix(zV);
      },
    );
  }

  @FreezedUnionValue(ZacValueMap.union)
  factory ZacValueMap(Map<String, ZacBuilder<T>> items) = _ZacValueMap<T, X>;

  @override
  X build(ZacContext zacContext) {
    return <String, T>{
      for (var entry in items.entries) entry.key: entry.value.build(zacContext),
    } as X;
  }
}

@freezedZacBuilder
class ZacValueActions with _$ZacValueActions implements ZacAction {
  const ZacValueActions._();

  static const String unionValue = 'z:1:ZacValue.asActionPayload';

  factory ZacValueActions.fromJson(Map<String, dynamic> json) =>
      _$ZacValueActionsFromJson(json);

  @FreezedUnionValue(ZacValueActions.unionValue)
  factory ZacValueActions.asPayload({
    required ZacBuilder<Object?> value,
    required ZacActions actions,
  }) = _ZacValueActionsAsPayload;

  @override
  void execute(ZacActionPayload payload, ZacContext zacContext) {
    map(
      asPayload: (obj) {
        final val = obj.value.build(
          zacContext,
        );
        obj.actions.execute(ZacActionPayload.param(val), zacContext);
      },
    );
  }
}
