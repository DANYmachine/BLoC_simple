import 'dart:ui';

import 'package:flutter/material.dart';

class ColorState {
  Color color;
  ColorState({required this.color});
}

class ColorEmptyState extends ColorState {
  ColorEmptyState() : super(color: Colors.blue);
}
