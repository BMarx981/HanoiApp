import 'package:flutter/material.dart';

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
              DragTarget(
                  builder: (context, g, h) =>
                      Container(width: 30, decoration: decoration)),
              DragTarget(
                  builder: (context, g, h) =>
                      Container(width: 30, decoration: decoration)),
              DragTarget(
                  builder: (context, g, h) =>
                      Container(width: 30, decoration: decoration)),
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
