import 'package:bmi_calculator/bmi_calculator/product/color/project_color.dart';
import 'package:bmi_calculator/bmi_calculator/product/language/language_item.dart';
import 'package:flutter/material.dart';

class FemaleCard extends StatelessWidget {
  const FemaleCard({super.key});
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SizedBox(
        width: MediaQuery.of(context).size.width * _WidgetSizes().widthSize,
        height: MediaQuery.of(context).size.height * _WidgetSizes().heightSize,
        child: const _FemaleCard(),
      ),
    );
  }
}

class _FemaleCard extends StatefulWidget {
  const _FemaleCard({
    super.key,
  });
  @override
  State<_FemaleCard> createState() => _FemaleCardState();
}

class _FemaleCardState extends State<_FemaleCard> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Card(
        color: ProjectColors.pinkColor,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _femaleCard(),
            _femaleText(context),
          ],
        ),
      ),
    );
  }

  Text _femaleText(BuildContext context) {
    return Text(
      LanguageItems.female.languageString(),
      style: Theme.of(context).textTheme.bodyLarge?.copyWith(color: ProjectColors.whiteColor),
    );
  }

  Icon _femaleCard() {
    return Icon(
      Icons.female_outlined,
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
