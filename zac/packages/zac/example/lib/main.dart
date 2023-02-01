import 'package:flutter/material.dart';
import 'package:zac/zac.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

void main() {
  runApp(
    const ProviderScope(
      child: ZacBuildWidget(data: <String, dynamic>{
        'builder': 'z:1:int.provide',
        'family': 'counter',
        'value': 0,
        'child': {
          'builder': 'f:1:MaterialApp',
          'home': {
            'builder': 'f:1:Scaffold',
            'appBar': {
              'builder': 'f:1:AppBar',
              'title': {
                'builder': 'f:1:Text',
                'data': 'Example',
              }
            },
            'body': {
              'builder': 'f:1:Center',
              'child': {
                'builder': 'f:1:Column',
                'mainAxisAlignment': {
                  'builder': 'f:1:MainAxisAlignment.center',
                },
                'children': [
                  {
                    'builder': 'f:1:Text',
                    'data': 'You have pushed the button this many times:'
                  },
                  {
                    'builder': 'f:1:Text',
                    'data': {
                      'builder': 'z:1:SharedValue.consume',
                      'family': 'counter',
                      'transformer': [
                        {
                          'builder': 'z:1:Transformer:Object.toString',
                        }
                      ]
                    }
                  }
                ]
              }
            },
            'floatingActionButton': {
              'builder': 'f:1:FloatingActionButton',
              'child': {
                'builder': 'f:1:Icon',
                'icon': {
                  'builder': 'f:1:IconData',
                  'codePoint': 0xe047,
                  'fontFamily': 'MaterialIcons',
                },
              },
              'onPressed': [
                {
                  'builder': 'z:1:SharedValue.transformCurrentValue',
                  'family': 'counter',
                  'transformer': [
                    {
                      'builder': 'z:1:Transformer:int.incr',
                      'by': 1,
                    }
                  ],
                },
              ],
            }
          }
        }
      }),
    ),
  );
}
