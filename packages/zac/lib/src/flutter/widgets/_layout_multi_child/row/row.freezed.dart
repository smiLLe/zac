// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'row.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FlutterRow _$FlutterRowFromJson(Map<String, dynamic> json) {
  return _FlutterRow.fromJson(json);
}

/// @nodoc
mixin _$FlutterRow {
  FlutterKey? get key => throw _privateConstructorUsedError;
  FlutterMainAxisAlignment? get mainAxisAlignment =>
      throw _privateConstructorUsedError;
  FlutterMainAxisSize? get mainAxisSize => throw _privateConstructorUsedError;
  FlutterCrossAxisAlignment? get crossAxisAlignment =>
      throw _privateConstructorUsedError;
  FlutterTextDirection? get textDirection => throw _privateConstructorUsedError;
  FlutterVerticalDirection? get verticalDirection =>
      throw _privateConstructorUsedError;
  FlutterTextBaseline? get textBaseline => throw _privateConstructorUsedError;
  ListOfZacWidget? get children => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_FlutterRow value) $default,
  ) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_FlutterRow extends _FlutterRow {
  _$_FlutterRow(
      {this.key,
      this.mainAxisAlignment,
      this.mainAxisSize,
      this.crossAxisAlignment,
      this.textDirection,
      this.verticalDirection,
      this.textBaseline,
      this.children})
      : super._();

  factory _$_FlutterRow.fromJson(Map<String, dynamic> json) =>
      _$$_FlutterRowFromJson(json);

  @override
  final FlutterKey? key;
  @override
  final FlutterMainAxisAlignment? mainAxisAlignment;
  @override
  final FlutterMainAxisSize? mainAxisSize;
  @override
  final FlutterCrossAxisAlignment? crossAxisAlignment;
  @override
  final FlutterTextDirection? textDirection;
  @override
  final FlutterVerticalDirection? verticalDirection;
  @override
  final FlutterTextBaseline? textBaseline;
  @override
  final ListOfZacWidget? children;

  @override
  String toString() {
    return 'FlutterRow(key: $key, mainAxisAlignment: $mainAxisAlignment, mainAxisSize: $mainAxisSize, crossAxisAlignment: $crossAxisAlignment, textDirection: $textDirection, verticalDirection: $verticalDirection, textBaseline: $textBaseline, children: $children)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FlutterRow &&
            const DeepCollectionEquality().equals(other.key, key) &&
            const DeepCollectionEquality()
                .equals(other.mainAxisAlignment, mainAxisAlignment) &&
            const DeepCollectionEquality()
                .equals(other.mainAxisSize, mainAxisSize) &&
            const DeepCollectionEquality()
                .equals(other.crossAxisAlignment, crossAxisAlignment) &&
            const DeepCollectionEquality()
                .equals(other.textDirection, textDirection) &&
            const DeepCollectionEquality()
                .equals(other.verticalDirection, verticalDirection) &&
            const DeepCollectionEquality()
                .equals(other.textBaseline, textBaseline) &&
            const DeepCollectionEquality().equals(other.children, children));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(key),
      const DeepCollectionEquality().hash(mainAxisAlignment),
      const DeepCollectionEquality().hash(mainAxisSize),
      const DeepCollectionEquality().hash(crossAxisAlignment),
      const DeepCollectionEquality().hash(textDirection),
      const DeepCollectionEquality().hash(verticalDirection),
      const DeepCollectionEquality().hash(textBaseline),
      const DeepCollectionEquality().hash(children));

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_FlutterRow value) $default,
  ) {
    return $default(this);
  }
}

abstract class _FlutterRow extends FlutterRow {
  factory _FlutterRow(
      {final FlutterKey? key,
      final FlutterMainAxisAlignment? mainAxisAlignment,
      final FlutterMainAxisSize? mainAxisSize,
      final FlutterCrossAxisAlignment? crossAxisAlignment,
      final FlutterTextDirection? textDirection,
      final FlutterVerticalDirection? verticalDirection,
      final FlutterTextBaseline? textBaseline,
      final ListOfZacWidget? children}) = _$_FlutterRow;
  _FlutterRow._() : super._();

  factory _FlutterRow.fromJson(Map<String, dynamic> json) =
      _$_FlutterRow.fromJson;

  @override
  FlutterKey? get key;
  @override
  FlutterMainAxisAlignment? get mainAxisAlignment;
  @override
  FlutterMainAxisSize? get mainAxisSize;
  @override
  FlutterCrossAxisAlignment? get crossAxisAlignment;
  @override
  FlutterTextDirection? get textDirection;
  @override
  FlutterVerticalDirection? get verticalDirection;
  @override
  FlutterTextBaseline? get textBaseline;
  @override
  ListOfZacWidget? get children;
}