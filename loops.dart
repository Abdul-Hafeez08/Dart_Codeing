void main() {
  for (int i = 0; i < 5; i++) {
    print('Iteration $i');
  }

// for in
  List<String> fruits = ['Apple', 'Banana', 'Orange'];
  for (var fruit in fruits) {
    print('Fruit: $fruit');
  }

  int count = 0;
  while (count < 3) {
    print('Count: $count');
    count++;
  }

  int num = 5;
  do {
    print('Number: $num');
    num--;
  } while (num > 0);
//Loop Control Statements
  for (int i = 0; i < 10; i++) {
    if (i == 4) {
      break; // Exits when i is 4
    }
    print(i);
  }
//contin
  for (int i = 0; i < 5; i++) {
    if (i == 2) {
      continue; // Skips printing 2
    }
    print(i);
  }
}
