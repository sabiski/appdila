import 'package:flutter/material.dart';

abstract class ColorState {}

class ColorVert extends ColorState {
  Color vert;
  ColorVert({required this.vert});
}

class ColorJaune extends ColorState {}

class ColorBlue extends ColorState {}

class ColorInitial extends ColorState {
  Color iniColor;
  ColorInitial({required this.iniColor});
}
