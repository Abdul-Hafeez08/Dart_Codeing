class Person {
  // Non-nullable fields initialized with default values
  String name = 'Unknown';
  int age = 0;

  // 1️⃣ Default Constructor
  Person() {
    print('Default constructor called');
  }

  // 2️⃣ Parameterized Constructor
  Person.parameterized(this.name, this.age) {
    print('Parameterized constructor called');
  }

  // 3️⃣ Named Constructor
  Person.guest() {
    name = 'Guest';
    age = 0;
    print('Named constructor "guest" called');
  }

  // 4️⃣ Named Optional Parameters Constructor
  Person.optional({this.name = 'Optional', this.age = 18}) {
    print('Named optional constructor called');
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
  var p2 = Person.parameterized('Ali', 25);
  p2.display(); // Name: Ali, Age: 25

  // Using named constructor
  var p3 = Person.guest();
  p3.display(); // Name: Guest, Age: 0

  // Using named optional parameters
  var p4 = Person.optional(age: 30);
  p4.display(); // Name: Optional, Age: 30
}
