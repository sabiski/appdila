import 'package:flutter/material.dart';

abstract class EventColors {}

class EventChangeColors extends EventColors {
  Color mycolor;

  EventChangeColors({required this.mycolor});
}
