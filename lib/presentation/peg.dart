import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hanoi/presentation/board_piece.dart';

class Peg extends ConsumerWidget {
  Peg({super.key, required this.index});

  final int index;
  final BoxDecoration decoration = BoxDecoration(
    borderRadius: BorderRadius.only(
      topLeft: Radius.circular(8),
      topRight: Radius.circular(8),
    ),
    color: Colors.grey,
  );

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return DragTarget<BoardPiece>(
        builder: (context, g, h) =>
            Container(width: 30, decoration: decoration));
  }
}
