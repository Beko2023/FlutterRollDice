import 'package:flutter/material.dart';
import 'dart:math';
// import "./styled_text.dart";

final randomizer = Random();

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() => _DiceRollerState();
}

class _DiceRollerState extends State<DiceRoller> {
  var randomNumber = 2;
  void rollDice() {
    setState(() => randomNumber = randomizer.nextInt(6) + 1);
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset("assets/images/dice-$randomNumber.png", width: 200),
        const SizedBox(
          height: 20,
        ),
        TextButton(
          onPressed: rollDice,
          style: TextButton.styleFrom(
            // padding: const EdgeInsets.all(20),
            foregroundColor: Colors.white,
            textStyle: const TextStyle(fontSize: 28),
          ),
          child: const Text("Roll Dice"),
        )
      ],
    );
  }
}
