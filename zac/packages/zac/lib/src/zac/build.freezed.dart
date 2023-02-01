// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'build.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ZacBuild _$ZacBuildFromJson(Map<String, dynamic> json) {
  switch (json['builder']) {
    case 'z:1:Build.fromJsonString':
      return _ZacBuildFromString.fromJson(json);
    case 'z:1:Build.fromBuilderMap':
      return _ZacBuildFromBuilderMap.fromJson(json);
    case 'z:1:Build.fromBuilder':
      return _ZacBuildFromBuilder.fromJson(json);
    case 'z:1:Build:Isolate.fromJsonString':
      return _ZacBuildIsolateFromString.fromJson(json);
    case 'z:1:Build:Isolate.fromBuilderMap':
      return _ZacBuildIsolateBuilderMap.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'builder', 'ZacBuild',
          'Invalid union type "${json['builder']}"!');
  }
}

/// @nodoc
mixin _$ZacBuild {
  ZacBuilder<Key?>? get key => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ZacBuildFromString value) fromJsonString,
    required TResult Function(_ZacBuildFromBuilderMap value) fromBuilderMap,
    required TResult Function(_ZacBuildFromBuilder value) fromBuilder,
    required TResult Function(_ZacBuildIsolateFromString value)
        isolateFromJsonString,
    required TResult Function(_ZacBuildIsolateBuilderMap value)
        isolateFromBuilderMap,
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_ZacBuildFromString extends _ZacBuildFromString
    with DiagnosticableTreeMixin {
  _$_ZacBuildFromString(
      {this.key, required this.jsonString, final String? $type})
      : $type = $type ?? 'z:1:Build.fromJsonString',
        super._();

  factory _$_ZacBuildFromString.fromJson(Map<String, dynamic> json) =>
      _$$_ZacBuildFromStringFromJson(json);

  @override
  final ZacBuilder<Key?>? key;
  @override
  final String jsonString;

  @JsonKey(name: 'builder')
  final String $type;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ZacBuild.fromJsonString(key: $key, jsonString: $jsonString)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ZacBuild.fromJsonString'))
      ..add(DiagnosticsProperty('key', key))
      ..add(DiagnosticsProperty('jsonString', jsonString));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ZacBuildFromString &&
            (identical(other.key, key) || other.key == key) &&
            (identical(other.jsonString, jsonString) ||
                other.jsonString == jsonString));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, key, jsonString);

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ZacBuildFromString value) fromJsonString,
    required TResult Function(_ZacBuildFromBuilderMap value) fromBuilderMap,
    required TResult Function(_ZacBuildFromBuilder value) fromBuilder,
    required TResult Function(_ZacBuildIsolateFromString value)
        isolateFromJsonString,
    required TResult Function(_ZacBuildIsolateBuilderMap value)
        isolateFromBuilderMap,
  }) {
    return fromJsonString(this);
  }
}

abstract class _ZacBuildFromString extends ZacBuild {
  factory _ZacBuildFromString(
      {final ZacBuilder<Key?>? key,
      required final String jsonString}) = _$_ZacBuildFromString;
  _ZacBuildFromString._() : super._();

  factory _ZacBuildFromString.fromJson(Map<String, dynamic> json) =
      _$_ZacBuildFromString.fromJson;

  @override
  ZacBuilder<Key?>? get key;
  String get jsonString;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_ZacBuildFromBuilderMap extends _ZacBuildFromBuilderMap
    with DiagnosticableTreeMixin {
  _$_ZacBuildFromBuilderMap(
      {this.key,
      required final Map<String, dynamic> builderMap,
      final String? $type})
      : _builderMap = builderMap,
        $type = $type ?? 'z:1:Build.fromBuilderMap',
        super._();

  factory _$_ZacBuildFromBuilderMap.fromJson(Map<String, dynamic> json) =>
      _$$_ZacBuildFromBuilderMapFromJson(json);

  @override
  final ZacBuilder<Key?>? key;
  final Map<String, dynamic> _builderMap;
  @override
  Map<String, dynamic> get builderMap {
    if (_builderMap is EqualUnmodifiableMapView) return _builderMap;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_builderMap);
  }

