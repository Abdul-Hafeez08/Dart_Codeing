import 'dart:io';

void main() {
  print("Enter your name: ");
  String? name = stdin.readLineSync();

  print("Enter your age: ");
  int? age = int.tryParse(stdin.readLineSync()!);

  print("Enter your phone number: ");
  String? phone = stdin.readLineSync();

  print("\nHello, $name!");
  print("Age: $age");
  print("Phone: $phone");
}
