import 'dart:math';
import 'package:flutter/material.dart';

class DiceRoller extends StatefulWidget {
  const DiceRoller({super.key});

  @override
  State<DiceRoller> createState() {
    return _DiceRollerState();
  }
}

class _DiceRollerState extends State<DiceRoller> {
  void rolldice() {
    setState(() {
      currentDiceRoll = Random().nextInt(6) + 1;
    });
  }

  var currentDiceRoll = 2;

  @override
  Widget build(context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          "assets/images/dice-$currentDiceRoll.png",
          width: 200,
        ),
        const SizedBox(
          height: 20,
        ),
        ElevatedButton(
          onPressed: rolldice,
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color.fromARGB(255, 98, 13, 13),
            fixedSize: const Size(150, 30),
            foregroundColor: Colors.white,
            textStyle:
                const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          child: const Text("Roll Dice"),
        ),
      ],
    );
  }
}
