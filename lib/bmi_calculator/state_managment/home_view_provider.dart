import 'package:flutter/material.dart';

class HomeViewProvider extends ChangeNotifier {
  double progress = 170;
  double weight = 60;
  double age = 20;

  void onChange(value) {
    progress = value;
    notifyListeners();
  }

  void decrement(String type) {
    if (type == 'weight' && weight > 20) {
      weight--;
    } else if (type == 'age' && age > 10) {
      age--;
    }
    notifyListeners();
  }

  void increment(String type) {
    if (type == 'weight') {
      weight++;
    } else if (type == 'age') {
      age++;
    }
    notifyListeners();
  }
}
