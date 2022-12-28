// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'progress_indicator.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FlutterProgressIndicator _$FlutterProgressIndicatorFromJson(
    Map<String, dynamic> json) {
  switch (json['builder']) {
    case 'f:1:LinearProgressIndicator':
      return _FlutterProgressIndicatorLinear.fromJson(json);
    case 'f:1:CircularProgressIndicator':
      return _FlutterProgressIndicatorCircular.fromJson(json);

    default:
      throw CheckedFromJsonException(
          json,
          'builder',
          'FlutterProgressIndicator',
          'Invalid union type "${json['builder']}"!');
  }
}

/// @nodoc
mixin _$FlutterProgressIndicator {
  ZacBuilder<Key?>? get key => throw _privateConstructorUsedError;
  ZacBuilder<double?>? get value => throw _privateConstructorUsedError;
  ZacBuilder<Color?>? get backgroundColor => throw _privateConstructorUsedError;
  ZacBuilder<Color?>? get color => throw _privateConstructorUsedError;
  ZacBuilder<String?>? get semanticsLabel => throw _privateConstructorUsedError;
  ZacBuilder<String?>? get semanticsValue => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FlutterProgressIndicatorLinear value) linear,
    required TResult Function(_FlutterProgressIndicatorCircular value) circular,
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_FlutterProgressIndicatorLinear
    extends _FlutterProgressIndicatorLinear {
  _$_FlutterProgressIndicatorLinear(
      {this.key,
      this.value,
      this.backgroundColor,
      this.color,
      this.minHeight,
      this.semanticsLabel,
      this.semanticsValue,
      final String? $type})
      : $type = $type ?? 'f:1:LinearProgressIndicator',
        super._();

  factory _$_FlutterProgressIndicatorLinear.fromJson(
          Map<String, dynamic> json) =>
      _$$_FlutterProgressIndicatorLinearFromJson(json);

  @override
  final ZacBuilder<Key?>? key;
  @override
  final ZacBuilder<double?>? value;
  @override
  final ZacBuilder<Color?>? backgroundColor;
  @override
  final ZacBuilder<Color?>? color;
// Animation<Color?>? valueColor,
  @override
  final ZacBuilder<double?>? minHeight;
  @override
  final ZacBuilder<String?>? semanticsLabel;
  @override
  final ZacBuilder<String?>? semanticsValue;

  @JsonKey(name: 'builder')
  final String $type;

  @override
  String toString() {
    return 'FlutterProgressIndicator.linear(key: $key, value: $value, backgroundColor: $backgroundColor, color: $color, minHeight: $minHeight, semanticsLabel: $semanticsLabel, semanticsValue: $semanticsValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FlutterProgressIndicatorLinear &&
            (identical(other.key, key) || other.key == key) &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.backgroundColor, backgroundColor) ||
                other.backgroundColor == backgroundColor) &&
            (identical(other.color, color) || other.color == color) &&
            (identical(other.minHeight, minHeight) ||
                other.minHeight == minHeight) &&
            (identical(other.semanticsLabel, semanticsLabel) ||
                other.semanticsLabel == semanticsLabel) &&
            (identical(other.semanticsValue, semanticsValue) ||
                other.semanticsValue == semanticsValue));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, key, value, backgroundColor,
      color, minHeight, semanticsLabel, semanticsValue);

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FlutterProgressIndicatorLinear value) linear,
    required TResult Function(_FlutterProgressIndicatorCircular value) circular,
  }) {
    return linear(this);
  }
}

