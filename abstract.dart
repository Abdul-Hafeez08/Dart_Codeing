abstract class Animal {
  void makeSound(); // abstract method

  void eat() {
    print('Animal is eating'); // concrete method
  }
}

class Dog extends Animal {
  @override
  void makeSound() {
    print('Bark!');
  }
}

class Cat extends Animal {
  @override
  void makeSound() {
    print('Meow!');
  }
}

void main() {
  Dog dog = Dog();
  dog.makeSound(); // Bark!
  dog.eat(); // Animal is eating

  Cat cat = Cat();
  cat.makeSound(); // Meow!
  cat.eat(); // Animal is eating
}
