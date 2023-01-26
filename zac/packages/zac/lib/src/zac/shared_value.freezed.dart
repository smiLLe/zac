// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'shared_value.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SharedValueActions _$SharedValueActionsFromJson(Map<String, dynamic> json) {
  switch (json['builder']) {
    case 'z:1:SharedValue.update':
      return _SharedValueActionsUpdate.fromJson(json);
    case 'z:1:SharedValue.transformCurrentValue':
      return _SharedValueActionsTransformCurrentValue.fromJson(json);
    case 'z:1:SharedValue.updateFromPayload':
      return _SharedValueActionsUpdateFromPayload.fromJson(json);
    case 'z:1:null.updateShared':
      return _SharedValueActionsUpdateWIthNull.fromJson(json);
    case 'z:1:Widget.updateShared':
      return _SharedValueActionsUpdateWithWidget.fromJson(json);
    case 'z:1:List<Widget>.updateShared':
      return _SharedValueActionsUpdateWithWidgets.fromJson(json);
    case 'z:1:ZacBuilder<Object>.updateShared':
      return _SharedValueActionsUpdateWithBuilder.fromJson(json);
    case 'z:1:SharedValue.invalidate':
      return _SharedValueActionsRefresh.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'builder', 'SharedValueActions',
          'Invalid union type "${json['builder']}"!');
  }
}

/// @nodoc
mixin _$SharedValueActions {
  String get family => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SharedValueActionsUpdate value) update,
    required TResult Function(_SharedValueActionsTransformCurrentValue value)
        transformCurrentValue,
    required TResult Function(_SharedValueActionsUpdateFromPayload value)
        updateFromPayload,
    required TResult Function(_SharedValueActionsUpdateWIthNull value)
        updateWithNull,
    required TResult Function(_SharedValueActionsUpdateWithWidget value)
        updateWithWidget,
    required TResult Function(_SharedValueActionsUpdateWithWidgets value)
        updateWithWidgets,
    required TResult Function(_SharedValueActionsUpdateWithBuilder value)
        updateWithBuilder,
    required TResult Function(_SharedValueActionsRefresh value) invalidate,
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_SharedValueActionsUpdate extends _SharedValueActionsUpdate {
  _$_SharedValueActionsUpdate(
      {required this.value, required this.family, final String? $type})
      : $type = $type ?? 'z:1:SharedValue.update',
        super._();

  factory _$_SharedValueActionsUpdate.fromJson(Map<String, dynamic> json) =>
      _$$_SharedValueActionsUpdateFromJson(json);

  @override
  final ZacBuilder<Object> value;
  @override
  final String family;

  @JsonKey(name: 'builder')
  final String $type;

  @override
  String toString() {
    return 'SharedValueActions.update(value: $value, family: $family)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SharedValueActionsUpdate &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.family, family) || other.family == family));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, value, family);

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SharedValueActionsUpdate value) update,
    required TResult Function(_SharedValueActionsTransformCurrentValue value)
        transformCurrentValue,
    required TResult Function(_SharedValueActionsUpdateFromPayload value)
        updateFromPayload,
    required TResult Function(_SharedValueActionsUpdateWIthNull value)
        updateWithNull,
    required TResult Function(_SharedValueActionsUpdateWithWidget value)
        updateWithWidget,
    required TResult Function(_SharedValueActionsUpdateWithWidgets value)
        updateWithWidgets,
    required TResult Function(_SharedValueActionsUpdateWithBuilder value)
        updateWithBuilder,
    required TResult Function(_SharedValueActionsRefresh value) invalidate,
  }) {
    return update(this);
  }
}

abstract class _SharedValueActionsUpdate extends SharedValueActions {
  factory _SharedValueActionsUpdate(
      {required final ZacBuilder<Object> value,
      required final String family}) = _$_SharedValueActionsUpdate;
  _SharedValueActionsUpdate._() : super._();

  factory _SharedValueActionsUpdate.fromJson(Map<String, dynamic> json) =
      _$_SharedValueActionsUpdate.fromJson;

  ZacBuilder<Object> get value;
  @override
  String get family;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_SharedValueActionsTransformCurrentValue
    extends _SharedValueActionsTransformCurrentValue {
  _$_SharedValueActionsTransformCurrentValue(
      {required this.family, required this.transformer, final String? $type})
      : $type = $type ?? 'z:1:SharedValue.transformCurrentValue',
        super._();

  factory _$_SharedValueActionsTransformCurrentValue.fromJson(
          Map<String, dynamic> json) =>
      _$$_SharedValueActionsTransformCurrentValueFromJson(json);

  @override
  final String family;
  @override
  final ZacBuilder<List<ZacTransform>> transformer;

  @JsonKey(name: 'builder')
  final String $type;

  @override
  String toString() {
    return 'SharedValueActions.transformCurrentValue(family: $family, transformer: $transformer)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SharedValueActionsTransformCurrentValue &&
            (identical(other.family, family) || other.family == family) &&
            (identical(other.transformer, transformer) ||
                other.transformer == transformer));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, family, transformer);

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SharedValueActionsUpdate value) update,
    required TResult Function(_SharedValueActionsTransformCurrentValue value)
        transformCurrentValue,
    required TResult Function(_SharedValueActionsUpdateFromPayload value)
        updateFromPayload,
    required TResult Function(_SharedValueActionsUpdateWIthNull value)
        updateWithNull,
    required TResult Function(_SharedValueActionsUpdateWithWidget value)
        updateWithWidget,
    required TResult Function(_SharedValueActionsUpdateWithWidgets value)
        updateWithWidgets,
    required TResult Function(_SharedValueActionsUpdateWithBuilder value)
        updateWithBuilder,
    required TResult Function(_SharedValueActionsRefresh value) invalidate,
  }) {
    return transformCurrentValue(this);
  }
}

