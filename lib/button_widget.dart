import "package:flutter/material.dart"; //import material package
import 'dart:math';

class ButtonWidget extends StatefulWidget {
  ButtonWidget({super.key});

  @override
  _ButtonWidgetState createState() => _ButtonWidgetState();
}

class _ButtonWidgetState extends State<ButtonWidget> {
  int diceNumber = 1;

  void rollDice() {
    setState(() {
      diceNumber = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(children: [
      Image.asset(
        "assets/images/dice-images/dice-$diceNumber.png",
      ),
      const SizedBox(
        height: 50,
      ),
      TextButton(
        style: TextButton.styleFrom(
          padding: const EdgeInsets.all(30),
          textStyle: const TextStyle(fontSize: 20),
          backgroundColor: Colors.white,
        ),
        onPressed: rollDice,
        child: const Text("Roll the Dice!"),
      )
    ]));
  }
}
