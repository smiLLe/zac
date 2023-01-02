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
    case 'z:1:SharedValue.invalidate':
      return _SharedValueActionsRefresh.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'builder', 'SharedValueActions',
          'Invalid union type "${json['builder']}"!');
  }
}

/// @nodoc
mixin _$SharedValueActions {
  Object get family => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SharedValueActionsUpdate value) update,
    required TResult Function(_SharedValueActionsRefresh value) invalidate,
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_SharedValueActionsUpdate extends _SharedValueActionsUpdate {
  _$_SharedValueActionsUpdate(
      {required this.family,
      this.transformer,
      this.ifNoPayloadTakeCurrent = false,
      final String? $type})
      : $type = $type ?? 'z:1:SharedValue.update',
        super._();

  factory _$_SharedValueActionsUpdate.fromJson(Map<String, dynamic> json) =>
      _$$_SharedValueActionsUpdateFromJson(json);

  @override
  final Object family;
  @override
  final ZacTransformers? transformer;
  @override
  @JsonKey()
  final bool? ifNoPayloadTakeCurrent;

  @JsonKey(name: 'builder')
  final String $type;

  @override
  String toString() {
    return 'SharedValueActions.update(family: $family, transformer: $transformer, ifNoPayloadTakeCurrent: $ifNoPayloadTakeCurrent)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SharedValueActionsUpdate &&
            const DeepCollectionEquality().equals(other.family, family) &&
            (identical(other.transformer, transformer) ||
                other.transformer == transformer) &&
            (identical(other.ifNoPayloadTakeCurrent, ifNoPayloadTakeCurrent) ||
                other.ifNoPayloadTakeCurrent == ifNoPayloadTakeCurrent));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(family),
      transformer,
      ifNoPayloadTakeCurrent);

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SharedValueActionsUpdate value) update,
    required TResult Function(_SharedValueActionsRefresh value) invalidate,
  }) {
    return update(this);
  }
}

abstract class _SharedValueActionsUpdate extends SharedValueActions {
  factory _SharedValueActionsUpdate(
      {required final Object family,
      final ZacTransformers? transformer,
      final bool? ifNoPayloadTakeCurrent}) = _$_SharedValueActionsUpdate;
  _SharedValueActionsUpdate._() : super._();

  factory _SharedValueActionsUpdate.fromJson(Map<String, dynamic> json) =
      _$_SharedValueActionsUpdate.fromJson;

  @override
  Object get family;
  ZacTransformers? get transformer;
  bool? get ifNoPayloadTakeCurrent;
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
  final Object family;

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
            const DeepCollectionEquality().equals(other.family, family));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(family));

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SharedValueActionsUpdate value) update,
    required TResult Function(_SharedValueActionsRefresh value) invalidate,
  }) {
    return invalidate(this);
  }
}

abstract class _SharedValueActionsRefresh extends SharedValueActions {
  factory _SharedValueActionsRefresh({required final Object family}) =
      _$_SharedValueActionsRefresh;
  _SharedValueActionsRefresh._() : super._();

  factory _SharedValueActionsRefresh.fromJson(Map<String, dynamic> json) =
      _$_SharedValueActionsRefresh.fromJson;

  @override
  Object get family;
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
  final ZacTransformers? select;

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
  const factory _SharedValueConsumeTypeWatch({final ZacTransformers? select}) =
      _$_SharedValueConsumeTypeWatch;

  factory _SharedValueConsumeTypeWatch.fromJson(Map<String, dynamic> json) =
      _$_SharedValueConsumeTypeWatch.fromJson;

