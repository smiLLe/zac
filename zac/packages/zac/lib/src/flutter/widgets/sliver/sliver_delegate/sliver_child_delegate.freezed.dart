// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sliver_child_delegate.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FlutterSliverChildDelegate _$FlutterSliverChildDelegateFromJson(
    Map<String, dynamic> json) {
  switch (json['builder']) {
    case 'f:1:SliverChildListDelegate':
      return _FlutterSliverChildListDelegate.fromJson(json);
    case 'f:1:SliverChildListDelegate.fixed':
      return _FlutterSliverChildListDelegateFixed.fromJson(json);

    default:
      throw CheckedFromJsonException(
          json,
          'builder',
          'FlutterSliverChildDelegate',
          'Invalid union type "${json['builder']}"!');
  }
}

/// @nodoc
mixin _$FlutterSliverChildDelegate {
  ZacBuilder<List<Widget>> get children => throw _privateConstructorUsedError;
  ZacBuilder<bool?>? get addAutomaticKeepAlives =>
      throw _privateConstructorUsedError;
  ZacBuilder<bool?>? get addRepaintBoundaries =>
      throw _privateConstructorUsedError;
  ZacBuilder<bool?>? get addSemanticIndexes =>
      throw _privateConstructorUsedError; // SemanticIndexCallback semanticIndexCallback = _kDefaultSemanticIndexCallback,
  ZacBuilder<int?>? get semanticIndexOffset =>
      throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FlutterSliverChildListDelegate value) list,
    required TResult Function(_FlutterSliverChildListDelegateFixed value)
        listFixed,
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_FlutterSliverChildListDelegate
    extends _FlutterSliverChildListDelegate {
  _$_FlutterSliverChildListDelegate(this.children,
      {this.addAutomaticKeepAlives,
      this.addRepaintBoundaries,
      this.addSemanticIndexes,
      this.semanticIndexOffset,
      final String? $type})
      : $type = $type ?? 'f:1:SliverChildListDelegate',
        super._();

  factory _$_FlutterSliverChildListDelegate.fromJson(
          Map<String, dynamic> json) =>
      _$$_FlutterSliverChildListDelegateFromJson(json);

  @override
  final ZacBuilder<List<Widget>> children;
  @override
  final ZacBuilder<bool?>? addAutomaticKeepAlives;
  @override
  final ZacBuilder<bool?>? addRepaintBoundaries;
  @override
  final ZacBuilder<bool?>? addSemanticIndexes;
// SemanticIndexCallback semanticIndexCallback = _kDefaultSemanticIndexCallback,
  @override
  final ZacBuilder<int?>? semanticIndexOffset;

  @JsonKey(name: 'builder')
  final String $type;

  @override
  String toString() {
    return 'FlutterSliverChildDelegate.list(children: $children, addAutomaticKeepAlives: $addAutomaticKeepAlives, addRepaintBoundaries: $addRepaintBoundaries, addSemanticIndexes: $addSemanticIndexes, semanticIndexOffset: $semanticIndexOffset)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FlutterSliverChildListDelegate &&
            (identical(other.children, children) ||
                other.children == children) &&
            (identical(other.addAutomaticKeepAlives, addAutomaticKeepAlives) ||
                other.addAutomaticKeepAlives == addAutomaticKeepAlives) &&
            (identical(other.addRepaintBoundaries, addRepaintBoundaries) ||
                other.addRepaintBoundaries == addRepaintBoundaries) &&
            (identical(other.addSemanticIndexes, addSemanticIndexes) ||
                other.addSemanticIndexes == addSemanticIndexes) &&
            (identical(other.semanticIndexOffset, semanticIndexOffset) ||
                other.semanticIndexOffset == semanticIndexOffset));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, children, addAutomaticKeepAlives,
      addRepaintBoundaries, addSemanticIndexes, semanticIndexOffset);

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FlutterSliverChildListDelegate value) list,
    required TResult Function(_FlutterSliverChildListDelegateFixed value)
        listFixed,
  }) {
    return list(this);
  }
}

