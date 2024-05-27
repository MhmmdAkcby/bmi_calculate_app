enum LanguageItems {
  appBarName,
  male,
  female,
  height,
  weight,
  age,
  calculate,
  cm,
  reCalculate,
  yourResult,
  overweight,
  normal,
  underweight,
  overweightText,
  normalText,
  underweightText,
}

extension LanguageItemExtension on LanguageItems {
  String languageString() {
    switch (this) {
      case LanguageItems.appBarName:
        return 'BMI CALCULATOR';
      case LanguageItems.male:
        return 'MALE';
      case LanguageItems.female:
        return 'FEMALE';
      case LanguageItems.height:
        return 'HEIGHT';
      case LanguageItems.weight:
        return 'WEIGHT';
      case LanguageItems.age:
        return 'AGE';
      case LanguageItems.calculate:
        return 'CALCULATE';
      case LanguageItems.cm:
        return 'cm';
      case LanguageItems.reCalculate:
        return 'RE-CALCULATE';
      case LanguageItems.yourResult:
        return 'Your Result';
      case LanguageItems.overweight:
        return 'Overweight';
      case LanguageItems.normal:
        return 'Normal';
      case LanguageItems.underweight:
        return 'Underweight';
      case LanguageItems.overweightText:
        return 'You have a heigher than nomal body weight. Try to exercise more.';
      case LanguageItems.normalText:
        return 'You have a normal body weight. Good job!';
      case LanguageItems.underweightText:
        return 'You have a lower than normal body weight. You can eat a bit more.';
    }
  }
}
