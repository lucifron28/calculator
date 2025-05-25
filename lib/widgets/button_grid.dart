import 'package:calculator/widgets/calc_button.dart';
import 'package:flutter/material.dart';

class ButtonGrid extends StatelessWidget {
  final List<String> buttons;
  final void Function(String) buttonPressed;
  const ButtonGrid({super.key, required this.buttons, required this.buttonPressed});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
          width: double.infinity,
          child: GridView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              childAspectRatio: 1,
              crossAxisCount: 4,
              mainAxisSpacing: 4,
              crossAxisSpacing: 4
              
            ),
            itemCount: buttons.length,
            itemBuilder: (context, index) {
            final label = buttons[index];
              return Padding(
                padding: const EdgeInsets.all(0),
                child: CalcButton(buttonPressed: buttonPressed, text: label),
              );
            },
          ),
        ),
      ],
    );
  }
}
