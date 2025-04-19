// Class definition
class Student {
  // Properties (variables)
  String name;
  int age;

  // Constructor
  Student(this.name, this.age);

  // Method (function)
  void showDetails() {
    print('Name: $name');
    print('Age: $age');
  }
}

void main() {
  // Creating an object
  Student student1 = Student('Abdul Hafeez', 23);
  Student student2 = Student('Abdul ', 33);
  student1.showDetails();
  student2.showDetails();
}
