class Animal {
  static int totalAnimals = 0; // static variable

  String name;

  Animal(this.name) {
    totalAnimals++; // increment static count when any Animal is created
  }

  void display() {
    print("Animal name: $name");
  }
}

class Dog extends Animal {
  String breed;

  Dog(this.breed, String name)
      : super(name); // using super to call parent constructor

  void showDetails() {
    super.display(); // using super to call parent method
    print(
        "Dog breed: ${this.breed}"); // using this to refer to current class property
    print(
        "Total animals created: ${Animal.totalAnimals}"); // accessing static variable
  }
}

void main() {
  Dog dog1 = Dog("Labrador", "Buddy");
  dog1.showDetails();

  Dog dog2 = Dog("Husky", "Snow");
  dog2.showDetails();
}
