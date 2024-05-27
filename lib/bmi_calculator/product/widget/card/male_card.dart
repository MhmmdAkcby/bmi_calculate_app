import 'package:bmi_calculator/bmi_calculator/product/color/project_color.dart';
import 'package:bmi_calculator/bmi_calculator/product/language/language_item.dart';
import 'package:flutter/material.dart';

class MaleCard extends StatelessWidget {
  const MaleCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SizedBox(
        width: MediaQuery.of(context).size.width * _WidgetSizes().widthSize,
        height: MediaQuery.of(context).size.height * _WidgetSizes().heightSize,
        child: const _MaleCard(),
      ),
    );
  }
}

class _MaleCard extends StatefulWidget {
  const _MaleCard({super.key});

  @override
  State<_MaleCard> createState() => _MaleCardState();
}

class _MaleCardState extends State<_MaleCard> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Card(
        color: ProjectColors.blueRegal,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _maleIcons(),
            _maleText(context),
          ],
        ),
      ),
    );
  }

  Text _maleText(BuildContext context) {
    return Text(
      LanguageItems.male.languageString(),
      style: Theme.of(context).textTheme.bodyLarge?.copyWith(color: ProjectColors.whiteColor),
    );
  }

  Icon _maleIcons() {
    return Icon(
      Icons.male_outlined,
      size: _WidgetSizes().iconSize,
      color: ProjectColors.whiteColor,
    );
  }
}

class _WidgetSizes {
  final double iconSize = 120;
  final double widthSize = 0.5;
  final double heightSize = 0.2;
}