abstract class _SharedValueActionsTransformCurrentValue
    extends SharedValueActions {
  factory _SharedValueActionsTransformCurrentValue(
          {required final String family,
          required final ZacBuilder<List<ZacTransform>> transformer}) =
      _$_SharedValueActionsTransformCurrentValue;
  _SharedValueActionsTransformCurrentValue._() : super._();

  factory _SharedValueActionsTransformCurrentValue.fromJson(
          Map<String, dynamic> json) =
      _$_SharedValueActionsTransformCurrentValue.fromJson;

  @override
  String get family;
  ZacBuilder<List<ZacTransform>> get transformer;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_SharedValueActionsUpdateFromPayload
    extends _SharedValueActionsUpdateFromPayload {
  _$_SharedValueActionsUpdateFromPayload(
      {required this.family, required this.transformer, final String? $type})
      : $type = $type ?? 'z:1:SharedValue.updateFromPayload',
        super._();

  factory _$_SharedValueActionsUpdateFromPayload.fromJson(
          Map<String, dynamic> json) =>
      _$$_SharedValueActionsUpdateFromPayloadFromJson(json);

  @override
  final String family;
  @override
  final ZacBuilder<List<ZacTransform>> transformer;

  @JsonKey(name: 'builder')
  final String $type;

  @override
  String toString() {
    return 'SharedValueActions.updateFromPayload(family: $family, transformer: $transformer)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SharedValueActionsUpdateFromPayload &&
            (identical(other.family, family) || other.family == family) &&
            (identical(other.transformer, transformer) ||
                other.transformer == transformer));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, family, transformer);

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SharedValueActionsUpdate value) update,
    required TResult Function(_SharedValueActionsTransformCurrentValue value)
        transformCurrentValue,
    required TResult Function(_SharedValueActionsUpdateFromPayload value)
        updateFromPayload,
    required TResult Function(_SharedValueActionsUpdateWIthNull value)
        updateWithNull,
    required TResult Function(_SharedValueActionsUpdateWithWidget value)
        updateWithWidget,
    required TResult Function(_SharedValueActionsUpdateWithWidgets value)
        updateWithWidgets,
    required TResult Function(_SharedValueActionsUpdateWithBuilder value)
        updateWithBuilder,
    required TResult Function(_SharedValueActionsRefresh value) invalidate,
  }) {
    return updateFromPayload(this);
  }
}

abstract class _SharedValueActionsUpdateFromPayload extends SharedValueActions {
  factory _SharedValueActionsUpdateFromPayload(
          {required final String family,
          required final ZacBuilder<List<ZacTransform>> transformer}) =
      _$_SharedValueActionsUpdateFromPayload;
  _SharedValueActionsUpdateFromPayload._() : super._();

  factory _SharedValueActionsUpdateFromPayload.fromJson(
          Map<String, dynamic> json) =
      _$_SharedValueActionsUpdateFromPayload.fromJson;

  @override
  String get family;
  ZacBuilder<List<ZacTransform>> get transformer;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_SharedValueActionsUpdateWIthNull
    extends _SharedValueActionsUpdateWIthNull {
  _$_SharedValueActionsUpdateWIthNull(
      {required this.family, final String? $type})
      : $type = $type ?? 'z:1:null.updateShared',
        super._();

  factory _$_SharedValueActionsUpdateWIthNull.fromJson(
          Map<String, dynamic> json) =>
      _$$_SharedValueActionsUpdateWIthNullFromJson(json);

  @override
  final String family;

  @JsonKey(name: 'builder')
  final String $type;

  @override
  String toString() {
    return 'SharedValueActions.updateWithNull(family: $family)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SharedValueActionsUpdateWIthNull &&
            (identical(other.family, family) || other.family == family));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, family);

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SharedValueActionsUpdate value) update,
    required TResult Function(_SharedValueActionsTransformCurrentValue value)
        transformCurrentValue,
    required TResult Function(_SharedValueActionsUpdateFromPayload value)
        updateFromPayload,
    required TResult Function(_SharedValueActionsUpdateWIthNull value)
        updateWithNull,
    required TResult Function(_SharedValueActionsUpdateWithWidget value)
        updateWithWidget,
    required TResult Function(_SharedValueActionsUpdateWithWidgets value)
        updateWithWidgets,
    required TResult Function(_SharedValueActionsUpdateWithBuilder value)
        updateWithBuilder,
    required TResult Function(_SharedValueActionsRefresh value) invalidate,
  }) {
    return updateWithNull(this);
  }
}

abstract class _SharedValueActionsUpdateWIthNull extends SharedValueActions {
  factory _SharedValueActionsUpdateWIthNull({required final String family}) =
      _$_SharedValueActionsUpdateWIthNull;
  _SharedValueActionsUpdateWIthNull._() : super._();

  factory _SharedValueActionsUpdateWIthNull.fromJson(
      Map<String, dynamic> json) = _$_SharedValueActionsUpdateWIthNull.fromJson;

  @override
  String get family;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_SharedValueActionsUpdateWithWidget
    extends _SharedValueActionsUpdateWithWidget {
  _$_SharedValueActionsUpdateWithWidget(
      {required this.value, required this.family, final String? $type})
      : $type = $type ?? 'z:1:Widget.updateShared',
        super._();

  factory _$_SharedValueActionsUpdateWithWidget.fromJson(
          Map<String, dynamic> json) =>
      _$$_SharedValueActionsUpdateWithWidgetFromJson(json);

  @override
  final ZacBuilder<Widget> value;
  @override
  final String family;

  @JsonKey(name: 'builder')
  final String $type;

  @override
  String toString() {
    return 'SharedValueActions.updateWithWidget(value: $value, family: $family)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SharedValueActionsUpdateWithWidget &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.family, family) || other.family == family));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, value, family);

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SharedValueActionsUpdate value) update,
    required TResult Function(_SharedValueActionsTransformCurrentValue value)
        transformCurrentValue,
    required TResult Function(_SharedValueActionsUpdateFromPayload value)
        updateFromPayload,
    required TResult Function(_SharedValueActionsUpdateWIthNull value)
        updateWithNull,
    required TResult Function(_SharedValueActionsUpdateWithWidget value)
        updateWithWidget,
    required TResult Function(_SharedValueActionsUpdateWithWidgets value)
        updateWithWidgets,
    required TResult Function(_SharedValueActionsUpdateWithBuilder value)
        updateWithBuilder,
    required TResult Function(_SharedValueActionsRefresh value) invalidate,
  }) {
    return updateWithWidget(this);
  }
}

abstract class _SharedValueActionsUpdateWithWidget extends SharedValueActions {
  factory _SharedValueActionsUpdateWithWidget(
      {required final ZacBuilder<Widget> value,
      required final String family}) = _$_SharedValueActionsUpdateWithWidget;
  _SharedValueActionsUpdateWithWidget._() : super._();

  factory _SharedValueActionsUpdateWithWidget.fromJson(
          Map<String, dynamic> json) =
      _$_SharedValueActionsUpdateWithWidget.fromJson;

