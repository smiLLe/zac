// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

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
  ZacDouble? get mainAxisSpacing => throw _privateConstructorUsedError;
  ZacDouble? get crossAxisSpacing => throw _privateConstructorUsedError;
  ZacDouble? get childAspectRatio => throw _privateConstructorUsedError;
  ZacDouble? get mainAxisExtent => throw _privateConstructorUsedError;

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
  final ZacDouble? mainAxisSpacing;
  @override
  final ZacDouble? crossAxisSpacing;
  @override
  final ZacDouble? childAspectRatio;
  @override
  final ZacDouble? mainAxisExtent;

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
            const DeepCollectionEquality()
                .equals(other.crossAxisCount, crossAxisCount) &&
            const DeepCollectionEquality()
                .equals(other.mainAxisSpacing, mainAxisSpacing) &&
            const DeepCollectionEquality()
                .equals(other.crossAxisSpacing, crossAxisSpacing) &&
            const DeepCollectionEquality()
                .equals(other.childAspectRatio, childAspectRatio) &&
            const DeepCollectionEquality()
                .equals(other.mainAxisExtent, mainAxisExtent));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(crossAxisCount),
      const DeepCollectionEquality().hash(mainAxisSpacing),
      const DeepCollectionEquality().hash(crossAxisSpacing),
      const DeepCollectionEquality().hash(childAspectRatio),
      const DeepCollectionEquality().hash(mainAxisExtent));

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
          final ZacDouble? mainAxisSpacing,
          final ZacDouble? crossAxisSpacing,
          final ZacDouble? childAspectRatio,
          final ZacDouble? mainAxisExtent}) =
      _$_SliverGridDelegateWithFixedCrossAxisCount;
  _SliverGridDelegateWithFixedCrossAxisCount._() : super._();

  factory _SliverGridDelegateWithFixedCrossAxisCount.fromJson(
          Map<String, dynamic> json) =
      _$_SliverGridDelegateWithFixedCrossAxisCount.fromJson;

  int get crossAxisCount;
  @override
  ZacDouble? get mainAxisSpacing;
  @override
  ZacDouble? get crossAxisSpacing;
  @override
  ZacDouble? get childAspectRatio;
  @override
  ZacDouble? get mainAxisExtent;
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
  final ZacDouble maxCrossAxisExtent;
  @override
  final ZacDouble? mainAxisSpacing;
  @override
  final ZacDouble? crossAxisSpacing;
  @override
  final ZacDouble? childAspectRatio;
  @override
  final ZacDouble? mainAxisExtent;

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
            const DeepCollectionEquality()
                .equals(other.maxCrossAxisExtent, maxCrossAxisExtent) &&
            const DeepCollectionEquality()
                .equals(other.mainAxisSpacing, mainAxisSpacing) &&
            const DeepCollectionEquality()
                .equals(other.crossAxisSpacing, crossAxisSpacing) &&
            const DeepCollectionEquality()
                .equals(other.childAspectRatio, childAspectRatio) &&
            const DeepCollectionEquality()
                .equals(other.mainAxisExtent, mainAxisExtent));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(maxCrossAxisExtent),
      const DeepCollectionEquality().hash(mainAxisSpacing),
      const DeepCollectionEquality().hash(crossAxisSpacing),
      const DeepCollectionEquality().hash(childAspectRatio),
      const DeepCollectionEquality().hash(mainAxisExtent));

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
          {required final ZacDouble maxCrossAxisExtent,
          final ZacDouble? mainAxisSpacing,
          final ZacDouble? crossAxisSpacing,
          final ZacDouble? childAspectRatio,
          final ZacDouble? mainAxisExtent}) =
      _$_SliverGridDelegateWithMaxCrossAxisExtent;
  _SliverGridDelegateWithMaxCrossAxisExtent._() : super._();

  factory _SliverGridDelegateWithMaxCrossAxisExtent.fromJson(
          Map<String, dynamic> json) =
      _$_SliverGridDelegateWithMaxCrossAxisExtent.fromJson;

  ZacDouble get maxCrossAxisExtent;
  @override
  ZacDouble? get mainAxisSpacing;
  @override
  ZacDouble? get crossAxisSpacing;
  @override
  ZacDouble? get childAspectRatio;
  @override
  ZacDouble? get mainAxisExtent;
}
