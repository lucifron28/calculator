import 'package:calculator/core/constants.dart';
import 'package:calculator/widgets/button_grid.dart';
import 'package:flutter/material.dart';
import 'package:calculator/widgets/display.dart';
import 'package:calculator/state/calculator_state.dart';

class CalculatorScreen extends StatefulWidget {
  const CalculatorScreen({super.key});

  @override
  State<CalculatorScreen> createState() => _CalculatorScreenState();
}

class _CalculatorScreenState extends State<CalculatorScreen> {
  final CalculatorState calculatorState = CalculatorState();

  void handleButtonPressed(label) {
    setState(() {
      calculatorState.handleInput(label);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Calculator')),
      backgroundColor: Colors.black,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: CalculatorDisplay(text: calculatorState.display),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: ButtonGrid(
              buttons: buttons,
              buttonPressed: handleButtonPressed,
            ),
          ),
        ],
      ),
    );
  }
}
