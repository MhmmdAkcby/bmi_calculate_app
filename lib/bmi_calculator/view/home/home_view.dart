import 'package:bmi_calculator/bmi_calculator/calculate/calculate.dart';
import 'package:bmi_calculator/bmi_calculator/product/global/navigator.dart';
import 'package:bmi_calculator/bmi_calculator/product/language/language_item.dart';
import 'package:bmi_calculator/bmi_calculator/product/widget/button/button_widget.dart';
import 'package:bmi_calculator/bmi_calculator/product/widget/button/round_icon_button.dart';
import 'package:bmi_calculator/bmi_calculator/product/widget/card/card_widget.dart';
import 'package:bmi_calculator/bmi_calculator/product/widget/card/female_card.dart';
import 'package:bmi_calculator/bmi_calculator/product/widget/slider/slider_widget.dart';
import 'package:bmi_calculator/bmi_calculator/product/widget/card/male_card.dart';
import 'package:bmi_calculator/bmi_calculator/view/result/result_view.dart';
import 'package:flutter/material.dart';

part 'partof_appbar.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  double progress = 170;
  double weight = 60;
  double age = 20;

  void onChange(value) {
    setState(() {
      progress = value;
    });
  }

  void decrement(String type) {
    setState(() {
      if (type == 'weight' && weight > 20) {
        weight--;
      } else if (type == 'age' && age > 10) {
        age--;
      }
    });
  }

  void increment(String type) {
    setState(() {
      if (type == 'weight') {
        weight++;
      } else if (type == 'age') {
        age++;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const _AppBar(),
      body: Column(
        children: [
          const Row(
            children: [MaleCard(), FemaleCard()],
          ),
          SliderWidget(
            progress: progress,
            onChange: (value) {
              onChange(value);
            },
          ),
          Row(
            children: [
              CardWidget(
                textName: LanguageItems.weight.languageString(),
                number: weight.toInt().toString(),
                cardWidget: Row(
                  children: [
                    RoundIconButton(
                      onPressed: () {
                        increment('weight');
                      },
                      icon: Icons.add,
                    ),
                    const SizedBox(width: 10),
                    RoundIconButton(
                      onPressed: () {
                        decrement('weight');
                      },
                      icon: Icons.remove,
                    ),
                  ],
                ),
              ),
              CardWidget(
                textName: LanguageItems.age.languageString(),
                number: age.toInt().toString(),
                cardWidget: Row(
                  children: [
                    RoundIconButton(
                      onPressed: () {
                        increment('age');
                      },
                      icon: Icons.add,
                    ),
                    const SizedBox(width: 10),
                    RoundIconButton(
                      onPressed: () {
                        decrement('age');
                      },
                      icon: Icons.remove,
                    ),
                  ],
                ),
              ),
            ],
          ),
          Expanded(
            child: ButtonWidget(
              onTap: () {
                Calculate calc = Calculate(height: progress, weight: weight);
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
              fontSize: 20,
            ),
          ),
        ],
      ),
    );
  }
}
