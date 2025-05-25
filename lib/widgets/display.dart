import 'package:flutter/material.dart';


class CalculatorDisplay extends StatelessWidget {
  final String text;
  const CalculatorDisplay({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height * 0.14,
        padding: EdgeInsets.all(8.0),
        decoration: BoxDecoration(
          border: Border.all(),
          ),
        child: FittedBox(
          alignment: Alignment.centerRight,
          child: Text(text),
          ),
      ),
    );
  }
}