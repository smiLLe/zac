// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'completer.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ZacCompleterVoidProvider _$$_ZacCompleterVoidProviderFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$_ZacCompleterVoidProvider',
      json,
      ($checkedConvert) {
        final val = _$_ZacCompleterVoidProvider(
          family: $checkedConvert('family', (v) => v as String),
          child: $checkedConvert(
              'child', (v) => ZacBuilder<Widget>.fromJson(v as Object)),
        );
        return val;
      },
    );

_$_ZacCompleterActionsVoid _$$_ZacCompleterActionsVoidFromJson(
        Map<String, dynamic> json) =>
    $checkedCreate(
      r'_$_ZacCompleterActionsVoid',
      json,
      ($checkedConvert) {
        final val = _$_ZacCompleterActionsVoid(
          completer: $checkedConvert('completer',
              (v) => ZacBuilder<Completer<dynamic>>.fromJson(v as Object)),
        );
        return val;
      },
    );
