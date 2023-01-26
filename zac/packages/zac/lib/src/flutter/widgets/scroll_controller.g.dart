// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'scroll_controller.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ScrollControllerProvide _$$_ScrollControllerProvideFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$_ScrollControllerProvide',
      json,
      ($checkedConvert) {
        final val = _$_ScrollControllerProvide(
          initialScrollOffset: $checkedConvert(
              'initialScrollOffset',
              (v) =>
                  v == null ? null : ZacBuilder<double?>.fromJson(v as Object)),
          keepScrollOffset: $checkedConvert(
              'keepScrollOffset',
              (v) =>
                  v == null ? null : ZacBuilder<bool?>.fromJson(v as Object)),
          debugLabel: $checkedConvert(
              'debugLabel',
              (v) =>
                  v == null ? null : ZacBuilder<String?>.fromJson(v as Object)),
          family: $checkedConvert('family', (v) => v as String?),
          child: $checkedConvert(
              'child', (v) => ZacBuilder<Widget>.fromJson(v as Object)),
        );
        return val;
      },
    );
