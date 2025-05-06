import 'dart:io';

void main() {
  try {
    stdout.write("Enter a number: ");
    String? input = stdin.readLineSync();
    int number = int.parse(input!);

    int result = 100 ~/ number;
    print("Result: $result");
  } on FormatException {
    print("FormatException: Please enter a valid integer.");
  } on UnsupportedError catch (e) {
    print("DivisionByZero: Cannot divide by zero. ${e.message}");
  } catch (e) {
    print("An unexpected error occurred: $e");
  } finally {
    print("Execution completed.");
  }
}
