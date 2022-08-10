// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'transformers.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ConvertTransformer _$ConvertTransformerFromJson(Map<String, dynamic> json) {
  return _Convert.fromJson(json);
}

/// @nodoc
mixin _$ConvertTransformer {
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_Convert value) $default,
  ) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_Convert extends _Convert {
  _$_Convert() : super._();

  factory _$_Convert.fromJson(Map<String, dynamic> json) =>
      _$$_ConvertFromJson(json);

  @override
  String toString() {
    return 'ConvertTransformer()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Convert);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_Convert value) $default,
  ) {
    return $default(this);
  }
}

abstract class _Convert extends ConvertTransformer {
  factory _Convert() = _$_Convert;
  _Convert._() : super._();

  factory _Convert.fromJson(Map<String, dynamic> json) = _$_Convert.fromJson;
}

MapTransformer _$MapTransformerFromJson(Map<String, dynamic> json) {
  return _MapMapValues.fromJson(json);
}

/// @nodoc
mixin _$MapTransformer {
  List<SharedValueTransformer> get transformer =>
      throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_MapMapValues value) mapValues,
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_MapMapValues extends _MapMapValues {
  _$_MapMapValues({required final List<SharedValueTransformer> transformer})
      : _transformer = transformer,
        super._();

  factory _$_MapMapValues.fromJson(Map<String, dynamic> json) =>
      _$$_MapMapValuesFromJson(json);

  final List<SharedValueTransformer> _transformer;
  @override
  List<SharedValueTransformer> get transformer {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_transformer);
  }

  @override
  String toString() {
    return 'MapTransformer.mapValues(transformer: $transformer)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MapMapValues &&
            const DeepCollectionEquality()
                .equals(other._transformer, _transformer));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_transformer));

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_MapMapValues value) mapValues,
  }) {
    return mapValues(this);
  }
}

abstract class _MapMapValues extends MapTransformer {
  factory _MapMapValues(
          {required final List<SharedValueTransformer> transformer}) =
      _$_MapMapValues;
  _MapMapValues._() : super._();

  factory _MapMapValues.fromJson(Map<String, dynamic> json) =
      _$_MapMapValues.fromJson;

  @override
  List<SharedValueTransformer> get transformer;
}

ListTransformer _$ListTransformerFromJson(Map<String, dynamic> json) {
  return _ListMap.fromJson(json);
}

/// @nodoc
mixin _$ListTransformer {
  List<SharedValueTransformer> get transformer =>
      throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ListMap value) map,
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_ListMap extends _ListMap {
  _$_ListMap({required final List<SharedValueTransformer> transformer})
      : _transformer = transformer,
        super._();

  factory _$_ListMap.fromJson(Map<String, dynamic> json) =>
      _$$_ListMapFromJson(json);

  final List<SharedValueTransformer> _transformer;
  @override
  List<SharedValueTransformer> get transformer {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_transformer);
  }

  @override
  String toString() {
    return 'ListTransformer.map(transformer: $transformer)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ListMap &&
            const DeepCollectionEquality()
                .equals(other._transformer, _transformer));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_transformer));

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ListMap value) map,
  }) {
    return map(this);
  }
}

abstract class _ListMap extends ListTransformer {
  factory _ListMap({required final List<SharedValueTransformer> transformer}) =
      _$_ListMap;
  _ListMap._() : super._();

  factory _ListMap.fromJson(Map<String, dynamic> json) = _$_ListMap.fromJson;

  @override
  List<SharedValueTransformer> get transformer;
}
