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
    case 'z:1:ZacWidgetBuilder':
      return _ZacWidgetBuilderBuilder.fromJson(json);
    case 'z:1:ZacWidgetBuilder.isolate':
      return _ZacWidgetBuilderBuilderIsolate.fromJson(json);
    case 'z:1:ZacWidgetBuilder.isolateString':
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
      : $type = $type ?? 'z:1:ZacWidgetBuilder',
        super._();

  factory _$_ZacWidgetBuilderBuilder.fromJson(Map<String, dynamic> json) =>
      _$$_ZacWidgetBuilderBuilderFromJson(json);

  @override
  final FlutterKey? key;
  @override
  final ZacMap data;

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
      required final ZacMap data}) = _$_ZacWidgetBuilderBuilder;
  _ZacWidgetBuilderBuilder._() : super._();

  factory _ZacWidgetBuilderBuilder.fromJson(Map<String, dynamic> json) =
      _$_ZacWidgetBuilderBuilder.fromJson;

  @override
  FlutterKey? get key;
  ZacMap get data;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_ZacWidgetBuilderBuilderIsolate extends _ZacWidgetBuilderBuilderIsolate
    with DiagnosticableTreeMixin {
  _$_ZacWidgetBuilderBuilderIsolate(
      {this.key, required this.data, final String? $type})
      : $type = $type ?? 'z:1:ZacWidgetBuilder.isolate',
        super._();

  factory _$_ZacWidgetBuilderBuilderIsolate.fromJson(
          Map<String, dynamic> json) =>
      _$$_ZacWidgetBuilderBuilderIsolateFromJson(json);

  @override
  final FlutterKey? key;
  @override
  final ZacMap data;

  @JsonKey(name: '_converter')
  final String $type;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ZacWidgetBuilderBuilder.isolate(key: $key, data: $data)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ZacWidgetBuilderBuilder.isolate'))
      ..add(DiagnosticsProperty('key', key))
      ..add(DiagnosticsProperty('data', data));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ZacWidgetBuilderBuilderIsolate &&
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
      required final ZacMap data}) = _$_ZacWidgetBuilderBuilderIsolate;
  _ZacWidgetBuilderBuilderIsolate._() : super._();

  factory _ZacWidgetBuilderBuilderIsolate.fromJson(Map<String, dynamic> json) =
      _$_ZacWidgetBuilderBuilderIsolate.fromJson;

  @override
  FlutterKey? get key;
  ZacMap get data;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_ZacWidgetBuilderBuilderIsolateString
    extends _ZacWidgetBuilderBuilderIsolateString with DiagnosticableTreeMixin {
  _$_ZacWidgetBuilderBuilderIsolateString(
      {this.key, required this.data, final String? $type})
      : $type = $type ?? 'z:1:ZacWidgetBuilder.isolateString',
        super._();

  factory _$_ZacWidgetBuilderBuilderIsolateString.fromJson(
          Map<String, dynamic> json) =>
      _$$_ZacWidgetBuilderBuilderIsolateStringFromJson(json);

  @override
  final FlutterKey? key;
  @override
  final ZacString data;

  @JsonKey(name: '_converter')
  final String $type;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ZacWidgetBuilderBuilder.isolateString(key: $key, data: $data)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(
          DiagnosticsProperty('type', 'ZacWidgetBuilderBuilder.isolateString'))
      ..add(DiagnosticsProperty('key', key))
      ..add(DiagnosticsProperty('data', data));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ZacWidgetBuilderBuilderIsolateString &&
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
      required final ZacString data}) = _$_ZacWidgetBuilderBuilderIsolateString;
  _ZacWidgetBuilderBuilderIsolateString._() : super._();

  factory _ZacWidgetBuilderBuilderIsolateString.fromJson(
          Map<String, dynamic> json) =
      _$_ZacWidgetBuilderBuilderIsolateString.fromJson;

  @override
  FlutterKey? get key;
  ZacString get data;
}