  ZacBuilder<Widget> get value;
  @override
  String get family;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_SharedValueActionsUpdateWithWidgets
    extends _SharedValueActionsUpdateWithWidgets {
  _$_SharedValueActionsUpdateWithWidgets(
      {required this.value, required this.family, final String? $type})
      : $type = $type ?? 'z:1:List<Widget>.updateShared',
        super._();

  factory _$_SharedValueActionsUpdateWithWidgets.fromJson(
          Map<String, dynamic> json) =>
      _$$_SharedValueActionsUpdateWithWidgetsFromJson(json);

  @override
  final ZacBuilder<List<Widget>> value;
  @override
  final String family;

  @JsonKey(name: 'builder')
  final String $type;

  @override
  String toString() {
    return 'SharedValueActions.updateWithWidgets(value: $value, family: $family)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SharedValueActionsUpdateWithWidgets &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.family, family) || other.family == family));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, value, family);

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SharedValueActionsUpdate value) update,
    required TResult Function(_SharedValueActionsTransformCurrentValue value)
        transformCurrentValue,
    required TResult Function(_SharedValueActionsUpdateFromPayload value)
        updateFromPayload,
    required TResult Function(_SharedValueActionsUpdateWIthNull value)
        updateWithNull,
    required TResult Function(_SharedValueActionsUpdateWithWidget value)
        updateWithWidget,
    required TResult Function(_SharedValueActionsUpdateWithWidgets value)
        updateWithWidgets,
    required TResult Function(_SharedValueActionsUpdateWithBuilder value)
        updateWithBuilder,
    required TResult Function(_SharedValueActionsRefresh value) invalidate,
  }) {
    return updateWithWidgets(this);
  }
}

abstract class _SharedValueActionsUpdateWithWidgets extends SharedValueActions {
  factory _SharedValueActionsUpdateWithWidgets(
      {required final ZacBuilder<List<Widget>> value,
      required final String family}) = _$_SharedValueActionsUpdateWithWidgets;
  _SharedValueActionsUpdateWithWidgets._() : super._();

  factory _SharedValueActionsUpdateWithWidgets.fromJson(
          Map<String, dynamic> json) =
      _$_SharedValueActionsUpdateWithWidgets.fromJson;

  ZacBuilder<List<Widget>> get value;
  @override
  String get family;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_SharedValueActionsUpdateWithBuilder
    extends _SharedValueActionsUpdateWithBuilder {
  _$_SharedValueActionsUpdateWithBuilder(
      {required this.value, required this.family, final String? $type})
      : $type = $type ?? 'z:1:ZacBuilder<Object>.updateShared',
        super._();

  factory _$_SharedValueActionsUpdateWithBuilder.fromJson(
          Map<String, dynamic> json) =>
      _$$_SharedValueActionsUpdateWithBuilderFromJson(json);

  @override
  final ZacBuilder<Object> value;
  @override
  final String family;

  @JsonKey(name: 'builder')
  final String $type;

  @override
  String toString() {
    return 'SharedValueActions.updateWithBuilder(value: $value, family: $family)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SharedValueActionsUpdateWithBuilder &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.family, family) || other.family == family));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, value, family);

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SharedValueActionsUpdate value) update,
    required TResult Function(_SharedValueActionsTransformCurrentValue value)
        transformCurrentValue,
    required TResult Function(_SharedValueActionsUpdateFromPayload value)
        updateFromPayload,
    required TResult Function(_SharedValueActionsUpdateWIthNull value)
        updateWithNull,
    required TResult Function(_SharedValueActionsUpdateWithWidget value)
        updateWithWidget,
    required TResult Function(_SharedValueActionsUpdateWithWidgets value)
        updateWithWidgets,
    required TResult Function(_SharedValueActionsUpdateWithBuilder value)
        updateWithBuilder,
    required TResult Function(_SharedValueActionsRefresh value) invalidate,
  }) {
    return updateWithBuilder(this);
  }
}

abstract class _SharedValueActionsUpdateWithBuilder extends SharedValueActions {
  factory _SharedValueActionsUpdateWithBuilder(
      {required final ZacBuilder<Object> value,
      required final String family}) = _$_SharedValueActionsUpdateWithBuilder;
  _SharedValueActionsUpdateWithBuilder._() : super._();

  factory _SharedValueActionsUpdateWithBuilder.fromJson(
          Map<String, dynamic> json) =
      _$_SharedValueActionsUpdateWithBuilder.fromJson;

  ZacBuilder<Object> get value;
  @override
  String get family;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_SharedValueActionsRefresh extends _SharedValueActionsRefresh {
  _$_SharedValueActionsRefresh({required this.family, final String? $type})
      : $type = $type ?? 'z:1:SharedValue.invalidate',
        super._();

  factory _$_SharedValueActionsRefresh.fromJson(Map<String, dynamic> json) =>
      _$$_SharedValueActionsRefreshFromJson(json);

  @override
  final String family;

  @JsonKey(name: 'builder')
  final String $type;

  @override
  String toString() {
    return 'SharedValueActions.invalidate(family: $family)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SharedValueActionsRefresh &&
            (identical(other.family, family) || other.family == family));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, family);

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SharedValueActionsUpdate value) update,
    required TResult Function(_SharedValueActionsTransformCurrentValue value)
        transformCurrentValue,
    required TResult Function(_SharedValueActionsUpdateFromPayload value)
        updateFromPayload,
    required TResult Function(_SharedValueActionsUpdateWIthNull value)
        updateWithNull,
    required TResult Function(_SharedValueActionsUpdateWithWidget value)
        updateWithWidget,
    required TResult Function(_SharedValueActionsUpdateWithWidgets value)
        updateWithWidgets,
    required TResult Function(_SharedValueActionsUpdateWithBuilder value)
        updateWithBuilder,
    required TResult Function(_SharedValueActionsRefresh value) invalidate,
  }) {
    return invalidate(this);
  }
}

abstract class _SharedValueActionsRefresh extends SharedValueActions {
  factory _SharedValueActionsRefresh({required final String family}) =
      _$_SharedValueActionsRefresh;
  _SharedValueActionsRefresh._() : super._();

  factory _SharedValueActionsRefresh.fromJson(Map<String, dynamic> json) =
      _$_SharedValueActionsRefresh.fromJson;

  @override
  String get family;
}

SharedValueConsumeType _$SharedValueConsumeTypeFromJson(
    Map<String, dynamic> json) {
  switch (json['builder']) {
    case 'z:1:SharedValueConsume.watch':
      return _SharedValueConsumeTypeWatch.fromJson(json);
    case 'z:1:SharedValueConsume.read':
      return _SharedValueConsumeTypeRead.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'builder', 'SharedValueConsumeType',
          'Invalid union type "${json['builder']}"!');
  }
}

