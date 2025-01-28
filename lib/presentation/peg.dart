import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hanoi/presentation/board_piece.dart';

class Peg extends ConsumerWidget {
  Peg({super.key, required this.index, required this.pieces});

  final int index;
  final BoxDecoration decoration = BoxDecoration(
    borderRadius: BorderRadius.only(
      topLeft: Radius.circular(8),
      topRight: Radius.circular(8),
    ),
    color: Colors.grey,
  );
  final List<BoardPiece> pieces;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return DragTarget<BoardPiece>(
      builder: (BuildContext context, List<dynamic> accepted,
              List<dynamic> rejected) =>
          Container(width: 30, decoration: decoration),
      onWillAcceptWithDetails: (details) {
        if (details.data.data.getIndex > pieces.last.data.getIndex) {
          return false;
        }
        print(details.data.data.index);
        pieces.add(details.data);
        return true;
      },
    );
  }
}
