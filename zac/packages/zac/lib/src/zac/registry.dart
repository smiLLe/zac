import 'package:collection/collection.dart';
import 'package:zac/src/base.dart';
import 'package:zac/src/zac/state.dart';
import 'package:zac/src/zac/transformers.dart';
import 'package:zac/src/zac/zac_builder.dart';
import 'package:zac/src/zac/generated_registry.dart';

typedef CreateBuilder = ZacBuilder<Object?> Function(Map<String, dynamic> map);
typedef CreateBuilderFromSingleType = ZacBuilder<T> Function<T>(
    Map<String, dynamic> map);

class ZacRegistry extends DelegatingMap<String, Object> {
  static final ZacRegistry _singleton = () {
    final register = ZacRegistry._()
      ..registerGeneric(
          ZacTransformValue.unionCurrent, ZacTransformValue.fromRegister)
      ..registerGeneric(
          ZacTransformValue.unionInitial, ZacTransformValue.fromRegister)
      ..registerGeneric(ZacStateConsume.union, ZacStateConsume.fromRegister);

    addZacBuilders(register);
    return register;
  }();

  factory ZacRegistry() {
    return _singleton;
  }

  ZacRegistry._() : super(<String, Object>{});

  ZacBuilder<T> createBuilder<T>(String name, Map<String, dynamic> map) {
    assert(containsKey(name));
    assert(this[name] is CreateBuilder ||
        this[name] is CreateBuilderFromSingleType);
    final anyBuilder = this[name];
    final builder = anyBuilder is CreateBuilder
        ? anyBuilder(map)
        : (anyBuilder as CreateBuilderFromSingleType)<T>(map);
    assert(
        builder is ZacBuilder<T>, 'Expected ${ZacBuilder<T>} but got $builder');
    return builder as ZacBuilder<T>;
  }

  void register(String name, CreateBuilder cb) {
    putIfAbsent(name, () => cb);
  }

  void registerGeneric(String name, CreateBuilderFromSingleType cb) {
    putIfAbsent(name, () => cb);
  }
}

extension ZacRegistryX on Object {
  T maybeBuilder<T>({
    required T Function(String converterName, Map<String, dynamic> map) cb,
    required T Function() orElse,
  }) {
    if (this is! Map<String, dynamic>) {
      return orElse();
    }
    final map = this as Map<String, dynamic>;
    if (!map.containsKey(builderKey)) {
      return orElse();
    }
    final Object? key = map[builderKey];
    if (key is! String) {
      return orElse();
    }

    assert(ZacRegistry().containsKey(key),
        '$ZacRegistry does not contain builder with name "$key"');

    return cb(key, map);
  }
}
