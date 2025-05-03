class Student {
  String _name = '';
  int _age = 0;

  set name(String value) {
    if (value.isNotEmpty) {
      _name = value;
    } else {
      print('Name cannot be empty.');
    }
  }

  // Getter for age
  int get age => _age;

  // Setter for age
  set age(int value) {
    if (value > 0) {
      _age = value;
    } else {
      print('Age must be greater than 0.');
    }
  }
}

void main() {
  Student s = Student();

  // setter
  s.name = 'Ali';
  s.age = 20;

  // getter
  print('Name: ${s.name}');
  print('Age: ${s.age}');
}