  ZacTransformers? get select;
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
  final ZacTransformers? transformer;
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
      final ZacTransformers? transformer,
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
  ZacTransformers? get transformer;
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
  final ZacListBuilder<Widget, List<Widget>> value;
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
      required final ZacListBuilder<Widget, List<Widget>> value,
      required final String family,
      required final ZacBuilder<Widget> child,
      final bool autoCreate}) = _$_ProvideWidgets;
  _ProvideWidgets._() : super._();

  factory _ProvideWidgets.fromJson(Map<String, dynamic> json) =
      _$_ProvideWidgets.fromJson;

  @override
  ZacBuilder<Key?>? get key;
  ZacListBuilder<Widget, List<Widget>> get value;
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
  final ZacMapBuilder<Widget, Map<String, Widget>> value;
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
      required final ZacMapBuilder<Widget, Map<String, Widget>> value,
      required final String family,
      required final ZacBuilder<Widget> child,
      final bool autoCreate}) = _$_ProvideWidgetsMap;
  _ProvideWidgetsMap._() : super._();

  factory _ProvideWidgetsMap.fromJson(Map<String, dynamic> json) =
      _$_ProvideWidgetsMap.fromJson;

  @override
  ZacBuilder<Key?>? get key;
  ZacMapBuilder<Widget, Map<String, Widget>> get value;
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
  Object get family => throw _privateConstructorUsedError;
  ZacTransformers? get transformer => throw _privateConstructorUsedError;
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
  final Object family;
  @override
  final ZacTransformers? transformer;
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
            const DeepCollectionEquality().equals(other.family, family) &&
            (identical(other.transformer, transformer) ||
                other.transformer == transformer) &&
            (identical(other.forceConsume, forceConsume) ||
                other.forceConsume == forceConsume));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType,
      const DeepCollectionEquality().hash(family), transformer, forceConsume);

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
      {required final Object family,
      final ZacTransformers? transformer,
      final SharedValueConsumeType? forceConsume}) = _$_ConsumeSharedValue<T>;
  _ConsumeSharedValue._() : super._();

  factory _ConsumeSharedValue.fromJson(Map<String, dynamic> json) =
      _$_ConsumeSharedValue<T>.fromJson;

  @override
  Object get family;
  @override
  ZacTransformers? get transformer;
  @override
  SharedValueConsumeType? get forceConsume;
}

ConsumeSharedValueList<T, X>
    _$ConsumeSharedValueListFromJson<T extends Object?, X extends List<T>?>(
        Map<String, dynamic> json) {
  return _ConsumeSharedValueList<T, X>.fromJson(json);
}

/// @nodoc
mixin _$ConsumeSharedValueList<T extends Object?, X extends List<T>?> {
  Object get family => throw _privateConstructorUsedError;
  ZacTransformers? get transformer => throw _privateConstructorUsedError;
  ZacTransformers? get itemTransformer => throw _privateConstructorUsedError;
  SharedValueConsumeType? get forceConsume =>
      throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_ConsumeSharedValueList<T, X> value) $default,
  ) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_ConsumeSharedValueList<T extends Object?, X extends List<T>?>
    extends _ConsumeSharedValueList<T, X> {
  _$_ConsumeSharedValueList(
      {required this.family,
      this.transformer,
      this.itemTransformer,
      this.forceConsume})
      : super._();

  factory _$_ConsumeSharedValueList.fromJson(Map<String, dynamic> json) =>
      _$$_ConsumeSharedValueListFromJson(json);

  @override
  final Object family;
  @override
  final ZacTransformers? transformer;
  @override
  final ZacTransformers? itemTransformer;
  @override
  final SharedValueConsumeType? forceConsume;

  @override
  String toString() {
    return 'ConsumeSharedValueList<$T, $X>(family: $family, transformer: $transformer, itemTransformer: $itemTransformer, forceConsume: $forceConsume)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ConsumeSharedValueList<T, X> &&
            const DeepCollectionEquality().equals(other.family, family) &&
            (identical(other.transformer, transformer) ||
                other.transformer == transformer) &&
            (identical(other.itemTransformer, itemTransformer) ||
                other.itemTransformer == itemTransformer) &&
            (identical(other.forceConsume, forceConsume) ||
                other.forceConsume == forceConsume));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(family),
      transformer,
      itemTransformer,
      forceConsume);

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_ConsumeSharedValueList<T, X> value) $default,
  ) {
    return $default(this);
  }
}

