import 'package:flutter/material.dart';
import 'package:roll_dice_app/decoration_container.dart';

void main() {
  runApp(
    const MaterialApp(
      home: Scaffold(
        body: DecorationContainer([Colors.white, Colors.black]),
      ),
    ),
  );
}


