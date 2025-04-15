void main() {
  Future<void> fetchItems() async {
    List<int> items = [1, 2, 3];
    for (var item in items) {
      await Future.delayed(Duration(seconds: 1)); // Simulate async work
      print('Fetched item $item');
    }
  }
}
