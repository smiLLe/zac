// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'dropdown.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FlutterDropdownButton _$FlutterDropdownButtonFromJson(
    Map<String, dynamic> json) {
  return _FlutterDropdownButton.fromJson(json);
}

/// @nodoc
mixin _$FlutterDropdownButton {
  ZacBuilder<Key?>? get key => throw _privateConstructorUsedError;
  List<FlutterDropdownMenuItem> get items =>
      throw _privateConstructorUsedError; // ZacBuilder<DropdownButtonBuilder>? selectedItemBuilder,
  ZacBuilder<Object?>? get value => throw _privateConstructorUsedError;
  ZacBuilder<Widget?>? get hint => throw _privateConstructorUsedError;
  ZacBuilder<Widget?>? get disabledHint => throw _privateConstructorUsedError;
  ZacBuilder<List<ZacAction>> get onChanged =>
      throw _privateConstructorUsedError;
  ZacBuilder<List<ZacAction>?>? get onTap => throw _privateConstructorUsedError;
  ZacBuilder<int?>? get elevation => throw _privateConstructorUsedError;
  ZacBuilder<TextStyle?>? get style => throw _privateConstructorUsedError;
  ZacBuilder<Widget?>? get underline => throw _privateConstructorUsedError;
  ZacBuilder<Widget?>? get icon => throw _privateConstructorUsedError;
  ZacBuilder<Color?>? get iconDisabledColor =>
      throw _privateConstructorUsedError;
  ZacBuilder<Color?>? get iconEnabledColor =>
      throw _privateConstructorUsedError;
  ZacBuilder<double?>? get iconSize => throw _privateConstructorUsedError;
  ZacBuilder<bool?>? get isDense => throw _privateConstructorUsedError;
  ZacBuilder<bool?>? get isExpanded => throw _privateConstructorUsedError;
  ZacBuilder<double?>? get itemHeight => throw _privateConstructorUsedError;
  ZacBuilder<Color?>? get focusColor => throw _privateConstructorUsedError;
  ZacBuilder<FocusNode?>? get focusNode => throw _privateConstructorUsedError;
  ZacBuilder<bool?>? get autofocus => throw _privateConstructorUsedError;
  ZacBuilder<Color?>? get dropdownColor => throw _privateConstructorUsedError;
  ZacBuilder<double?>? get menuMaxHeight => throw _privateConstructorUsedError;
  ZacBuilder<bool?>? get enableFeedback => throw _privateConstructorUsedError;
  ZacBuilder<AlignmentGeometry?>? get alignment =>
      throw _privateConstructorUsedError;
  ZacBuilder<BorderRadius?>? get borderRadius =>
      throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_FlutterDropdownButton value) $default,
  ) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_FlutterDropdownButton extends _FlutterDropdownButton {
  _$_FlutterDropdownButton(
      {this.key,
      required final List<FlutterDropdownMenuItem> items,
      this.value,
      this.hint,
      this.disabledHint,
      required this.onChanged,
      this.onTap,
      this.elevation,
      this.style,
      this.underline,
      this.icon,
      this.iconDisabledColor,
      this.iconEnabledColor,
      this.iconSize,
      this.isDense,
      this.isExpanded,
      this.itemHeight,
      this.focusColor,
      this.focusNode,
      this.autofocus,
      this.dropdownColor,
      this.menuMaxHeight,
      this.enableFeedback,
      this.alignment,
      this.borderRadius})
      : _items = items,
        super._();

  factory _$_FlutterDropdownButton.fromJson(Map<String, dynamic> json) =>
      _$$_FlutterDropdownButtonFromJson(json);

  @override
  final ZacBuilder<Key?>? key;
  final List<FlutterDropdownMenuItem> _items;
  @override
  List<FlutterDropdownMenuItem> get items {
    if (_items is EqualUnmodifiableListView) return _items;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_items);
  }

