void main() {
  // 1. List of Lists
  List<List<int>> matrix = [
    [1, 2],
    [3, 4]
  ];
  print("Matrix Value (0,1): ${matrix[0][1]}");

  // 2. Map of Lists
  Map<String, List<String>> studentSubjects = {
    'Ali': ['Math', 'Physics'],
    'Sara': ['Biology', 'Chemistry']
  };
  print("Ali's Subjects: ${studentSubjects['Ali']}");

  // 3. Map of Maps (Subject scores per student)
  Map<String, Map<String, int>> scores = {
    'Ali': {'Math': 90, 'Physics': 85},
    'Sara': {'Biology': 95, 'Chemistry': 88}
  };
  print("Sara's Biology Score: ${scores['Sara']?['Biology']}");

  // 4. List of Maps
  List<Map<String, dynamic>> users = [
    {'name': 'Ali', 'age': 22},
    {'name': 'Sara', 'age': 24}
  ];
  print("Second User's Name: ${users[1]['name']}");
}