/// @nodoc
mixin _$SharedValueConsumeType {
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SharedValueConsumeTypeWatch value) watch,
    required TResult Function(_SharedValueConsumeTypeRead value) read,
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_SharedValueConsumeTypeWatch implements _SharedValueConsumeTypeWatch {
  const _$_SharedValueConsumeTypeWatch({this.select, final String? $type})
      : $type = $type ?? 'z:1:SharedValueConsume.watch';

  factory _$_SharedValueConsumeTypeWatch.fromJson(Map<String, dynamic> json) =>
      _$$_SharedValueConsumeTypeWatchFromJson(json);

  @override
  final ZacBuilder<List<ZacTransform>>? select;

  @JsonKey(name: 'builder')
  final String $type;

  @override
  String toString() {
    return 'SharedValueConsumeType.watch(select: $select)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SharedValueConsumeTypeWatch &&
            (identical(other.select, select) || other.select == select));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, select);

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SharedValueConsumeTypeWatch value) watch,
    required TResult Function(_SharedValueConsumeTypeRead value) read,
  }) {
    return watch(this);
  }
}

abstract class _SharedValueConsumeTypeWatch implements SharedValueConsumeType {
  const factory _SharedValueConsumeTypeWatch(
          {final ZacBuilder<List<ZacTransform>>? select}) =
      _$_SharedValueConsumeTypeWatch;

  factory _SharedValueConsumeTypeWatch.fromJson(Map<String, dynamic> json) =
      _$_SharedValueConsumeTypeWatch.fromJson;

  ZacBuilder<List<ZacTransform>>? get select;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_SharedValueConsumeTypeRead implements _SharedValueConsumeTypeRead {
  const _$_SharedValueConsumeTypeRead({final String? $type})
      : $type = $type ?? 'z:1:SharedValueConsume.read';

  factory _$_SharedValueConsumeTypeRead.fromJson(Map<String, dynamic> json) =>
      _$$_SharedValueConsumeTypeReadFromJson(json);

  @JsonKey(name: 'builder')
  final String $type;

  @override
  String toString() {
    return 'SharedValueConsumeType.read()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SharedValueConsumeTypeRead);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SharedValueConsumeTypeWatch value) watch,
    required TResult Function(_SharedValueConsumeTypeRead value) read,
  }) {
    return read(this);
  }
}

abstract class _SharedValueConsumeTypeRead implements SharedValueConsumeType {
  const factory _SharedValueConsumeTypeRead() = _$_SharedValueConsumeTypeRead;

  factory _SharedValueConsumeTypeRead.fromJson(Map<String, dynamic> json) =
      _$_SharedValueConsumeTypeRead.fromJson;
}

SharedValueProviderBuilder _$SharedValueProviderBuilderFromJson(
    Map<String, dynamic> json) {
  switch (json['builder']) {
    case 'z:1:int.provide':
      return _ProvideInt.fromJson(json);
    case 'z:1:double.provide':
      return _ProvideDouble.fromJson(json);
    case 'z:1:String.provide':
      return _ProvideString.fromJson(json);
    case 'z:1:bool.provide':
      return _ProvideBool.fromJson(json);
    case 'z:1:Object.provide':
      return _ProvideObject.fromJson(json);
    case 'z:1:null.provide':
      return _ProvideNull.fromJson(json);
    case 'z:1:Widget.provide':
      return _ProvideWidget.fromJson(json);
    case 'z:1:List<Widget>.provide':
      return _ProvideWidgets.fromJson(json);
    case 'z:1:Map<String, Widget>.provide':
      return _ProvideWidgetsMap.fromJson(json);
    case 'z:1:ZacBuilder<Object>.provide':
      return _ProvideAnyBuilder.fromJson(json);

    default:
      throw CheckedFromJsonException(
          json,
          'builder',
          'SharedValueProviderBuilder',
          'Invalid union type "${json['builder']}"!');
  }
}

/// @nodoc
mixin _$SharedValueProviderBuilder {
  ZacBuilder<Key?>? get key => throw _privateConstructorUsedError;
  String get family => throw _privateConstructorUsedError;
  ZacBuilder<Widget> get child => throw _privateConstructorUsedError;
  bool get autoCreate => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ProvideInt value) provideInt,
    required TResult Function(_ProvideDouble value) provideDouble,
    required TResult Function(_ProvideString value) provideString,
    required TResult Function(_ProvideBool value) provideBool,
    required TResult Function(_ProvideObject value) provideObject,
    required TResult Function(_ProvideNull value) provideNull,
    required TResult Function(_ProvideWidget value) provideWidget,
    required TResult Function(_ProvideWidgets value) provideWidgets,
    required TResult Function(_ProvideWidgetsMap value) provideWidgetsMap,
    required TResult Function(_ProvideAnyBuilder value) provideAnyBuilder,
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_ProvideInt extends _ProvideInt {
  _$_ProvideInt(
      {this.key,
      required this.value,
      required this.family,
      required this.child,
      this.autoCreate = true,
      final String? $type})
      : $type = $type ?? 'z:1:int.provide',
        super._();

  factory _$_ProvideInt.fromJson(Map<String, dynamic> json) =>
      _$$_ProvideIntFromJson(json);

  @override
  final ZacBuilder<Key?>? key;
  @override
  final int value;
  @override
  final String family;
  @override
  final ZacBuilder<Widget> child;
  @override
  @JsonKey()
  final bool autoCreate;

  @JsonKey(name: 'builder')
  final String $type;

  @override
  String toString() {
    return 'SharedValueProviderBuilder.provideInt(key: $key, value: $value, family: $family, child: $child, autoCreate: $autoCreate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProvideInt &&
            (identical(other.key, key) || other.key == key) &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.family, family) || other.family == family) &&
            (identical(other.child, child) || other.child == child) &&
            (identical(other.autoCreate, autoCreate) ||
                other.autoCreate == autoCreate));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, key, value, family, child, autoCreate);

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ProvideInt value) provideInt,
    required TResult Function(_ProvideDouble value) provideDouble,
    required TResult Function(_ProvideString value) provideString,
    required TResult Function(_ProvideBool value) provideBool,
    required TResult Function(_ProvideObject value) provideObject,
    required TResult Function(_ProvideNull value) provideNull,
    required TResult Function(_ProvideWidget value) provideWidget,
    required TResult Function(_ProvideWidgets value) provideWidgets,
    required TResult Function(_ProvideWidgetsMap value) provideWidgetsMap,
    required TResult Function(_ProvideAnyBuilder value) provideAnyBuilder,
  }) {
    return provideInt(this);
  }
}

