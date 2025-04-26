class Car {
  // Instance Variable (belongs to each object)
  String color;

  // Class Variable (belongs to class, shared)
  static int numberOfCars = 0;

  // Constructor
  Car(this.color) {
    numberOfCars++; // Every time a new Car is made, increase count
  }

  // Instance Method (works with individual object)
  void displayColor() {
    print('The car color is $color');
  }

  // Class Method (works without object)
  static void showTotalCars() {
    print('Total cars created: $numberOfCars');
  }
}

class Bike {
  static void pname() {
    print('bike ');
  }
}

void main() {
  var car1 = Car('Red');
  var car2 = Car('Blue');
  Bike.pname();

  car1.displayColor(); // Output: The car color is Red
  car2.displayColor(); // Output: The car color is Blue

  Car.showTotalCars(); // Output: Total cars created: 2
}
