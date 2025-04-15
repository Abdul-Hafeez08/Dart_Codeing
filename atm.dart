import 'dart:io';

void main() {
  double balance = 10000; // initial balance
  String pinCode = "1234"; // preset PIN

  print("=== Welcome to Simple ATM ===");
  stdout.write("Enter your 4-digit PIN: ");
  String enteredPin = stdin.readLineSync()!;

  if (enteredPin == pinCode) {
    while (true) {
      print("\nATM Menu:");
      print("1. Check Balance");
      print("2. Deposit");
      print("3. Withdraw");
      print("4. Exit");
      stdout.write("Select an option: ");
      String option = stdin.readLineSync()!;

      if (option == '1') {
        print("Your current balance is: \$${balance.toStringAsFixed(2)}");
      } else if (option == '2') {
        stdout.write("Enter amount to deposit: ");
        double deposit = double.parse(stdin.readLineSync()!);
        if (deposit > 0) {
          balance += deposit;
          print(
              "Deposited successfully! New balance: \$${balance.toStringAsFixed(2)}");
        } else {
          print("Invalid amount.");
        }
      } else if (option == '3') {
        stdout.write("Enter amount to withdraw: ");
        double withdraw = double.parse(stdin.readLineSync()!);
        if (withdraw > 0 && withdraw <= balance) {
          balance -= withdraw;
          print(
              "Withdrawal successful! Remaining balance: \$${balance.toStringAsFixed(2)}");
        } else {
          print("Insufficient balance or invalid amount.");
        }
      } else if (option == '4') {
        print("Thank you for using our ATM. Goodbye! 👋");
        break;
      } else {
        print("Invalid option. Please try again.");
      }
    }
  } else {
    print("Incorrect PIN. Access Denied.");
  }
}
