import 'package:bmi_calculator/bmi_calculator/product/color/project_color.dart';
import 'package:flutter/material.dart';

class RoundIconButton extends StatelessWidget {
  const RoundIconButton({super.key, required this.onPressed, required this.icon});
  final onPressed;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: onPressed,
      constraints: BoxConstraints.tightFor(
        width: _WidgetSizes().width,
        height: _WidgetSizes().height,
      ),
      shape: const CircleBorder(),
      fillColor: ProjectColors.formalGrey,
      child: Icon(icon),
    );
  }
}

class _WidgetSizes {
  final double width = 56;
  final double height = 56;
}
