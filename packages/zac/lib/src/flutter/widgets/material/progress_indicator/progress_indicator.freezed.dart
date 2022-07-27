// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'progress_indicator.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FlutterProgressIndicator _$FlutterProgressIndicatorFromJson(
    Map<String, dynamic> json) {
  switch (json['_converter']) {
    case 'f:1:LinearProgressIndicator':
      return _FlutterProgressIndicatorLinear.fromJson(json);
    case 'f:1:CircularProgressIndicator':
      return _FlutterProgressIndicatorCircular.fromJson(json);

    default:
      throw CheckedFromJsonException(
          json,
          '_converter',
          'FlutterProgressIndicator',
          'Invalid union type "${json['_converter']}"!');
  }
}

/// @nodoc
mixin _$FlutterProgressIndicator {
  FlutterKey? get key => throw _privateConstructorUsedError;
  ZacDouble? get value => throw _privateConstructorUsedError;
  FlutterColor? get backgroundColor => throw _privateConstructorUsedError;
  FlutterColor? get color => throw _privateConstructorUsedError;
  ZacString? get semanticsLabel => throw _privateConstructorUsedError;
  ZacString? get semanticsValue => throw _privateConstructorUsedError;

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
  final FlutterKey? key;
  @override
  final ZacDouble? value;
  @override
  final FlutterColor? backgroundColor;
  @override
  final FlutterColor? color;
// Animation<Color?>? valueColor,
  @override
  final ZacDouble? minHeight;
  @override
  final ZacString? semanticsLabel;
  @override
  final ZacString? semanticsValue;

  @JsonKey(name: '_converter')
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
            const DeepCollectionEquality().equals(other.key, key) &&
            const DeepCollectionEquality().equals(other.value, value) &&
            const DeepCollectionEquality()
                .equals(other.backgroundColor, backgroundColor) &&
            const DeepCollectionEquality().equals(other.color, color) &&
            const DeepCollectionEquality().equals(other.minHeight, minHeight) &&
            const DeepCollectionEquality()
                .equals(other.semanticsLabel, semanticsLabel) &&
            const DeepCollectionEquality()
                .equals(other.semanticsValue, semanticsValue));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(key),
      const DeepCollectionEquality().hash(value),
      const DeepCollectionEquality().hash(backgroundColor),
      const DeepCollectionEquality().hash(color),
      const DeepCollectionEquality().hash(minHeight),
      const DeepCollectionEquality().hash(semanticsLabel),
      const DeepCollectionEquality().hash(semanticsValue));

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
      {final FlutterKey? key,
      final ZacDouble? value,
      final FlutterColor? backgroundColor,
      final FlutterColor? color,
      final ZacDouble? minHeight,
      final ZacString? semanticsLabel,
      final ZacString? semanticsValue}) = _$_FlutterProgressIndicatorLinear;
  _FlutterProgressIndicatorLinear._() : super._();

  factory _FlutterProgressIndicatorLinear.fromJson(Map<String, dynamic> json) =
      _$_FlutterProgressIndicatorLinear.fromJson;

  @override
  FlutterKey? get key;
  @override
  ZacDouble? get value;
  @override
  FlutterColor? get backgroundColor;
  @override
  FlutterColor? get color; // Animation<Color?>? valueColor,
  ZacDouble? get minHeight;
  @override
  ZacString? get semanticsLabel;
  @override
  ZacString? get semanticsValue;
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
  final FlutterKey? key;
  @override
  final ZacDouble? value;
  @override
  final FlutterColor? backgroundColor;
  @override
  final FlutterColor? color;
// Animation<Color?>? valueColor,
  @override
  final ZacDouble? strokeWidth;
  @override
  final ZacString? semanticsLabel;
  @override
  final ZacString? semanticsValue;

  @JsonKey(name: '_converter')
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
            const DeepCollectionEquality().equals(other.key, key) &&
            const DeepCollectionEquality().equals(other.value, value) &&
            const DeepCollectionEquality()
                .equals(other.backgroundColor, backgroundColor) &&
            const DeepCollectionEquality().equals(other.color, color) &&
            const DeepCollectionEquality()
                .equals(other.strokeWidth, strokeWidth) &&
            const DeepCollectionEquality()
                .equals(other.semanticsLabel, semanticsLabel) &&
            const DeepCollectionEquality()
                .equals(other.semanticsValue, semanticsValue));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(key),
      const DeepCollectionEquality().hash(value),
      const DeepCollectionEquality().hash(backgroundColor),
      const DeepCollectionEquality().hash(color),
      const DeepCollectionEquality().hash(strokeWidth),
      const DeepCollectionEquality().hash(semanticsLabel),
      const DeepCollectionEquality().hash(semanticsValue));

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
      {final FlutterKey? key,
      final ZacDouble? value,
      final FlutterColor? backgroundColor,
      final FlutterColor? color,
      final ZacDouble? strokeWidth,
      final ZacString? semanticsLabel,
      final ZacString? semanticsValue}) = _$_FlutterProgressIndicatorCircular;
  _FlutterProgressIndicatorCircular._() : super._();

  factory _FlutterProgressIndicatorCircular.fromJson(
      Map<String, dynamic> json) = _$_FlutterProgressIndicatorCircular.fromJson;

  @override
  FlutterKey? get key;
  @override
  ZacDouble? get value;
  @override
  FlutterColor? get backgroundColor;
  @override
  FlutterColor? get color; // Animation<Color?>? valueColor,
  ZacDouble? get strokeWidth;
  @override
  ZacString? get semanticsLabel;
  @override
  ZacString? get semanticsValue;
}