abstract class _ProvideInt extends SharedValueProviderBuilder {
  factory _ProvideInt(
      {final ZacBuilder<Key?>? key,
      required final int value,
      required final String family,
      required final ZacBuilder<Widget> child,
      final bool autoCreate}) = _$_ProvideInt;
  _ProvideInt._() : super._();

  factory _ProvideInt.fromJson(Map<String, dynamic> json) =
      _$_ProvideInt.fromJson;

  @override
  ZacBuilder<Key?>? get key;
  int get value;
  @override
  String get family;
  @override
  ZacBuilder<Widget> get child;
  @override
  bool get autoCreate;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_ProvideDouble extends _ProvideDouble {
  _$_ProvideDouble(
      {this.key,
      required this.value,
      required this.family,
      required this.child,
      this.autoCreate = true,
      final String? $type})
      : $type = $type ?? 'z:1:double.provide',
        super._();

  factory _$_ProvideDouble.fromJson(Map<String, dynamic> json) =>
      _$$_ProvideDoubleFromJson(json);

  @override
  final ZacBuilder<Key?>? key;
  @override
  final double value;
  @override
  final String family;
  @override
  final ZacBuilder<Widget> child;
  @override
  @JsonKey()
  final bool autoCreate;

  @JsonKey(name: 'builder')
  final String $type;

  @override
  String toString() {
    return 'SharedValueProviderBuilder.provideDouble(key: $key, value: $value, family: $family, child: $child, autoCreate: $autoCreate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProvideDouble &&
            (identical(other.key, key) || other.key == key) &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.family, family) || other.family == family) &&
            (identical(other.child, child) || other.child == child) &&
            (identical(other.autoCreate, autoCreate) ||
                other.autoCreate == autoCreate));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, key, value, family, child, autoCreate);

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ProvideInt value) provideInt,
    required TResult Function(_ProvideDouble value) provideDouble,
    required TResult Function(_ProvideString value) provideString,
    required TResult Function(_ProvideBool value) provideBool,
    required TResult Function(_ProvideObject value) provideObject,
    required TResult Function(_ProvideNull value) provideNull,
    required TResult Function(_ProvideWidget value) provideWidget,
    required TResult Function(_ProvideWidgets value) provideWidgets,
    required TResult Function(_ProvideWidgetsMap value) provideWidgetsMap,
    required TResult Function(_ProvideAnyBuilder value) provideAnyBuilder,
  }) {
    return provideDouble(this);
  }
}

abstract class _ProvideDouble extends SharedValueProviderBuilder {
  factory _ProvideDouble(
      {final ZacBuilder<Key?>? key,
      required final double value,
      required final String family,
      required final ZacBuilder<Widget> child,
      final bool autoCreate}) = _$_ProvideDouble;
  _ProvideDouble._() : super._();

  factory _ProvideDouble.fromJson(Map<String, dynamic> json) =
      _$_ProvideDouble.fromJson;

  @override
  ZacBuilder<Key?>? get key;
  double get value;
  @override
  String get family;
  @override
  ZacBuilder<Widget> get child;
  @override
  bool get autoCreate;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_ProvideString extends _ProvideString {
  _$_ProvideString(
      {this.key,
      required this.value,
      required this.family,
      required this.child,
      this.autoCreate = true,
      final String? $type})
      : $type = $type ?? 'z:1:String.provide',
        super._();

  factory _$_ProvideString.fromJson(Map<String, dynamic> json) =>
      _$$_ProvideStringFromJson(json);

  @override
  final ZacBuilder<Key?>? key;
  @override
  final String value;
  @override
  final String family;
  @override
  final ZacBuilder<Widget> child;
  @override
  @JsonKey()
  final bool autoCreate;

  @JsonKey(name: 'builder')
  final String $type;

  @override
  String toString() {
    return 'SharedValueProviderBuilder.provideString(key: $key, value: $value, family: $family, child: $child, autoCreate: $autoCreate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProvideString &&
            (identical(other.key, key) || other.key == key) &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.family, family) || other.family == family) &&
            (identical(other.child, child) || other.child == child) &&
            (identical(other.autoCreate, autoCreate) ||
                other.autoCreate == autoCreate));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, key, value, family, child, autoCreate);

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ProvideInt value) provideInt,
    required TResult Function(_ProvideDouble value) provideDouble,
    required TResult Function(_ProvideString value) provideString,
    required TResult Function(_ProvideBool value) provideBool,
    required TResult Function(_ProvideObject value) provideObject,
    required TResult Function(_ProvideNull value) provideNull,
    required TResult Function(_ProvideWidget value) provideWidget,
    required TResult Function(_ProvideWidgets value) provideWidgets,
    required TResult Function(_ProvideWidgetsMap value) provideWidgetsMap,
    required TResult Function(_ProvideAnyBuilder value) provideAnyBuilder,
  }) {
    return provideString(this);
  }
}

abstract class _ProvideString extends SharedValueProviderBuilder {
  factory _ProvideString(
      {final ZacBuilder<Key?>? key,
      required final String value,
      required final String family,
      required final ZacBuilder<Widget> child,
      final bool autoCreate}) = _$_ProvideString;
  _ProvideString._() : super._();

  factory _ProvideString.fromJson(Map<String, dynamic> json) =
      _$_ProvideString.fromJson;

  @override
  ZacBuilder<Key?>? get key;
  String get value;
  @override
  String get family;
  @override
  ZacBuilder<Widget> get child;
  @override
  bool get autoCreate;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_ProvideBool extends _ProvideBool {
  _$_ProvideBool(
      {this.key,
      required this.value,
      required this.family,
      required this.child,
      this.autoCreate = true,
      final String? $type})
      : $type = $type ?? 'z:1:bool.provide',
        super._();

  factory _$_ProvideBool.fromJson(Map<String, dynamic> json) =>
      _$$_ProvideBoolFromJson(json);

  @override
  final ZacBuilder<Key?>? key;
  @override
  final bool value;
  @override
  final String family;
  @override
  final ZacBuilder<Widget> child;
  @override
  @JsonKey()
  final bool autoCreate;

  @JsonKey(name: 'builder')
  final String $type;

  @override
  String toString() {
    return 'SharedValueProviderBuilder.provideBool(key: $key, value: $value, family: $family, child: $child, autoCreate: $autoCreate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProvideBool &&
            (identical(other.key, key) || other.key == key) &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.family, family) || other.family == family) &&
            (identical(other.child, child) || other.child == child) &&
            (identical(other.autoCreate, autoCreate) ||
                other.autoCreate == autoCreate));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, key, value, family, child, autoCreate);

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ProvideInt value) provideInt,
    required TResult Function(_ProvideDouble value) provideDouble,
    required TResult Function(_ProvideString value) provideString,
    required TResult Function(_ProvideBool value) provideBool,
    required TResult Function(_ProvideObject value) provideObject,
    required TResult Function(_ProvideNull value) provideNull,
    required TResult Function(_ProvideWidget value) provideWidget,
    required TResult Function(_ProvideWidgets value) provideWidgets,
    required TResult Function(_ProvideWidgetsMap value) provideWidgetsMap,
    required TResult Function(_ProvideAnyBuilder value) provideAnyBuilder,
  }) {
    return provideBool(this);
  }
}

