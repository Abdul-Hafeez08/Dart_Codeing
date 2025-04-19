void main() {
  String text = " Dart ";
  List<int> numbers = [1, 2, 3, 4];
  //String  properties
  print("String: '$text'");
  print("Length: ${text.length}");
  print("Upper: ${text.toUpperCase()}");
  print("Trim: '${text.trim()}'");
  print("Contains 'a': ${text.contains('a')}");
  print("Substring (1,3): ${text.substring(1, 3)}");
  print("IsEmpty: ${text.isEmpty}");
  print("StartsWith 'D': ${text.startsWith('D')}");
  print("Split: ${text.split(' ')}");
  print("PadLeft: '${text.padLeft(8, '*')}'");
  //List  properties
  print("List: $numbers");
  print("Length: ${numbers.length}");
  print("First: ${numbers.first}");
  print("Last: ${numbers.last}");
  print("Contains 2: ${numbers.contains(2)}");
  print("Sublist (1,3): ${numbers.sublist(1, 3)}");
  print("IsEmpty: ${numbers.isEmpty}");
  print("IndexOf 3: ${numbers.indexOf(3)}");
  print("Reversed: ${numbers.reversed.toList()}");
  // Map Operations
  Map<String, int> ageMap = {"Alice": 25, "Bob": 30};
  print("Map: $ageMap");
  print("Keys: ${ageMap.keys}");
  print("Values: ${ageMap.values}");
  print("Contains Key 'Alice': ${ageMap.containsKey('Alice')}");
  print("Contains Value 30: ${ageMap.containsValue(30)}");
  print("Length: ${ageMap.length}");
  print("IsEmpty: ${ageMap.isEmpty}");
  print("Access 'Bob': ${ageMap['Bob']}");
  print("Entries: ${ageMap.entries}");
}
