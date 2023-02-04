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
                    (k, e) => MapEntry(k,
                        ZacBuilder<ZacCallbackExecute>.fromJson(e as Object)),
                  )),
          child: $checkedConvert(
              'child', (v) => ZacBuilder<Widget>.fromJson(v as Object)),
        );
        return val;
      },
    );

_$_ZacCallbacks _$$_ZacCallbacksFromJson(Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$_ZacCallbacks',
      json,
      ($checkedConvert) {
        final val = _$_ZacCallbacks(
          families: $checkedConvert('families',
              (v) => (v as List<dynamic>).map((e) => e as String).toList()),
        );
        return val;
      },
    );
