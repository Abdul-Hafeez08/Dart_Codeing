class Student {
  String name;
  int age;

  // 1️⃣ Regular Parameterized Constructor
  Student(String n, int a)
      : name = n,
        age = a;

  // 2️⃣ Shorthand Constructor using 'this'
  Student.shorthand(this.name, this.age);

  // 3️⃣ Named Parameterized Constructor
  Student.named({required this.name, required this.age});

  void showInfo(String type) {
    print('$type → Name: $name, Age: $age');
  }
}

void main() {
  // Using Regular Constructor
  Student s1 = Student('Ali', 20);
  s1.showInfo('Regular Constructor');

  // Using Shorthand Constructor
  Student s2 = Student.shorthand('Ayesha', 22);
  s2.showInfo('Shorthand Constructor');

  // Using Named Constructor
  Student s3 = Student.named(name: 'Usman', age: 25);
  s3.showInfo('Named Constructor');
}
