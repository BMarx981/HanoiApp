import 'package:flutter/material.dart';

class BoardPiece extends StatelessWidget {
  const BoardPiece(
      {super.key, required this.color, required this.num, required this.width});

  final Color color;
  final double width;
  final int num;

  @override
  Widget build(BuildContext context) {
    return Draggable(
      feedback: Container(
        width: num * 20,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(24),
          color: color.withAlpha(124),
        ),
      ),
      child: Container(
        height: 50,
        width: width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(24),
          color: color,
        ),
      ),
    );
  }
}
