import 'package:collection/collection.dart';
import 'package:zac/src/base.dart';
import 'package:zac/src/zac/action.dart';
import 'package:zac/src/zac/shared_value.dart';
import 'package:zac/src/zac/transformers.dart';
import 'package:zac/src/zac/zac_builder.dart';
import 'package:zac/src/zac/zac_value.dart';

import 'package:zac/src/zac/generated_registry.dart';

typedef CreateBuilder<T> = ZacBuilder<T> Function(Map<String, dynamic> map);
typedef CreateBuilderFromSingleType = ZacBuilder<T> Function<T>(
    Map<String, dynamic> map);

typedef CreateListBuilder = ZacListBuilder<T, X>
    Function<T extends Object?, X extends List<T>?>(Map<String, dynamic> map);

typedef CreateMapBuilder = ZacMapBuilder<T, X> Function<T extends Object?,
    X extends Map<String, T>?>(Map<String, dynamic> map);

typedef CreateTransformer = ZacTransformer Function(Map<String, dynamic> map);

class ZacRegistry extends DelegatingMap<String, Object> {
  static final ZacRegistry _singleton = () {
    final register = ZacRegistry._()
      ..registerGeneric(ZacValue.union, ZacValue.fromRegister)
      ..registerGeneric(
          ConsumeSharedValue.union, ConsumeSharedValue.fromRegister)
      ..registerList(ZacValueList.union, ZacValueList.fromRegister)
      ..registerList(
          ConsumeSharedValueList.union, ConsumeSharedValueList.fromRegister)
      ..registerMap(ZacValueMap.union, ZacValueMap.fromRegister)
      ..registerMap(
          ConsumeSharedValueMap.union, ConsumeSharedValueMap.fromRegister);
    addZacBuilders(register);
    return register;
  }();

  factory ZacRegistry() {
    return _singleton;
  }

  ZacRegistry._() : super(<String, Object>{});

  T _get<T>(String name) {
    assert(containsKey(name));

    final builder = this[name];
    if (builder is! T) {
      throw StateError('''
It was not possible to return a registered builder from $ZacRegistry
with name: $name
The builder was expected to be of type $T but instead we got:
$builder''');
    }

    return builder;
  }

  CreateTransformer getRegisteredTransformer(String name) =>
      _get<CreateTransformer>(name);

  CreateListBuilder getRegisteredList(String name) =>
      _get<CreateListBuilder>(name);

  CreateMapBuilder getRegisteredMap(String name) =>
      _get<CreateMapBuilder>(name);

  CreateBuilder<T> getRegistered<T>(String name) =>
      _get<CreateBuilder<T>>(name);

  CreateBuilderFromSingleType getRegisteredGeneric(String name) =>
      _get<CreateBuilderFromSingleType>(name);

  static T ifBuilderLikeMap<T>(
    Object data, {
    required T Function(Map<String, dynamic> map, String converterName) cb,
    required T Function() orElse,
  }) {
    if (data is Map<String, dynamic> &&
        data.containsKey(builderKey) &&
        data[builderKey] is String &&
        (data[builderKey] as String).isNotEmpty) {
      final name = data[builderKey] as String;
      assert(ZacRegistry().containsKey(name),
          '$ZacRegistry does not contain builder with name $name');
      return cb(data, name);
    }

    return orElse();
  }

  ZacBuilder<T> when<T>({
    required String name,
    required ZacBuilder<T> Function(CreateBuilder<T> builder) noType,
    required ZacBuilder<T> Function(CreateBuilderFromSingleType builder)
        withType,
    ZacBuilder<T> Function()? orElse,
  }) {
    assert(containsKey(name),
        '$ZacRegistry does not contain builder with name $name');

    final builder = this[name];

    if (builder is CreateBuilder) {
      return noType(getRegistered<T>(name));
    } else if (builder is CreateBuilderFromSingleType) {
      return withType(getRegisteredGeneric(name));
    } else if (null != orElse) {
      return orElse();
    }
    throw StateError('''
It was not possible to return a ${ZacBuilder<T>} from $ZacRegistry.when
because the found builder did not match $T.
Builder: $builder''');
  }

  void registerList(String name, CreateListBuilder cb) {
    putIfAbsent(name, () => cb);
  }

  void registerMap(String name, CreateMapBuilder cb) {
    putIfAbsent(name, () => cb);
  }

  void register<T>(String name, CreateBuilder<T> cb) {
    putIfAbsent(name, () => cb);
  }

  void registerGeneric(String name, CreateBuilderFromSingleType cb) {
    putIfAbsent(name, () => cb);
  }

  void registerTransformer(String name, CreateTransformer cb) {
    putIfAbsent(name, () => cb);
  }
}
