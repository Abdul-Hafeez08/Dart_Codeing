void main() {
  // Integer
  int age = 23;
  print('Age: $age');

  // Double
  double price = 19.99;
  print('Price: $price');

  // Num (can hold both int and double)
  num score = 99.5;
  print('Score: $score');
  score = 100; // Still valid
  print('Updated Score: $score');

  // String
  String name = 'Abdul Hafeez';
  print('Name: $name');

  // Boolean
  bool isLoggedIn = true;
  print('Is Logged In: $isLoggedIn');

  // List (array)
  List<dynamic> fruits = ['Apple', 'Banana', 5, 5];
  print('Fruits: ${fruits[1]}');

  // Set (unique values only)
  Set<int> uniqueNumbers = {
    1,
    2,
    3,
  };
  print('Unique Numbers: $uniqueNumbers');

  // Map (key-value pair)
  Map<String, dynamic> user = {
    'name': 'AHT',
    'age': 23,
    'isPremium': false,
  };
  print('User Map: ${user['name']}');

  // Dynamic (can change type at runtime)
  dynamic data = 'Hello';
  print('Dynamic (String): $data');
  data = 123;
  print('Dynamic (int): $data');

  // var (type inferred at compile time)
  var city = 'Karachi';
  print('City: $city');
}
