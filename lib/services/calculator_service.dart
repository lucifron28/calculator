import 'package:calculator/core/utils.dart';
import 'package:math_expressions/math_expressions.dart';

String evaluateExpression(String exp) {
  final Expression? expression = formatToExpression(exp);

  if (expression == null) {
    return "Error";
  }

  final double ans = expression.evaluate(EvaluationType.REAL, ContextModel());

  final String result = formatResult(ans);
  return result;
}
