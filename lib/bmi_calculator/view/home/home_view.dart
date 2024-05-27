import 'package:bmi_calculator/bmi_calculator/product/language/language_item.dart';
import 'package:bmi_calculator/bmi_calculator/product/widget/button/calculate_button.dart';
import 'package:bmi_calculator/bmi_calculator/product/widget/card/age_card.dart';
import 'package:bmi_calculator/bmi_calculator/product/widget/card/female_card.dart';
import 'package:bmi_calculator/bmi_calculator/product/widget/card/weight_card.dart';
import 'package:bmi_calculator/bmi_calculator/product/widget/card/male_card.dart';
import 'package:bmi_calculator/bmi_calculator/product/widget/slider/slider.dart';
import 'package:flutter/material.dart';

part 'partof_appbar.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: _AppBar(),
      body: Column(
        children: [
          Row(children: [MaleCard(), FemaleCard()]),
          MySlider(),
          Row(
            children: [
              WeightCard(),
              AgeCard(),
            ],
          ),
          CalculateButton(),
        ],
      ),
    );
  }
}
