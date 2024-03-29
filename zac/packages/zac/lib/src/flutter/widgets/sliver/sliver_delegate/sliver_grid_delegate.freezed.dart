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
  switch (json['builder']) {
    case 'f:1:SliverGridDelegateWithFixedCrossAxisCount':
      return _SliverGridDelegateWithFixedCrossAxisCount.fromJson(json);
    case 'f:1:SliverGridDelegateWithMaxCrossAxisExtent':
      return _SliverGridDelegateWithMaxCrossAxisExtent.fromJson(json);

    default:
      throw CheckedFromJsonException(
          json,
          'builder',
          'FlutterSliverGridDelegate',
          'Invalid union type "${json['builder']}"!');
  }
}

/// @nodoc
mixin _$FlutterSliverGridDelegate {
  ZacBuilder<double?>? get mainAxisSpacing =>
      throw _privateConstructorUsedError;
  ZacBuilder<double?>? get crossAxisSpacing =>
      throw _privateConstructorUsedError;
  ZacBuilder<double?>? get childAspectRatio =>
      throw _privateConstructorUsedError;
  ZacBuilder<double?>? get mainAxisExtent => throw _privateConstructorUsedError;

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
  final ZacBuilder<double?>? mainAxisSpacing;
  @override
  final ZacBuilder<double?>? crossAxisSpacing;
  @override
  final ZacBuilder<double?>? childAspectRatio;
  @override
  final ZacBuilder<double?>? mainAxisExtent;

  @JsonKey(name: 'builder')
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
          final ZacBuilder<double?>? mainAxisSpacing,
          final ZacBuilder<double?>? crossAxisSpacing,
          final ZacBuilder<double?>? childAspectRatio,
          final ZacBuilder<double?>? mainAxisExtent}) =
      _$_SliverGridDelegateWithFixedCrossAxisCount;
  _SliverGridDelegateWithFixedCrossAxisCount._() : super._();

  factory _SliverGridDelegateWithFixedCrossAxisCount.fromJson(
          Map<String, dynamic> json) =
      _$_SliverGridDelegateWithFixedCrossAxisCount.fromJson;

  int get crossAxisCount;
  @override
  ZacBuilder<double?>? get mainAxisSpacing;
  @override
  ZacBuilder<double?>? get crossAxisSpacing;
  @override
  ZacBuilder<double?>? get childAspectRatio;
  @override
  ZacBuilder<double?>? get mainAxisExtent;
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
  final ZacBuilder<double> maxCrossAxisExtent;
  @override
  final ZacBuilder<double?>? mainAxisSpacing;
  @override
  final ZacBuilder<double?>? crossAxisSpacing;
  @override
  final ZacBuilder<double?>? childAspectRatio;
  @override
  final ZacBuilder<double?>? mainAxisExtent;

  @JsonKey(name: 'builder')
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
          {required final ZacBuilder<double> maxCrossAxisExtent,
          final ZacBuilder<double?>? mainAxisSpacing,
          final ZacBuilder<double?>? crossAxisSpacing,
          final ZacBuilder<double?>? childAspectRatio,
          final ZacBuilder<double?>? mainAxisExtent}) =
      _$_SliverGridDelegateWithMaxCrossAxisExtent;
  _SliverGridDelegateWithMaxCrossAxisExtent._() : super._();

  factory _SliverGridDelegateWithMaxCrossAxisExtent.fromJson(
          Map<String, dynamic> json) =
      _$_SliverGridDelegateWithMaxCrossAxisExtent.fromJson;

  ZacBuilder<double> get maxCrossAxisExtent;
  @override
  ZacBuilder<double?>? get mainAxisSpacing;
  @override
  ZacBuilder<double?>? get crossAxisSpacing;
  @override
  ZacBuilder<double?>? get childAspectRatio;
  @override
  ZacBuilder<double?>? get mainAxisExtent;
}
