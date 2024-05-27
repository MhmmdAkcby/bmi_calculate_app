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
    }
  }
}
