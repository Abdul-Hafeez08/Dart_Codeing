void main() {
  // Arithmetic operators
  int a = 10;
  int b = 5;
  print('Arithmetic Operators:');
  print('a + b = ${a + b}'); // Addition
  print('a - b = ${a - b}'); // Subtraction
  print('a * b = ${a * b}'); // Multiplication
  print('a / b = ${a / b}'); // Division
  print('a % b = ${a % b}'); // Modulo (remainder)

  // Relational operators
  print('\nRelational Operators:');
  print('a == b: ${a == b}'); // Equal to
  print('a != b: ${a != b}'); // Not equal to
  print('a > b: ${a > b}'); // Greater than
  print('a < b: ${a < b}'); // Less than
  print('a >= b: ${a >= b}'); // Greater than or equal to
  print('a <= b: ${a <= b}'); // Less than or equal to

  // Logical operators
  bool x = true;
  bool y = false;

  print('\nLogical Operators:');
  print('x && y: ${x && y}'); // Logical AND
  print('x || y: ${x || y}'); // Logical OR
  print('!x: ${!x}'); // Logical NOT

  // Assignment operators
  num c = 5;
  print('\nAssignment Operators:');
  c += 3; // c = c + 3
  print('c += 3: $c');
  c -= 2; // c = c - 2
  print('c -= 2: $c');
  c *= 2; // c = c * 2
  print('c *= 2: $c');
  c /= 4; // c = c / 4
  print('c /= 4: $c');
  c %= 3; // c = c % 3
  print('c %= 3: $c');
  c ~/= 1; // c = c ~/ 1 (integer division)
  print('c ~/= 1: $c');

  // Conditional (ternary) operator
  int age = 18;
  String result = (age >= 18) ? 'Adult' : 'Minor';
  print('\nConditional (ternary) Operator:');
  print('Age: $age, Result: $result');

  // Null-aware operators
  String? name = null;
  String? greeting = name ?? 'Guest';
  print('\nNull-aware Operators:');
  print('Greeting: $greeting');
}
