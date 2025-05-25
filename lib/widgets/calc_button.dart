import 'package:flutter/material.dart';

class CalcButton extends StatelessWidget {
  final void Function(String) buttonPressed;
  final String text;

  const CalcButton({
    super.key,
    required this.buttonPressed,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () => buttonPressed(text),
      child: Text(text),
    );
  }
}
