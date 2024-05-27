import 'package:bmi_calculator/bmi_calculator/calculate/calculate.dart';
import 'package:bmi_calculator/bmi_calculator/product/global/navigator.dart';
import 'package:bmi_calculator/bmi_calculator/product/language/language_item.dart';
import 'package:bmi_calculator/bmi_calculator/product/widget/button/custom_button_widget.dart';
import 'package:bmi_calculator/bmi_calculator/state_managment/home_view_provider.dart';
import 'package:bmi_calculator/bmi_calculator/view/result/result_view.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class CalculateButton extends StatelessWidget {
  const CalculateButton({
    super.key,
  });

  final double _fontSize = 20;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ButtonWidget(
        onTap: () {
          Calculate calc = Calculate(
              height: context.read<HomeViewProvider>().progress, weight: context.read<HomeViewProvider>().weight);
          NavigatorManager().navigateToWidget(
            context,
            ResultView(
              height: calc.height.toString(),
              weight: calc.weight.toString(),
              bmiResult: calc.calculateMetod(),
              resultText: calc.getResult(),
              interpretation: calc.getInterpretation(),
            ),
          );
        },
        buttoName: LanguageItems.calculate.languageString(),
        fontSize: _fontSize,
      ),
    );
  }
}
