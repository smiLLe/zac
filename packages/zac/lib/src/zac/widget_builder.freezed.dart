// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'widget_builder.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ZacWidgetBuilderBuilder _$ZacWidgetBuilderBuilderFromJson(
    Map<String, dynamic> json) {
  switch (json['_converter']) {
    case 'z:1:WidgetBuilder':
      return _ZacWidgetBuilderBuilder.fromJson(json);
    case 'z:1:WidgetBuilder.map':
      return _ZacWidgetBuilderBuilderMap.fromJson(json);
    case 'z:1:WidgetBuilder.isolate':
      return _ZacWidgetBuilderBuilderIsolate.fromJson(json);
    case 'z:1:WidgetBuilder.isolateString':
      return _ZacWidgetBuilderBuilderIsolateString.fromJson(json);

    default:
      throw CheckedFromJsonException(
          json,
          '_converter',
          'ZacWidgetBuilderBuilder',
          'Invalid union type "${json['_converter']}"!');
  }
}

/// @nodoc
mixin _$ZacWidgetBuilderBuilder {
  FlutterKey? get key => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_ZacWidgetBuilderBuilder value) $default, {
    required TResult Function(_ZacWidgetBuilderBuilderMap value) map,
    required TResult Function(_ZacWidgetBuilderBuilderIsolate value) isolate,
    required TResult Function(_ZacWidgetBuilderBuilderIsolateString value)
        isolateString,
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_ZacWidgetBuilderBuilder extends _ZacWidgetBuilderBuilder
    with DiagnosticableTreeMixin {
  _$_ZacWidgetBuilderBuilder(
      {this.key, required this.data, final String? $type})
      : $type = $type ?? 'z:1:WidgetBuilder',
        super._();

  factory _$_ZacWidgetBuilderBuilder.fromJson(Map<String, dynamic> json) =>
      _$$_ZacWidgetBuilderBuilderFromJson(json);

  @override
  final FlutterKey? key;
  @override
  final ZacWidget data;

  @JsonKey(name: '_converter')
  final String $type;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ZacWidgetBuilderBuilder(key: $key, data: $data)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ZacWidgetBuilderBuilder'))
      ..add(DiagnosticsProperty('key', key))
      ..add(DiagnosticsProperty('data', data));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ZacWidgetBuilderBuilder &&
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
    TResult Function(_ZacWidgetBuilderBuilder value) $default, {
    required TResult Function(_ZacWidgetBuilderBuilderMap value) map,
    required TResult Function(_ZacWidgetBuilderBuilderIsolate value) isolate,
    required TResult Function(_ZacWidgetBuilderBuilderIsolateString value)
        isolateString,
  }) {
    return $default(this);
  }
}

abstract class _ZacWidgetBuilderBuilder extends ZacWidgetBuilderBuilder {
  factory _ZacWidgetBuilderBuilder(
      {final FlutterKey? key,
      required final ZacWidget data}) = _$_ZacWidgetBuilderBuilder;
  _ZacWidgetBuilderBuilder._() : super._();

  factory _ZacWidgetBuilderBuilder.fromJson(Map<String, dynamic> json) =
      _$_ZacWidgetBuilderBuilder.fromJson;

  @override
  FlutterKey? get key;
  ZacWidget get data;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_ZacWidgetBuilderBuilderMap extends _ZacWidgetBuilderBuilderMap
    with DiagnosticableTreeMixin {
  _$_ZacWidgetBuilderBuilderMap(
      {this.key, required this.data, final String? $type})
      : $type = $type ?? 'z:1:WidgetBuilder.map',
        super._();

  factory _$_ZacWidgetBuilderBuilderMap.fromJson(Map<String, dynamic> json) =>
      _$$_ZacWidgetBuilderBuilderMapFromJson(json);

  @override
  final FlutterKey? key;
  @override
  final ZacMap data;

  @JsonKey(name: '_converter')
  final String $type;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ZacWidgetBuilderBuilder.map(key: $key, data: $data)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ZacWidgetBuilderBuilder.map'))
      ..add(DiagnosticsProperty('key', key))
      ..add(DiagnosticsProperty('data', data));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ZacWidgetBuilderBuilderMap &&
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
    TResult Function(_ZacWidgetBuilderBuilder value) $default, {
    required TResult Function(_ZacWidgetBuilderBuilderMap value) map,
    required TResult Function(_ZacWidgetBuilderBuilderIsolate value) isolate,
    required TResult Function(_ZacWidgetBuilderBuilderIsolateString value)
        isolateString,
  }) {
    return map(this);
  }
}

abstract class _ZacWidgetBuilderBuilderMap extends ZacWidgetBuilderBuilder {
  factory _ZacWidgetBuilderBuilderMap(
      {final FlutterKey? key,
      required final ZacMap data}) = _$_ZacWidgetBuilderBuilderMap;
  _ZacWidgetBuilderBuilderMap._() : super._();

  factory _ZacWidgetBuilderBuilderMap.fromJson(Map<String, dynamic> json) =
      _$_ZacWidgetBuilderBuilderMap.fromJson;

