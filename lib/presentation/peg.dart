import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hanoi/presentation/board_piece.dart';

class Peg extends ConsumerWidget {
  Peg({super.key, required this.index, required this.pieces});

  final int index;
  final BoxDecoration decoration = BoxDecoration(
    border: Border.all(
      color: Colors.black,
    ),
    borderRadius: BorderRadius.only(
      topLeft: Radius.circular(8),
      topRight: Radius.circular(8),
    ),
    color: Colors.transparent,
  );
  final List<BoardPiece> pieces;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Stack(
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: pieces,
        ),
        Column(
          children: [
            Expanded(
              child: DragTarget<BoardPiece>(
                  builder: (BuildContext context, List<dynamic> accepted,
                      List<dynamic> rejected) {
                    return Container(width: 30, decoration: decoration);
                  },
                  onWillAcceptWithDetails: (details) {
                    if (details.data.data.getIndex >
                        pieces.last.data.getIndex) {
                      return false;
                    }
                    pieces.add(details.data);
                    return true;
                  },
                  onAcceptWithDetails: (details) {}),
            ),
          ],
        ),
      ],
    );
  }
}
