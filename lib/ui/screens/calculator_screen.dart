import 'package:calculator/core/constants.dart';
import 'package:calculator/widgets/button_grid.dart';
import 'package:flutter/material.dart';
import 'package:calculator/widgets/display.dart';
class CalculatorScreen extends StatefulWidget {
  const CalculatorScreen({super.key});

  @override
  State<CalculatorScreen> createState() => _CalculatorScreenState();
}

class _CalculatorScreenState extends State<CalculatorScreen> {
  String input = "0";

  void handleButtonPressed(label) {
    // TODO create my own state class to handle the display
    // TODO create a checker if the button is non digit and handle the state properly
    setState(() {
      if (input == "0") {
        input = label;
      } else {
        input += label;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Calculator')),
      body: Column(
        children: [
          CalculatorDisplay(text: input),
          Expanded(
            child: ButtonGrid(buttons: buttons, buttonPressed: handleButtonPressed),
          ),
        ],
      ),
    );
  }
}
