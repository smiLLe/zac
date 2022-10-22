// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'image.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_FlutterImageNetowrk _$$_FlutterImageNetowrkFromJson(
        Map<String, dynamic> json) =>
    _$_FlutterImageNetowrk(
      ZacValue<String>.fromJson(json['src'] as Object),
      key: json['key'] == null
          ? null
          : FlutterKey.fromJson(json['key'] as Object),
      scale: json['scale'] == null
          ? null
          : ZacDouble.fromJson(json['scale'] as Object),
      semanticLabel: json['semanticLabel'] == null
          ? null
          : ZacValue<String>.fromJson(json['semanticLabel'] as Object),
      excludeFromSemantics: json['excludeFromSemantics'] == null
          ? null
          : ZacBool.fromJson(json['excludeFromSemantics'] as Object),
      width: json['width'] == null
          ? null
          : ZacDouble.fromJson(json['width'] as Object),
      height: json['height'] == null
          ? null
          : ZacDouble.fromJson(json['height'] as Object),
      color: json['color'] == null
          ? null
          : FlutterColor.fromJson(json['color'] as Map<String, dynamic>),
      colorBlendMode: json['colorBlendMode'] == null
          ? null
          : FlutterBlendMode.fromJson(
              json['colorBlendMode'] as Map<String, dynamic>),
      fit: json['fit'] == null
          ? null
          : FlutterBoxFit.fromJson(json['fit'] as Map<String, dynamic>),
      alignment: json['alignment'] == null
          ? null
          : FlutterAlignmentGeometry.fromJson(json['alignment'] as Object),
      repeat: json['repeat'] == null
          ? null
          : FlutterImageRepeat.fromJson(json['repeat'] as Map<String, dynamic>),
      centerSlice: json['centerSlice'] == null
          ? null
          : FlutterRect.fromJson(json['centerSlice'] as Map<String, dynamic>),
      matchTextDirection: json['matchTextDirection'] == null
          ? null
          : ZacBool.fromJson(json['matchTextDirection'] as Object),
      gaplessPlayback: json['gaplessPlayback'] == null
          ? null
          : ZacBool.fromJson(json['gaplessPlayback'] as Object),
      filterQuality: json['filterQuality'] == null
          ? null
          : FlutterFilterQuality.fromJson(
              json['filterQuality'] as Map<String, dynamic>),
      isAntiAlias: json['isAntiAlias'] == null
          ? null
          : ZacBool.fromJson(json['isAntiAlias'] as Object),
      headers: (json['headers'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, e as String),
      ),
      cacheWidth: json['cacheWidth'] == null
          ? null
          : ZacValue<int>.fromJson(json['cacheWidth'] as Object),
      cacheHeight: json['cacheHeight'] == null
          ? null
          : ZacValue<int>.fromJson(json['cacheHeight'] as Object),
      $type: json['converter'] as String?,
    );

_$_FlutterImageAsset _$$_FlutterImageAssetFromJson(Map<String, dynamic> json) =>
    _$_FlutterImageAsset(
      ZacValue<String>.fromJson(json['name'] as Object),
      key: json['key'] == null
          ? null
          : FlutterKey.fromJson(json['key'] as Object),
      semanticLabel: json['semanticLabel'] == null
          ? null
          : ZacValue<String>.fromJson(json['semanticLabel'] as Object),
      excludeFromSemantics: json['excludeFromSemantics'] == null
          ? null
          : ZacBool.fromJson(json['excludeFromSemantics'] as Object),
      scale: json['scale'] == null
          ? null
          : ZacDouble.fromJson(json['scale'] as Object),
      width: json['width'] == null
          ? null
          : ZacDouble.fromJson(json['width'] as Object),
      height: json['height'] == null
          ? null
          : ZacDouble.fromJson(json['height'] as Object),
      color: json['color'] == null
          ? null
          : FlutterColor.fromJson(json['color'] as Map<String, dynamic>),
      colorBlendMode: json['colorBlendMode'] == null
          ? null
          : FlutterBlendMode.fromJson(
              json['colorBlendMode'] as Map<String, dynamic>),
      fit: json['fit'] == null
          ? null
          : FlutterBoxFit.fromJson(json['fit'] as Map<String, dynamic>),
      alignment: json['alignment'] == null
          ? null
          : FlutterAlignmentGeometry.fromJson(json['alignment'] as Object),
      repeat: json['repeat'] == null
          ? null
          : FlutterImageRepeat.fromJson(json['repeat'] as Map<String, dynamic>),
      centerSlice: json['centerSlice'] == null
          ? null
          : FlutterRect.fromJson(json['centerSlice'] as Map<String, dynamic>),
      matchTextDirection: json['matchTextDirection'] == null
          ? null
          : ZacBool.fromJson(json['matchTextDirection'] as Object),
      gaplessPlayback: json['gaplessPlayback'] == null
          ? null
          : ZacBool.fromJson(json['gaplessPlayback'] as Object),
      isAntiAlias: json['isAntiAlias'] == null
          ? null
          : ZacBool.fromJson(json['isAntiAlias'] as Object),
      package: json['package'] == null
          ? null
          : ZacValue<String>.fromJson(json['package'] as Object),
      filterQuality: json['filterQuality'] == null
          ? null
          : FlutterFilterQuality.fromJson(
              json['filterQuality'] as Map<String, dynamic>),
      cacheWidth: json['cacheWidth'] == null
          ? null
          : ZacValue<int>.fromJson(json['cacheWidth'] as Object),
      cacheHeight: json['cacheHeight'] == null
          ? null
          : ZacValue<int>.fromJson(json['cacheHeight'] as Object),
      $type: json['converter'] as String?,
    );
