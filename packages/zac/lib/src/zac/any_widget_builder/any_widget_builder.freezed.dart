// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'any_widget_builder.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AnyWidgetBuilderBuilder _$AnyWidgetBuilderBuilderFromJson(
    Map<String, dynamic> json) {
  switch (json['_converter']) {
    case 'z:1:AnyWidgetBuilder':
      return _AnyWidgetBuilderBuilder.fromJson(json);
    case 'z:1:AnyWidgetBuilder.isolate':
      return _AnyWidgetBuilderBuilderIsolate.fromJson(json);
    case 'z:1:AnyWidgetBuilder.isolateString':
      return _AnyWidgetBuilderBuilderIsolateString.fromJson(json);

    default:
      throw CheckedFromJsonException(
          json,
          '_converter',
          'AnyWidgetBuilderBuilder',
          'Invalid union type "${json['_converter']}"!');
  }
}

/// @nodoc
mixin _$AnyWidgetBuilderBuilder {
  FlutterKey? get key => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_AnyWidgetBuilderBuilder value) $default, {
    required TResult Function(_AnyWidgetBuilderBuilderIsolate value) isolate,
    required TResult Function(_AnyWidgetBuilderBuilderIsolateString value)
        isolateString,
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_AnyWidgetBuilderBuilder extends _AnyWidgetBuilderBuilder
    with DiagnosticableTreeMixin {
  _$_AnyWidgetBuilderBuilder(
      {this.key, required this.data, final String? $type})
      : $type = $type ?? 'z:1:AnyWidgetBuilder',
        super._();

  factory _$_AnyWidgetBuilderBuilder.fromJson(Map<String, dynamic> json) =>
      _$$_AnyWidgetBuilderBuilderFromJson(json);

  @override
  final FlutterKey? key;
  @override
  final ZacMap data;

  @JsonKey(name: '_converter')
  final String $type;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AnyWidgetBuilderBuilder(key: $key, data: $data)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AnyWidgetBuilderBuilder'))
      ..add(DiagnosticsProperty('key', key))
      ..add(DiagnosticsProperty('data', data));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AnyWidgetBuilderBuilder &&
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
    TResult Function(_AnyWidgetBuilderBuilder value) $default, {
    required TResult Function(_AnyWidgetBuilderBuilderIsolate value) isolate,
    required TResult Function(_AnyWidgetBuilderBuilderIsolateString value)
        isolateString,
  }) {
    return $default(this);
  }
}

abstract class _AnyWidgetBuilderBuilder extends AnyWidgetBuilderBuilder {
  factory _AnyWidgetBuilderBuilder(
      {final FlutterKey? key,
      required final ZacMap data}) = _$_AnyWidgetBuilderBuilder;
  _AnyWidgetBuilderBuilder._() : super._();

  factory _AnyWidgetBuilderBuilder.fromJson(Map<String, dynamic> json) =
      _$_AnyWidgetBuilderBuilder.fromJson;

  @override
  FlutterKey? get key;
  ZacMap get data;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_AnyWidgetBuilderBuilderIsolate extends _AnyWidgetBuilderBuilderIsolate
    with DiagnosticableTreeMixin {
  _$_AnyWidgetBuilderBuilderIsolate(
      {this.key, required this.data, final String? $type})
      : $type = $type ?? 'z:1:AnyWidgetBuilder.isolate',
        super._();

  factory _$_AnyWidgetBuilderBuilderIsolate.fromJson(
          Map<String, dynamic> json) =>
      _$$_AnyWidgetBuilderBuilderIsolateFromJson(json);

  @override
  final FlutterKey? key;
  @override
  final ZacMap data;

  @JsonKey(name: '_converter')
  final String $type;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AnyWidgetBuilderBuilder.isolate(key: $key, data: $data)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AnyWidgetBuilderBuilder.isolate'))
      ..add(DiagnosticsProperty('key', key))
      ..add(DiagnosticsProperty('data', data));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AnyWidgetBuilderBuilderIsolate &&
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
    TResult Function(_AnyWidgetBuilderBuilder value) $default, {
    required TResult Function(_AnyWidgetBuilderBuilderIsolate value) isolate,
    required TResult Function(_AnyWidgetBuilderBuilderIsolateString value)
        isolateString,
  }) {
    return isolate(this);
  }
}

abstract class _AnyWidgetBuilderBuilderIsolate extends AnyWidgetBuilderBuilder {
  factory _AnyWidgetBuilderBuilderIsolate(
      {final FlutterKey? key,
      required final ZacMap data}) = _$_AnyWidgetBuilderBuilderIsolate;
  _AnyWidgetBuilderBuilderIsolate._() : super._();

  factory _AnyWidgetBuilderBuilderIsolate.fromJson(Map<String, dynamic> json) =
      _$_AnyWidgetBuilderBuilderIsolate.fromJson;

  @override
  FlutterKey? get key;
  ZacMap get data;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_AnyWidgetBuilderBuilderIsolateString
    extends _AnyWidgetBuilderBuilderIsolateString with DiagnosticableTreeMixin {
  _$_AnyWidgetBuilderBuilderIsolateString(
      {this.key, required this.data, final String? $type})
      : $type = $type ?? 'z:1:AnyWidgetBuilder.isolateString',
        super._();

  factory _$_AnyWidgetBuilderBuilderIsolateString.fromJson(
          Map<String, dynamic> json) =>
      _$$_AnyWidgetBuilderBuilderIsolateStringFromJson(json);

  @override
  final FlutterKey? key;
  @override
  final ZacString data;

  @JsonKey(name: '_converter')
  final String $type;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AnyWidgetBuilderBuilder.isolateString(key: $key, data: $data)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(
          DiagnosticsProperty('type', 'AnyWidgetBuilderBuilder.isolateString'))
      ..add(DiagnosticsProperty('key', key))
      ..add(DiagnosticsProperty('data', data));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AnyWidgetBuilderBuilderIsolateString &&
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
    TResult Function(_AnyWidgetBuilderBuilder value) $default, {
    required TResult Function(_AnyWidgetBuilderBuilderIsolate value) isolate,
    required TResult Function(_AnyWidgetBuilderBuilderIsolateString value)
        isolateString,
  }) {
    return isolateString(this);
  }
}

abstract class _AnyWidgetBuilderBuilderIsolateString
    extends AnyWidgetBuilderBuilder {
  factory _AnyWidgetBuilderBuilderIsolateString(
      {final FlutterKey? key,
      required final ZacString data}) = _$_AnyWidgetBuilderBuilderIsolateString;
  _AnyWidgetBuilderBuilderIsolateString._() : super._();

  factory _AnyWidgetBuilderBuilderIsolateString.fromJson(
          Map<String, dynamic> json) =
      _$_AnyWidgetBuilderBuilderIsolateString.fromJson;

  @override
  FlutterKey? get key;
  ZacString get data;
}
