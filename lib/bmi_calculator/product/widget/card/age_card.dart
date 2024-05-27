import 'package:bmi_calculator/bmi_calculator/product/language/language_item.dart';
import 'package:bmi_calculator/bmi_calculator/product/widget/button/round_icon_button.dart';
import 'package:bmi_calculator/bmi_calculator/product/widget/card/custom_card_widget.dart';
import 'package:bmi_calculator/bmi_calculator/state_managment/home_view_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class AgeCard extends StatelessWidget {
  const AgeCard({
    super.key,
  });
  final double _sizedBoxHeight = 10;
  final String _age = 'age';
  @override
  Widget build(BuildContext context) {
    return CardWidget(
      textName: LanguageItems.age.languageString(),
      number: context.watch<HomeViewProvider>().age.toInt().toString(),
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
        context.read<HomeViewProvider>().decrement(_age);
      },
      icon: Icons.remove,
    );
  }

  RoundIconButton _addIconButton(BuildContext context) {
    return RoundIconButton(
      onPressed: () {
        context.read<HomeViewProvider>().increment(_age);
      },
      icon: Icons.add,
    );
  }
}