  @JsonKey(name: 'builder')
  final String $type;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ZacBuild.fromBuilderMap(key: $key, builderMap: $builderMap)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ZacBuild.fromBuilderMap'))
      ..add(DiagnosticsProperty('key', key))
      ..add(DiagnosticsProperty('builderMap', builderMap));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ZacBuildFromBuilderMap &&
            (identical(other.key, key) || other.key == key) &&
            const DeepCollectionEquality()
                .equals(other._builderMap, _builderMap));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, key, const DeepCollectionEquality().hash(_builderMap));

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ZacBuildFromString value) fromJsonString,
    required TResult Function(_ZacBuildFromBuilderMap value) fromBuilderMap,
    required TResult Function(_ZacBuildFromBuilder value) fromBuilder,
    required TResult Function(_ZacBuildIsolateFromString value)
        isolateFromJsonString,
    required TResult Function(_ZacBuildIsolateBuilderMap value)
        isolateFromBuilderMap,
  }) {
    return fromBuilderMap(this);
  }
}

abstract class _ZacBuildFromBuilderMap extends ZacBuild {
  factory _ZacBuildFromBuilderMap(
          {final ZacBuilder<Key?>? key,
          required final Map<String, dynamic> builderMap}) =
      _$_ZacBuildFromBuilderMap;
  _ZacBuildFromBuilderMap._() : super._();

  factory _ZacBuildFromBuilderMap.fromJson(Map<String, dynamic> json) =
      _$_ZacBuildFromBuilderMap.fromJson;

  @override
  ZacBuilder<Key?>? get key;
  Map<String, dynamic> get builderMap;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_ZacBuildFromBuilder extends _ZacBuildFromBuilder
    with DiagnosticableTreeMixin {
  _$_ZacBuildFromBuilder(
      {this.key, required this.builderWidget, final String? $type})
      : $type = $type ?? 'z:1:Build.fromBuilder',
        super._();

  factory _$_ZacBuildFromBuilder.fromJson(Map<String, dynamic> json) =>
      _$$_ZacBuildFromBuilderFromJson(json);

  @override
  final ZacBuilder<Key?>? key;
  @override
  final ZacBuilder<Widget> builderWidget;

  @JsonKey(name: 'builder')
  final String $type;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ZacBuild.fromBuilder(key: $key, builderWidget: $builderWidget)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ZacBuild.fromBuilder'))
      ..add(DiagnosticsProperty('key', key))
      ..add(DiagnosticsProperty('builderWidget', builderWidget));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ZacBuildFromBuilder &&
            (identical(other.key, key) || other.key == key) &&
            (identical(other.builderWidget, builderWidget) ||
                other.builderWidget == builderWidget));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, key, builderWidget);

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ZacBuildFromString value) fromJsonString,
    required TResult Function(_ZacBuildFromBuilderMap value) fromBuilderMap,
    required TResult Function(_ZacBuildFromBuilder value) fromBuilder,
    required TResult Function(_ZacBuildIsolateFromString value)
        isolateFromJsonString,
    required TResult Function(_ZacBuildIsolateBuilderMap value)
        isolateFromBuilderMap,
  }) {
    return fromBuilder(this);
  }
}

abstract class _ZacBuildFromBuilder extends ZacBuild {
  factory _ZacBuildFromBuilder(
          {final ZacBuilder<Key?>? key,
          required final ZacBuilder<Widget> builderWidget}) =
      _$_ZacBuildFromBuilder;
  _ZacBuildFromBuilder._() : super._();

  factory _ZacBuildFromBuilder.fromJson(Map<String, dynamic> json) =
      _$_ZacBuildFromBuilder.fromJson;

  @override
  ZacBuilder<Key?>? get key;
  ZacBuilder<Widget> get builderWidget;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_ZacBuildIsolateFromString extends _ZacBuildIsolateFromString
    with DiagnosticableTreeMixin {
  _$_ZacBuildIsolateFromString(
      {this.key,
      required this.jsonString,
      this.errorChild,
      final String? $type})
      : $type = $type ?? 'z:1:Build:Isolate.fromJsonString',
        super._();

  factory _$_ZacBuildIsolateFromString.fromJson(Map<String, dynamic> json) =>
      _$$_ZacBuildIsolateFromStringFromJson(json);

  @override
  final ZacBuilder<Key?>? key;
  @override
  final String jsonString;
  @override
  final ZacBuilder<Widget>? errorChild;

  @JsonKey(name: 'builder')
  final String $type;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ZacBuild.isolateFromJsonString(key: $key, jsonString: $jsonString, errorChild: $errorChild)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ZacBuild.isolateFromJsonString'))
      ..add(DiagnosticsProperty('key', key))
      ..add(DiagnosticsProperty('jsonString', jsonString))
      ..add(DiagnosticsProperty('errorChild', errorChild));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ZacBuildIsolateFromString &&
            (identical(other.key, key) || other.key == key) &&
            (identical(other.jsonString, jsonString) ||
                other.jsonString == jsonString) &&
            (identical(other.errorChild, errorChild) ||
                other.errorChild == errorChild));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, key, jsonString, errorChild);

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ZacBuildFromString value) fromJsonString,
    required TResult Function(_ZacBuildFromBuilderMap value) fromBuilderMap,
    required TResult Function(_ZacBuildFromBuilder value) fromBuilder,
    required TResult Function(_ZacBuildIsolateFromString value)
        isolateFromJsonString,
    required TResult Function(_ZacBuildIsolateBuilderMap value)
        isolateFromBuilderMap,
  }) {
    return isolateFromJsonString(this);
  }
}

