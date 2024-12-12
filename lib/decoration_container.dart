import 'package:flutter/material.dart';
import 'package:roll_dice_app/dice_roller.dart';
import 'package:roll_dice_app/variables.dart';

class DecorationContainer extends StatelessWidget {
  const DecorationContainer(this.colors, {super.key});

  final List<Color> colors;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: colors,
          begin: beginAlignment,
          end: endAlignment,
        ),
      ),
      child: const DiceRoller(),
    );
  }
}
