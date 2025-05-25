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
      body: Column(
        children: [
          CalculatorDisplay(text: calculatorState.display),
          Expanded(
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
