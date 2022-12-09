// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sliver_grid_delegate.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FlutterSliverGridDelegate _$FlutterSliverGridDelegateFromJson(
    Map<String, dynamic> json) {
  switch (json['converter']) {
    case 'f:1:SliverGridDelegateWithFixedCrossAxisCount':
      return _SliverGridDelegateWithFixedCrossAxisCount.fromJson(json);
    case 'f:1:SliverGridDelegateWithMaxCrossAxisExtent':
      return _SliverGridDelegateWithMaxCrossAxisExtent.fromJson(json);

    default:
      throw CheckedFromJsonException(
          json,
          'converter',
          'FlutterSliverGridDelegate',
          'Invalid union type "${json['converter']}"!');
  }
}

/// @nodoc
mixin _$FlutterSliverGridDelegate {
  ZacValue<double>? get mainAxisSpacing => throw _privateConstructorUsedError;
  ZacValue<double>? get crossAxisSpacing => throw _privateConstructorUsedError;
  ZacValue<double>? get childAspectRatio => throw _privateConstructorUsedError;
  ZacValue<double>? get mainAxisExtent => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SliverGridDelegateWithFixedCrossAxisCount value)
        withFixedCrossAxisCount,
    required TResult Function(_SliverGridDelegateWithMaxCrossAxisExtent value)
        withMaxCrossAxisExtent,
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_SliverGridDelegateWithFixedCrossAxisCount
    extends _SliverGridDelegateWithFixedCrossAxisCount {
  _$_SliverGridDelegateWithFixedCrossAxisCount(
      {required this.crossAxisCount,
      this.mainAxisSpacing,
      this.crossAxisSpacing,
      this.childAspectRatio,
      this.mainAxisExtent,
      final String? $type})
      : $type = $type ?? 'f:1:SliverGridDelegateWithFixedCrossAxisCount',
        super._();

  factory _$_SliverGridDelegateWithFixedCrossAxisCount.fromJson(
          Map<String, dynamic> json) =>
      _$$_SliverGridDelegateWithFixedCrossAxisCountFromJson(json);

  @override
  final int crossAxisCount;
  @override
  final ZacValue<double>? mainAxisSpacing;
  @override
  final ZacValue<double>? crossAxisSpacing;
  @override
  final ZacValue<double>? childAspectRatio;
  @override
  final ZacValue<double>? mainAxisExtent;

  @JsonKey(name: 'converter')
  final String $type;

  @override
  String toString() {
    return 'FlutterSliverGridDelegate.withFixedCrossAxisCount(crossAxisCount: $crossAxisCount, mainAxisSpacing: $mainAxisSpacing, crossAxisSpacing: $crossAxisSpacing, childAspectRatio: $childAspectRatio, mainAxisExtent: $mainAxisExtent)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SliverGridDelegateWithFixedCrossAxisCount &&
            (identical(other.crossAxisCount, crossAxisCount) ||
                other.crossAxisCount == crossAxisCount) &&
            (identical(other.mainAxisSpacing, mainAxisSpacing) ||
                other.mainAxisSpacing == mainAxisSpacing) &&
            (identical(other.crossAxisSpacing, crossAxisSpacing) ||
                other.crossAxisSpacing == crossAxisSpacing) &&
            (identical(other.childAspectRatio, childAspectRatio) ||
                other.childAspectRatio == childAspectRatio) &&
            (identical(other.mainAxisExtent, mainAxisExtent) ||
                other.mainAxisExtent == mainAxisExtent));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, crossAxisCount, mainAxisSpacing,
      crossAxisSpacing, childAspectRatio, mainAxisExtent);

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SliverGridDelegateWithFixedCrossAxisCount value)
        withFixedCrossAxisCount,
    required TResult Function(_SliverGridDelegateWithMaxCrossAxisExtent value)
        withMaxCrossAxisExtent,
  }) {
    return withFixedCrossAxisCount(this);
  }
}

