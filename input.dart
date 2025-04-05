import 'dart:io';

void main() {
  // String input
  stdout.write('Enter your name: ');
  String? name = stdin.readLineSync();
  print('Hello, $name!');

  // Integer input
  stdout.write('Enter your age: ');
  String? ageInput = stdin.readLineSync();
  int age = int.parse(ageInput!);
  print('You are $age years old.');

  // Double input
  stdout.write('Enter product price: ');
  double price = double.parse(stdin.readLineSync()!);
  print('The price is \$${price.toStringAsFixed(2)}');

  // Boolean input
  stdout.write('Are you a student? (true/false): ');
  bool isStudent = stdin.readLineSync()!.toLowerCase() == 'true';
  print('Student status: $isStudent');

  // List input
  stdout.write('Enter 3 favorite colors (comma separated): ');
  List<String> colors = stdin.readLineSync()!.split(',');
  print('Your favorite colors are: ${colors.map((e) => e.trim()).toList()}');

  // Map-like input
  stdout.write('Enter your city and country (comma separated): ');
  var location = stdin.readLineSync()!.split(',');
  Map<String, String> userLocation = {
    'city': location[0].trim(),
    'country': location[1].trim()
  };
  print('Location: ${userLocation['city']}, ${userLocation['country']}');
}
