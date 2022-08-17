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
  switch (json['_converter']) {
    case 'z:1:Transformer:List.map':
      return _ListMap.fromJson(json);
    case 'z:1:Transformer:List.single':
      return _ListSingle.fromJson(json);
    case 'z:1:Transformer:List.first':
      return _ListFirst.fromJson(json);
    case 'z:1:Transformer:List.last':
      return _ListLast.fromJson(json);
    case 'z:1:Transformer:List.length':
      return _ListLength.fromJson(json);

    default:
      throw CheckedFromJsonException(json, '_converter', 'ListTransformer',
          'Invalid union type "${json['_converter']}"!');
  }
}

/// @nodoc
mixin _$ListTransformer {
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ListMap value) map,
    required TResult Function(_ListSingle value) single,
    required TResult Function(_ListFirst value) first,
    required TResult Function(_ListLast value) last,
    required TResult Function(_ListLength value) length,
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_ListMap extends _ListMap {
  _$_ListMap(
      {required final List<SharedValueTransformer> transformer,
      final String? $type})
      : _transformer = transformer,
        $type = $type ?? 'z:1:Transformer:List.map',
        super._();

  factory _$_ListMap.fromJson(Map<String, dynamic> json) =>
      _$$_ListMapFromJson(json);

  final List<SharedValueTransformer> _transformer;
  @override
  List<SharedValueTransformer> get transformer {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_transformer);
  }

  @JsonKey(name: '_converter')
  final String $type;

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
    required TResult Function(_ListSingle value) single,
    required TResult Function(_ListFirst value) first,
    required TResult Function(_ListLast value) last,
    required TResult Function(_ListLength value) length,
  }) {
    return map(this);
  }
}

abstract class _ListMap extends ListTransformer {
  factory _ListMap({required final List<SharedValueTransformer> transformer}) =
      _$_ListMap;
  _ListMap._() : super._();

  factory _ListMap.fromJson(Map<String, dynamic> json) = _$_ListMap.fromJson;

  List<SharedValueTransformer> get transformer;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_ListSingle extends _ListSingle {
  _$_ListSingle({final String? $type})
      : $type = $type ?? 'z:1:Transformer:List.single',
        super._();

  factory _$_ListSingle.fromJson(Map<String, dynamic> json) =>
      _$$_ListSingleFromJson(json);

  @JsonKey(name: '_converter')
  final String $type;

  @override
  String toString() {
    return 'ListTransformer.single()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_ListSingle);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ListMap value) map,
    required TResult Function(_ListSingle value) single,
    required TResult Function(_ListFirst value) first,
    required TResult Function(_ListLast value) last,
    required TResult Function(_ListLength value) length,
  }) {
    return single(this);
  }
}

abstract class _ListSingle extends ListTransformer {
  factory _ListSingle() = _$_ListSingle;
  _ListSingle._() : super._();

  factory _ListSingle.fromJson(Map<String, dynamic> json) =
      _$_ListSingle.fromJson;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_ListFirst extends _ListFirst {
  _$_ListFirst({final String? $type})
      : $type = $type ?? 'z:1:Transformer:List.first',
        super._();

  factory _$_ListFirst.fromJson(Map<String, dynamic> json) =>
      _$$_ListFirstFromJson(json);

  @JsonKey(name: '_converter')
  final String $type;

  @override
  String toString() {
    return 'ListTransformer.first()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_ListFirst);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ListMap value) map,
    required TResult Function(_ListSingle value) single,
    required TResult Function(_ListFirst value) first,
    required TResult Function(_ListLast value) last,
    required TResult Function(_ListLength value) length,
  }) {
    return first(this);
  }
}

abstract class _ListFirst extends ListTransformer {
  factory _ListFirst() = _$_ListFirst;
  _ListFirst._() : super._();

