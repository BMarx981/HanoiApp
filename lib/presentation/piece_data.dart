import 'package:flutter/material.dart';

class PieceData {
  PieceData({required this.index, required this.color, required this.width});

  final int index;
  final Color color;
  final double width;

  int get getIndex => index;
  double get getWidth => width;
  Color get getColor => color;
}
