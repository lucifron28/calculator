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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Calculator')),
      body: Column(
        children: [
          CalculatorDisplay(text: input),
          Expanded(child: ButtonGrid()),
          ]
        ),
    );
  }
}
