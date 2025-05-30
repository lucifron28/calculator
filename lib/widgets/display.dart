import 'package:flutter/material.dart';


class CalculatorDisplay extends StatelessWidget {
  final String text;
  const CalculatorDisplay({super.key, required this.text});

  static const double displayHeightFraction = 0.20;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: double.infinity,
        height: MediaQuery.of(context).size.height * displayHeightFraction,
        padding: const EdgeInsets.all(8.0),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.white),
        ),
        child: FittedBox(
          alignment: Alignment.centerRight,
          child: Text(
            text,
            style: TextStyle(color: Colors.white)
          ),
        ),
      ),
    );
  }
}