abstract class _ZacBuildIsolateFromString extends ZacBuild {
  factory _ZacBuildIsolateFromString(
      {final ZacBuilder<Key?>? key,
      required final String jsonString,
      final ZacBuilder<Widget>? errorChild}) = _$_ZacBuildIsolateFromString;
  _ZacBuildIsolateFromString._() : super._();

  factory _ZacBuildIsolateFromString.fromJson(Map<String, dynamic> json) =
      _$_ZacBuildIsolateFromString.fromJson;

  @override
  ZacBuilder<Key?>? get key;
  String get jsonString;
  ZacBuilder<Widget>? get errorChild;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_ZacBuildIsolateBuilderMap extends _ZacBuildIsolateBuilderMap
    with DiagnosticableTreeMixin {
  _$_ZacBuildIsolateBuilderMap(
      {this.key,
      required final Map<String, dynamic> builderMap,
      this.errorChild,
      final String? $type})
      : _builderMap = builderMap,
        $type = $type ?? 'z:1:Build:Isolate.fromBuilderMap',
        super._();

  factory _$_ZacBuildIsolateBuilderMap.fromJson(Map<String, dynamic> json) =>
      _$$_ZacBuildIsolateBuilderMapFromJson(json);

  @override
  final ZacBuilder<Key?>? key;
  final Map<String, dynamic> _builderMap;
  @override
  Map<String, dynamic> get builderMap {
    if (_builderMap is EqualUnmodifiableMapView) return _builderMap;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_builderMap);
  }

  @override
  final ZacBuilder<Widget>? errorChild;

  @JsonKey(name: 'builder')
  final String $type;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ZacBuild.isolateFromBuilderMap(key: $key, builderMap: $builderMap, errorChild: $errorChild)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ZacBuild.isolateFromBuilderMap'))
      ..add(DiagnosticsProperty('key', key))
      ..add(DiagnosticsProperty('builderMap', builderMap))
      ..add(DiagnosticsProperty('errorChild', errorChild));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ZacBuildIsolateBuilderMap &&
            (identical(other.key, key) || other.key == key) &&
            const DeepCollectionEquality()
                .equals(other._builderMap, _builderMap) &&
            (identical(other.errorChild, errorChild) ||
                other.errorChild == errorChild));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, key,
      const DeepCollectionEquality().hash(_builderMap), errorChild);

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ZacBuildFromString value) fromJsonString,
    required TResult Function(_ZacBuildFromBuilderMap value) fromBuilderMap,
    required TResult Function(_ZacBuildFromBuilder value) fromBuilder,
    required TResult Function(_ZacBuildIsolateFromString value)
        isolateFromJsonString,
    required TResult Function(_ZacBuildIsolateBuilderMap value)
        isolateFromBuilderMap,
  }) {
    return isolateFromBuilderMap(this);
  }
}

abstract class _ZacBuildIsolateBuilderMap extends ZacBuild {
  factory _ZacBuildIsolateBuilderMap(
      {final ZacBuilder<Key?>? key,
      required final Map<String, dynamic> builderMap,
      final ZacBuilder<Widget>? errorChild}) = _$_ZacBuildIsolateBuilderMap;
  _ZacBuildIsolateBuilderMap._() : super._();

  factory _ZacBuildIsolateBuilderMap.fromJson(Map<String, dynamic> json) =
      _$_ZacBuildIsolateBuilderMap.fromJson;

  @override
  ZacBuilder<Key?>? get key;
  Map<String, dynamic> get builderMap;
  ZacBuilder<Widget>? get errorChild;
}