// ZacBuilder<DropdownButtonBuilder>? selectedItemBuilder,
  @override
  final ZacBuilder<Object?>? value;
  @override
  final ZacBuilder<Widget?>? hint;
  @override
  final ZacBuilder<Widget?>? disabledHint;
  @override
  final ZacBuilder<List<ZacAction>> onChanged;
  @override
  final ZacBuilder<List<ZacAction>?>? onTap;
  @override
  final ZacBuilder<int?>? elevation;
  @override
  final ZacBuilder<TextStyle?>? style;
  @override
  final ZacBuilder<Widget?>? underline;
  @override
  final ZacBuilder<Widget?>? icon;
  @override
  final ZacBuilder<Color?>? iconDisabledColor;
  @override
  final ZacBuilder<Color?>? iconEnabledColor;
  @override
  final ZacBuilder<double?>? iconSize;
  @override
  final ZacBuilder<bool?>? isDense;
  @override
  final ZacBuilder<bool?>? isExpanded;
  @override
  final ZacBuilder<double?>? itemHeight;
  @override
  final ZacBuilder<Color?>? focusColor;
  @override
  final ZacBuilder<FocusNode?>? focusNode;
  @override
  final ZacBuilder<bool?>? autofocus;
  @override
  final ZacBuilder<Color?>? dropdownColor;
  @override
  final ZacBuilder<double?>? menuMaxHeight;
  @override
  final ZacBuilder<bool?>? enableFeedback;
  @override
  final ZacBuilder<AlignmentGeometry?>? alignment;
  @override
  final ZacBuilder<BorderRadius?>? borderRadius;

  @override
  String toString() {
    return 'FlutterDropdownButton(key: $key, items: $items, value: $value, hint: $hint, disabledHint: $disabledHint, onChanged: $onChanged, onTap: $onTap, elevation: $elevation, style: $style, underline: $underline, icon: $icon, iconDisabledColor: $iconDisabledColor, iconEnabledColor: $iconEnabledColor, iconSize: $iconSize, isDense: $isDense, isExpanded: $isExpanded, itemHeight: $itemHeight, focusColor: $focusColor, focusNode: $focusNode, autofocus: $autofocus, dropdownColor: $dropdownColor, menuMaxHeight: $menuMaxHeight, enableFeedback: $enableFeedback, alignment: $alignment, borderRadius: $borderRadius)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FlutterDropdownButton &&
            (identical(other.key, key) || other.key == key) &&
            const DeepCollectionEquality().equals(other._items, _items) &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.hint, hint) || other.hint == hint) &&
            (identical(other.disabledHint, disabledHint) ||
                other.disabledHint == disabledHint) &&
            (identical(other.onChanged, onChanged) ||
                other.onChanged == onChanged) &&
            (identical(other.onTap, onTap) || other.onTap == onTap) &&
            (identical(other.elevation, elevation) ||
                other.elevation == elevation) &&
            (identical(other.style, style) || other.style == style) &&
            (identical(other.underline, underline) ||
                other.underline == underline) &&
            (identical(other.icon, icon) || other.icon == icon) &&
            (identical(other.iconDisabledColor, iconDisabledColor) ||
                other.iconDisabledColor == iconDisabledColor) &&
            (identical(other.iconEnabledColor, iconEnabledColor) ||
                other.iconEnabledColor == iconEnabledColor) &&
            (identical(other.iconSize, iconSize) ||
                other.iconSize == iconSize) &&
            (identical(other.isDense, isDense) || other.isDense == isDense) &&
            (identical(other.isExpanded, isExpanded) ||
                other.isExpanded == isExpanded) &&
            (identical(other.itemHeight, itemHeight) ||
                other.itemHeight == itemHeight) &&
            (identical(other.focusColor, focusColor) ||
                other.focusColor == focusColor) &&
            (identical(other.focusNode, focusNode) ||
                other.focusNode == focusNode) &&
            (identical(other.autofocus, autofocus) ||
                other.autofocus == autofocus) &&
            (identical(other.dropdownColor, dropdownColor) ||
                other.dropdownColor == dropdownColor) &&
            (identical(other.menuMaxHeight, menuMaxHeight) ||
                other.menuMaxHeight == menuMaxHeight) &&
            (identical(other.enableFeedback, enableFeedback) ||
                other.enableFeedback == enableFeedback) &&
            (identical(other.alignment, alignment) ||
                other.alignment == alignment) &&
            (identical(other.borderRadius, borderRadius) ||
                other.borderRadius == borderRadius));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        key,
        const DeepCollectionEquality().hash(_items),
        value,
        hint,
        disabledHint,
        onChanged,
        onTap,
        elevation,
        style,
        underline,
        icon,
        iconDisabledColor,
        iconEnabledColor,
        iconSize,
        isDense,
        isExpanded,
        itemHeight,
        focusColor,
        focusNode,
        autofocus,
        dropdownColor,
        menuMaxHeight,
        enableFeedback,
        alignment,
        borderRadius
      ]);

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_FlutterDropdownButton value) $default,
  ) {
    return $default(this);
  }
}

