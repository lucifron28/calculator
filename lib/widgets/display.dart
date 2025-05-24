import 'package:flutter/material.dart';;


class CalculatorDisplay extends StatelessWidget {
  final String text;
  const CalculatorDisplay({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(),
        color: Colors.black,
        ),
      child: Text(text),
    );
  }
}