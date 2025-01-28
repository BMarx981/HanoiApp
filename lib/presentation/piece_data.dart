import 'package:flutter/material.dart';

class PieceData {
  PieceData({required this.index, required this.color});

  final int index;
  final Color color;

  int get getIndex => index;
  Color get getColor => color;
}
