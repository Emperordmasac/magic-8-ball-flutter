// ignore_for_file: prefer_const_constructors

import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.blue.shade900,
      appBar: AppBar(
        title: Text('Magic 8 Ball'),
        backgroundColor: Colors.blue.shade600,
      ),
      body: MagicBall(),
    ),
  ));
}

class MagicBall extends StatefulWidget {
  const MagicBall({super.key});

  @override
  State<MagicBall> createState() => _MagicBallState();
}

class _MagicBallState extends State<MagicBall> {
  int ballNumber = 1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(
            child: TextButton(
              onPressed: () => {askMagicBall()},
              child: Image.asset('images/ball$ballNumber.png'),
            ),
          ),
        ],
      ),
    );
  }

  void askMagicBall() => setState(
        () => {ballNumber = Random().nextInt(5) + 1},
      );
}
