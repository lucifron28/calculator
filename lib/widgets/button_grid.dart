import 'package:calculator/widgets/calc_button.dart';
import 'package:flutter/material.dart';

class ButtonGrid extends StatelessWidget {
  final List<String> buttons;
  final void Function(String) buttonPressed;
  const ButtonGrid({super.key, required this.buttons, required this.buttonPressed});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: NeverScrollableScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 4,
      ),
      itemCount: buttons.length,
      itemBuilder: (context, index) {
      final label = buttons[index];
        return Padding(
          padding: const EdgeInsets.all(4.0),
          child: CalcButton(buttonPressed: buttonPressed, text: label),
        );
      },
    );
  }
}
