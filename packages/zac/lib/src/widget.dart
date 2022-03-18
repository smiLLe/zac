import 'dart:convert';

import 'package:flutter/widgets.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:zac/src/flutter/widgets.dart';

class ZacWidgetBuilder extends HookWidget {
  const ZacWidgetBuilder({required this.json, Key? key}) : super(key: key);

  final String json;

  @override
  Widget build(BuildContext context) {
    final zacWidget = useMemoized(
      () => ZacWidget.fromJson(jsonDecode(json)),
      [json],
    );

    return zacWidget.toFlutter(context);
  }
}
