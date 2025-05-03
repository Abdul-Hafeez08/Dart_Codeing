class Person {
  // Non-nullable fields initialized with default values
  String name = 'Unknown';
  int age = 0;

  // 1 Default Constructor
  Person() {
    print('Default constructor called');
  }

  // 2 Parameterized Constructor
  Person.parameterized(name, age) {
    print('Parameterized constructor called');
  }

  // 3 Named Constructor
  Person.guest() {
    name = 'Guest';
    age = 0;
    print('Named constructor "guest" called');
  }

  void display() {
    print('Name: $name, Age: $age');
  }
}

void main() {
  // Using default constructor
  var p1 = Person();
  p1.display(); // Name: Unknown, Age: 0

  // Using parameterized constructor
  var p2 = Person.parameterized('Ali', 4);
  p2.display(); // Name: Ali, Age: 25

  // Using named constructor
  var p3 = Person.guest();
  p3.display(); // Name: Guest, Age: 0
}
