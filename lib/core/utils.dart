import 'package:math_expressions/math_expressions.dart';
import 'package:logger/logger.dart';

final logger = Logger();

Expression? formatToExpression(String input) {
  try {
    ExpressionParser p = GrammarParser();
    String sanitizedInput = input.replaceAll('x', '*').replaceAll('÷', '/');
    return p.parse(sanitizedInput);
  } catch (e) {
    logger.e("Invalid input: $e");
    return null;
  }
}

String formatResult(double result) {
  if (result == result.toInt()) {
    return result.toInt().toString();
  }
  return result.toString();
}
