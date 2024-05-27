import 'dart:math';

import 'package:bmi_calculator/bmi_calculator/product/language/language_item.dart';

class Calculate {
  Calculate({required this.height, required this.weight});
  final double height;
  final double weight;
  double _bmi = 0;

  String calculateMetod() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 25) {
      return LanguageItems.overweight.languageString();
    } else if (_bmi > 18.5) {
      return LanguageItems.normal.languageString();
    } else {
      return LanguageItems.underweight.languageString();
    }
  }

  String getInterpretation() {
    if (_bmi >= 25) {
      return LanguageItems.overweightText.languageString();
    } else if (_bmi > 18.5) {
      return LanguageItems.normalText.languageString();
    } else {
      return LanguageItems.underweightText.languageString();
    }
  }
}
