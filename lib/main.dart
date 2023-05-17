import 'package:flutter/material.dart';
import 'package:roll_dice/dice_roller.dart';

void main() {
  runApp(
 const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(body: GredientColor()),
    ),
  );
}

class GredientColor extends StatelessWidget {
  const GredientColor({super.key});

 
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Color.fromARGB(255, 169, 4, 64),
            Color.fromARGB(255, 79, 1, 1),
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: const Center(
        child: DiceRoller()
      ),
    );
  }
}
