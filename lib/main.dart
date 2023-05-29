//import material.dart file, the material dart file contains all the material design widgets
// material design system contains many useful reuable widgets like buttons, cards, drawers, etc
import "package:flutter/material.dart";

//import the button widget
import 'package:dice_game_app/button_widget.dart';

//import the dice widget

// main function is the starting point for all our flutter apps

void main() {
  // the material app is the root widget of our app
  runApp(MaterialApp(
    // scaffold widget is a widget that provides a default app bar, title and a body property that holds the main content of the app, layout for the major Material Components
    home: Scaffold(
      appBar: AppBar(
        title: const Text("Dice Game"),
        backgroundColor: const Color.fromARGB(255, 0, 0, 0),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ButtonWidget(),
          ],
        ),
      ),
      backgroundColor: const Color.fromARGB(255, 44, 37, 37),
    ),
  ));
}
