// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'widget.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ZacWidgetBuilder _$ZacWidgetBuilderFromJson(Map<String, dynamic> json) {
  switch (json['converter']) {
    case 'z:1:Widget':
      return _ZacWidgetBuilder.fromJson(json);
    case 'z:1:Widget.map':
      return _ZacWidgetBuilderMap.fromJson(json);
    case 'z:1:Widget.isolate':
      return _ZacWidgetBuilderIsolate.fromJson(json);
    case 'z:1:Widget.isolateString':
      return _ZacWidgetBuilderIsolateString.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'converter', 'ZacWidgetBuilder',
          'Invalid union type "${json['converter']}"!');
  }
}

/// @nodoc
mixin _$ZacWidgetBuilder {
  FlutterKey? get key => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_ZacWidgetBuilder value) $default, {
    required TResult Function(_ZacWidgetBuilderMap value) map,
    required TResult Function(_ZacWidgetBuilderIsolate value) isolate,
    required TResult Function(_ZacWidgetBuilderIsolateString value)
        isolateString,
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_ZacWidgetBuilder extends _ZacWidgetBuilder
    with DiagnosticableTreeMixin {
  _$_ZacWidgetBuilder({this.key, required this.data, final String? $type})
      : $type = $type ?? 'z:1:Widget',
        super._();

  factory _$_ZacWidgetBuilder.fromJson(Map<String, dynamic> json) =>
      _$$_ZacWidgetBuilderFromJson(json);

  @override
  final FlutterKey? key;
  @override
  final FlutterWidget data;

  @JsonKey(name: 'converter')
  final String $type;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ZacWidgetBuilder(key: $key, data: $data)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ZacWidgetBuilder'))
      ..add(DiagnosticsProperty('key', key))
      ..add(DiagnosticsProperty('data', data));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ZacWidgetBuilder &&
            const DeepCollectionEquality().equals(other.key, key) &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(key),
      const DeepCollectionEquality().hash(data));

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_ZacWidgetBuilder value) $default, {
    required TResult Function(_ZacWidgetBuilderMap value) map,
    required TResult Function(_ZacWidgetBuilderIsolate value) isolate,
    required TResult Function(_ZacWidgetBuilderIsolateString value)
        isolateString,
  }) {
    return $default(this);
  }
}

abstract class _ZacWidgetBuilder extends ZacWidgetBuilder {
  factory _ZacWidgetBuilder(
      {final FlutterKey? key,
      required final FlutterWidget data}) = _$_ZacWidgetBuilder;
  _ZacWidgetBuilder._() : super._();

  factory _ZacWidgetBuilder.fromJson(Map<String, dynamic> json) =
      _$_ZacWidgetBuilder.fromJson;

  @override
  FlutterKey? get key;
  FlutterWidget get data;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_ZacWidgetBuilderMap extends _ZacWidgetBuilderMap
    with DiagnosticableTreeMixin {
  _$_ZacWidgetBuilderMap({this.key, required this.data, final String? $type})
      : $type = $type ?? 'z:1:Widget.map',
        super._();

  factory _$_ZacWidgetBuilderMap.fromJson(Map<String, dynamic> json) =>
      _$$_ZacWidgetBuilderMapFromJson(json);

  @override
  final FlutterKey? key;
  @override
  final ZacMap data;

  @JsonKey(name: 'converter')
  final String $type;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ZacWidgetBuilder.map(key: $key, data: $data)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ZacWidgetBuilder.map'))
      ..add(DiagnosticsProperty('key', key))
      ..add(DiagnosticsProperty('data', data));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ZacWidgetBuilderMap &&
            const DeepCollectionEquality().equals(other.key, key) &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(key),
      const DeepCollectionEquality().hash(data));

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_ZacWidgetBuilder value) $default, {
    required TResult Function(_ZacWidgetBuilderMap value) map,
    required TResult Function(_ZacWidgetBuilderIsolate value) isolate,
    required TResult Function(_ZacWidgetBuilderIsolateString value)
        isolateString,
  }) {
    return map(this);
  }
}

abstract class _ZacWidgetBuilderMap extends ZacWidgetBuilder {
  factory _ZacWidgetBuilderMap(
      {final FlutterKey? key,
      required final ZacMap data}) = _$_ZacWidgetBuilderMap;
  _ZacWidgetBuilderMap._() : super._();

  factory _ZacWidgetBuilderMap.fromJson(Map<String, dynamic> json) =
      _$_ZacWidgetBuilderMap.fromJson;

