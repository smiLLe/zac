// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'center.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_FlutterCenter _$$_FlutterCenterFromJson(Map<String, dynamic> json) =>
    _$_FlutterCenter(
      key: json['key'] == null
          ? null
          : FlutterKey.fromJson(json['key'] as Object),
      widthFactor: json['widthFactor'] == null
          ? null
          : ZacDouble.fromJson(json['widthFactor'] as Object),
      heightFactor: json['heightFactor'] == null
          ? null
          : ZacDouble.fromJson(json['heightFactor'] as Object),
      child: json['child'] == null
          ? null
          : ZacWidget.fromJson(json['child'] as Object),
    );
