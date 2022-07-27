// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'border.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_FlutterBorderDirectional _$$_FlutterBorderDirectionalFromJson(
        Map<String, dynamic> json) =>
    _$_FlutterBorderDirectional(
      top: json['top'] == null
          ? null
          : FlutterBorderSide.fromJson(json['top'] as Map<String, dynamic>),
      start: json['start'] == null
          ? null
          : FlutterBorderSide.fromJson(json['start'] as Map<String, dynamic>),
      bottom: json['bottom'] == null
          ? null
          : FlutterBorderSide.fromJson(json['bottom'] as Map<String, dynamic>),
      end: json['end'] == null
          ? null
          : FlutterBorderSide.fromJson(json['end'] as Map<String, dynamic>),
    );

_$_FlutterBorder _$$_FlutterBorderFromJson(Map<String, dynamic> json) =>
    _$_FlutterBorder(
      top: json['top'] == null
          ? null
          : FlutterBorderSide.fromJson(json['top'] as Map<String, dynamic>),
      right: json['right'] == null
          ? null
          : FlutterBorderSide.fromJson(json['right'] as Map<String, dynamic>),
      bottom: json['bottom'] == null
          ? null
          : FlutterBorderSide.fromJson(json['bottom'] as Map<String, dynamic>),
      left: json['left'] == null
          ? null
          : FlutterBorderSide.fromJson(json['left'] as Map<String, dynamic>),
      $type: json['_converter'] as String?,
    );

_$_FlutterBorderAll _$$_FlutterBorderAllFromJson(Map<String, dynamic> json) =>
    _$_FlutterBorderAll(
      color: json['color'] == null
          ? null
          : FlutterColor.fromJson(json['color'] as Map<String, dynamic>),
      width: json['width'] == null
          ? null
          : ZacDouble.fromJson(json['width'] as Object),
      style: json['style'] == null
          ? null
          : FlutterBorderStyle.fromJson(json['style'] as Map<String, dynamic>),
      $type: json['_converter'] as String?,
    );

_$_FlutterBorderStyleNone _$$_FlutterBorderStyleNoneFromJson(
        Map<String, dynamic> json) =>
    _$_FlutterBorderStyleNone(
      $type: json['_converter'] as String?,
    );

_$_FlutterBorderStyleSolid _$$_FlutterBorderStyleSolidFromJson(
        Map<String, dynamic> json) =>
    _$_FlutterBorderStyleSolid(
      $type: json['_converter'] as String?,
    );

_$_FlutterBorderRadiusAll _$$_FlutterBorderRadiusAllFromJson(
        Map<String, dynamic> json) =>
    _$_FlutterBorderRadiusAll(
      FlutterRadius.fromJson(json['radius'] as Map<String, dynamic>),
      $type: json['_converter'] as String?,
    );

_$_FlutterBorderRadiusCircular _$$_FlutterBorderRadiusCircularFromJson(
        Map<String, dynamic> json) =>
    _$_FlutterBorderRadiusCircular(
      ZacDouble.fromJson(json['radius'] as Object),
      $type: json['_converter'] as String?,
    );

_$_FlutterBorderRadiusHorizontal _$$_FlutterBorderRadiusHorizontalFromJson(
        Map<String, dynamic> json) =>
    _$_FlutterBorderRadiusHorizontal(
      left: json['left'] == null
          ? null
          : FlutterRadius.fromJson(json['left'] as Map<String, dynamic>),
      right: json['right'] == null
          ? null
          : FlutterRadius.fromJson(json['right'] as Map<String, dynamic>),
      $type: json['_converter'] as String?,
    );

_$_FlutterBorderSide _$$_FlutterBorderSideFromJson(Map<String, dynamic> json) =>
    _$_FlutterBorderSide(
      color: json['color'] == null
          ? null
          : FlutterColor.fromJson(json['color'] as Map<String, dynamic>),
      width: json['width'] == null
          ? null
          : ZacDouble.fromJson(json['width'] as Object),
      style: json['style'] == null
          ? null
          : FlutterBorderStyle.fromJson(json['style'] as Map<String, dynamic>),
    );

_$_FlutterOutlineInputBorder _$$_FlutterOutlineInputBorderFromJson(
        Map<String, dynamic> json) =>
    _$_FlutterOutlineInputBorder(
      borderSide: json['borderSide'] == null
          ? null
          : FlutterBorderSide.fromJson(
              json['borderSide'] as Map<String, dynamic>),
      borderRadius: json['borderRadius'] == null
          ? null
          : FlutterBorderRadius.fromJson(
              json['borderRadius'] as Map<String, dynamic>),
      gapPadding: json['gapPadding'] == null
          ? null
          : ZacDouble.fromJson(json['gapPadding'] as Object),
    );

_$_FlutterUnderlineInputBorder _$$_FlutterUnderlineInputBorderFromJson(
        Map<String, dynamic> json) =>
    _$_FlutterUnderlineInputBorder(
      borderSide: json['borderSide'] == null
          ? null
          : FlutterBorderSide.fromJson(
              json['borderSide'] as Map<String, dynamic>),
      borderRadius: json['borderRadius'] == null
          ? null
          : FlutterBorderRadius.fromJson(
              json['borderRadius'] as Map<String, dynamic>),
    );

_$_FlutterCircleBorder _$$_FlutterCircleBorderFromJson(
        Map<String, dynamic> json) =>
    _$_FlutterCircleBorder(
      side: json['side'] == null
          ? null
          : FlutterBorderSide.fromJson(json['side'] as Map<String, dynamic>),
    );

_$_FlutterRoundedRectangleBorder _$$_FlutterRoundedRectangleBorderFromJson(
        Map<String, dynamic> json) =>
    _$_FlutterRoundedRectangleBorder(
      side: json['side'] == null
          ? null
          : FlutterBorderSide.fromJson(json['side'] as Map<String, dynamic>),
      borderRadius: json['borderRadius'] == null
          ? null
          : FlutterBorderRadiusGeometry.fromJson(
              json['borderRadius'] as Object),
    );
