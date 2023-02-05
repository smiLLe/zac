// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'callback.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ZacCallbacksProvider _$$_ZacCallbacksProviderFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$_ZacCallbacksProvider',
      json,
      ($checkedConvert) {
        final val = _$_ZacCallbacksProvider(
          callbacks: $checkedConvert(
              'callbacks',
              (v) => (v as Map<String, dynamic>).map(
                    (k, e) => MapEntry(
                        k, ZacBuilder<ZacSharedCallback>.fromJson(e as Object)),
                  )),
          child: $checkedConvert(
              'child', (v) => ZacBuilder<Widget>.fromJson(v as Object)),
        );
        return val;
      },
    );

_$_ZacConsumeSharedCallback _$$_ZacConsumeSharedCallbackFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$_ZacConsumeSharedCallback',
      json,
      ($checkedConvert) {
        final val = _$_ZacConsumeSharedCallback(
          family: $checkedConvert('family', (v) => v as String),
        );
        return val;
      },
    );
