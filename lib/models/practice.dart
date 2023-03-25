import 'package:flutter/widgets.dart';

import '../logger/index.dart';

class PracticeModal with ChangeNotifier {
  int count = 0;

  PracticeModal();

  setCount(int newCount) {
    gl.d("new count: $newCount");
    count = newCount;
    notifyListeners();
  }
}
