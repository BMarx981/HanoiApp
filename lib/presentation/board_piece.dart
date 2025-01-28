import 'package:flutter/material.dart';
import 'package:hanoi/presentation/piece_data.dart';

class BoardPiece extends StatelessWidget {
  const BoardPiece({super.key, required this.data});

  final PieceData data;

  @override
  Widget build(BuildContext context) {
    return Draggable<PieceData>(
      data: data,
      feedback: Container(
        width: data.index * 20,
        height: 50,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(24),
          color: data.color.withAlpha(124),
        ),
      ),
      childWhenDragging: Container(
        width: data.index * 20,
        height: 50,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(24),
          color: data.color.withAlpha(124),
        ),
      ),
      child: Container(
        height: 50,
        width: data.width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(24),
          color: data.color,
        ),
      ),
    );
  }
}
