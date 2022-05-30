import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      backgroundColor: const Color(0xFF673AB7),
      appBar: AppBar(
        backgroundColor: const Color(0xFF512DA8),
        title: const Text('Dice'),
        centerTitle: true,
      ),
      body: const DicePage(),
    ),
  ));
}

class DicePage extends StatefulWidget {
  const DicePage({Key? key}) : super(key: key);

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int leftDice = 1;
  int rightDice = 1;

  void rollDice() {
    setState(() {
      leftDice = Random().nextInt(5) + 1;
      rightDice = Random().nextInt(5) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: TextButton(
              onPressed: () {
                rollDice();
              },
              child: Image.asset('images/dice$leftDice.png'),
            ),
          ),
          Expanded(
            child: TextButton(
              onPressed: () {
                rollDice();
              },
              child: Image.asset('images/dice$rightDice.png'),
            ),
          ),
        ],
      ),
    );
  }
}
