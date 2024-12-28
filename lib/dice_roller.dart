import 'dart:math';

import 'package:flutter/material.dart';

var ActiveDiceImage = 'assets/image/dice-1.png';

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});
  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image.asset(
          'assets/image/dice-6.png', // Use currentDiceImage
          width: 200,
          height: 200,
        ),
        const SizedBox(
          height: 20,
        ),
        Column(
          children: [
            TextButton(
                onPressed: rollDice, // Call the rollDice function
                style: TextButton.styleFrom(
                  padding: const EdgeInsets.only(top: 20),
                  foregroundColor: Colors.yellow,
                  textStyle: TextStyle(fontSize: 30),
                ),
                child: const Text('Roll dice')),
          ],
        ),
      ],
    );
  }

  void rollDice() {
    var diceRoll = Random().nextInt(6) + 1;
    ActiveDiceImage = 'assets/images/dice-$diceRoll.png';
  }
}
