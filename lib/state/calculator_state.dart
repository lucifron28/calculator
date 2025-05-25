import 'package:calculator/services/calculator_service.dart';
import 'package:logger/logger.dart';

class CalculatorState {
  String display = "0";
  final List<String> _operators = ["+", "-", "x", "÷", "%"];
  final List<String> _utilities = ["AC", "DEL", "="];
  final logger = Logger();

  void handleInput(String input) {
    if (_utilities.contains(input)) {
      _handleUtilityInput(input);
    } else {
      _appendInput(input);
    }
  }

  void _appendInput(input) {
    if (display == "0" && !_operators.contains(input)) {
      display = input;
    } else if (!_operators.contains(display[display.length - 1]) &&
        _operators.contains(input)) {
      display += display.substring(0, display.length - 1) + input;
    } else {
      display += input;
    }
  }

  void clear() {
    display = "0";
  }

  void deleteLast() {
    if (display.length > 1) {
      display = display.substring(0, display.length - 1);
    } else {
      display = "0";
    }
  }

  void evaluate() {
    try {
      display = evaluateExpression(display);
    } catch (e) {
      logger.e("Error: $e");
    }
  }

  void _handleUtilityInput(input) {
    switch (input) {
      case "AC":
        clear();
        break;
      case "DEL":
        deleteLast();
        break;
      case "=":
        evaluate();
        break;
    }
  }
}
