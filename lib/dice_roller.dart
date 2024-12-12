import 'dart:math';

import 'package:flutter/material.dart';
import 'package:roll_dice_app/styled_text.dart';

final randomazier = Random();


class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() => _DiceRollerState();
}

class _DiceRollerState extends State<DiceRoller> {
  var currentImage = 1;

  void roller() {
    setState(() {
      currentImage = randomazier.nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'assets/images/dice-$currentImage.png',
            width: 200,
          ),
          TextButton(
            onPressed: roller,
            style: TextButton.styleFrom(padding: const EdgeInsets.only(top: 20),),
            child: const StyledText('Dice Roll', 28, Colors.white),
          ),
        ],
      ),
    );
  }
}