abstract class _FlutterDropdownButton extends FlutterDropdownButton {
  factory _FlutterDropdownButton(
          {final ZacBuilder<Key?>? key,
          required final List<FlutterDropdownMenuItem> items,
          final ZacBuilder<Object?>? value,
          final ZacBuilder<Widget?>? hint,
          final ZacBuilder<Widget?>? disabledHint,
          required final ZacBuilder<List<ZacAction>> onChanged,
          final ZacBuilder<List<ZacAction>?>? onTap,
          final ZacBuilder<int?>? elevation,
          final ZacBuilder<TextStyle?>? style,
          final ZacBuilder<Widget?>? underline,
          final ZacBuilder<Widget?>? icon,
          final ZacBuilder<Color?>? iconDisabledColor,
          final ZacBuilder<Color?>? iconEnabledColor,
          final ZacBuilder<double?>? iconSize,
          final ZacBuilder<bool?>? isDense,
          final ZacBuilder<bool?>? isExpanded,
          final ZacBuilder<double?>? itemHeight,
          final ZacBuilder<Color?>? focusColor,
          final ZacBuilder<FocusNode?>? focusNode,
          final ZacBuilder<bool?>? autofocus,
          final ZacBuilder<Color?>? dropdownColor,
          final ZacBuilder<double?>? menuMaxHeight,
          final ZacBuilder<bool?>? enableFeedback,
          final ZacBuilder<AlignmentGeometry?>? alignment,
          final ZacBuilder<BorderRadius?>? borderRadius}) =
      _$_FlutterDropdownButton;
  _FlutterDropdownButton._() : super._();

  factory _FlutterDropdownButton.fromJson(Map<String, dynamic> json) =
      _$_FlutterDropdownButton.fromJson;

  @override
  ZacBuilder<Key?>? get key;
  @override
  List<FlutterDropdownMenuItem> get items;
  @override // ZacBuilder<DropdownButtonBuilder>? selectedItemBuilder,
  ZacBuilder<Object?>? get value;
  @override
  ZacBuilder<Widget?>? get hint;
  @override
  ZacBuilder<Widget?>? get disabledHint;
  @override
  ZacBuilder<List<ZacAction>> get onChanged;
  @override
  ZacBuilder<List<ZacAction>?>? get onTap;
  @override
  ZacBuilder<int?>? get elevation;
  @override
  ZacBuilder<TextStyle?>? get style;
  @override
  ZacBuilder<Widget?>? get underline;
  @override
  ZacBuilder<Widget?>? get icon;
  @override
  ZacBuilder<Color?>? get iconDisabledColor;
  @override
  ZacBuilder<Color?>? get iconEnabledColor;
  @override
  ZacBuilder<double?>? get iconSize;
  @override
  ZacBuilder<bool?>? get isDense;
  @override
  ZacBuilder<bool?>? get isExpanded;
  @override
  ZacBuilder<double?>? get itemHeight;
  @override
  ZacBuilder<Color?>? get focusColor;
  @override
  ZacBuilder<FocusNode?>? get focusNode;
  @override
  ZacBuilder<bool?>? get autofocus;
  @override
  ZacBuilder<Color?>? get dropdownColor;
  @override
  ZacBuilder<double?>? get menuMaxHeight;
  @override
  ZacBuilder<bool?>? get enableFeedback;
  @override
  ZacBuilder<AlignmentGeometry?>? get alignment;
  @override
  ZacBuilder<BorderRadius?>? get borderRadius;
}

