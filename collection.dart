import 'dart:collection';

base class MyNode extends LinkedListEntry<MyNode> {
  final String value;
  MyNode(this.value);
}

void main() {
  // HashSet: unique items
  var fruitSet = HashSet<String>();
  fruitSet.addAll(['apple', 'banana', 'apple']); // 'apple' won't repeat

  // HashMap: key-value pairs
  var userAges = HashMap<String, int>();
  userAges['Ali'] = 25;
  userAges['Sara'] = 28;

  // LinkedList: custom node structure
  final linkedNames = LinkedList<MyNode>();
  linkedNames.addAll([MyNode('A'), MyNode('B'), MyNode('C')]);

  // Nested Collections
  List<List<int>> matrix = [
    [1, 2],
    [3, 4]
  ];

  Map<String, List<String>> courses = {
    'Ali': ['Math', 'Physics'],
    'Sara': ['Biology', 'Chemistry']
  };

  Map<String, Map<String, int>> marks = {
    'Ali': {'Math': 90, 'Physics': 85},
    'Sara': {'Biology': 95, 'Chemistry': 88}
  };

  List<Map<String, dynamic>> users = [
    {'name': 'Ali', 'age': 25},
    {'name': 'Sara', 'age': 28}
  ];

  // Print examples
  print('HashSet: $fruitSet');
  print('HashMap: $userAges');
  print('LinkedList: ${[for (var node in linkedNames) node.value]}');
  print('Matrix[0][1]: ${matrix[0][1]}');
  print('Courses of Ali: ${courses['Ali']}');
  print('Marks of Sara in Biology: ${marks['Sara']?['Biology']}');
  print('Second user name: ${users[1]['name']}');
}
