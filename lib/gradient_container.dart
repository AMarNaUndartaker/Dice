import 'package:flutter/material.dart';
import 'package:myapp/styled_text.dart';
import 'dart:math';

class GradientContainer extends StatefulWidget {
  const GradientContainer({super.key});

  @override
  State<GradientContainer> createState() => _GradientContainerState();
}

class _GradientContainerState extends State<GradientContainer> {
  int currentDiceImage = 5; // Start with dice-5.png

  void rollDice() {
    setState(() {
      currentDiceImage = Random().nextInt(6) + 1; // Generate random number 1-6
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
// Suggested code may be subject to a license. Learn more: ~LicenseLog:2567534445.
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Colors.black,
            Colors.red,
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      // child: const Center(child: StyledText('Nani')),
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'assets/image/dice-$currentDiceImage.png', // Use currentDiceImage
            width: 200,
            height: 200,
          ),
          const SizedBox(height: 20,),
          Column(
            children: [
              TextButton(
                onPressed: rollDice, // Call the rollDice function
                style: TextButton.styleFrom(
                  padding: const EdgeInsets.only(top: 20),
                  foregroundColor: Colors.yellow,
                  textStyle: TextStyle(fontSize: 30),
              ),
              child:StyledText('Roll dice')),
            ],
          )
        ],
      ),
      ),
    );
  }
}