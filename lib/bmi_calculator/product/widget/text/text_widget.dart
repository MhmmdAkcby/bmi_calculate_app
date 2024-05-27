import 'package:flutter/material.dart';

class TextWidget extends StatelessWidget {
  const TextWidget({super.key, required this.text, required this.color, required this.fontSize});
  final String text;
  final Color color;
  final double fontSize;

  @override
  Widget build(BuildContext context) {
    return Text(text, style: textTheme(context, color, fontSize));
  }
}

TextStyle? textTheme(BuildContext context, Color color, fontSize) {
  return Theme.of(context).textTheme.titleLarge?.copyWith(
        color: color,
        fontWeight: FontWeight.bold,
        fontSize: fontSize,
      );
}
