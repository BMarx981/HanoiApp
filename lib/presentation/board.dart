import 'package:flutter/material.dart';
import 'package:hanoi/presentation/board_piece.dart';
import 'package:hanoi/presentation/peg.dart';

class Board extends StatelessWidget {
  Board({super.key});
  final BoxDecoration decoration = BoxDecoration(
    borderRadius: BorderRadius.only(
      topLeft: Radius.circular(8),
      topRight: Radius.circular(8),
    ),
    color: Colors.grey,
  );

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Expanded(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Peg(
                index: 1,
              ),
              Peg(
                index: 2,
              ),
              Peg(
                index: 3,
              ),
            ],
          ),
        ),
        Container(
          height: 100,
          decoration: BoxDecoration(
              color: Colors.blue, borderRadius: BorderRadius.circular(8)),
        )
      ],
    );
  }
}

List<BoardPiece> pieces = [
  BoardPiece(color: Colors.green, num: 1, width: 70),
  BoardPiece(color: Colors.orange, num: 2, width: 90),
  BoardPiece(color: Colors.purple, num: 3, width: 110),
  BoardPiece(color: Colors.yellow, num: 4, width: 130),
];
