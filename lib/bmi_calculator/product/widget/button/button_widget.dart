import 'package:bmi_calculator/bmi_calculator/product/color/project_color.dart';
import 'package:flutter/material.dart';

class ButtonWidget extends StatefulWidget {
  const ButtonWidget({super.key, required this.onTap, required this.buttoName, required this.fontSize});
  final onTap;
  final String buttoName;
  final double fontSize;
  @override
  State<ButtonWidget> createState() => _ButtonWidgetState();
}

class _ButtonWidgetState extends State<ButtonWidget> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.1,
      child: Padding(
        padding: _WidgetPadding.buttonPadding,
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(_WidgetSize().radius))),
              backgroundColor: ProjectColors.intensePassion),
          onPressed: widget.onTap,
          child: _CalculateText(
            buttonName: widget.buttoName,
            fontSize: widget.fontSize,
          ),
        ),
      ),
    );
  }
}

class _CalculateText extends StatelessWidget {
  const _CalculateText({
    super.key,
    required this.buttonName,
    required this.fontSize,
  });
  final String buttonName;
  final double fontSize;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: _WidgetPadding()._textPadding(context),
      child: Text(
        buttonName,
        style: _textStyle(context, fontSize),
      ),
    );
  }
}

TextStyle? _textStyle(BuildContext context, double fontSize) {
  return Theme.of(context).textTheme.labelLarge?.copyWith(
        color: ProjectColors.whiteColor,
        fontWeight: FontWeight.w700,
        fontSize: fontSize,
      );
}

class _WidgetSize {
  final double fontSize = 17;
  final double radius = 5;
}

class _WidgetPadding {
  EdgeInsets _textPadding(BuildContext context) =>
      EdgeInsets.symmetric(vertical: 15, horizontal: MediaQuery.of(context).size.width * 0.28);
  static const buttonPadding = EdgeInsets.only(top: 8.0, bottom: 10);
}