  factory _ListFirst.fromJson(Map<String, dynamic> json) =
      _$_ListFirst.fromJson;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_ListLast extends _ListLast {
  _$_ListLast({final String? $type})
      : $type = $type ?? 'z:1:Transformer:List.last',
        super._();

  factory _$_ListLast.fromJson(Map<String, dynamic> json) =>
      _$$_ListLastFromJson(json);

  @JsonKey(name: '_converter')
  final String $type;

  @override
  String toString() {
    return 'ListTransformer.last()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_ListLast);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ListMap value) map,
    required TResult Function(_ListSingle value) single,
    required TResult Function(_ListFirst value) first,
    required TResult Function(_ListLast value) last,
    required TResult Function(_ListLength value) length,
  }) {
    return last(this);
  }
}

abstract class _ListLast extends ListTransformer {
  factory _ListLast() = _$_ListLast;
  _ListLast._() : super._();

  factory _ListLast.fromJson(Map<String, dynamic> json) = _$_ListLast.fromJson;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_ListLength extends _ListLength {
  _$_ListLength({final String? $type})
      : $type = $type ?? 'z:1:Transformer:List.length',
        super._();

  factory _$_ListLength.fromJson(Map<String, dynamic> json) =>
      _$$_ListLengthFromJson(json);

  @JsonKey(name: '_converter')
  final String $type;

  @override
  String toString() {
    return 'ListTransformer.length()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_ListLength);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ListMap value) map,
    required TResult Function(_ListSingle value) single,
    required TResult Function(_ListFirst value) first,
    required TResult Function(_ListLast value) last,
    required TResult Function(_ListLength value) length,
  }) {
    return length(this);
  }
}

abstract class _ListLength extends ListTransformer {
  factory _ListLength() = _$_ListLength;
  _ListLength._() : super._();

  factory _ListLength.fromJson(Map<String, dynamic> json) =
      _$_ListLength.fromJson;
}

ObjectTransformer _$ObjectTransformerFromJson(Map<String, dynamic> json) {
  switch (json['_converter']) {
    case 'z:1:Transformer:Object.isList':
      return _ObjectIsList.fromJson(json);
    case 'z:1:Transformer:Object.isMap':
      return _ObjectIsMap.fromJson(json);

    default:
      throw CheckedFromJsonException(json, '_converter', 'ObjectTransformer',
          'Invalid union type "${json['_converter']}"!');
  }
}

/// @nodoc
mixin _$ObjectTransformer {
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ObjectIsList value) isList,
    required TResult Function(_ObjectIsMap value) isMap,
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_ObjectIsList extends _ObjectIsList {
  _$_ObjectIsList({final String? $type})
      : $type = $type ?? 'z:1:Transformer:Object.isList',
        super._();

  factory _$_ObjectIsList.fromJson(Map<String, dynamic> json) =>
      _$$_ObjectIsListFromJson(json);

  @JsonKey(name: '_converter')
  final String $type;

  @override
  String toString() {
    return 'ObjectTransformer.isList()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_ObjectIsList);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ObjectIsList value) isList,
    required TResult Function(_ObjectIsMap value) isMap,
  }) {
    return isList(this);
  }
}

abstract class _ObjectIsList extends ObjectTransformer {
  factory _ObjectIsList() = _$_ObjectIsList;
  _ObjectIsList._() : super._();

  factory _ObjectIsList.fromJson(Map<String, dynamic> json) =
      _$_ObjectIsList.fromJson;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_ObjectIsMap extends _ObjectIsMap {
  _$_ObjectIsMap({final String? $type})
      : $type = $type ?? 'z:1:Transformer:Object.isMap',
        super._();

  factory _$_ObjectIsMap.fromJson(Map<String, dynamic> json) =>
      _$$_ObjectIsMapFromJson(json);

  @JsonKey(name: '_converter')
  final String $type;

  @override
  String toString() {
    return 'ObjectTransformer.isMap()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_ObjectIsMap);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ObjectIsList value) isList,
    required TResult Function(_ObjectIsMap value) isMap,
  }) {
    return isMap(this);
  }
}

abstract class _ObjectIsMap extends ObjectTransformer {
  factory _ObjectIsMap() = _$_ObjectIsMap;
  _ObjectIsMap._() : super._();

  factory _ObjectIsMap.fromJson(Map<String, dynamic> json) =
      _$_ObjectIsMap.fromJson;
}
