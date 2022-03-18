import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:zac/zac.dart';

void main() {
  group('ZacColor', () {
    test('a', () {
      final zac = ZacWidget.fromJson({
        'runtimeType': 'zac:widget:container',
        'child': {
          'runtimeType': 'zac:widget:elevatedButton',
        }
      });
      print(zac);
    });
    testWidgets('rgb', (tester) async {
      await tester.pumpWidget(MaterialApp(
        home: ZacWidgetBuilder(
          json: jsonEncode(CreateWidget.container(
            // color: TestModels.color,
            padding: TestModels.inset,
            margin: TestModels.inset,
            alignment: TestModels.alignment,
            decoration: TestModels.decoration,
          )),
        ),
      ));

      expect(
          find.byWidgetPredicate(
            (Widget widget) =>
                widget is Container &&
                widget.child == null &&
                // widget.color == TestModels.color &&
                widget.padding == TestModels.inset &&
                widget.margin == TestModels.inset &&
                widget.alignment == TestModels.alignment &&
                widget.decoration == TestModels.decoration,
            description: 'find Container',
          ),
          findsOneWidget);
    });
  });
}

abstract class TestModels {
  static const color = Color.fromRGBO(100, 100, 100, 1.0);
  static const EdgeInsets inset = EdgeInsets.all(8.0);
  static const Alignment alignment = Alignment(5, 6);
  static const BoxDecoration decoration =
      BoxDecoration(color: TestModels.color);
}

abstract class CreateWidget {
  static Map<String, Object?> container({
    Color? color,
    EdgeInsets? padding,
    EdgeInsets? margin,
    Alignment? alignment,
    BoxDecoration? decoration,
  }) {
    return {
      'runtimeType': 'container',
      'color': color?.toZac(),
      'padding': padding?.toZac(),
      'margin': margin?.toZac(),
      'alignment': alignment?.toZac(),
      'decoration': decoration?.toZac(),
    };
  }
}

extension BoxDecorationToZacX on BoxDecoration {
  Map<String, Object?> toZac() {
    return {
      'runtimeType': 'boxDecoration',
      'color': color?.toZac(),
    };
  }
}

extension AlignmentToZacX on Alignment {
  Map<String, Object?> toZac() {
    return {
      'runtimeType': 'default',
      'x': x,
      'y': y,
    };
  }
}

extension EdgeInsetsToZacX on EdgeInsets {
  Map<String, Object?> toZac() {
    return {
      'runtimeType': 'only',
      'left': left,
      'top': top,
      'right': right,
      'bottom': bottom,
    };
  }
}

extension ColorToZacX on Color {
  Map<String, Object?> toZac() {
    return {
      'runtimeType': 'fromRGBO',
      'r': red,
      'g': green,
      'b': blue,
      'opacity': opacity
    };
  }
}
