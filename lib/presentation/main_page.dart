import 'package:flutter/material.dart';
import 'package:hanoi/presentation/board.dart';
import 'package:hanoi/presentation/board_piece.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Towers of Hanoi'),
      ),
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(8),
        child: Container(
          decoration: BoxDecoration(
              border: Border.all(color: Colors.black),
              borderRadius: BorderRadius.circular(8)),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Padding(
              padding: const EdgeInsets.fromLTRB(12, 48, 12, 12),
              child: Stack(children: [
                Board(),
                BoardPiece(color: Colors.green, num: 1),
                BoardPiece(color: Colors.orange, num: 2),
              ]),
            ),
          ),
        ),
      )),
    );
  }
}