  @override
  FlutterKey? get key;
  ZacMap get data;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_ZacWidgetBuilderBuilderIsolate extends _ZacWidgetBuilderBuilderIsolate
    with DiagnosticableTreeMixin {
  _$_ZacWidgetBuilderBuilderIsolate(
      {this.key,
      required this.data,
      this.errorChild,
      this.debugRethrowError,
      final String? $type})
      : $type = $type ?? 'z:1:WidgetBuilder.isolate',
        super._();

  factory _$_ZacWidgetBuilderBuilderIsolate.fromJson(
          Map<String, dynamic> json) =>
      _$$_ZacWidgetBuilderBuilderIsolateFromJson(json);

  @override
  final FlutterKey? key;
  @override
  final ZacMap data;
  @override
  final ZacWidget? errorChild;
  @override
  final bool? debugRethrowError;

  @JsonKey(name: '_converter')
  final String $type;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ZacWidgetBuilderBuilder.isolate(key: $key, data: $data, errorChild: $errorChild, debugRethrowError: $debugRethrowError)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ZacWidgetBuilderBuilder.isolate'))
      ..add(DiagnosticsProperty('key', key))
      ..add(DiagnosticsProperty('data', data))
      ..add(DiagnosticsProperty('errorChild', errorChild))
      ..add(DiagnosticsProperty('debugRethrowError', debugRethrowError));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ZacWidgetBuilderBuilderIsolate &&
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
    TResult Function(_ZacWidgetBuilderBuilder value) $default, {
    required TResult Function(_ZacWidgetBuilderBuilderMap value) map,
    required TResult Function(_ZacWidgetBuilderBuilderIsolate value) isolate,
    required TResult Function(_ZacWidgetBuilderBuilderIsolateString value)
        isolateString,
  }) {
    return isolate(this);
  }
}

abstract class _ZacWidgetBuilderBuilderIsolate extends ZacWidgetBuilderBuilder {
  factory _ZacWidgetBuilderBuilderIsolate(
      {final FlutterKey? key,
      required final ZacMap data,
      final ZacWidget? errorChild,
      final bool? debugRethrowError}) = _$_ZacWidgetBuilderBuilderIsolate;
  _ZacWidgetBuilderBuilderIsolate._() : super._();

  factory _ZacWidgetBuilderBuilderIsolate.fromJson(Map<String, dynamic> json) =
      _$_ZacWidgetBuilderBuilderIsolate.fromJson;

  @override
  FlutterKey? get key;
  ZacMap get data;
  ZacWidget? get errorChild;
  bool? get debugRethrowError;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_ZacWidgetBuilderBuilderIsolateString
    extends _ZacWidgetBuilderBuilderIsolateString with DiagnosticableTreeMixin {
  _$_ZacWidgetBuilderBuilderIsolateString(
      {this.key,
      required this.data,
      this.errorChild,
      this.debugRethrowError,
      final String? $type})
      : $type = $type ?? 'z:1:WidgetBuilder.isolateString',
        super._();

  factory _$_ZacWidgetBuilderBuilderIsolateString.fromJson(
          Map<String, dynamic> json) =>
      _$$_ZacWidgetBuilderBuilderIsolateStringFromJson(json);

  @override
  final FlutterKey? key;
  @override
  final ZacString data;
  @override
  final ZacWidget? errorChild;
  @override
  final bool? debugRethrowError;

  @JsonKey(name: '_converter')
  final String $type;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ZacWidgetBuilderBuilder.isolateString(key: $key, data: $data, errorChild: $errorChild, debugRethrowError: $debugRethrowError)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(
          DiagnosticsProperty('type', 'ZacWidgetBuilderBuilder.isolateString'))
      ..add(DiagnosticsProperty('key', key))
      ..add(DiagnosticsProperty('data', data))
      ..add(DiagnosticsProperty('errorChild', errorChild))
      ..add(DiagnosticsProperty('debugRethrowError', debugRethrowError));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ZacWidgetBuilderBuilderIsolateString &&
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
    TResult Function(_ZacWidgetBuilderBuilder value) $default, {
    required TResult Function(_ZacWidgetBuilderBuilderMap value) map,
    required TResult Function(_ZacWidgetBuilderBuilderIsolate value) isolate,
    required TResult Function(_ZacWidgetBuilderBuilderIsolateString value)
        isolateString,
  }) {
    return isolateString(this);
  }
}

abstract class _ZacWidgetBuilderBuilderIsolateString
    extends ZacWidgetBuilderBuilder {
  factory _ZacWidgetBuilderBuilderIsolateString(
      {final FlutterKey? key,
      required final ZacString data,
      final ZacWidget? errorChild,
      final bool? debugRethrowError}) = _$_ZacWidgetBuilderBuilderIsolateString;
  _ZacWidgetBuilderBuilderIsolateString._() : super._();

  factory _ZacWidgetBuilderBuilderIsolateString.fromJson(
          Map<String, dynamic> json) =
      _$_ZacWidgetBuilderBuilderIsolateString.fromJson;

  @override
  FlutterKey? get key;
  ZacString get data;
  ZacWidget? get errorChild;
  bool? get debugRethrowError;
}
