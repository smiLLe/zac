// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'image.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_FlutterImageNetowrk _$$_FlutterImageNetowrkFromJson(
        Map<String, dynamic> json) =>
    _$_FlutterImageNetowrk(
      ZacValue<String>.fromJson(
          json['src'] as Object, (value) => value as String),
      key: json['key'] == null
          ? null
          : FlutterKey.fromJson(json['key'] as Object),
      scale: json['scale'] == null
          ? null
          : ZacValue<double>.fromJson(
              json['scale'] as Object, (value) => (value as num).toDouble()),
      semanticLabel: json['semanticLabel'] == null
          ? null
          : ZacValue<String>.fromJson(
              json['semanticLabel'] as Object, (value) => value as String),
      excludeFromSemantics: json['excludeFromSemantics'] == null
          ? null
          : ZacValue<bool>.fromJson(
              json['excludeFromSemantics'] as Object, (value) => value as bool),
      width: json['width'] == null
          ? null
          : ZacValue<double>.fromJson(
              json['width'] as Object, (value) => (value as num).toDouble()),
      height: json['height'] == null
          ? null
          : ZacValue<double>.fromJson(
              json['height'] as Object, (value) => (value as num).toDouble()),
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
          : ZacValue<bool>.fromJson(
              json['matchTextDirection'] as Object, (value) => value as bool),
      gaplessPlayback: json['gaplessPlayback'] == null
          ? null
          : ZacValue<bool>.fromJson(
              json['gaplessPlayback'] as Object, (value) => value as bool),
      filterQuality: json['filterQuality'] == null
          ? null
          : FlutterFilterQuality.fromJson(
              json['filterQuality'] as Map<String, dynamic>),
      isAntiAlias: json['isAntiAlias'] == null
          ? null
          : ZacValue<bool>.fromJson(
              json['isAntiAlias'] as Object, (value) => value as bool),
      headers: (json['headers'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, e as String),
      ),
      cacheWidth: json['cacheWidth'] == null
          ? null
          : ZacValue<int>.fromJson(
              json['cacheWidth'] as Object, (value) => value as int),
      cacheHeight: json['cacheHeight'] == null
          ? null
          : ZacValue<int>.fromJson(
              json['cacheHeight'] as Object, (value) => value as int),
      $type: json['converter'] as String?,
    );

_$_FlutterImageAsset _$$_FlutterImageAssetFromJson(Map<String, dynamic> json) =>
    _$_FlutterImageAsset(
      ZacValue<String>.fromJson(
          json['name'] as Object, (value) => value as String),
      key: json['key'] == null
          ? null
          : FlutterKey.fromJson(json['key'] as Object),
      semanticLabel: json['semanticLabel'] == null
          ? null
          : ZacValue<String>.fromJson(
              json['semanticLabel'] as Object, (value) => value as String),
      excludeFromSemantics: json['excludeFromSemantics'] == null
          ? null
          : ZacValue<bool>.fromJson(
              json['excludeFromSemantics'] as Object, (value) => value as bool),
      scale: json['scale'] == null
          ? null
          : ZacValue<double>.fromJson(
              json['scale'] as Object, (value) => (value as num).toDouble()),
      width: json['width'] == null
          ? null
          : ZacValue<double>.fromJson(
              json['width'] as Object, (value) => (value as num).toDouble()),
      height: json['height'] == null
          ? null
          : ZacValue<double>.fromJson(
              json['height'] as Object, (value) => (value as num).toDouble()),
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
          : ZacValue<bool>.fromJson(
              json['matchTextDirection'] as Object, (value) => value as bool),
      gaplessPlayback: json['gaplessPlayback'] == null
          ? null
          : ZacValue<bool>.fromJson(
              json['gaplessPlayback'] as Object, (value) => value as bool),
      isAntiAlias: json['isAntiAlias'] == null
          ? null
          : ZacValue<bool>.fromJson(
              json['isAntiAlias'] as Object, (value) => value as bool),
      package: json['package'] == null
          ? null
          : ZacValue<String>.fromJson(
              json['package'] as Object, (value) => value as String),
      filterQuality: json['filterQuality'] == null
          ? null
          : FlutterFilterQuality.fromJson(
              json['filterQuality'] as Map<String, dynamic>),
      cacheWidth: json['cacheWidth'] == null
          ? null
          : ZacValue<int>.fromJson(
              json['cacheWidth'] as Object, (value) => value as int),
      cacheHeight: json['cacheHeight'] == null
          ? null
          : ZacValue<int>.fromJson(
              json['cacheHeight'] as Object, (value) => value as int),
      $type: json['converter'] as String?,
    );
