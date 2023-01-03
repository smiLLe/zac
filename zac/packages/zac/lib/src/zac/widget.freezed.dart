// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'widget.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ZacWidgetBuilder _$ZacWidgetBuilderFromJson(Map<String, dynamic> json) {
  switch (json['builder']) {
    case 'z:1:Widget':
      return _ZacWidgetBuilder.fromJson(json);
    case 'z:1:Widget.isolate':
      return _ZacWidgetBuilderIsolate.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'builder', 'ZacWidgetBuilder',
          'Invalid union type "${json['builder']}"!');
  }
}

/// @nodoc
mixin _$ZacWidgetBuilder {
  ZacBuilder<Key?>? get key => throw _privateConstructorUsedError;
  Object get data => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_ZacWidgetBuilder value) $default, {
    required TResult Function(_ZacWidgetBuilderIsolate value) isolate,
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
  final ZacBuilder<Key?>? key;
  @override
  final Object data;

  @JsonKey(name: 'builder')
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
            (identical(other.key, key) || other.key == key) &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, key, const DeepCollectionEquality().hash(data));

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_ZacWidgetBuilder value) $default, {
    required TResult Function(_ZacWidgetBuilderIsolate value) isolate,
  }) {
    return $default(this);
  }
}

abstract class _ZacWidgetBuilder extends ZacWidgetBuilder {
  factory _ZacWidgetBuilder(
      {final ZacBuilder<Key?>? key,
      required final Object data}) = _$_ZacWidgetBuilder;
  _ZacWidgetBuilder._() : super._();

  factory _ZacWidgetBuilder.fromJson(Map<String, dynamic> json) =
      _$_ZacWidgetBuilder.fromJson;

  @override
  ZacBuilder<Key?>? get key;
  @override
  Object get data;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_ZacWidgetBuilderIsolate extends _ZacWidgetBuilderIsolate
    with DiagnosticableTreeMixin {
  _$_ZacWidgetBuilderIsolate(
      {this.key, required this.data, this.errorChild, final String? $type})
      : $type = $type ?? 'z:1:Widget.isolate',
        super._();

  factory _$_ZacWidgetBuilderIsolate.fromJson(Map<String, dynamic> json) =>
      _$$_ZacWidgetBuilderIsolateFromJson(json);

  @override
  final ZacBuilder<Key?>? key;
  @override
  final Object data;
  @override
  final ZacBuilder<Widget?>? errorChild;

  @JsonKey(name: 'builder')
  final String $type;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'ZacWidgetBuilder.isolate(key: $key, data: $data, errorChild: $errorChild)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'ZacWidgetBuilder.isolate'))
      ..add(DiagnosticsProperty('key', key))
      ..add(DiagnosticsProperty('data', data))
      ..add(DiagnosticsProperty('errorChild', errorChild));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ZacWidgetBuilderIsolate &&
            (identical(other.key, key) || other.key == key) &&
            const DeepCollectionEquality().equals(other.data, data) &&
            (identical(other.errorChild, errorChild) ||
                other.errorChild == errorChild));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, key, const DeepCollectionEquality().hash(data), errorChild);

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_ZacWidgetBuilder value) $default, {
    required TResult Function(_ZacWidgetBuilderIsolate value) isolate,
  }) {
    return isolate(this);
  }
}

abstract class _ZacWidgetBuilderIsolate extends ZacWidgetBuilder {
  factory _ZacWidgetBuilderIsolate(
      {final ZacBuilder<Key?>? key,
      required final Object data,
      final ZacBuilder<Widget?>? errorChild}) = _$_ZacWidgetBuilderIsolate;
  _ZacWidgetBuilderIsolate._() : super._();

  factory _ZacWidgetBuilderIsolate.fromJson(Map<String, dynamic> json) =
      _$_ZacWidgetBuilderIsolate.fromJson;

  @override
  ZacBuilder<Key?>? get key;
  @override
  Object get data;
  ZacBuilder<Widget?>? get errorChild;
}