  @override
  FlutterKey? get key;
  ZacMap get data;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_ZacWidgetBuilderIsolate extends _ZacWidgetBuilderIsolate
    with DiagnosticableTreeMixin {
  _$_ZacWidgetBuilderIsolate(
      {this.key,
      required this.data,
      this.errorChild,
      this.debugRethrowError,
      final String? $type})
      : $type = $type ?? 'z:1:Widget.isolate',
        super._();

  factory _$_ZacWidgetBuilderIsolate.fromJson(Map<String, dynamic> json) =>
      _$$_ZacWidgetBuilderIsolateFromJson(json);

  @override
  final FlutterKey? key;
  @override
  final ZacMap data;
  @override
  final FlutterWidget? errorChild;
  @override
  final bool? debugRethrowError;

  @JsonKey(name: 'converter')
  final String $type;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ZacWidgetBuilder.isolate(key: $key, data: $data, errorChild: $errorChild, debugRethrowError: $debugRethrowError)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ZacWidgetBuilder.isolate'))
      ..add(DiagnosticsProperty('key', key))
      ..add(DiagnosticsProperty('data', data))
      ..add(DiagnosticsProperty('errorChild', errorChild))
      ..add(DiagnosticsProperty('debugRethrowError', debugRethrowError));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ZacWidgetBuilderIsolate &&
            const DeepCollectionEquality().equals(other.key, key) &&
            const DeepCollectionEquality().equals(other.data, data) &&
            const DeepCollectionEquality()
                .equals(other.errorChild, errorChild) &&
            const DeepCollectionEquality()
                .equals(other.debugRethrowError, debugRethrowError));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(key),
      const DeepCollectionEquality().hash(data),
      const DeepCollectionEquality().hash(errorChild),
      const DeepCollectionEquality().hash(debugRethrowError));

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_ZacWidgetBuilder value) $default, {
    required TResult Function(_ZacWidgetBuilderMap value) map,
    required TResult Function(_ZacWidgetBuilderIsolate value) isolate,
    required TResult Function(_ZacWidgetBuilderIsolateString value)
        isolateString,
  }) {
    return isolate(this);
  }
}

abstract class _ZacWidgetBuilderIsolate extends ZacWidgetBuilder {
  factory _ZacWidgetBuilderIsolate(
      {final FlutterKey? key,
      required final ZacMap data,
      final FlutterWidget? errorChild,
      final bool? debugRethrowError}) = _$_ZacWidgetBuilderIsolate;
  _ZacWidgetBuilderIsolate._() : super._();

  factory _ZacWidgetBuilderIsolate.fromJson(Map<String, dynamic> json) =
      _$_ZacWidgetBuilderIsolate.fromJson;

  @override
  FlutterKey? get key;
  ZacMap get data;
  FlutterWidget? get errorChild;
  bool? get debugRethrowError;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_ZacWidgetBuilderIsolateString extends _ZacWidgetBuilderIsolateString
    with DiagnosticableTreeMixin {
  _$_ZacWidgetBuilderIsolateString(
      {this.key,
      required this.data,
      this.errorChild,
      this.debugRethrowError,
      final String? $type})
      : $type = $type ?? 'z:1:Widget.isolateString',
        super._();

  factory _$_ZacWidgetBuilderIsolateString.fromJson(
          Map<String, dynamic> json) =>
      _$$_ZacWidgetBuilderIsolateStringFromJson(json);

  @override
  final FlutterKey? key;
  @override
  final ZacValue<String> data;
  @override
  final FlutterWidget? errorChild;
  @override
  final bool? debugRethrowError;

  @JsonKey(name: 'converter')
  final String $type;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ZacWidgetBuilder.isolateString(key: $key, data: $data, errorChild: $errorChild, debugRethrowError: $debugRethrowError)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ZacWidgetBuilder.isolateString'))
      ..add(DiagnosticsProperty('key', key))
      ..add(DiagnosticsProperty('data', data))
      ..add(DiagnosticsProperty('errorChild', errorChild))
      ..add(DiagnosticsProperty('debugRethrowError', debugRethrowError));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ZacWidgetBuilderIsolateString &&
            const DeepCollectionEquality().equals(other.key, key) &&
            const DeepCollectionEquality().equals(other.data, data) &&
            const DeepCollectionEquality()
                .equals(other.errorChild, errorChild) &&
            const DeepCollectionEquality()
                .equals(other.debugRethrowError, debugRethrowError));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(key),
      const DeepCollectionEquality().hash(data),
      const DeepCollectionEquality().hash(errorChild),
      const DeepCollectionEquality().hash(debugRethrowError));

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_ZacWidgetBuilder value) $default, {
    required TResult Function(_ZacWidgetBuilderMap value) map,
    required TResult Function(_ZacWidgetBuilderIsolate value) isolate,
    required TResult Function(_ZacWidgetBuilderIsolateString value)
        isolateString,
  }) {
    return isolateString(this);
  }
}

abstract class _ZacWidgetBuilderIsolateString extends ZacWidgetBuilder {
  factory _ZacWidgetBuilderIsolateString(
      {final FlutterKey? key,
      required final ZacValue<String> data,
      final FlutterWidget? errorChild,
      final bool? debugRethrowError}) = _$_ZacWidgetBuilderIsolateString;
  _ZacWidgetBuilderIsolateString._() : super._();

  factory _ZacWidgetBuilderIsolateString.fromJson(Map<String, dynamic> json) =
      _$_ZacWidgetBuilderIsolateString.fromJson;

  @override
  FlutterKey? get key;
  ZacValue<String> get data;
  FlutterWidget? get errorChild;
  bool? get debugRethrowError;
}