abstract class _ProvideBool extends SharedValueProviderBuilder {
  factory _ProvideBool(
      {final ZacBuilder<Key?>? key,
      required final bool value,
      required final String family,
      required final ZacBuilder<Widget> child,
      final bool autoCreate}) = _$_ProvideBool;
  _ProvideBool._() : super._();

  factory _ProvideBool.fromJson(Map<String, dynamic> json) =
      _$_ProvideBool.fromJson;

  @override
  ZacBuilder<Key?>? get key;
  bool get value;
  @override
  String get family;
  @override
  ZacBuilder<Widget> get child;
  @override
  bool get autoCreate;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_ProvideObject extends _ProvideObject {
  _$_ProvideObject(
      {this.key,
      required this.value,
      required this.family,
      required this.child,
      this.transformer,
      this.autoCreate = true,
      final String? $type})
      : $type = $type ?? 'z:1:Object.provide',
        super._();

  factory _$_ProvideObject.fromJson(Map<String, dynamic> json) =>
      _$$_ProvideObjectFromJson(json);

  @override
  final ZacBuilder<Key?>? key;
  @override
  final Object value;
  @override
  final String family;
  @override
  final ZacBuilder<Widget> child;
  @override
  final ZacBuilder<List<ZacTransform>?>? transformer;
  @override
  @JsonKey()
  final bool autoCreate;

  @JsonKey(name: 'builder')
  final String $type;

  @override
  String toString() {
    return 'SharedValueProviderBuilder.provideObject(key: $key, value: $value, family: $family, child: $child, transformer: $transformer, autoCreate: $autoCreate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProvideObject &&
            (identical(other.key, key) || other.key == key) &&
            const DeepCollectionEquality().equals(other.value, value) &&
            (identical(other.family, family) || other.family == family) &&
            (identical(other.child, child) || other.child == child) &&
            (identical(other.transformer, transformer) ||
                other.transformer == transformer) &&
            (identical(other.autoCreate, autoCreate) ||
                other.autoCreate == autoCreate));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      key,
      const DeepCollectionEquality().hash(value),
      family,
      child,
      transformer,
      autoCreate);

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ProvideInt value) provideInt,
    required TResult Function(_ProvideDouble value) provideDouble,
    required TResult Function(_ProvideString value) provideString,
    required TResult Function(_ProvideBool value) provideBool,
    required TResult Function(_ProvideObject value) provideObject,
    required TResult Function(_ProvideNull value) provideNull,
    required TResult Function(_ProvideWidget value) provideWidget,
    required TResult Function(_ProvideWidgets value) provideWidgets,
    required TResult Function(_ProvideWidgetsMap value) provideWidgetsMap,
    required TResult Function(_ProvideAnyBuilder value) provideAnyBuilder,
  }) {
    return provideObject(this);
  }
}

abstract class _ProvideObject extends SharedValueProviderBuilder {
  factory _ProvideObject(
      {final ZacBuilder<Key?>? key,
      required final Object value,
      required final String family,
      required final ZacBuilder<Widget> child,
      final ZacBuilder<List<ZacTransform>?>? transformer,
      final bool autoCreate}) = _$_ProvideObject;
  _ProvideObject._() : super._();

  factory _ProvideObject.fromJson(Map<String, dynamic> json) =
      _$_ProvideObject.fromJson;

  @override
  ZacBuilder<Key?>? get key;
  Object get value;
  @override
  String get family;
  @override
  ZacBuilder<Widget> get child;
  ZacBuilder<List<ZacTransform>?>? get transformer;
  @override
  bool get autoCreate;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_ProvideNull extends _ProvideNull {
  _$_ProvideNull(
      {this.key,
      required this.family,
      required this.child,
      this.autoCreate = true,
      final String? $type})
      : $type = $type ?? 'z:1:null.provide',
        super._();

  factory _$_ProvideNull.fromJson(Map<String, dynamic> json) =>
      _$$_ProvideNullFromJson(json);

  @override
  final ZacBuilder<Key?>? key;
  @override
  final String family;
  @override
  final ZacBuilder<Widget> child;
  @override
  @JsonKey()
  final bool autoCreate;

  @JsonKey(name: 'builder')
  final String $type;

  @override
  String toString() {
    return 'SharedValueProviderBuilder.provideNull(key: $key, family: $family, child: $child, autoCreate: $autoCreate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProvideNull &&
            (identical(other.key, key) || other.key == key) &&
            (identical(other.family, family) || other.family == family) &&
            (identical(other.child, child) || other.child == child) &&
            (identical(other.autoCreate, autoCreate) ||
                other.autoCreate == autoCreate));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, key, family, child, autoCreate);

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ProvideInt value) provideInt,
    required TResult Function(_ProvideDouble value) provideDouble,
    required TResult Function(_ProvideString value) provideString,
    required TResult Function(_ProvideBool value) provideBool,
    required TResult Function(_ProvideObject value) provideObject,
    required TResult Function(_ProvideNull value) provideNull,
    required TResult Function(_ProvideWidget value) provideWidget,
    required TResult Function(_ProvideWidgets value) provideWidgets,
    required TResult Function(_ProvideWidgetsMap value) provideWidgetsMap,
    required TResult Function(_ProvideAnyBuilder value) provideAnyBuilder,
  }) {
    return provideNull(this);
  }
}

abstract class _ProvideNull extends SharedValueProviderBuilder {
  factory _ProvideNull(
      {final ZacBuilder<Key?>? key,
      required final String family,
      required final ZacBuilder<Widget> child,
      final bool autoCreate}) = _$_ProvideNull;
  _ProvideNull._() : super._();

