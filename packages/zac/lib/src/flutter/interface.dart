import 'package:flutter/widgets.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:zac/src/flutter/widgets.dart';

abstract class ZacToFlutter<To> {
  To toFlutter(BuildContext context);
}

class ZacNotification extends Notification {}
