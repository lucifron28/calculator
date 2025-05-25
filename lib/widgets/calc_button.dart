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
      style: ButtonStyle(
        backgroundColor: WidgetStateProperty.all(const Color.fromARGB(255, 59, 58, 58)),
        foregroundColor: WidgetStateProperty.all(Colors.white),
      ),
      child: Text(text, style: TextStyle(fontSize: 20),),
    );
  }
}
