import 'dart:io';

void main() {
  List<Map<String, dynamic>> cart = [];

  while (true) {
    print('\n=== Simple Shopping Cart ===');
    print('1. Add item');
    print('2. Remove item');
    print('3. View cart');
    print('4. Checkout');
    print('5. Exit');
    stdout.write('Choose an option: ');
    String? choice = stdin.readLineSync();

    switch (choice) {
      case '1':
        stdout.write('Enter item name: ');
        String? name = stdin.readLineSync();
        stdout.write('Enter item price: ');
        double? price = double.tryParse(stdin.readLineSync() ?? '');
        if (name != null && price != null) {
          cart.add({'name': name, 'price': price});
          print('✅ $name added to cart.');
        } else {
          print('❌ Invalid input.');
        }
        break;

      case '2':
        stdout.write('Enter item name to remove: ');
        String? nameToRemove = stdin.readLineSync();

        int initialLength = cart.length;
        cart.removeWhere((item) => item['name'] == nameToRemove);
        bool removed = cart.length < initialLength;

        removed
            ? print('🗑️ $nameToRemove removed.')
            : print('❌ Item not found.');
        break;

      case '3':
        if (cart.isEmpty) {
          print('🛒 Cart is empty.');
        } else {
          print('\n🧾 Your Cart:');
          for (var item in cart) {
            print('- ${item['name']} : \$${item['price']}');
          }
        }
        break;

      case '4':
        if (cart.isEmpty) {
          print('🛍️ Nothing to checkout.');
        } else {
          double total = cart.fold(0, (sum, item) => sum + item['price']);
          print('\n=== Receipt ===');
          for (var item in cart) {
            print('${item['name']} - \$${item['price']}');
          }
          print('-----------------');
          print('Total: \$${total.toStringAsFixed(2)}');
          print('✅ Thank you for shopping!');
          cart.clear();
        }
        break;

      case '5':
        print('👋 Goodbye!');
        return;

      default:
        print('❌ Invalid option. Try again.');
    }
  }
}
