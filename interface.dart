abstract class Animal {
  void makeSound(); // abstract method
  void eat();
}

// Implementing the interface
class Dog implements Animal {
  @override
  void makeSound() {}

  @override
  void eat() {
    print('Dog eats bones');
  }
}

class Cat implements Animal {
  @override
  void makeSound() {
    print('Cat meows');
  }

  @override
  void eat() {
    print('Cat eats fish');
  }
}

void main() {
  Animal myDog = Dog();
  myDog.makeSound(); // Dog barks
  myDog.eat(); // Dog eats bones

  Animal myCat = Cat();
  myCat.makeSound(); // Cat meows
  myCat.eat(); // Cat eats fish
}
