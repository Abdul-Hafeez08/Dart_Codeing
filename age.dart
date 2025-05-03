import 'dart:io';

void main() {
  stdout.write('Enter your birth year: ');
  int? birthYear = int.tryParse(stdin.readLineSync() ?? '');

  if (birthYear == null) {
    print(' Invalid year.');
    return;
  }

  int currentYear = DateTime.now().year;
  int age = currentYear - birthYear;

  print('\nYou are $age years old.');

  if (age < 13) {
    print(' You are a child.');
  } else if (age < 18) {
    print(' You are a teenager.');
  } else if (age < 60) {
    print(' You are an adult.');
  } else {
    print(' You are a senior citizen.');
  }
}
