import 'package:calculator/core/constants.dart';
import 'package:calculator/widgets/calc_button.dart';

import 'package:flutter/material.dart';

class ButtonGrid extends StatelessWidget {
  const ButtonGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: NeverScrollableScrollPhysics(),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 4,
      ),
      itemCount: buttons.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.all(4.0),
          child: CalcButton(buttonPressed: () {}, text: buttons[index]),
        );
      },
    );
  }
}
