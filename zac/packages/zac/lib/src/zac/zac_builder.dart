import 'package:flutter/widgets.dart';
import 'package:zac/src/zac/action.dart';
import 'package:zac/src/zac/registry.dart';
import 'package:zac/src/zac/context.dart';
import 'package:zac/src/zac/transformers.dart';
import 'package:zac/src/zac/zac_value.dart';

bool _isType<T, Y>() => T == Y;

abstract class ZacBuilder<T> {
  factory ZacBuilder.fromJson(Object data) {
    return data.maybeBuilder(
      cb: (converterName, map) =>
          ZacRegistry().createBuilder<T>(converterName, map),
      orElse: () {
        if (_isType<T, Object>() || _isType<T, Object?>()) {
          return ZacObject.fromJson(data) as ZacBuilder<T>;
        } else if ((_isType<T, int>() || _isType<T, int?>())) {
          return ZacInt.fromJson(data) as ZacBuilder<T>;
        } else if ((_isType<T, double>() || _isType<T, double?>())) {
          return ZacDouble.fromJson(data) as ZacBuilder<T>;
        } else if ((_isType<T, num>() || _isType<T, num?>())) {
          return ZacNum.fromJson(data) as ZacBuilder<T>;
        } else if ((_isType<T, String>() || _isType<T, String?>())) {
          return ZacString.fromJson(data) as ZacBuilder<T>;
        } else if ((_isType<T, bool>() || _isType<T, bool?>())) {
          return ZacBool.fromJson(data) as ZacBuilder<T>;
        } else if ((_isType<T, DateTime>() || _isType<T, DateTime?>())) {
          return ZacDateTime.fromJson(data) as ZacBuilder<T>;
        } else if ((_isType<T, List<Widget>>() ||
            _isType<T, List<Widget>?>())) {
          return ZacListOfWidgets.fromJson(data) as ZacBuilder<T>;
        } else if ((_isType<T, Map<String, Widget>>() ||
            _isType<T, Map<String, Widget>?>())) {
          return ZacMapOfWidgets.fromJson(data) as ZacBuilder<T>;
        } else if ((_isType<T, List<ZacTransform>>() ||
            _isType<T, List<ZacTransform>?>())) {
          return ZacListOfTransformers.fromJson(data) as ZacBuilder<T>;
        } else if ((_isType<T, List<ZacAction>>() ||
            _isType<T, List<ZacAction>?>())) {
          return ZacListOfActions.fromJson(data) as ZacBuilder<T>;
        }

        throw StateError(
            'It was not possible to create a ${ZacBuilder<T>} from data:\n $data');
      },
    );
  }

  T build(BuildContext context, ZacContext zacContext);
}
