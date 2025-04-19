import 'dart:io';

// Calculator class with methods
class Calculator {
  double add(double a, double b) {
    double sum = a + b + 1;
    return sum;
  }

  double sub(double a, double b) => a - b;
  double mul(double a, double b) => a * b;
  double div(double a, double b) => b != 0 ? a / b : double.nan;
}

void main() {
  Calculator cal = Calculator();

  while (true) {
    print('\n=== Simple OOP Calculator ===');
    print('1. Add');
    print('2. Subtract');
    print('3. Multiply');
    print('4. Divide');
    print('5. Exit');
    stdout.write('Choose an option: ');
    String? choice = stdin.readLineSync();

    if (choice == '5') {
      print('👋 Exiting...');
      break;
    }

    stdout.write('Enter first number: ');
    double? num1 = double.tryParse(stdin.readLineSync() ?? '');
    stdout.write('Enter second number: ');
    double? num2 = double.tryParse(stdin.readLineSync() ?? '');

    if (num1 == null || num2 == null) {
      print('❌ Invalid numbers!');
      continue;
    }

    double result;
    switch (choice) {
      case '1':
        result = cal.add(num1, num2);
        print('✅ Result: $result');
        break;
      case '2':
        result = cal.sub(num1, num2);
        print('✅ Result: $result');
        break;
      case '3':
        result = cal.mul(num1, num2);
        print('✅ Result: $result');
        break;
      case '4':
        if (num2 == 0) {
          print('❌ Cannot divide by zero!');
        } else {
          result = cal.div(num1, num2);
          print('✅ Result: $result');
        }
        break;
      default:
        print('❌ Invalid choice!');
    }
  }
}