abstract class _ConsumeSharedValueList<T extends Object?, X extends List<T>?>
    extends ConsumeSharedValueList<T, X> {
  factory _ConsumeSharedValueList(
          {required final Object family,
          final ZacTransformers? transformer,
          final ZacTransformers? itemTransformer,
          final SharedValueConsumeType? forceConsume}) =
      _$_ConsumeSharedValueList<T, X>;
  _ConsumeSharedValueList._() : super._();

  factory _ConsumeSharedValueList.fromJson(Map<String, dynamic> json) =
      _$_ConsumeSharedValueList<T, X>.fromJson;

  @override
  Object get family;
  @override
  ZacTransformers? get transformer;
  @override
  ZacTransformers? get itemTransformer;
  @override
  SharedValueConsumeType? get forceConsume;
}

ConsumeSharedValueMap<T, X> _$ConsumeSharedValueMapFromJson<T extends Object?,
    X extends Map<String, T>?>(Map<String, dynamic> json) {
  return _ConsumeSharedValueMap<T, X>.fromJson(json);
}

/// @nodoc
mixin _$ConsumeSharedValueMap<T extends Object?, X extends Map<String, T>?> {
  Object get family => throw _privateConstructorUsedError;
  ZacTransformers? get transformer => throw _privateConstructorUsedError;
  ZacTransformers? get itemTransformer => throw _privateConstructorUsedError;
  SharedValueConsumeType? get forceConsume =>
      throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_ConsumeSharedValueMap<T, X> value) $default,
  ) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_ConsumeSharedValueMap<T extends Object?, X extends Map<String, T>?>
    extends _ConsumeSharedValueMap<T, X> {
  _$_ConsumeSharedValueMap(
      {required this.family,
      this.transformer,
      this.itemTransformer,
      this.forceConsume})
      : super._();

  factory _$_ConsumeSharedValueMap.fromJson(Map<String, dynamic> json) =>
      _$$_ConsumeSharedValueMapFromJson(json);

  @override
  final Object family;
  @override
  final ZacTransformers? transformer;
  @override
  final ZacTransformers? itemTransformer;
  @override
  final SharedValueConsumeType? forceConsume;

  @override
  String toString() {
    return 'ConsumeSharedValueMap<$T, $X>(family: $family, transformer: $transformer, itemTransformer: $itemTransformer, forceConsume: $forceConsume)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ConsumeSharedValueMap<T, X> &&
            const DeepCollectionEquality().equals(other.family, family) &&
            (identical(other.transformer, transformer) ||
                other.transformer == transformer) &&
            (identical(other.itemTransformer, itemTransformer) ||
                other.itemTransformer == itemTransformer) &&
            (identical(other.forceConsume, forceConsume) ||
                other.forceConsume == forceConsume));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(family),
      transformer,
      itemTransformer,
      forceConsume);

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_ConsumeSharedValueMap<T, X> value) $default,
  ) {
    return $default(this);
  }
}

abstract class _ConsumeSharedValueMap<T extends Object?,
    X extends Map<String, T>?> extends ConsumeSharedValueMap<T, X> {
  factory _ConsumeSharedValueMap(
          {required final Object family,
          final ZacTransformers? transformer,
          final ZacTransformers? itemTransformer,
          final SharedValueConsumeType? forceConsume}) =
      _$_ConsumeSharedValueMap<T, X>;
  _ConsumeSharedValueMap._() : super._();

  factory _ConsumeSharedValueMap.fromJson(Map<String, dynamic> json) =
      _$_ConsumeSharedValueMap<T, X>.fromJson;

  @override
  Object get family;
  @override
  ZacTransformers? get transformer;
  @override
  ZacTransformers? get itemTransformer;
  @override
  SharedValueConsumeType? get forceConsume;
}