FlutterDropdownMenuItem _$FlutterDropdownMenuItemFromJson(
    Map<String, dynamic> json) {
  return _FlutterDropdownMenuItem.fromJson(json);
}

/// @nodoc
mixin _$FlutterDropdownMenuItem {
  ZacBuilder<Key?>? get key => throw _privateConstructorUsedError;
  ZacBuilder<List<ZacAction>?>? get onTap => throw _privateConstructorUsedError;
  ZacBuilder<Object?>? get value => throw _privateConstructorUsedError;
  ZacBuilder<bool?>? get enabled => throw _privateConstructorUsedError;
  ZacBuilder<AlignmentGeometry?>? get alignment =>
      throw _privateConstructorUsedError;
  ZacBuilder<Widget> get child => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_FlutterDropdownMenuItem value) $default,
  ) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
@JsonSerializable(createToJson: false)
class _$_FlutterDropdownMenuItem extends _FlutterDropdownMenuItem {
  _$_FlutterDropdownMenuItem(
      {this.key,
      this.onTap,
      this.value,
      this.enabled,
      this.alignment,
      required this.child})
      : super._();

  factory _$_FlutterDropdownMenuItem.fromJson(Map<String, dynamic> json) =>
      _$$_FlutterDropdownMenuItemFromJson(json);

  @override
  final ZacBuilder<Key?>? key;
  @override
  final ZacBuilder<List<ZacAction>?>? onTap;
  @override
  final ZacBuilder<Object?>? value;
  @override
  final ZacBuilder<bool?>? enabled;
  @override
  final ZacBuilder<AlignmentGeometry?>? alignment;
  @override
  final ZacBuilder<Widget> child;

  @override
  String toString() {
    return 'FlutterDropdownMenuItem(key: $key, onTap: $onTap, value: $value, enabled: $enabled, alignment: $alignment, child: $child)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FlutterDropdownMenuItem &&
            (identical(other.key, key) || other.key == key) &&
            (identical(other.onTap, onTap) || other.onTap == onTap) &&
            (identical(other.value, value) || other.value == value) &&
            (identical(other.enabled, enabled) || other.enabled == enabled) &&
            (identical(other.alignment, alignment) ||
                other.alignment == alignment) &&
            (identical(other.child, child) || other.child == child));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, key, onTap, value, enabled, alignment, child);

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_FlutterDropdownMenuItem value) $default,
  ) {
    return $default(this);
  }
}

abstract class _FlutterDropdownMenuItem extends FlutterDropdownMenuItem {
  factory _FlutterDropdownMenuItem(
      {final ZacBuilder<Key?>? key,
      final ZacBuilder<List<ZacAction>?>? onTap,
      final ZacBuilder<Object?>? value,
      final ZacBuilder<bool?>? enabled,
      final ZacBuilder<AlignmentGeometry?>? alignment,
      required final ZacBuilder<Widget> child}) = _$_FlutterDropdownMenuItem;
  _FlutterDropdownMenuItem._() : super._();

  factory _FlutterDropdownMenuItem.fromJson(Map<String, dynamic> json) =
      _$_FlutterDropdownMenuItem.fromJson;

  @override
  ZacBuilder<Key?>? get key;
  @override
  ZacBuilder<List<ZacAction>?>? get onTap;
  @override
  ZacBuilder<Object?>? get value;
  @override
  ZacBuilder<bool?>? get enabled;
  @override
  ZacBuilder<AlignmentGeometry?>? get alignment;
  @override
  ZacBuilder<Widget> get child;
}