  factory _ProvideNull.fromJson(Map<String, dynamic> json) =
      _$_ProvideNull.fromJson;

  @override
  ZacBuilder<Key?>? get key;
  @override
  String get family;
  @override
  ZacBuilder<Widget> get child;
  @override
  bool get autoCreate;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_ProvideWidget extends _ProvideWidget {
  _$_ProvideWidget(
      {this.key,
      required this.value,
      required this.family,
      required this.child,
      this.autoCreate = true,
      final String? $type})
      : $type = $type ?? 'z:1:Widget.provide',
        super._();

  factory _$_ProvideWidget.fromJson(Map<String, dynamic> json) =>
      _$$_ProvideWidgetFromJson(json);

  @override
  final ZacBuilder<Key?>? key;
  @override
  final ZacBuilder<Widget> value;
  @override
  final String family;
  @override
  final ZacBuilder<Widget> child;
  @override
  @JsonKey()
  final bool autoCreate;

  @JsonKey(name: 'builder')
  final String $type;

  @override
  String toString() {
    return 'SharedValueProviderBuilder.provideWidget(key: $key, value: $value, family: $family, child: $child, autoCreate: $autoCreate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProvideWidget &&
            (identical(other.key, key) || other.key == key) &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.family, family) || other.family == family) &&
            (identical(other.child, child) || other.child == child) &&
            (identical(other.autoCreate, autoCreate) ||
                other.autoCreate == autoCreate));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, key, value, family, child, autoCreate);

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ProvideInt value) provideInt,
    required TResult Function(_ProvideDouble value) provideDouble,
    required TResult Function(_ProvideString value) provideString,
    required TResult Function(_ProvideBool value) provideBool,
    required TResult Function(_ProvideObject value) provideObject,
    required TResult Function(_ProvideNull value) provideNull,
    required TResult Function(_ProvideWidget value) provideWidget,
    required TResult Function(_ProvideWidgets value) provideWidgets,
    required TResult Function(_ProvideWidgetsMap value) provideWidgetsMap,
    required TResult Function(_ProvideAnyBuilder value) provideAnyBuilder,
  }) {
    return provideWidget(this);
  }
}

abstract class _ProvideWidget extends SharedValueProviderBuilder {
  factory _ProvideWidget(
      {final ZacBuilder<Key?>? key,
      required final ZacBuilder<Widget> value,
      required final String family,
      required final ZacBuilder<Widget> child,
      final bool autoCreate}) = _$_ProvideWidget;
  _ProvideWidget._() : super._();

  factory _ProvideWidget.fromJson(Map<String, dynamic> json) =
      _$_ProvideWidget.fromJson;

  @override
  ZacBuilder<Key?>? get key;
  ZacBuilder<Widget> get value;
  @override
  String get family;
  @override
  ZacBuilder<Widget> get child;
  @override
  bool get autoCreate;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_ProvideWidgets extends _ProvideWidgets {
  _$_ProvideWidgets(
      {this.key,
      required this.value,
      required this.family,
      required this.child,
      this.autoCreate = true,
      final String? $type})
      : $type = $type ?? 'z:1:List<Widget>.provide',
        super._();

  factory _$_ProvideWidgets.fromJson(Map<String, dynamic> json) =>
      _$$_ProvideWidgetsFromJson(json);

  @override
  final ZacBuilder<Key?>? key;
  @override
  final ZacBuilder<List<Widget>> value;
  @override
  final String family;
  @override
  final ZacBuilder<Widget> child;
  @override
  @JsonKey()
  final bool autoCreate;

  @JsonKey(name: 'builder')
  final String $type;

  @override
  String toString() {
    return 'SharedValueProviderBuilder.provideWidgets(key: $key, value: $value, family: $family, child: $child, autoCreate: $autoCreate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProvideWidgets &&
            (identical(other.key, key) || other.key == key) &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.family, family) || other.family == family) &&
            (identical(other.child, child) || other.child == child) &&
            (identical(other.autoCreate, autoCreate) ||
                other.autoCreate == autoCreate));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, key, value, family, child, autoCreate);

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ProvideInt value) provideInt,
    required TResult Function(_ProvideDouble value) provideDouble,
    required TResult Function(_ProvideString value) provideString,
    required TResult Function(_ProvideBool value) provideBool,
    required TResult Function(_ProvideObject value) provideObject,
    required TResult Function(_ProvideNull value) provideNull,
    required TResult Function(_ProvideWidget value) provideWidget,
    required TResult Function(_ProvideWidgets value) provideWidgets,
    required TResult Function(_ProvideWidgetsMap value) provideWidgetsMap,
    required TResult Function(_ProvideAnyBuilder value) provideAnyBuilder,
  }) {
    return provideWidgets(this);
  }
}

abstract class _ProvideWidgets extends SharedValueProviderBuilder {
  factory _ProvideWidgets(
      {final ZacBuilder<Key?>? key,
      required final ZacBuilder<List<Widget>> value,
      required final String family,
      required final ZacBuilder<Widget> child,
      final bool autoCreate}) = _$_ProvideWidgets;
  _ProvideWidgets._() : super._();

  factory _ProvideWidgets.fromJson(Map<String, dynamic> json) =
      _$_ProvideWidgets.fromJson;

  @override
  ZacBuilder<Key?>? get key;
  ZacBuilder<List<Widget>> get value;
  @override
  String get family;
  @override
  ZacBuilder<Widget> get child;
  @override
  bool get autoCreate;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_ProvideWidgetsMap extends _ProvideWidgetsMap {
  _$_ProvideWidgetsMap(
      {this.key,
      required this.value,
      required this.family,
      required this.child,
      this.autoCreate = true,
      final String? $type})
      : $type = $type ?? 'z:1:Map<String, Widget>.provide',
        super._();

  factory _$_ProvideWidgetsMap.fromJson(Map<String, dynamic> json) =>
      _$$_ProvideWidgetsMapFromJson(json);

  @override
  final ZacBuilder<Key?>? key;
  @override
  final ZacMapOfWidgets value;
  @override
  final String family;
  @override
  final ZacBuilder<Widget> child;
  @override
  @JsonKey()
  final bool autoCreate;

  @JsonKey(name: 'builder')
  final String $type;

  @override
  String toString() {
    return 'SharedValueProviderBuilder.provideWidgetsMap(key: $key, value: $value, family: $family, child: $child, autoCreate: $autoCreate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProvideWidgetsMap &&
            (identical(other.key, key) || other.key == key) &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.family, family) || other.family == family) &&
            (identical(other.child, child) || other.child == child) &&
            (identical(other.autoCreate, autoCreate) ||
                other.autoCreate == autoCreate));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, key, value, family, child, autoCreate);

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ProvideInt value) provideInt,
    required TResult Function(_ProvideDouble value) provideDouble,
    required TResult Function(_ProvideString value) provideString,
    required TResult Function(_ProvideBool value) provideBool,
    required TResult Function(_ProvideObject value) provideObject,
    required TResult Function(_ProvideNull value) provideNull,
    required TResult Function(_ProvideWidget value) provideWidget,
    required TResult Function(_ProvideWidgets value) provideWidgets,
    required TResult Function(_ProvideWidgetsMap value) provideWidgetsMap,
    required TResult Function(_ProvideAnyBuilder value) provideAnyBuilder,
  }) {
    return provideWidgetsMap(this);
  }
}

