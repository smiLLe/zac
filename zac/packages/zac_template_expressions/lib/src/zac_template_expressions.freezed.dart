// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'zac_template_expressions.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ZacTemplateExpressionsTransformer _$ZacTemplateExpressionsTransformerFromJson(
    Map<String, dynamic> json) {
  return _ZacTemplateExpressionsTransformer.fromJson(json);
}

/// @nodoc
mixin _$ZacTemplateExpressionsTransformer {
  String get expression => throw _privateConstructorUsedError;
  Map<String, ZacValueRead<Object>>? get context =>
      throw _privateConstructorUsedError;
  ZacTemplateExpressionsSyntax get syntax => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_ZacTemplateExpressionsTransformer value) $default,
  ) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_ZacTemplateExpressionsTransformer
    extends _ZacTemplateExpressionsTransformer {
  _$_ZacTemplateExpressionsTransformer(
      {required this.expression,
      final Map<String, ZacValueRead<Object>>? context,
      this.syntax = const ZacTemplateExpressionsSyntax()})
      : _context = context,
        super._();

  factory _$_ZacTemplateExpressionsTransformer.fromJson(
          Map<String, dynamic> json) =>
      _$$_ZacTemplateExpressionsTransformerFromJson(json);

  @override
  final String expression;
  final Map<String, ZacValueRead<Object>>? _context;
  @override
  Map<String, ZacValueRead<Object>>? get context {
    final value = _context;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  @JsonKey()
  final ZacTemplateExpressionsSyntax syntax;

  @override
  String toString() {
    return 'ZacTemplateExpressionsTransformer(expression: $expression, context: $context, syntax: $syntax)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ZacTemplateExpressionsTransformer &&
            (identical(other.expression, expression) ||
                other.expression == expression) &&
            const DeepCollectionEquality().equals(other._context, _context) &&
            (identical(other.syntax, syntax) || other.syntax == syntax));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, expression,
      const DeepCollectionEquality().hash(_context), syntax);

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_ZacTemplateExpressionsTransformer value) $default,
  ) {
    return $default(this);
  }
}

abstract class _ZacTemplateExpressionsTransformer
    extends ZacTemplateExpressionsTransformer {
  factory _ZacTemplateExpressionsTransformer(
          {required final String expression,
          final Map<String, ZacValueRead<Object>>? context,
          final ZacTemplateExpressionsSyntax syntax}) =
      _$_ZacTemplateExpressionsTransformer;
  _ZacTemplateExpressionsTransformer._() : super._();

  factory _ZacTemplateExpressionsTransformer.fromJson(
          Map<String, dynamic> json) =
      _$_ZacTemplateExpressionsTransformer.fromJson;

  @override
  String get expression;
  @override
  Map<String, ZacValueRead<Object>>? get context;
  @override
  ZacTemplateExpressionsSyntax get syntax;
}

ZacTemplateExpressionsSyntax _$ZacTemplateExpressionsSyntaxFromJson(
    Map<String, dynamic> json) {
  return _ZacTemplateExpressionsSyntaxStandard.fromJson(json);
}

/// @nodoc
mixin _$ZacTemplateExpressionsSyntax {
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_ZacTemplateExpressionsSyntaxStandard value) $default,
  ) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_ZacTemplateExpressionsSyntaxStandard
    extends _ZacTemplateExpressionsSyntaxStandard {
  const _$_ZacTemplateExpressionsSyntaxStandard() : super._();

  factory _$_ZacTemplateExpressionsSyntaxStandard.fromJson(
          Map<String, dynamic> json) =>
      _$$_ZacTemplateExpressionsSyntaxStandardFromJson(json);

  @override
  String toString() {
    return 'ZacTemplateExpressionsSyntax()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ZacTemplateExpressionsSyntaxStandard);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_ZacTemplateExpressionsSyntaxStandard value) $default,
  ) {
    return $default(this);
  }
}

abstract class _ZacTemplateExpressionsSyntaxStandard
    extends ZacTemplateExpressionsSyntax {
  const factory _ZacTemplateExpressionsSyntaxStandard() =
      _$_ZacTemplateExpressionsSyntaxStandard;
  const _ZacTemplateExpressionsSyntaxStandard._() : super._();

  factory _ZacTemplateExpressionsSyntaxStandard.fromJson(
          Map<String, dynamic> json) =
      _$_ZacTemplateExpressionsSyntaxStandard.fromJson;
}
