import 'package:bmi_calculator/bmi_calculator/product/language/language_item.dart';
import 'package:bmi_calculator/bmi_calculator/product/widget/button/round_icon_button.dart';
import 'package:bmi_calculator/bmi_calculator/product/widget/card/custom_card_widget.dart';
import 'package:bmi_calculator/bmi_calculator/state_managment/home_view_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class WeightCard extends StatelessWidget {
  const WeightCard({
    super.key,
  });
  final double _sizedBoxHeight = 10;
  final String _weight = 'weight';
  @override
  Widget build(BuildContext context) {
    return CardWidget(
      textName: LanguageItems.weight.languageString(),
      number: context.watch<HomeViewProvider>().weight.toInt().toString(),
      cardWidget: Row(
        children: [
          _addIconButton(context),
          SizedBox(width: _sizedBoxHeight),
          _removeIconButton(context),
        ],
      ),
    );
  }

  RoundIconButton _removeIconButton(BuildContext context) {
    return RoundIconButton(
      onPressed: () {
        context.read<HomeViewProvider>().decrement(_weight);
      },
      icon: Icons.remove,
    );
  }

  RoundIconButton _addIconButton(BuildContext context) {
    return RoundIconButton(
      onPressed: () {
        context.read<HomeViewProvider>().increment(_weight);
      },
      icon: Icons.add,
    );
  }
}