abstract class _SliverGridDelegateWithFixedCrossAxisCount
    extends FlutterSliverGridDelegate {
  factory _SliverGridDelegateWithFixedCrossAxisCount(
          {required final int crossAxisCount,
          final ZacValue<double>? mainAxisSpacing,
          final ZacValue<double>? crossAxisSpacing,
          final ZacValue<double>? childAspectRatio,
          final ZacValue<double>? mainAxisExtent}) =
      _$_SliverGridDelegateWithFixedCrossAxisCount;
  _SliverGridDelegateWithFixedCrossAxisCount._() : super._();

  factory _SliverGridDelegateWithFixedCrossAxisCount.fromJson(
          Map<String, dynamic> json) =
      _$_SliverGridDelegateWithFixedCrossAxisCount.fromJson;

  int get crossAxisCount;
  @override
  ZacValue<double>? get mainAxisSpacing;
  @override
  ZacValue<double>? get crossAxisSpacing;
  @override
  ZacValue<double>? get childAspectRatio;
  @override
  ZacValue<double>? get mainAxisExtent;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_SliverGridDelegateWithMaxCrossAxisExtent
    extends _SliverGridDelegateWithMaxCrossAxisExtent {
  _$_SliverGridDelegateWithMaxCrossAxisExtent(
      {required this.maxCrossAxisExtent,
      this.mainAxisSpacing,
      this.crossAxisSpacing,
      this.childAspectRatio,
      this.mainAxisExtent,
      final String? $type})
      : $type = $type ?? 'f:1:SliverGridDelegateWithMaxCrossAxisExtent',
        super._();

  factory _$_SliverGridDelegateWithMaxCrossAxisExtent.fromJson(
          Map<String, dynamic> json) =>
      _$$_SliverGridDelegateWithMaxCrossAxisExtentFromJson(json);

  @override
  final ZacValue<double> maxCrossAxisExtent;
  @override
  final ZacValue<double>? mainAxisSpacing;
  @override
  final ZacValue<double>? crossAxisSpacing;
  @override
  final ZacValue<double>? childAspectRatio;
  @override
  final ZacValue<double>? mainAxisExtent;

  @JsonKey(name: 'converter')
  final String $type;

  @override
  String toString() {
    return 'FlutterSliverGridDelegate.withMaxCrossAxisExtent(maxCrossAxisExtent: $maxCrossAxisExtent, mainAxisSpacing: $mainAxisSpacing, crossAxisSpacing: $crossAxisSpacing, childAspectRatio: $childAspectRatio, mainAxisExtent: $mainAxisExtent)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SliverGridDelegateWithMaxCrossAxisExtent &&
            (identical(other.maxCrossAxisExtent, maxCrossAxisExtent) ||
                other.maxCrossAxisExtent == maxCrossAxisExtent) &&
            (identical(other.mainAxisSpacing, mainAxisSpacing) ||
                other.mainAxisSpacing == mainAxisSpacing) &&
            (identical(other.crossAxisSpacing, crossAxisSpacing) ||
                other.crossAxisSpacing == crossAxisSpacing) &&
            (identical(other.childAspectRatio, childAspectRatio) ||
                other.childAspectRatio == childAspectRatio) &&
            (identical(other.mainAxisExtent, mainAxisExtent) ||
                other.mainAxisExtent == mainAxisExtent));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, maxCrossAxisExtent,
      mainAxisSpacing, crossAxisSpacing, childAspectRatio, mainAxisExtent);

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SliverGridDelegateWithFixedCrossAxisCount value)
        withFixedCrossAxisCount,
    required TResult Function(_SliverGridDelegateWithMaxCrossAxisExtent value)
        withMaxCrossAxisExtent,
  }) {
    return withMaxCrossAxisExtent(this);
  }
}

abstract class _SliverGridDelegateWithMaxCrossAxisExtent
    extends FlutterSliverGridDelegate {
  factory _SliverGridDelegateWithMaxCrossAxisExtent(
          {required final ZacValue<double> maxCrossAxisExtent,
          final ZacValue<double>? mainAxisSpacing,
          final ZacValue<double>? crossAxisSpacing,
          final ZacValue<double>? childAspectRatio,
          final ZacValue<double>? mainAxisExtent}) =
      _$_SliverGridDelegateWithMaxCrossAxisExtent;
  _SliverGridDelegateWithMaxCrossAxisExtent._() : super._();

  factory _SliverGridDelegateWithMaxCrossAxisExtent.fromJson(
          Map<String, dynamic> json) =
      _$_SliverGridDelegateWithMaxCrossAxisExtent.fromJson;

  ZacValue<double> get maxCrossAxisExtent;
  @override
  ZacValue<double>? get mainAxisSpacing;
  @override
  ZacValue<double>? get crossAxisSpacing;
  @override
  ZacValue<double>? get childAspectRatio;
  @override
  ZacValue<double>? get mainAxisExtent;
}