abstract class _FlutterSliverChildListDelegate
    extends FlutterSliverChildDelegate {
  factory _FlutterSliverChildListDelegate(
          final ZacBuilder<List<Widget>> children,
          {final ZacBuilder<bool?>? addAutomaticKeepAlives,
          final ZacBuilder<bool?>? addRepaintBoundaries,
          final ZacBuilder<bool?>? addSemanticIndexes,
          final ZacBuilder<int?>? semanticIndexOffset}) =
      _$_FlutterSliverChildListDelegate;
  _FlutterSliverChildListDelegate._() : super._();

  factory _FlutterSliverChildListDelegate.fromJson(Map<String, dynamic> json) =
      _$_FlutterSliverChildListDelegate.fromJson;

  @override
  ZacBuilder<List<Widget>> get children;
  @override
  ZacBuilder<bool?>? get addAutomaticKeepAlives;
  @override
  ZacBuilder<bool?>? get addRepaintBoundaries;
  @override
  ZacBuilder<bool?>? get addSemanticIndexes;
  @override // SemanticIndexCallback semanticIndexCallback = _kDefaultSemanticIndexCallback,
  ZacBuilder<int?>? get semanticIndexOffset;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_FlutterSliverChildListDelegateFixed
    extends _FlutterSliverChildListDelegateFixed {
  _$_FlutterSliverChildListDelegateFixed(this.children,
      {this.addAutomaticKeepAlives,
      this.addRepaintBoundaries,
      this.addSemanticIndexes,
      this.semanticIndexOffset,
      final String? $type})
      : $type = $type ?? 'f:1:SliverChildListDelegate.fixed',
        super._();

  factory _$_FlutterSliverChildListDelegateFixed.fromJson(
          Map<String, dynamic> json) =>
      _$$_FlutterSliverChildListDelegateFixedFromJson(json);

  @override
  final ZacBuilder<List<Widget>> children;
  @override
  final ZacBuilder<bool?>? addAutomaticKeepAlives;
  @override
  final ZacBuilder<bool?>? addRepaintBoundaries;
  @override
  final ZacBuilder<bool?>? addSemanticIndexes;
// SemanticIndexCallback semanticIndexCallback = _kDefaultSemanticIndexCallback,
  @override
  final ZacBuilder<int?>? semanticIndexOffset;

  @JsonKey(name: 'builder')
  final String $type;

  @override
  String toString() {
    return 'FlutterSliverChildDelegate.listFixed(children: $children, addAutomaticKeepAlives: $addAutomaticKeepAlives, addRepaintBoundaries: $addRepaintBoundaries, addSemanticIndexes: $addSemanticIndexes, semanticIndexOffset: $semanticIndexOffset)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FlutterSliverChildListDelegateFixed &&
            (identical(other.children, children) ||
                other.children == children) &&
            (identical(other.addAutomaticKeepAlives, addAutomaticKeepAlives) ||
                other.addAutomaticKeepAlives == addAutomaticKeepAlives) &&
            (identical(other.addRepaintBoundaries, addRepaintBoundaries) ||
                other.addRepaintBoundaries == addRepaintBoundaries) &&
            (identical(other.addSemanticIndexes, addSemanticIndexes) ||
                other.addSemanticIndexes == addSemanticIndexes) &&
            (identical(other.semanticIndexOffset, semanticIndexOffset) ||
                other.semanticIndexOffset == semanticIndexOffset));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, children, addAutomaticKeepAlives,
      addRepaintBoundaries, addSemanticIndexes, semanticIndexOffset);

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FlutterSliverChildListDelegate value) list,
    required TResult Function(_FlutterSliverChildListDelegateFixed value)
        listFixed,
  }) {
    return listFixed(this);
  }
}

abstract class _FlutterSliverChildListDelegateFixed
    extends FlutterSliverChildDelegate {
  factory _FlutterSliverChildListDelegateFixed(
          final ZacBuilder<List<Widget>> children,
          {final ZacBuilder<bool?>? addAutomaticKeepAlives,
          final ZacBuilder<bool?>? addRepaintBoundaries,
          final ZacBuilder<bool?>? addSemanticIndexes,
          final ZacBuilder<int?>? semanticIndexOffset}) =
      _$_FlutterSliverChildListDelegateFixed;
  _FlutterSliverChildListDelegateFixed._() : super._();

  factory _FlutterSliverChildListDelegateFixed.fromJson(
          Map<String, dynamic> json) =
      _$_FlutterSliverChildListDelegateFixed.fromJson;

  @override
  ZacBuilder<List<Widget>> get children;
  @override
  ZacBuilder<bool?>? get addAutomaticKeepAlives;
  @override
  ZacBuilder<bool?>? get addRepaintBoundaries;
  @override
  ZacBuilder<bool?>? get addSemanticIndexes;
  @override // SemanticIndexCallback semanticIndexCallback = _kDefaultSemanticIndexCallback,
  ZacBuilder<int?>? get semanticIndexOffset;
}
