import 'package:flutter/material.dart';

class StateManager extends ChangeNotifier {
  int count = 00;
  void increase() {
    count++;
    notifyListeners();
  }

  int bigText = 50;
  void decrease() {
    bigText--;
    notifyListeners();
  }
}