abstract class _FlutterProgressIndicatorLinear
    extends FlutterProgressIndicator {
  factory _FlutterProgressIndicatorLinear(
          {final ZacBuilder<Key?>? key,
          final ZacBuilder<double?>? value,
          final ZacBuilder<Color?>? backgroundColor,
          final ZacBuilder<Color?>? color,
          final ZacBuilder<double?>? minHeight,
          final ZacBuilder<String?>? semanticsLabel,
          final ZacBuilder<String?>? semanticsValue}) =
      _$_FlutterProgressIndicatorLinear;
  _FlutterProgressIndicatorLinear._() : super._();

  factory _FlutterProgressIndicatorLinear.fromJson(Map<String, dynamic> json) =
      _$_FlutterProgressIndicatorLinear.fromJson;

  @override
  ZacBuilder<Key?>? get key;
  @override
  ZacBuilder<double?>? get value;
  @override
  ZacBuilder<Color?>? get backgroundColor;
  @override
  ZacBuilder<Color?>? get color; // Animation<Color?>? valueColor,
  ZacBuilder<double?>? get minHeight;
  @override
  ZacBuilder<String?>? get semanticsLabel;
  @override
  ZacBuilder<String?>? get semanticsValue;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_FlutterProgressIndicatorCircular
    extends _FlutterProgressIndicatorCircular {
  _$_FlutterProgressIndicatorCircular(
      {this.key,
      this.value,
      this.backgroundColor,
      this.color,
      this.strokeWidth,
      this.semanticsLabel,
      this.semanticsValue,
      final String? $type})
      : $type = $type ?? 'f:1:CircularProgressIndicator',
        super._();

  factory _$_FlutterProgressIndicatorCircular.fromJson(
          Map<String, dynamic> json) =>
      _$$_FlutterProgressIndicatorCircularFromJson(json);

  @override
  final ZacBuilder<Key?>? key;
  @override
  final ZacBuilder<double?>? value;
  @override
  final ZacBuilder<Color?>? backgroundColor;
  @override
  final ZacBuilder<Color?>? color;
// Animation<Color?>? valueColor,
  @override
  final ZacBuilder<double?>? strokeWidth;
  @override
  final ZacBuilder<String?>? semanticsLabel;
  @override
  final ZacBuilder<String?>? semanticsValue;

  @JsonKey(name: 'builder')
  final String $type;

  @override
  String toString() {
    return 'FlutterProgressIndicator.circular(key: $key, value: $value, backgroundColor: $backgroundColor, color: $color, strokeWidth: $strokeWidth, semanticsLabel: $semanticsLabel, semanticsValue: $semanticsValue)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FlutterProgressIndicatorCircular &&
            (identical(other.key, key) || other.key == key) &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.backgroundColor, backgroundColor) ||
                other.backgroundColor == backgroundColor) &&
            (identical(other.color, color) || other.color == color) &&
            (identical(other.strokeWidth, strokeWidth) ||
                other.strokeWidth == strokeWidth) &&
            (identical(other.semanticsLabel, semanticsLabel) ||
                other.semanticsLabel == semanticsLabel) &&
            (identical(other.semanticsValue, semanticsValue) ||
                other.semanticsValue == semanticsValue));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, key, value, backgroundColor,
      color, strokeWidth, semanticsLabel, semanticsValue);

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FlutterProgressIndicatorLinear value) linear,
    required TResult Function(_FlutterProgressIndicatorCircular value) circular,
  }) {
    return circular(this);
  }
}

abstract class _FlutterProgressIndicatorCircular
    extends FlutterProgressIndicator {
  factory _FlutterProgressIndicatorCircular(
          {final ZacBuilder<Key?>? key,
          final ZacBuilder<double?>? value,
          final ZacBuilder<Color?>? backgroundColor,
          final ZacBuilder<Color?>? color,
          final ZacBuilder<double?>? strokeWidth,
          final ZacBuilder<String?>? semanticsLabel,
          final ZacBuilder<String?>? semanticsValue}) =
      _$_FlutterProgressIndicatorCircular;
  _FlutterProgressIndicatorCircular._() : super._();

  factory _FlutterProgressIndicatorCircular.fromJson(
      Map<String, dynamic> json) = _$_FlutterProgressIndicatorCircular.fromJson;

  @override
  ZacBuilder<Key?>? get key;
  @override
  ZacBuilder<double?>? get value;
  @override
  ZacBuilder<Color?>? get backgroundColor;
  @override
  ZacBuilder<Color?>? get color; // Animation<Color?>? valueColor,
  ZacBuilder<double?>? get strokeWidth;
  @override
  ZacBuilder<String?>? get semanticsLabel;
  @override
  ZacBuilder<String?>? get semanticsValue;
}
