import 'dart:async';

void main() {
  print('🕒 Digital Clock - Press Ctrl+C to stop\n');

  Timer.periodic(Duration(seconds: 1), (timer) {
    DateTime now = DateTime.now();
    print('Current Time: ${now.hour.toString().padLeft(2, '0')}:'
        '${now.minute.toString().padLeft(2, '0')}:'
        '${now.second.toString().padLeft(2, '0')}');
  });
}
