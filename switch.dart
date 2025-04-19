void main() {
  double num1 = 10.0;
  double num2 = 5.0;
  String operator = "-";

  double? result;

  switch (operator) {
    case "+":
      result = num1 + num2;
      break;
    case "-":
      result = num1 - num2;
      print('$result');
      break;
    case "*":
      result = num1 * num2;
      break;
    case "/":
      if (num2 != 0) {
        result = num1 / num2;
      } else {
        print("Error: Division by zero!");
        return;
      }
      break;
    default:
      print("Error: Invalid operator!");
      return;
  }

  print("$num1 $operator $num2 = $result");
}