abstract class _ProvideWidgetsMap extends SharedValueProviderBuilder {
  factory _ProvideWidgetsMap(
      {final ZacBuilder<Key?>? key,
      required final ZacMapOfWidgets value,
      required final String family,
      required final ZacBuilder<Widget> child,
      final bool autoCreate}) = _$_ProvideWidgetsMap;
  _ProvideWidgetsMap._() : super._();

  factory _ProvideWidgetsMap.fromJson(Map<String, dynamic> json) =
      _$_ProvideWidgetsMap.fromJson;

  @override
  ZacBuilder<Key?>? get key;
  ZacMapOfWidgets get value;
  @override
  String get family;
  @override
  ZacBuilder<Widget> get child;
  @override
  bool get autoCreate;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_ProvideAnyBuilder extends _ProvideAnyBuilder {
  _$_ProvideAnyBuilder(
      {this.key,
      required this.value,
      required this.family,
      required this.child,
      this.autoCreate = true,
      final String? $type})
      : $type = $type ?? 'z:1:ZacBuilder<Object>.provide',
        super._();

  factory _$_ProvideAnyBuilder.fromJson(Map<String, dynamic> json) =>
      _$$_ProvideAnyBuilderFromJson(json);

  @override
  final ZacBuilder<Key?>? key;
  @override
  final ZacBuilder<Object> value;
  @override
  final String family;
  @override
  final ZacBuilder<Widget> child;
  @override
  @JsonKey()
  final bool autoCreate;

  @JsonKey(name: 'builder')
  final String $type;

  @override
  String toString() {
    return 'SharedValueProviderBuilder.provideAnyBuilder(key: $key, value: $value, family: $family, child: $child, autoCreate: $autoCreate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProvideAnyBuilder &&
            (identical(other.key, key) || other.key == key) &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.family, family) || other.family == family) &&
            (identical(other.child, child) || other.child == child) &&
            (identical(other.autoCreate, autoCreate) ||
                other.autoCreate == autoCreate));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, key, value, family, child, autoCreate);

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ProvideInt value) provideInt,
    required TResult Function(_ProvideDouble value) provideDouble,
    required TResult Function(_ProvideString value) provideString,
    required TResult Function(_ProvideBool value) provideBool,
    required TResult Function(_ProvideObject value) provideObject,
    required TResult Function(_ProvideNull value) provideNull,
    required TResult Function(_ProvideWidget value) provideWidget,
    required TResult Function(_ProvideWidgets value) provideWidgets,
    required TResult Function(_ProvideWidgetsMap value) provideWidgetsMap,
    required TResult Function(_ProvideAnyBuilder value) provideAnyBuilder,
  }) {
    return provideAnyBuilder(this);
  }
}

abstract class _ProvideAnyBuilder extends SharedValueProviderBuilder {
  factory _ProvideAnyBuilder(
      {final ZacBuilder<Key?>? key,
      required final ZacBuilder<Object> value,
      required final String family,
      required final ZacBuilder<Widget> child,
      final bool autoCreate}) = _$_ProvideAnyBuilder;
  _ProvideAnyBuilder._() : super._();

  factory _ProvideAnyBuilder.fromJson(Map<String, dynamic> json) =
      _$_ProvideAnyBuilder.fromJson;

  @override
  ZacBuilder<Key?>? get key;
  ZacBuilder<Object> get value;
  @override
  String get family;
  @override
  ZacBuilder<Widget> get child;
  @override
  bool get autoCreate;
}

ConsumeSharedValue<T> _$ConsumeSharedValueFromJson<T>(
    Map<String, dynamic> json) {
  return _ConsumeSharedValue<T>.fromJson(json);
}

/// @nodoc
mixin _$ConsumeSharedValue<T> {
  String get family => throw _privateConstructorUsedError;
  ZacBuilder<List<ZacTransform>?>? get transformer =>
      throw _privateConstructorUsedError;
  SharedValueConsumeType? get forceConsume =>
      throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_ConsumeSharedValue<T> value) $default,
  ) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_ConsumeSharedValue<T> extends _ConsumeSharedValue<T> {
  _$_ConsumeSharedValue(
      {required this.family, this.transformer, this.forceConsume})
      : super._();

  factory _$_ConsumeSharedValue.fromJson(Map<String, dynamic> json) =>
      _$$_ConsumeSharedValueFromJson(json);

  @override
  final String family;
  @override
  final ZacBuilder<List<ZacTransform>?>? transformer;
  @override
  final SharedValueConsumeType? forceConsume;

  @override
  String toString() {
    return 'ConsumeSharedValue<$T>(family: $family, transformer: $transformer, forceConsume: $forceConsume)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ConsumeSharedValue<T> &&
            (identical(other.family, family) || other.family == family) &&
            (identical(other.transformer, transformer) ||
                other.transformer == transformer) &&
            (identical(other.forceConsume, forceConsume) ||
                other.forceConsume == forceConsume));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, family, transformer, forceConsume);

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_ConsumeSharedValue<T> value) $default,
  ) {
    return $default(this);
  }
}

abstract class _ConsumeSharedValue<T> extends ConsumeSharedValue<T> {
  factory _ConsumeSharedValue(
      {required final String family,
      final ZacBuilder<List<ZacTransform>?>? transformer,
      final SharedValueConsumeType? forceConsume}) = _$_ConsumeSharedValue<T>;
  _ConsumeSharedValue._() : super._();

  factory _ConsumeSharedValue.fromJson(Map<String, dynamic> json) =
      _$_ConsumeSharedValue<T>.fromJson;

  @override
  String get family;
  @override
  ZacBuilder<List<ZacTransform>?>? get transformer;
  @override
  SharedValueConsumeType? get forceConsume;
}
