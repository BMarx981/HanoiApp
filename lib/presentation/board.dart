import 'package:flutter/material.dart';
import 'package:hanoi/presentation/board_piece.dart';
import 'package:hanoi/presentation/peg.dart';
import 'package:hanoi/presentation/piece_data.dart';

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
      children: [
        Expanded(
          child: Stack(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    width: 30,
                    decoration: decoration,
                  ),
                  Container(
                    decoration: decoration,
                    width: 30,
                  ),
                  Container(
                    width: 30,
                    decoration: decoration,
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Peg(
                    index: 1,
                    pieces: pieces,
                  ),
                  Peg(
                    index: 2,
                    pieces: [],
                  ),
                  Peg(
                    index: 3,
                    pieces: [],
                  ),
                ],
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
  BoardPiece(data: PieceData(color: Colors.green, index: 1, width: 70)),
  BoardPiece(data: PieceData(color: Colors.orange, index: 2, width: 90)),
  BoardPiece(data: PieceData(color: Colors.purple, index: 3, width: 110)),
  BoardPiece(data: PieceData(color: Colors.yellow, index: 4, width: 130)),
];
