// 1. Encapsulation
class BankAccount {
  // private property
  double _balance = 0;

  // getter
  double get balance => _balance;

  // setter
  void deposit(double amount) {
    if (amount > 0) {
      _balance += amount;
    }
  }
}

// 2. Abstraction
abstract class Animal {
  void speak(); // abstract method (no body)
}

// 3. Inheritance
class Dog extends Animal {
  // 4. Polymorphism
  @override
  void speak() {
    print("Dog says: Woof!");
  }
}

class Cat extends Animal {
  @override
  void speak() {
    print("Cat says: Meow!");
  }
}

void main() {
  // Encapsulation
  BankAccount myAccount = BankAccount();
  myAccount.deposit(1000);
  print("Balance: ${myAccount.balance}");

  // Abstraction + Inheritance + Polymorphism
  Animal myDog = Dog();
  Animal myCat = Cat();

  myDog.speak(); // Output: Dog says: Woof!
  myCat.speak(); // Output: Cat says: Meow!
}
